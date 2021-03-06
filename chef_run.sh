#!/usr/bin/env bash
echo "Ensure we have the right chef"
if [[ ! -d /opt/chef ]]; then
  curl -L https://www.chef.io/chef/install.sh | sudo bash -s -- -v 12.4.3
fi

echo "Make chef working directories"
mkdir cookbooks

echo "Install pre-reqs"
for dependency in "chef-server" "chef-ingredient" "yum-chef" "yum" "apt-chef" "apt" "packagecloud"; do
  curl -#L https://supermarket.chef.io/cookbooks/$dependency/download | tar xvzC cookbooks/
done

sudo chef-client -z --runlist 'recipe[chef-server::default]' -j server.json
