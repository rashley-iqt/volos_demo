# Project Volos Demo
This is a proof of concept demonstration for the use of [FaucetSDN](https://github.com/faucetsdn/faucet) to implement active defensive strategies for cyber deception. 

### Physical setup
The demo system is physically wired like this:
![Diagram of Setup](https://github.com/rashley-iqt/volos_demo/blob/master/imgs/volos_demo_setup.png)

### Configure Faucet
1. Acls file should look like [acls.yaml](https://github.com/rashley-iqt/volos_demo/blob/master/acls.yaml)
1. Faucet configuration must include ACLS from step 1 and have a port designated as a coprocessor as on [line 7 of faucet.yaml](https://github.com/rashley-iqt/volos_demo/blob/master/faucet.yaml#L7)

### Set up Coprocesing
 1. clone Pipette onto the machine with `git clone https://github.com/IQTLabs/pipette.git`
 1. copy [pipettecconf.sh](https://github.com/rashley-iqt/volos_demo/blob/master/pipetteconf.sh) into the directory
 1. edit pipetteconf.sh to ensure that the `COPROINT` value is set to the id of the physical interface connected to the coprocessor switchport.
 1. `./runpipette.sh`
 1. build coprocessed services:
   * `cd fakeWebserver && ./start.sh`
   * `cd realDbServer && ./start.sh`
   
### Set up other services
##### for the realWebServer
 1. clone to the appropriate machine
 1. `cd realWebserver && ./start.sh`
##### for the DB Webserver
 1. clone to the appropriate machine
 1. `cd dbWebServer`
 1. `docker build -t vd_dbws .`
 1. `docker run --name=vd_dbws -d -p <IP>:<PORT>:80 vd_dbws`
