# https://regolith-linux.org website

This site uses the [Hugo static site generator](https://gohugo.io/) and the [Docsy theme](https://github.com/google/docsy).

## Local Development

Please ensure you have the following installed:

- Hugo **extended** **>= 0.8.0** (otherwise PostCSS won't work)
- npm
- git

### Checkout and View Local

```bash
$ git clone --recurse-submodules --depth 1 git@github.com:regolith-linux/website.git regolith-website
$ cd regolith-website
$ npm install
$ hugo server
```

### Make changes

Edit content as needed. If `hugo server` is running then updates are automatically reloaded after committing changes to disk.

### Deploy update

Once you're ready to publish, commit your changes and then run the `deploy.sh` script to generate the site and publish it to GitHub. <sub>This requires write access to Regolith's git repo `website`.</sub>

```bash
$ ./deploy "reason for change"
```
