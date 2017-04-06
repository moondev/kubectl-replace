# kubectl-replace

Simply base64 encode the manifest and pass to the image along with the env vars. Output can then be piped to kubectl.

```
MANIFEST=`base64 deployment.yaml`

docker run --rm -e MANIFEST="$MANIFEST" -e APP_NAME='savedsearch_middle' -e APP_PORT='8181' chadmoon/envsubst:latest | kubectl apply -
```


Jenkinsfile

```
    stage "Deploy image"
        manifest = "base64 k8s/deployment.yaml".execute().text
        sh "docker run --rm -e MANIFEST='" + manifest + "' -e APP_NAME='savedsearch_middle' -e APP_PORT='8181' chadmoon/envsubst:latest"

```