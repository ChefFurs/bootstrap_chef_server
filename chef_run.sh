#!/usr/bin/env bash
echo "Pull latest git to be sure"
git pull origin master || exit 5

echo "Ensure we have the right chef"
curl -L https://www.chef.io/chef/install.sh | sudo bash -s -- -v 12.3.0

echo "Make chef working directories"
mkdir cookbooks

echo "Install pre-reqs"
for i in "chef-server" "chef-server-ingredient" "packagecloud"; do
  curl -#L https://supermarket.chef.io/cookbooks/$i/download | sudo tar xvzC cookbooks/
done

sudo chef-client -z --runlist 'recipe[chef-server::default]' -j server.json
