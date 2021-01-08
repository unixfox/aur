# AUR public server (powered by AurBS)

* State of the server : **testing/beta**
* Issues related to:
  * this repo/the webserver that serves files compiled by the build server: https://github.com/unixfox/aur/issues
* Uptime of the server : https://status.unixfox.eu/778526456
* Binaries: https://aur.unixfox.eu

# FAQ
## How to add package(s) to the list?
1. Edit the file `pkgs` : https://github.com/unixfox/aur/edit/master/pkgs
2. Add your package(s) at the end of the file using the same way as others (with a `-`). Please check if your package isn't already in the list.
3. Commit changes and create a pull request.
4. Wait for the owner accepts the pull request.

## How to add the build server to my pacman?

1.Add these lines at the end of this file `/etc/pacman.conf`:
```
[unixfox]
SigLevel = Never
Server = https://aur.unixfox.eu/$arch
```
2.Update your repositories:
```
sudo pacman -Sy
```

## Why my package hasn't been built?
Some packages may fail to build you can open [issue](https://github.com/unixfox/aur/issues) for requesting assistance.

## How often packages are updated?
The packages are rebuild every 1 hour if there are no build pending.

## Is there an SLA?
Since this AUR build server is managed by only me, there is no SLA. The build server may go down from time to time (example: maintenance).

## How to list AUR packages?
```
pacman -Qm
```
