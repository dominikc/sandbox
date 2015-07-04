#  sandbox - all-in-one toolkit for remote sessions

Sandbox is the set of scripts designed working through ssh. 
It requires no configuration.

### Features
* pre-configured `tmux`
* basic `zsh` configuration
* basic `vim` configuration
* bundled `ack` command
* `rbenv` support

### Installation
1. Please install required packages:

        sudo apt-get install vim zsh tmux

2. Clone repository into desired location:

        git clone http://github.com/dominikc/sandbox ~/s

3. [Optional] Please indicate your environment type (production [default], staging or development):

        echo "staging" > ~/.sandbox_env

4. Create or attach to existing sandbox sesssion:

        s/tmux
        s/tmux a[ttach]
