```json
{
  "os": "Ubuntu Jammy Jellyfish"
}
```

# SSH

```bash
ssh-keygen -t ed25519 -C "$USER_EMAIL"
mv $HOME/.ssh/id_ed25519 $HOME/.ssh/$USER_NAME 
mv $HOME/.ssh/id_ed25519.pub $HOME/.ssh/$USER_NAME.pub
```

# .CONFIGS

```bash
sudo apt install git -y -qq
mkdir -p $HOME/.scripts
git clone https://github.com/nicodax/.configs.git $HOME/.scripts/.configs
cd $HOME/.scripts/.configs/home
bash main.sh
### REBOOT NEEDED
```

```bash
### AFTER REBOOT
cd $HOME/.scripts/.configs/home
bash post_install.sh
```

# GNOME SETTINGS

## KEYBOARD

### KEYBOARD SHORTCUTS

* ```Super + I``` => gnome-control-center
* ```Super + Maj + S``` => spotify
* ```Super + Maj + G``` => steam
* ```Super + T``` => gnome-terminal
* ```Super + B``` => firefox

# FIREFOX

## EXTENSIONS

* uBlock Origin
* LastPass: Free Password Manager
* I don't care about cookies
* Bitwarden - Free Password Manager

## SETTINGS

### GENERAL

* enable ```Ctrl+Tab cycles through tabs in recently used order```

### Privacy & Security

* disable ```Ask to save logins and passwords for web sites```

### Steam


```bash
### AFTER SIGNING IN TO STEAM
### FIRST, EXIT STEAM
cd $HOME/.scripts/.configs/home
bash install_proton_ge.sh
```

Open Steam Settings: `Steam > Settings`:
* Open the `Downloads` tab and select the appropriate location;
* Open the `Steam Play` tab and check the `Enable Steam Play for all other titles` checkbox;
* Select the appropriate Proton-GE version;

## Clean config scripts

If needed, clean the config scripts like so:

```bash
rm -rf $HOME/.scripts/.configs
```