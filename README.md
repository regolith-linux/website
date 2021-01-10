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

### Shortcodes

Additional shortcodes are:

- `keys`: To insert a recognizable sequence of keypresses, e.g. `{{< keys "super,shift,q" >}}`
- `img`: To insert an image, including automated, cross-device sizing, a lightbox and an alt text, e.g. `{{< img "images/my-image.jpg" "Some alt text" >}}`
- `supported_version`: To insert the Ubuntu versions, delimited by commas, which are currently supported by Regolith Linux, e.g. `{{< supported_versions >}}` (they are taken from the `config.toml` `params` section)

### Conventions

#### Use Markdown wherever possible

Although Hugo accepts common HTML elements pretty much anywhere the expressed goal is to rely on Markdown and its syntax for pretty much anything _within the confines of the `content` directory itself_. If you need to style something differently, try using [a shortcode]() first, before actually styling the page in "pure" HTML. Some pages are violating this concern, mostly because the underlying theme does as well, but for the sake of making it easier on folks to edit and especially translate the content as well as keeping a consistent style across languages they should be free of HTML.

#### Use `prettier` for formatting files (especially Markdown)

[`prettier`](https://www.npmjs.com/package/prettier) is a versatile formatter for JavaScript/TypeScript and everything related to HTML as well as JSON/YAML and TOML. Please use it to format all the content in the repository that `prettier` is capable of processing. Manual formatting will show up as an error in the future and PRs changing formatting that's different from `prettier` output will not be accepted.

#### Use `console` for highlighting shell session code

Using `bash` obscures the flow of information and things you type into a session isn't really shell code all the time but rather a random set of commands. There's [an open feature request](https://github.com/alecthomas/chroma/issues/137) with the highlighting engine ("Chroma") Hugo is using to accept `console` as a lexer. Once that's accomplished all the relevant highlighting parts will look different. For now, they'll just receive the default styling.

#### Call it `Xresources` (with backticks)

No `Xresource` or Xresource. Use the plural (because that's what we read and what the definition of the mechanism is) and surround the word itself with backticks to make it stand out a little.

#### Put images into `assets/images` and use the `img` shortcode

We don't want duplicate content anywhere, especially not images that are the same for every single translation. Therefor we put images into the `assets/images` folder and use the `img` shortcode to refer to them. You'll get a lightbox and automated, screen-aware (i.e. "mobile friendly") sizing on top. The `img` shortcode has the following syntax:

```go-html-template
{{< img "<path-to-image-in-asset-folder>" "alt-text-for-image" >}}
```

Example:

```go-html-template
{{< img "images/my-image.jpg" "Some image" >}}
```

#### Use `ref` or `relref` for linking between content

Content changes, page names change. Using a hardcoded path in Markdown links will break sooner or later. Hugo has two built-in functions, [`ref` (preferred) pr `relref`](https://gohugo.io/content-management/cross-references/), to make sure links are viable and linking to the right content. Use them whenever you're linking to "internal" content.

**Note**: Hugo will fail to render the page if a link is "dead" and you will have to fix it before you can continue.
