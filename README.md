# VPN + HTTP/SOCKS proxy

A turn-key solution to run a standalone proxy with your VPN service.

## Who's this repo aimed to?
Some scenarios:
- Enter your intranet
- Connect to your bank privately
- Access a streaming service in another country
- Use the VPN only for a particular application

## How to run it?
Checkout out the project:  
```bash
git checkout https://github.com/mrenrich84/vpn-http-socks-proxy
```

Add your credentials:
```bash
cp .env.example .env
nano .env
```

You prob might also need to provide the right OpenVPN configuration.  
ATM this project is using the OpenVPN client container from https://github.com/dperson/openvpn-client  
Refer to that for how to configure your own VPN client.

Run it:  
```bash
./start.sh
```

Exit with:
```bash
sudo docker-compose down
```

## Where can you run it?
- VirtualBox + Ubuntu: switch the network card to bridged!  
_...if you want to allow the whole LAN to access the proxy_
- Pi
- etc

## What is this doing?
- Starts OpenVPN
- Then starts the HTTP and SOCKS proxy

There are healthchecks to confirm the external ip of the various services are indeed different from the host one.  
This SHOULD prevent any connection from leaking out the VPN.
