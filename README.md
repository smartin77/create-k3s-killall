# create-k3s-killall
Script which creates k3s-killall.sh from source code in repository `https://github.com/k3s-io/k3s/blob/master/install.sh`

This script comming handy especially when you are using k3s server from source, esecially when tou run it whithout systemd (on WSL for example).

Normal installation will also create `k3s-killall.sh` script on `/usr/local/bin`.

But when you use k3s server from binary you may not have such script in required path, thus using this script you can have `k3s-killall.sh` directly from source code.

Script will parse k3s intallation script and creates `k3-killall.sh` script.

## Usage
Clone repository, go into repository folder and the run following:

```
./create-k3s-killall.sh
sudo mv ./k3s-killall.sh /usr/local/bin/k3s-killall.sh
```
