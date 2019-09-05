# Docker Hub
[Link](https://cloud.docker.com/u/andoshin11/repository/docker/andoshin11/git-pr-release)

# About repository
Custom docker image to run [git-pr-release](https://github.com/motemen/git-pr-release) in any environment.

# Current dependency
- ruby 2.6.4
- [git-pr-release](https://github.com/motemen/git-pr-release) 0.8.0

# How to use
Simply run the commant below.

```
$ docker run -it --rm -v $HOME/.ssh:/tmp/.ssh -v $PWD:/app -e GIT_PR_RELEASE_TOKEN=$GIT_PR_RELEASE_TOKEN andoshin11/git-pr-release:latest
```

Make sure you have...

- issued GitHub personal access token with `repo` privilege.
- set above access token as environment variable named `GIT_PR_RELEASE_TOKEN`.
- set both `.git-pr-release` and `.git-pr-template` files.
- mount your project on `/app` directory
