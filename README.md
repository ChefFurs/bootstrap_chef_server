# Chef server setup

This is just a quick and dirty script and repo for bootstrapping my, or maybe your chef server.

Most of this is directly from the [chef-server cookboks's readme](https://github.com/chef-cookbooks/chef-server)

## Usage
1. Fork
2. **Edit server.json** This sets the servers hostname!!
3. donwload onto new server and set the hostname
4. run chef_run

## Assumptions
* git is installed
* curl is installed
* The user running this has sudo
* You are running this on a chef-supported linux platform
