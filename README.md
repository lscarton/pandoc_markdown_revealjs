# Pandoc with Markdown and Reveal.js
Forked from https://github.com/FilBot3/pandoc_markdown_revealjs
Updated to use Reveal.js 4.5
## Overview

Using `pandoc` convert `markdown` files into a `reveal.js` slide show to oooh
and aww your participants.

## Requirements

* `curl` - I developed this on a Linux machine with cURL
* `pandoc` - [https://pandoc.org]


## Setup

Run the following `Makefile` command. If you don't have `make` installed or
available, you'll need to type or copy the commands into your terminal.

```bash
make download-revealjs
```

## Usage

Write stuff in the `src/` directory. Then add the new files to the list of
inputs for pandoc in the Makefile. Once that is complete, run the following
command:

```bash
make build
```

You can load the resultant `dist/index.html` file directly into Firefox, or use
a web server, like Python's `http.server` to serve it.

```bash
make http
```
