# Running in Google Colab

 [Google Colab](https://colab.research.google.com/) or Colaboratory is a great place to run Jupyter notebooks, with lots of additional features, like GPUs, storage in Github or Google Drive, and access to Google Cloud.

## Signing up

Sign up for Colab Pro account [here](https://colab.research.google.com/signup). You need Colab Pro because you will need to run commands in Terminal.  

Connect Colab to GitHub: 

1. Navigate to Go to [https://colab.research.google.com/github/](https://colab.research.google.com/github)
2. In the popup window, sign-in to your Github account and authorize Colab to use GitHub as you

## How to use Google Colab with this book

Throughout the book, when you see a button like this <a target="_blank" href="https://colab.research.google.com/github/swiftsoftwaregroup/tropess-notes-python/blob/main/book/quick-start-scatter-plot-methane-column.ipynb">
  <img src="https://colab.research.google.com/assets/colab-badge.svg" alt="Open In Colab"/></a>, just click it to open the code automatically in Google Colab.

## Initial setup

> You have to go through this every time you launch a new Google Colab runtime. However if you reuse the same runtime this has to be done just once. After that the configuration will be reused.

Open a sample notebook in Google Colab: click this button <a target="_blank" href="https://colab.research.google.com/github/swiftsoftwaregroup/tropess-notes-python/blob/main/book/quick-start-scatter-plot-methane-column.ipynb">
  <img src="https://colab.research.google.com/assets/colab-badge.svg" alt="Open In Colab"/></a>

### Install Python packages

In Google Colab open Terminal and type the following commands:

```bash
# download requirements-colab.txt from GtiHub 
wget https://raw.githubusercontent.com/swiftsoftwaregroup/tropess-notes-python/main/book/requirements-colab.txt

# install the requirement
pip install -r requirements-colab.txt
```

### Create data directory

In Google Colab Terminal:

```bash
rm -rf sample_data
mkdir -p ./data
```

### Configure data access

In Google Colab Terminal follow the steps in [Data Access on Linux](data-access-linux) to setup data access.
