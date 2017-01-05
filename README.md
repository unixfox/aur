# AUR public server (powered by AurBS)

# FAQ
## How to add package(s) ?
1. Edit the file `pkgs` : https://github.com/unixfox/aur/edit/master/pkgs
2. Add your package(s) at the end of the file using the same way as others (with a `-`).
3. Save the file and create a pull request.
4. Wait for the owner accepts the pull request.
5. Check the status of your package at https://status.aur.unixfox.eu

## How to add the build server to my pacman ?

1.Add these lines at the end of this file `/etc/pacman.conf`:
```
[unixfox]
SigLevel = Never
Server = https://aur.unixfox.eu/$arch
```
2.Update your repositories:
```
sudo pacman -Syu
```

## How often packages are updated ?
The packages are rebuild each 10 minutes.

## Is there an SLA?

Since this AUR build server is managed by only me, there is no SLA. The build server may go down from time to time (example: maintenance.
