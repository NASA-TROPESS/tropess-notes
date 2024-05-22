# Setup on macOS

>  All shell scripts are `bash`

## Xcode

Install Command Line Tools (CLT) for Xcode. This will install macOS compilers and libraries:

```bash
xcode-select --install
```

## Homebrew

Install [Homebrew](https://brew.sh/):

```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

## System Packages

### coreutils, wget, curl

```bash
brew install coreutils wget curl 
```

### cairo, geos

```bash
brew install cairo geos
```

## Python Environment

### pyenv

Install Python version manager [pyenv](https://github.com/pyenv/pyenv)

```bash
brew install pyenv
```
