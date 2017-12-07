Heavily inspired by https://github.com/pivotal/workstation-setup 

```
mkdir -p ~/workspace
cd ~/workspace
git clone https://github.com/maximede/workstation-setup.git
cd workstation-setup
```

```
# remove unnecessary plugin when running command
./setup.sh developer git zsh java node docker aws maxime
```

Doesn't install any configuration files; relies on [mackup](https://github.com/lra/mackup) to do so.