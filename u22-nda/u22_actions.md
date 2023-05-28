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
bash main.sh
### REBOOT NEEDED
```

```bash
### AFTER REBOOT
cd $HOME/.scripts/.configs/u22-nda
bash post_install.sh
```

## Pop Shell

```bash
cd $HOME/.scripts/.configs/u22-nda
bash install_pop_shell.sh
```

After executing the script, it usually hangs onto a black screen. I have not yet tested this much, however, manually restarting the machine works fine.

Once logged back in, open the `Extensions` application and enable the `Pop Shell` extension. Done!

## Clean config scripts

If needed, clean the config scripts like so:

```bash
rm -rf $HOME/.scripts/.configs
```

# GNOME SETTINGS

## KEYBOARD

### KEYBOARD SHORTCUTS

* ```Super + I``` => gnome-control-center
* ```Super + Maj + S``` => spotify
* ```Super + Maj + G``` => steam

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

Open Steam Settings: `Steam > Settings`:
* Open the `Downloads` tab and select the appropriate location;
* Open the `Steam Play` tab and check the `Enable Steam Play for all other titles` checkbox;