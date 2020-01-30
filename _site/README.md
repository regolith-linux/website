### Local Development

To run a local copy of the site to see changes without pushing, install Ruby, Nodejs, and Bundler (for more info, see [this GitHub Documentation](https://help.github.com/articles/setting-up-your-github-pages-site-locally-with-jekyll/)):

```shell
curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash -           # Add stable NodeJS repo
sudo apt install -y build-essential nodejs ruby ruby-dev zlib1g-dev      # Install dev tools, NodeJS, Rudy, and zlib
sudo gem install bundler                                                 # Install Bundler to manage site dependencies
bundle install                                                           # Install gems to run Jekyll
```

Then run jekyll:

```shell
bundle exec jekyll serve # Run Jekyll with Bundler
```
