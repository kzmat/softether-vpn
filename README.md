# SoftEther VPN

Run vpn server with [SoftEther](https://ja.softether.org/) on GCE.


## Usage


1. Input tfvars
    - project_id
    - credential_file_path

2. Create instance & firewall
```
$ terraform init
$ terraform plan
$ terraform apply
```

3. Run server
```
$ sudo snap install docker
$ sudo docker run -d \
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