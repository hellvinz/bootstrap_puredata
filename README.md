# Bootstrap PureData

Install Puredata and configure the raspberry to run it on boot

## Usage

In a terminal on the rapsberry PI running raspbian

```
git clone https://github.com/hellvinz/bootstrap_puredata.git
cd bootstrap_puredata
sudo ./bootstrap.sh http://example.com/patch.pd
reboot
```

The `bootstrap.sh` is expecting the URL of a PD patch

You can rerun `sudo boostrap.sh` with a new url if you want to change the patch to run on boot
