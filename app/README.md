# app

This directory is used as a volume that the container instance mounts to.
It is kept in source control, so this workflow assumes you will be persisting changes made from within the container.
You could also gitignore a directory and mount it from the container instance,
which would be useful for keeping the artifacts produced by a build process done within the container instance.
