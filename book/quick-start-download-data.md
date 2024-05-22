# Download Data

## Browse products

[TROPESS products](https://disc.gsfc.nasa.gov/datasets?keywords=tropess) are available on Goddard Earth Sciences Data and Information Services Center (GES DISC). 

::::{tab-set}
:::{tab-item} macOS
:sync: macos
In Terminal:
```bash
open https://disc.gsfc.nasa.gov/datasets?keywords=tropess
```
:::
::::

We will be using CrIS JPSS-1 Methane forward stream. To see all the available data for CrIS JPSS-1 Methane (CH4), go to the [CrIS JPSS-1 CH4 Archive](https://tropess.gesdisc.eosdis.nasa.gov/data/TROPESS_Summary/TRPSYL2CH4CRS1FS.1).

::::{tab-set}
:::{tab-item} macOS
:sync: macos
In Terminal:
```bash
open https://tropess.gesdisc.eosdis.nasa.gov/data/TROPESS_Summary/TRPSYL2CH4CRS1FS.1
```
:::
::::

## Download some sample data

Download the TROPESS Summary Methane (CH4) product for May 16, 2023:

::::{tab-set}
:::{tab-item} macOS
:sync: macos
Open Terminal and run the following commands:
```bash
pushd ./data

# download the data files
# summary product (columns)
data_file='TROPESS_CrIS-JPSS1_L2_Summary_CH4_20230516_MUSES_R1p20_FS_F0p6.nc'
wget --load-cookies ~/.urs_cookies --save-cookies ~/.urs_cookies \
     --auth-no-challenge=on --keep-session-cookies --content-disposition --continue \
     https://tropess.gesdisc.eosdis.nasa.gov/data/TROPESS_Summary/TRPSYL2CH4CRS1FS.1/2023/$data_file


# standard product (profiles)
data_file='TROPESS_CrIS-JPSS1_L2_Standard_CH4_20230516_MUSES_R1p20_FS_F0p6.nc'
wget --load-cookies ~/.urs_cookies --save-cookies ~/.urs_cookies \
     --auth-no-challenge=on --keep-session-cookies --content-disposition --continue \
     https://tropess.gesdisc.eosdis.nasa.gov/data/TROPESS_Standard/TRPSDL2CH4CRS1FS.1/2023/$data_file

# download the user guides and README
# summary
user_guide='TROPESS-CH4_L2_Product_Quick_Start_User_Guide_Summary_only.pdf'
wget --load-cookies ~/.urs_cookies --save-cookies ~/.urs_cookies \
     --auth-no-challenge=on --keep-session-cookies --content-disposition --continue \
https://docserver.gesdisc.eosdis.nasa.gov/public/project/TROPESS/User_Guides/$user_guide

# standard
user_guide='TROPESS-AIRS-CH4_L2_Product_Quick_Start_User_Guide_20210402.pdf'
wget --load-cookies ~/.urs_cookies --save-cookies ~/.urs_cookies \
     --auth-no-challenge=on --keep-session-cookies --content-disposition --continue \
https://docserver.gesdisc.eosdis.nasa.gov/public/project/TROPESS/User_Guides/$user_guide

readme='TROPESS_Forward_Stream_README.pdf'
wget --load-cookies ~/.urs_cookies --save-cookies ~/.urs_cookies \
     --auth-no-challenge=on --keep-session-cookies --content-disposition --continue \
https://tropess.gesdisc.eosdis.nasa.gov/data/TROPESS_Standard/TRPSDL2CH4CRS1FS.1/doc/$readme

popd     
```
:::
::::
