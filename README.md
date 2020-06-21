# SoftEther VPN

Run vpn server with [SoftEther](https://ja.softether.org/) on GCE.


## Usage

```
export GOOGLE_APPLICATION_CREDENTIALS={{path}}

# Build instance & firewall
terraform plan
terraform apply

# run server
sudo snap install docker
sudo docker run -d \
  --cap-add NET_ADMIN \
  -p 500:500/udp \
  -p 4500:4500/udp \
  -p 1701:1701/tcp \
  -p 1194:1194/udp \
  -p 5555:5555/tcp \
  -e PSK={{PSK}} \
  -e USERS={{user}}:{{userpassword}} \
  -e SPW={{serverpassword}} \
  -e HPW={{hubpassword}} \
  siomiz/softethervpn
```

