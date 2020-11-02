# pipette configuration

# NOTE: system management of all pipette's interfaces should be disabled.
# e.g. add denyinterfaces COPROINT, denyinterfaces BR, etc all to /etc/dhcpcd.conf


# interface connected to FAUCET coprocessor port.
COPROINT=enp2s0
# addresses fake services will be run on (will be proxied from real IPs)
# At the moment must be /16, and real network must be /24 (for NAT to work).
# space separated.
NFVIPS="10.10.0.1/16"
# IPv6 is also supported - must be a /64, the real network must be a /96.
# NFVIPS="fc04::1/64"
# FAUCET VLANS where fake services will appear (space separated).
VLANS=100
# interface that will be created for fake services to run on.
FAKEINT=fake0
DFILE=Dockerfile

##
# Optional config
##

# Reserved MAC addresses for fake services to use to talk to clients.
FAKESERVERMAC=0e:00:00:00:00:66
FAKECLIENTMAC=0e:00:00:00:00:67
# OVS bridge name
BR=copro0
# pipette OF port
OF=6699
# OF port number for interface facing coprocessor
COPROPORT=1
# OF port number for fake interface
FAKEPORT=2
# Flag to record and location to dump pcaps
RECORD=0
PCAP_LOCATION=./pcaps

#pipette temporary directory
PIPETTE_TEMP_DIR=/tmp/pipette