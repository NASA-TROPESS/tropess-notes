# Running on macOS

First make sure you have done the [setup on macOS](setup-macos). 

Clone the [tropess-notes-python](https://github.com/swiftsoftwaregroup/tropess-notes-python) repository:

```bash
git clone https://github.com/swiftsoftwaregroup/tropess-notes-python.git
```

Configure the project to create a local Python virtual environment and install all required Python packages: 

```bash
source configure.sh
```

Start Jupyter Lab:

```bash
jupyter lab
```

From here pick any of the notebooks (`*.ipynb`) and try to run it. Before running the code, make sure you have downloaded the TROPESS sample data  to `./data` as documented in the examples. 
