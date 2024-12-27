# DOTDOTFILES

A (silly) simple dotfiles manager.

## HOW TO USE

Note: install git first.

### INSTALLATION

bash:
```
echo -e "\nalias ddf=$HOME/ddf.sh" >> $HOME/.bashrc
```

zsh:
```
echo -e "\nalias ddf=$HOME/ddf.sh" >> $HOME/.zprofile
```

### USAGE

Initialization:
```
ddf init
```

A bare git repository will be made to version control dotfiles.

Now run the usual git commands as below:
```
ddf git status
ddf git add <your-dot-file>
ddf git commit -m <your-commit-message>
ddf git log
```