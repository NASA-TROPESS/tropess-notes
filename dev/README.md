# Book development

> Instructions are for macOS

## Configure

Setup Python and install packages:

```bash
source configure.sh
```

## Build

```bash
./build.sh
```

or

```bash
# rebuild everything
jupyter-book build --builder dirhtml --all book/

# build new and updated pages only
jupyter-book build --builder dirhtml book/
```

# Preview

Start local Web server:

```bash
./watch.sh
```

or

```bash
livereload \
    --port 4000 \
    --target book/_build/dirhtml/index.html \
    book/_build/dirhtml
```

Open in browser:

```bash
open http://localhost:4000
```
