[![DOI](https://zenodo.org/badge/151837159.svg)](https://zenodo.org/badge/latestdoi/151837159)

<p align="center"><img src="https://raw.githubusercontent.com/LaBiOS/BioPortainer/master/builder/bioportainer/public/images/logo_alt.png"></p>



**BioPortainer** is a free and open-source [Portainer](https://portainer.io/) fork specifically designed for bioinformatics-related Docker applications. Bioportainer can be easily implemented, through deployment of a single Docker image, providing access to more than 60 pre-configured templates, available from BioPortainer´s unique repository, which will assist users through a straightforward and intuitive process for installation, configuration and management of a great variety of Docker-based bioinformatics tools, either in Docker Hosts or in [Swarm Clusters](https://docs.docker.com/engine/swarm/).

It's an implementation built under the [MIT license](https://opensource.org/licenses/MIT) using the [Docker platform](https://www.docker.com/), an open-source project that automates the implementation of applications within software containers, providing an additional layer of abstraction and automation of operating system-level virtualization on [Linux](https://en.wikipedia.org/wiki/Linux). [Docker](https://www.docker.com/) uses the [Linux kernel](https://en.wikipedia.org/wiki/Linux_kernel) resource isolation features, such as [cgroups](https://en.wikipedia.org/wiki/Cgroups) and [namespaces](https://en.wikipedia.org/wiki/Linux_namespaces), as well as the file system [AuFS](https://en.wikipedia.org/wiki/Aufs) (advanced multi layered unification filesystem) to allow independent *containers* to run in a single Linux instance, avoiding an overload of initialization and maintenance of virtual machines.

A general overview of the BioPortainer architecture can be found below: Users (a) can deploy more than 60 preconfigured bioinformatics models available in the BioPortainer (b) repository, as well as administer and deploy Docker containers using images from [DockerHub](https://hub.docker.com) repositories, [Quay.io](https://quay.io) or private (d). BioPortainer provides a graphical interface to DockerCLI (c), allowing full administration of [Swarm Clusters](https://docs.docker.com/engine/swarm/) (including managers and workers) as well as local environments with only the Docker Engine and the Docker Daemon. BioPortainer's Dockerfile, as well as the JSON archive of the BioPortainer repository, are available for free and users are encouraged to participate in their further development by sending pull requests or contributing new software to the repository.


<p align="center"><img src="https://raw.githubusercontent.com/LaBiOS/BioPortainer/master/images/fig1_alt.png"></p>

---

# MENU <a name="menu" />

- [BioPortainer Deploy](#Deploy-BioPortainer)
  - [Dockerfile](#Deploy-BioPortainer)
  - [Docker Compose](#Deploy-BioPortainer)
- [BioPortainer Access](#Access-BioPortainer)
- [BioPortainer Documentation](#Documentation-BioPortainer)
- [BioPortainer Screenshot](#Screenshot-BioPortainer)
- [BioPortainer Video Tutorial](#Video-BioPortainer)
- [BioPortainer Lab's](#Test-BioPortainer)

---

## Installing and Configuring the BioPortainer Workbench <a name="Deploy-BioPortainer" /> [[menu]](#menu)

Installation of the BioPortainer Workbench is extremely simple and requires only Docker and Docker Compose as initial requirements. After both componets are installed, only two steps are needed to start a BioPortainer Workbench environment. In the first step, the compose.yml file is downloaded from the server (GitHub, or BioPortainer Workbench homepage) to the BioPortainer folder, in the host machine. In the second step, the Docker Compose is executed, downloading the images for the standard BioPortainer Workbench modules and the service is started. When Linux is the host machine's operating system, the following commands must be run on the terminal:

Two steps are required to start a container containing BioPortainer:

```
$ wget http://bioportainer.ml/docker-compose.yml -P BioPortainer
$ cd BioPortainer
$ docker - compose up -d
```

During the deployment process, some ports and disk volumes will be automatically configured in the host machine. Details on the ports and volumes created are available in the BioPortainer Workbench User Manual, which accompanies this manuscript as a supplementary file. In a standard implementation, the BioPortainer Workbench will use the localhost address (IP 0.0.0.0) as the default address for its internal links. If access is not performed through a local network, additional settings must be made in the Compose file, according to Docker's official documentation, available at: https://docs.docker.com/config/containers/container-networking/#published-ports. 

---

## BioPortainer Documentation <a name="Documentation-BioPortainer" /> [[menu]](#menu)

Because BioPortainer is a Portainer fork, general project information can be found in the original [Portainer Documentation](https://portainer.readthedocs.io/en/stable/). A fork of the Portainer documentation with more details on the changes implemented in BioPortainer can be found at:


---

## BioPortainer Screenshots <a name="Screenshot-BioPortainer" /> [[menu]](#menu)


Learn about the main features of BioPortainer through screeshots of its graphical interface. Access the screenshots [here](https://github.com/LaBiOS/BioPortainer/blob/master/SCREENSHOT.md).

---

## BioPortainer Video Tutorial <a name="Video-BioPortainer" /> [[menu]](#menu)

See BioPortainer installation and setup video tutorials [here](https://github.com/LaBiOS/BioPortainer/blob/master/VIDEOS.md).


---

## BioPortainer Lab's <a name="Test-BioPortainer" /> [[menu]](#menu)

We offer different scenarios of installation of BioPortainer so that the user can test its functionalities. Learn more by going [here](https://github.com/LaBiOS/BioPortainer/blob/master/LABs.md).


---

## Author <a name="Author" /> [[menu]](#menu)

Current development is led by Fabiano Menegidio.

## Contributing <a name="Contributing" /> [[menu]](#menu)

You are invited to contribute new features, fixes, or updates, large or small; we are always thrilled to receive pull requests, and do our best to process them as fast as we can.

Before you start to code, we recommend discussing your plans through a GitHub issue, especially for more ambitious contributions. This gives other contributors a chance to point you in the right direction, give you feedback on your design, and help you find out if someone else is working on the same thing.

## MIT License <a name="MIT" /> [[menu]](#menu)

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

***The software is provided "as is", without warranty of any kind, express or implied, including but not limited to the warranties of merchantability, fitness for a particular purpose and noninfringement. in no event shall the authors or copyright holders be liable for any claim, damages or other liability, whether in an action of contract, tort or otherwise, arising from, out of or in connection with the software or the use or other dealings in the software.***

---

<p align="center"><img src="https://raw.githubusercontent.com/LaBiOS/BioPortainer/master/builder/bioportainer/public/images/logo_alt.png"></p>

[![DOI](https://zenodo.org/badge/105034013.svg)](https://zenodo.org/badge/latestdoi/105034013)
