node {

    checkout scm

    sh "git rev-parse --short HEAD > commit-id"

    tag = readFile('commit-id').replace("\n", "").replace("\r", "")
    appName = "behave"
    registryHost = "127.0.0.1:30400/"
    imageName = "${registryHost}${appName}:${tag}"
    env.BUILDIMG=imageName

    stage "Build"

        sh "docker build -t ${imageName} ."

    stage "Push"

        sh "docker tag ${imageName} ${registryHost}${appName}:latest"
        sh "docker push ${imageName}"
        sh "docker push ${registryHost}${appName}:latest"

}
