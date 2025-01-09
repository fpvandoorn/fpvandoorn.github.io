# Setup for Bonn office computers

The office computers (as of December 2024) run Debian GNU/Linux 11 (bullseye), with GUI LXQt.
Here are some tips for setting up the computer.

## Language

* You need to login with your `@math.uni-bonn.de` username and password.
* The keyboard layout for the login screen is German. This cannot be changed. (This applies both to the first login after booting the computer, and to later log-ins after locking the screen.)
* The OS language and keyboard layout are German by default, and can be changed. 
* If you want to change the OS language to English then create a file called ".locale" in your home directory with the following content:
```
export LANG=en_GB.UTF-8
```

## Lean

* VSCodium is installed on some office computers, but not others. If you don't have it, you can contact the IT department with your computer name to ask them to install it. You can find your computer name by opening a shell (e.g. LXTerminal) 
* **important** Everything related to Lean should be done in your `/local/<Username>` folder (in the Filesystem root). Lean + Mathlib cache should already be configured correctly to put the `.elan` and `.cache` folders in that directory.
* If you have trouble installing Lean, run the `elan` installation script manually from a shell. Since the `.profile` script is not run on startup, Lean might not be added to your PATH correctly during installation. If this happens to you, edit `~/.bashrc` manually by adding the line `export PATH="${PATH}:/local/<userName>/.elan/bin"` and inserting your username (and then restarting your terminal).

Minor:
* In VSCode, you might want to edit the Keyboard Shortcuts and bind `Go Forward` to `Alt+RightArrow`.

## Mouse & Keyboard

* I personally dislike (non-flat) mouse acceleration in any form, which is enabled by default, and I didn't see an option in the GUI to fix it.
I fixed it by creating a file `startup.sh` in my HOME directory with the following contents:
```
#!/bin/sh
xinput set-prop "Cherry GmbH CHERRY Wireless Device Mouse" 300 0.7
xinput set-prop "Cherry GmbH CHERRY Wireless Device Mouse" 303 0, 1
```
You can run `xinput` and `xinput list-props` to find the name and properties of your mouse. Here I'm modifying these properties:
```
libinput Accel Speed (300)
libinput Accel Profile Enabled (303)
```
The `0.7` can be modified to change the sensivity of the mouse linearly.
I didn't find a way to automatically run this when logging in (neither `.profile`, nor autostart (via GUI or directly editing a config file) seems to work). So I just run this command from `.bashrc` and then it gets executed when I open a shell for the first time.

* In Firefox, consider enabling `Settings > autoscrolling` to enable scrolling with Middle mouse-button
* In `Preferences > Window Manager > Keyboard` consider adding more convenient keyboard shortcuts for `Maximise window` and `Tile window to the left/right`.

## Terminal and Git

