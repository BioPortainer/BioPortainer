# BioPortainer Lab's

BioPortainer Test Laboratories:

- [Scenario 1](#Scenario1)
- [Scenario 2](#Scenario2)
- [Scenario 3](#Scenario3)
- [Scenario 4](#Scenario4)


---

### Scenario 1: Testing BioPortainer Installation in a Docker Engine using Play with Docker <a name="Scenario1" />

In the first scenario, use Play-with-Docker (https://labs.play-with-docker.com) to configure a virtual machine containing the Docker Engine installed. 

<p align="center"><img src="https://raw.githubusercontent.com/LaBiOS/BioPortainer/master/images/labs/l1.png"></p>


Next, use the ADD NEW INSTANCE option (Figure 1) to create the test virtual machine and type the following commands to deploy BioPortainer:

##### 1. Test if Docker is installed and running, by typing:

```
$ docker info
```

##### 2. Check if there are Docker containers being executed, by typing: 

```
$ docker ps
```

##### 3. Download BioPortainer image from the Docker Hub, by typing: 

```
$ docker pull bioportainer/bioportainer
```

##### 4. Confirm download the BioPortainer image, by typing:

```
$ docker images
```

##### 5. Create a BioPortainer container, by typing:

```
$ docker run -d --name BioPortainer -p 9000:9000 \
  -v /var/run/docker.sock:/var/run/docker.sock \
  bioportainer/bioportainer
```

##### 6. Confirm creation of the BioPortainer container, by typing:

```
$ docker ps
```


Note that the commands described above deploy the BioPortainer container as a daemon (`-d`), published in the port 9000 of the test virtual machine. The Docker socket is defined by the parameter  –v (`/var/run/docker.sock`), to provide information regarding the timing of Docker excecution. Play with Docker allows all published ports of a Docker container (or all the services published in a Docker Swarm) to be automatically presented to outside connections. 


To access the BioPortainer interface the user must use a URL following the pattern: http://ip<'ip-separated-by-hifen'>-<'session_jd'>-<'port'>.direct.labs.play-with-docker.com. The <ip-separated-by-hifen> and <session_jd> variables are available in the Play-with-Docker graphical interface, as shown in the Figure 2 (below). More details can be obtained at . After accessing the BioPortainer URL, user may set up his/her own password and manage the Docker Engine through the BioPortainer graphical interface.


### Screenshots

**(Figure 1)**
<p align="center"><img src="https://raw.githubusercontent.com/LaBiOS/BioPortainer/master/images/labs/l4.png"></p>

**(Figure 2)**
<p align="center"><img src="https://raw.githubusercontent.com/LaBiOS/BioPortainer/master/images/labs/l3.png"></p>

---

### Scenario 2: Installing and testing BioPortainer in a Swarm Cluster using Play with Docker <a name="Scenario2" />

This scenario describes the configuration of a Swarm Cluster, containing three virtual machines, configured as Managers, and two additional virtual machines, configured as Workers. 

<p align="center"><img src="https://raw.githubusercontent.com/LaBiOS/BioPortainer/master/images/labs/l1.png"></p>

Initially, use the option Templates in Play-with Docker to create the test environment and (Figure 3), next, deploy BioPortainer, by typing the following commands:


##### 1. Test if the Swarm Cluster is installed and running, by typing:

```
$ docker node ls
```

##### 2. Check if there are Docker containers being executed, by typing: 

```
$ docker node ps
```

##### 3. Download BioPortainer image from the Docker Hub and create the BioPortainer service, by typing:  

```
$ docker service create \
      --name BioPortainer \
      -p 9000:9000 \
      --constraint 'node.role == manager' \
      --mount type=bind,src=/var/run/docker.sock,dst=/var/run/docker.sock \
      bioportainer/bioportainer -H unix:///var/run/docker.sock
```

##### 4. Confirm creation of the BioPortainer container, by typing:

```
$ docker node ps
```

Upon deployment of BioPortainer, user must follow the same steps described in Scenario 1 to gain access to the BioPortainer interface. Minor differences to be encountered in this frontend include a box titled “Swarm information”, as well as forms describing “services” and “Swarm”, which shall assist user in full administration of the cluster and its assigned services.

### Screenshots

**(Figure 3)**
<p align="center"><img src="https://raw.githubusercontent.com/LaBiOS/BioPortainer/master/images/labs/l2.png"></p>

---

### Scenario 3: Installing and testing BioPortainer in a Swarm Cluster using Katacoda <a name="Scenario3" />

In this scenario, the Katacoda Learning Platform is used to create a test environment containing a standard Swarm installation, composed of a Manager and a preconfigured Worker. All instructions for using the test environment are available at: https://www.katacoda.com/menegidio

<p align="center"><img src="https://raw.githubusercontent.com/LaBiOS/BioPortainer/master/images/labs/l5.png"></p>

---

### Scenario 4: Installing and testing BioPortainer in a Docker Engine using Dply <a name="Scenario4" />

As a final test scenario, we provide a BioPortainer installation template on Dply servers (). This project provides a free server for 2 hours, containing 1 CPU, 512MB of RAM and 20GB of disk, plus the option of installing the following operating systems: CentOS 6, CentOS 7, Debian 7, Debian 8, Fedora 24, Fedora 25, Ubuntu 14.04, Ubuntu 16.04. By accessing the button available on the BioPortainer project site, the user can quickly deploy a virtual machine containing the Ubuntu 16.04 operating system and test BioPortainer features.

[![Dply](https://dply.co/b.svg)](https://dply.co/b/PNVHI5YX)

<p align="center"><img src="https://raw.githubusercontent.com/LaBiOS/BioPortainer/master/images/labs/l6.png"></p>


