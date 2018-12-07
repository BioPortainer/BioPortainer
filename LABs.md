# BioPortainer Lab's

BioPortainer Test Laboratories:

- [Scenario 1](#Scenario1)
- [Scenario 2](#Scenario2)
- [Scenario 3](#Scenario3)


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

```

##### 4. Confirm creation of the BioPortainer containers, by typing:

```
$ docker ps
```

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
