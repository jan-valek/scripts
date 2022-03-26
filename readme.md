# Minimal script for installing minikube and basic tooling on WSL2 

It will update system set user membership in docker group and installs following:
* minikube + kubectl + helm
* build-essential
* gh

**This script has no checksum verifications so is potentially dangerous**.

Also Helm version is hardcoded in script so check it out before using.

## Prerequisities 

* Docker desktop for windows
* Ubuntu 20.04LTS in wsl 
* Docker check that WSL integration is enabled for Ubuntu 20.04LTS
