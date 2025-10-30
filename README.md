# E-Vim, idk
## REQUIREMENTS!
### fzf

### Nerd Fonts

> [!IMPORTANT]
> Install a Nerd Font for a better user experience
#### Debian / Ubuntu
```bash
mkdir -p ~/.local/share/fonts
cd ~/.local/share/fonts
wget https://github.com/ryanoasis/nerd-fonts/releases/latest/download/FiraCode.zip
unzip FiraCode.zip
fc-cache -fv
```

#### Fedora
```bash
mkdir -p ~/.local/share/fonts
cd ~/.local/share/fonts
wget https://github.com/ryanoasis/nerd-fonts/releases/latest/download/FiraCode.zip
unzip FiraCode.zip
fc-cache -fv
```

#### Arch
```bash
sudo pacman -S nerd-fonts-fira-code
```

#### Using Github
```
git clone --depth=1 https://github.com/ryanoasis/nerd-fonts.git
cd nerd-fonts
./install.sh FiraCode
```
## Using The Vim Way
> [!NOTE]
> If you want to go the Vim Way, uncomment the lines *14* and the lines *55* to *59*. This will disable the mouse and the arrows respectively.

## Dashboard
When you open nvim, you'll be received by the dashboard, in which, in which, you'll have a serie of options:
- 'a'   -> To (A)dd file and put you in insert mode.
- 'f'   -> To (F)ind files in the *current working directory* (CWD)
- 'd'   -> To (D)isplay the File Tree
- 'n'   -> To open (N)vim config files
- 'p'   -> To open (P)rojects directory
    - configure it in the init.lua, otherwise it'll be on `~/Desktop/Projects/`
- 'q'   -> To (Q)uit

## Telescope
Telescope has some mappings defined in normal mode
| Combination | Result |
| ------------- | -------------- |
| <leader> sf | [F]ind [F]iles |
| <leader> sg | [F]ind [G]rep |
| <leader> sw | [F]ind [W]ord |
| <leader> sd | [F]ind [D]iagnostics |
| <leader> sr | [F]ind [R]esume |
| <leader> so | [F]ind [O]ld files |
| <leader> /  | Fuzzily Search in Current Buffer |
| <leader> s/ | [S]earch [/] in Open Files |
| <leader> sn | [S]earch [N]vim Config Files |

## NeoTree
| Combination | Result | Description |
| ------------- | -------------- | -------------- |
| <leader> st | [S]earch Neo-[T]ree | Displays The NeoTree File Browser |
| <leader> nb | [N]eo [B]uffers | Displays all the current active buffers |
| <leader> dg | [D]isplay [G]it Status | Displays a NeoTree File Browser which displays the git status of each file |

## UndoTree
[Undotree](https://github.com/mbbill/undotree) is a undo history visualizer, it makes it much easier to navigate throughout the undo branches in a more visually attractive way.
An undo branch, is basically a feature of nvim where you can go back to a previous state even if it was overwritten by later edits.
For example, imagine we write a text "a", and then "b", but for some reason we don't want "b" and want "c" instead, Well, we undo it, yeah, and then write "c",
We are still able to go back to "b" even though we undid it and commited a change that would overwrite it.

| Combination | Result | Description |
| ------------- | -------------- | -------------- 
| <leader> utt | [U]ndo [T]ree [T]oggle | It displays the undotree and changes the focus to it. |

## LSP

## Format

## Text Objects
We use [mini.nvim](https://github.com/nvim-mini/mini.nvim) to add some better Around/Inside textObjects.


## Comments

