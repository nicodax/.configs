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

* ```Super + T``` => gnome-terminal
* ```Super + I``` => gnome-control-center
* ```Super + Maj + F``` => firefox
* ```Super + K``` => kdocker
* ```Super + E``` => nautilus

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

# KDOCKER & SPOTIFY

Add spotify icon to kdocker:
* download [spotify logo](https://www.freepnglogos.com/download/7053);
* use kdocker to minimize spotify;
* on spotify's icon in system tray, select ```Options > Set icon...```
* on spotify's icon in system tray, select ```Options > Save settings > Spotify only```
