**WARNING: If you fork this project, your newly generated project might be public and thus can be seen by anybody!**

# Template for Compiler Design Assigements
This is a template for the subject Compiler Design containing a fully working DevContainer and the Github Actions script from [eth-compilerdesign-output-action](https://github.com/BattleRush/eth-compilerdesign-output-action) all combined in one repository.

## Github Actions
This repository provides a way of automatically running all tests on push via a Github Action Script (`.github/workflows/makefile.yml`). This script will show the result nicely formatted as a execution summary and will create submissions for each assignment which then are provided in a single .zip file attached as artifact. For more information about the Action check [here](https://github.com/BattleRush/eth-compilerdesign-output-action).

## Devcontainer & Codespaces
For a fast and easy deployment of a development environment, a devcontainer file has been provided containing the official docker image provided by the course webiste (`quarub/ubuntu-ocaml-4.13.1:latest`). 

To start a local development environment install Docker and the [Dev Containers extension for VSCode](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-containers) and start the container with the VSCode command `Rebuild and Reopen in Container`. Your editor will now automatically build the container and connect to it. This might take a few minutes. For more information check the official documentation of the extension or dev containers in general.

If you have a `PRO` account on Github (you can get it via the [Student Developer Pack](https://education.github.com/pack) website) you can run the whole container including a instance of VSCode in a Codespace hosted and provided by Github using the same Dev Container. 
