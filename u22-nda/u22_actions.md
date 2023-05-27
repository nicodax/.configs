```json
{
  "os": "Ubuntu Jammy Jellyfish"
}
```

# .CONFIGS

```bash
sudo apt install git -y -qq
mkdir -p $HOME/.scripts
git clone https://github.com/nicodax/.configs.git $HOME/.scripts/.configs
cd $HOME/.scripts/.configs/u22-nda
chmod +x main.sh
./main.sh

### REBOOT NEEDED
```

```bash
### AFTER REBOOT
cd $HOME/.scripts/.configs/u22-nda
chmod +x post_install.sh
./post_install.sh
cd $HOME
sudo rm -rf .scripts/.configs
```

# GNOME SETTINGS

## KEYBOARD

### KEYBOARD SHORTCUTS

* ```Super + Maj + S``` => spotify
* ```Super + Maj + G``` => steam

# FIREFOX

## EXTENSIONS

* uBlock Origin
* LastPass: Free Password Manager
* I don't care about cookies

## SETTINGS

### GENERAL

* enable ```Ctrl+Tab cycles through tabs in recently used order```

### Privacy & Security

* disable ```Ask to save logins and passwords for web sites```

### Steam

Open Steam Settings: `Steam > Settings`:
* Open the `Downloads` tab and select the appropriate location;
* Open the `Steam Play` tab and check the `Enable Steam Play for all other titles` checkbox;