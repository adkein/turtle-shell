turtle-shell
====

The problem addressed is that you work on multiple Unix terminals via SSH and you don't want to install things and configure your environment every time you start working on a new machine.

The solution is to carry your environment with you (hence "turtle"). The logic is:

1. You make a repo (perhaps modeled after turtle-shell) that has some one or more config files that serve as entry points. In turtle-shell the main one is config/rc_bash.
2. You clone your configs repo onto the remote machine. Let's say you clone it into the home directory and that you name it 'my_things'.
3. You define in your local .bashrc a locale variable, and specify in your local ssh_config that it be sent in SSH connections. Call it LC_YOUR_NAME_HERE.
4. Append to the remote machine's .bashrc a line like `[[ -n $LC_YOUR_NAME_HERE ]] && source $HOME/my_things/config/rc_bash`

__Note:__ I advise against keeping your configs in a public repository. Create instead a private repository or -- even more fun -- host your own. The contents of this repository are intended just as an illustration.

Vim
----

A major benefit, for me, to using something like turtle-shell is that I can more or less take for granted my personalized Vim environment. That includes the general mappings, settings, and functions defined in ones .vimrc file, as well as plugins installed using [pathogen](https://github.com/tpope/vim-pathogen).

You can put your own .vimrc file and .vim folder in the config/ directory of turtle-shell. There are lines in config/rc_bash that set environment variables and aliases pointing Vim to those configs.

Now about installing Vim plugins. I prefer using [pathogen](https://github.com/tpope/vim-pathogen). Inside config/.vim/bundle, whereas you would otherwise `git clone <module url>` to install a plugin, in turtle-shell you `git submodule add <module url>`. If you're not familiar with git submodules, I recommend learning about them, and this is a good way to start! :}D

Since the plugins are in submodules (which in principle could contain their own submodules), after you clone turtle-shell onto a machine you'll want to enter the repository and `git submodule update --init --recursive` or else the plugin directories will remain empty. (More generally, use of submodules also allows you a lighter footprint, cloning turtle-shell and only pulling in certain configs as necessary.)

To be continued
----

I'll try to elaborate on the contents of turtle-shell soon.

