
Lightbox for Origami UI
----

Demo http://origami-ui.org/react-origami-lightbox/

### Usage

```
npm i --save react-origami-lightbox
```

```coffee
require 'react-origami-lightbox'
require 'react-origami-lightbox/src/lightbox.css'
```

Props:

* `show` `bool`
* `alias` `string`
* `onClose` `func`

also `props.children`.

### Bash Alias

```bash
# webpack-workflow
export wf=/Users/chen/repo/mvc-works/webpack-workflow/
alias workflow="
cp $wf/gulpfile.* .;
cp $wf/package.json .;
cp $wf/webpack.* .;
cp $wf/template.cirru .;
cp $wf/.gitignore .;
cp $wf/README.md .;
mkdir src/;
touch src/main.cirru;
git init;
"
```

### Usage

* Development

```text
npm i
gulp html
webpack-dev-server --hot
```

* Production

```text
gulp buld
gulp rsync
```

### License

MIT
