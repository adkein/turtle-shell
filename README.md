turtle-shell
====

The problem addressed is that you work on multiple Unix terminals via SSH and you don't want to install things and configure your environment every time you start working on a new machine.

The solution is to carry your environment with you (hence "turtle"). The logic is:

1. You make a repo (perhaps modeled after turtle-shell) that has some one or more config files that serve as entry points. In turtle-shell the main one is config/rc_bash.
2. You clone your configs repo onto the remote machine. Let's say you clone it into the home directory and that you name it 'my_things'.
3. You define in your local .bashrc a locale variable, and specify in your local ssh_config that it be sent in SSH connections. Call it LC_YOUR_NAME_HERE.
4. Append to the remote machine's .bashrc a line like `[[ -n $LC_YOUR_NAME_HERE ]] && source $HOME/my_things/config/rc_bash`

I'll try to elaborate on the contents of turtle-shell soon.

