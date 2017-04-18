# AUR public server (powered by AurBS)

* State of the server : **testing/beta**
* Issues related to:
  * the build server: https://github.com/unixfox/aurbs/issues
  * this repo/the webserver that serves files compiled by the build server: https://github.com/unixfox/aur/issues
* Uptime of the server : https://status.unixfox.eu/778526456

# FAQ
## How to add package(s) to the list?
1. Edit the file `pkgs` : https://github.com/unixfox/aur/edit/master/pkgs
2. Add your package(s) at the end of the file using the same way as others (with a `-`). Please check if your package isn't already in the list.
3. Save the file and create a pull request.
4. Wait for the owner accepts the pull request.
5. Check current status of your package at https://aurbs.unixfox.eu/status.

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
You should check if there are any problem with your package : https://aurbs.unixfox.eu/problems.

If you need some help with your package(s), you can open [issue](https://github.com/unixfox/aur/issues).

## How often packages are updated?
The packages are rebuild each 15 minutes if there are no build pending.

## Is there an SLA?
Since this AUR build server is managed by only me, there is no SLA. The build server may go down from time to time (example: maintenance).

## How to list AUR packages?
```
pacman -Qm
```
