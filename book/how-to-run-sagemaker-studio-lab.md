# Running in Amazon SageMaker Studio Lab

[Amazon SageMaker Studio Lab](https://studiolab.sagemaker.aws/) is a free service that gives users access to AWS compute resources, in an environment based on open-source JupyterLab. 

## Signing up

Request an account for Amazon SageMaker Studio Lab [here](https://studiolab.sagemaker.aws/requestAccount) and complete the sign up process.

Once you have signed up navigate to [https://studiolab.sagemaker.aws/](https://studiolab.sagemaker.aws/) and start a **CPU** runtime.

## How to use Amazon SageMaker Studio Lab with this book

Throughout the book when you see a button like this <a target="_blank" href="https://studiolab.sagemaker.aws/import/github/swiftsoftwaregroup/tropess-notes-python/blob/main/book/quick-start-scatter-plot-methane-column.ipynb">
  <img src="https://studiolab.sagemaker.aws/studiolab.svg" alt="Open in SageMaker Studio Lab"/></a>, just click it to open the code automatically in Amazon SageMaker Studio Lab.
 
## Initial setup

> You have to go through this every time you launch a new SageMaker Studio Lab runtime. However if you reuse the same runtime this has to be done just once. After that the configuration will be reused.

Open a sample notebook in SageMaker Studio Lab: click this button <a target="_blank" href="https://studiolab.sagemaker.aws/import/github/swiftsoftwaregroup/tropess-notes-python/blob/main/book/quick-start-scatter-plot-methane-column.ipynb">
  <img src="https://studiolab.sagemaker.aws/studiolab.svg" alt="Open in SageMaker Studio Lab"/></a>  

In the "Notebook preview" page click the large "Copy to project" button. Then click "Copy notebook only". 

### Install Python packages

> NOTE: Any installed extensions and packages installed on your `default` environment will persist in your project, so you do not need to install your packages for every project runtime session. However, extensions and packages installed on your sagemaker-distribution environment will not persist, so you will need to install new packages during your next session. Thus, it is highly recommended to install packages within your notebook to ensure that the packages are installed in the intended environment.

In SageMaker Studio Lab open Terminal and type the following commands:

```bash
# list Anaconda environments
conda env list

# activate the default Anaconda environment. This is the environment used by the Jupyter notebooks
conda activate default

# download requirements-sagemaker.txt from GtiHub 
wget https://raw.githubusercontent.com/swiftsoftwaregroup/tropess-notes-python/main/book/requirements-sagemaker.txt

# install the requirements
pip install -r requirements-sagemaker.txt
```

### Create data directory

In In SageMaker Studio Lab Terminal:

```bash
mkdir -p ./data
```

### Configure data access

In In SageMaker Studio Lab Terminal follow the steps in [Data Access on Linux](data-access-linux) to setup data access.
