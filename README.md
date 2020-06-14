# SoftEther VPN

How to run vpn server with [SoftEther](https://ja.softether.org/) on GCE.


**This README is for me.**

## Manual how to set config
```bash
cd /usr/local/vpnserver/
./vpncmd
```

```
ServerPasswordSet
Hub Default
UserCreate
UserPasswordSet
IPE
SecureNatEnable
OpenVpnEnable
```

## reference
- https://ja.softether.org/4-docs/1-manual/3
- https://blog-hello-world.web.app/posts/2019-06-30-gcp-softether-vpn-server/
- https://mano.xyz/post/2016-06-22-l2tp-ipsec/
- https://kawabatas.hatenablog.com/entry/2018/08/04/124355