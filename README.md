# DOTDOTFILES

A (silly) simple dotfiles manager.

## HOW TO USE

Note: install git first.

### INSTALLATION

Download the `.ddf.sh` script file and put into the `$HOME` directory.

bash:
```
chmod +x $HOME/.ddf.sh
echo -e "\nalias ddf=$HOME/.ddf.sh" >> $HOME/.bash_profile
```

zsh:
```
chmod +x $HOME/.ddf.sh
echo -e "\nalias ddf=$HOME/.ddf.sh" >> $HOME/.zprofile
```

Restart the terminal for the installation to take effect.

Note: tested only on macOS; the target file might be different on your system.

### USAGE

Initialization:
```
ddf init
```

A bare git repository will be made to version control dotfiles.

You can run the usual git commands as below:
```
ddf git status
ddf git add <your-dot-file>
ddf git commit -m <your-commit-message>
ddf git log
```

To share dotfiles, you can set the remote repository as below:
```
ddf git remote add origin <your-remote>
ddf git push origin
```
Now you can keep your dotfiles in sync with `git pull` command.