* Consider changing your bash prompt. Download [this script](https://github.com/git/git/blob/master/contrib/completion/git-prompt.sh) and add the following to `.bashrc`:
```
source /home/<userName>/git-prompt.sh
PS1="\[\033[32m\]\u@\h\[\033[37m\]:\[\033[33m\]\w\[\033[36m\]\$(__git_ps1 ' (%s)')\[\033[00m\]\$ "
```
* I like some aliases of commonly-used commands, e.g.
```
alias lc="lake exe cache get"
alias lb="lake build"
alias cm="git checkout origin/master"
alias clm="git checkout master"
alias gp="git push"
alias gc="git commit -am"
alias gcf="git commit -am \"fix\""
alias gcs="git commit -am \"small\""
alias ga="git commit -a --amend --no-edit"
alias master="git fa && cm && lc"
alias gm="git -c core.editor=true merge"
alias gmm="gm origin/master"
alias gmc="git add -u && gm --continue"
alias grc="git add -u && git -c core.editor=true rebase --continue"
alias gff='git merge --ff-only origin/$(git rev-parse --abbrev-ref HEAD)'
```
* Some Git configuration options are useful. You can modify `.gitconfig` (also with `git config --global --edit`). This is my current setup (I don't use all aliases, but a few are very useful, especially `git l` and `git la`):
```
[core]
	editor = codium
	autocrlf = input
	compression = -1
[pull]
	rebase = true
[alias]
	alias = ! git config --get-regexp ^alias\\. | sed -e s/^alias\\.// -e s/\\ /\\ =\\ /
  my-checkout = !git checkout $1 && git reset master --hard && git cherry-pick $1-patch && :
  my-commit = !git stash && git checkout master && git stash pop && git commit
  unstash = !git stash show -p | git apply -3 && git stash drop
  a = "add"
  aa = "add --all"
  ai = "add --interactive"
  amend = "commit --amend -c HEAD"
  amendc = "commit --amend -C HEAD"
  ap = "add --patch"
  assume = "update-index --assume-unchanged"
  assumed = "!git ls-files -v | grep ^h | cut -c 3-"
  au = "add --update"
  b = "branch"
  br = "branch"
  commit = "commit -v"
  ci = "commit -v"
  cia = "commit -va"
  co = "checkout"
  conflicts = "!git ls-files -u | cut -f 2 | sort -u"
  cp = "cherry-pick"
  d = "diff"
  dl = "diff HEAD^"
  ds = "diff --staged"
  du = "diff origin/master..master"
  dump = "cat-file -p"
  f = "fetch --prune"
  fa = "fetch --all --prune"
  fd = "log --diff-filter=D --summary"
  ff = "!git ls-files | grep -i"
  fm = "log --diff-filter=M --summary"
  fo = "fetch origin --prune"
  gr = "grep -Ii"
  grep = "grep -Ii"
  log-pretty = "log --pretty='format:%C(blue)%h%C(red)%d%C(yellow) %s %C(green)%an%Creset, %ar'"
  log-stat = "log --pretty=format:'%C(yellow)%h%Cred%d\\ %Creset%s%Cblue\\ [%cn]' --decorate --stat"
  log-hist = "!git log-pretty --graph"
  l = "!git log-hist"
  la = "!git log-hist --all"
  ll = "!git log-stat"
  lp = "log --patch"
  ls = "!git log-stat"
  lt = "!git log-hist --simplify-by-decoration"
  lu = "!git log-hist origin/master..master"
  merge = "merge --no-edit"
  m = "merge --no-ff"
  mf = "merge --ff-only"
  pf = "pull --ff-only"
  pnp = "!git pull --rebase && git push"
  r = "reset"
  r1 = "reset HEAD^"
  r2 = "reset HEAD^^"
  rh = "reset --hard"
  rh1 = "reset HEAD^ --hard"
  rh2 = "reset HEAD^^ --hard"
  s = "status -sb"
  sa = "stash apply"
  sha = "rev-list -n 1 HEAD --"
  sl = "stash list"
  sp = "stash pop"
  ss = "stash save -u"
  st = "status"
  suba = "submodule add"
  subr = "!git-submodule-rm"
  subs = "submodule sync"
  subu = "submodule foreach git pull origin master"
  type = "cat-file -t"
  unassume = "update-index --no-assume-unchanged"
  unassumeall = "!git assumed | xargs git update-index --no-assume-unchanged"
  untracked = "ls-files -o -X.gitignore --exclude=.*"
[diff]
  colormoved = "default"
  colorMovedWs = allow-indentation-change
[merge]
	conflictstyle = diff3
[push]
	default = current
```

## Note to self:
* Shift-insert in LXTerminal does not paste, ctrl+shift+V does.

## Annoyances
* `ctrl` closes the start menu, making the search-box near useless. (this is fixed in LXQt in 2022, but not in the old version we have.)
* Scrolling on an unfocused windows focuses that window. This doesn't seem to be configurable.
* `~/.profile` doesn't seem to ever get executed (even after making it executable). How to run a startup script?
* USB-C port doesn't seem to be able to connect to a monitor.
