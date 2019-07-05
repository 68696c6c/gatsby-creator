# Gatsby Creator

A tool for creating new Gatsby projects without needing the Gatsby CLI installed globally.

The project is creating inside of a Docker container that mounts `~/Code` as a volume.

## Usage
1. First make sure that you have a directory named `Code` in your home folder.

2. Next, build the Docker image by running `make image`.

2. Once the image is built you can create new projects by running:

  `./create.sh [project name]`

You will get an error from Gatsby saying the initial commit failed because it can't find your Git credentials.  Just ignore that.
