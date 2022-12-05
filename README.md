# serverless #

[![Build Status](https://travis-ci.org/SoftInstigate/serverless-docker.svg?branch=master)](https://travis-ci.org/SoftInstigate/serverless-docker)

A [docker image](https://hub.docker.com/r/softinstigate/serverless/) for running [serverless](https://serverless.com) commands.

This can be useful for building and deploying serverless stacks from CI environments.

The `RELEASE` global variable in [.travis.yml](.travis.yml) contains the [serverless release](https://github.com/serverless/serverless/releases) to be built.

## Example ##

```
$ docker pull softinstigate/serverless
$ docker run --rm softinstigate/serverless --version
```

## Base image ##

[softinstigate/maven-aws](https://hub.docker.com/r/softinstigate/maven-aws/)

The base image is from the [maven](https://hub.docker.com/_/maven/) one, so it allows to also build serverless projects for **Java** .

Included packages from base image:

- [aws-cli](https://github.com/aws/aws-cli).
- [ecs-cli](https://github.com/aws/amazon-ecs-cli)

## Check the installed tools

```bash
docker run -it --rm --entrypoint="./startup.sh" softinstigate/serverless

=================================================
Apache Maven 3.6.3 (cecedd343002696d0abb50b32b541b8a6ba2883f)
Maven home: /usr/share/maven
Java version: 11.0.9, vendor: Oracle Corporation, runtime: /usr/local/openjdk-11
Default locale: en, platform encoding: UTF-8
OS name: "linux", version: "4.19.76-linuxkit", arch: "amd64", family: "unix"
aws-cli/2.0.59 Python/3.7.3 Linux/4.19.76-linuxkit exe/x86_64.debian.10
ecs-cli version 1.20.0 (7547c45)
node v16.18.1
yarn 1.22.5
serverless Framework Core: 3.25.1
Plugin: 6.2.2
SDK: 4.3.2
Components: 3.2.7
=================================================
```

## Additional packages ##

- Nodejs 16 LTS
- Serverless cli 3.x

## Pull requests

If you need a specific version of the serverless cli which has not been built yet, just fork this repo and open a PR after changing the line in .travis.yml setting the `RELEASE=` to an existing [serverless framework release](https://github.com/serverless/serverless) and we'll merge it quickly. After Travis-CI has finished its work, check the new [docker image](https://hub.docker.com/r/softinstigate/serverless/) and pull your version.

## Build and Publish

Set the environment variables in .env.local.sh and run below

    source .env.local.sh

Build and Publish the Docker Image

    ./bin/build.sh
    ./bin/push.sh
