# Oracle Server Initializer Script

These are List of script in order setup your Orace Server for Open Use

![](https://github.com/alfazzafashion/oracle-server-init/blob/main/Screenshot%202022-03-25%20130315.png)

## Platforms and Software's being installed :-

- [CloudPanel](https://cloudpanel.io)
- [Docker](https://docker.com)
- [Docker Compose](https://docs.docker.com/compose/)
- [Gitea](https://gitea.io)
- [Snapcraft](https://snapcraft.io)
- [Bpytop](https://github.com/aristocratos/bpytop)
- [Portainer](https://www.portainer.io/)

## OS Installer/Reinstaller to `Debian`

- [DebI](https://github.com/bohanyang/debi/)

## Order of installation

1. [`startup.sh`](startup.sh) -> Installs Debian 10
2. [`installer.sh`](installer.sh) -> Installs all Softwares and it's Dependencies
3. [`open-network.sh`](open-network.sh) -> All Internal Network Ports and for ingress and exgress communication

## License

All Softwares mentioned here are licensed by their respective owners. This Repository is licensed under the [MIT License](LICENSE).
