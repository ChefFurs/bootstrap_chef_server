# Chef server setup

This is just a quick and dirty script and repo for bootstrapping my, or maybe your chef server.

Most of this is directly from the [chef-server cookboks's readme](https://github.com/chef-cookbooks/chef-server)

## Usage
1. Download this onto your new chef-server
2. **Edit the server.json**
    - You must set the hostname
    - You might want to change what premium apps are installed
3. `./chef_run.sh`

## Assumptions
* The user running this has sudo
* You are running this on a chef server supported linux platform (Ubuntu or CentOS/RedHat)
