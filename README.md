# Containerized Development Workflow Example

# Contents

## [host script](./dev)

The host script is used for basic development tasks like building the container image, creating a container instance, and running a container instance.

## [container definition](./Containerfile)

The container definition gives the steps necessary to build the container image.

## [container volume](./app)

The container volume is a directory that gets mounted by the container at runtime.
Changes in this directory occur on the host filesystem and thus persist after container instances shutdown.

## [target script](./hello-world)

The target script is a program that gets copied into the user bin of the container image so that it is available on the environment path at runtime.

# Additional Notes

You will likely want to change the `image` variable in the host script to match your repository or project name.
Also, the host script currently uses `podman` but the commands should be close if not identical to those for `docker`.
