# Download Data

## Browse products

Browse TROPESS products:

```bash
open https://disc.gsfc.nasa.gov/datasets?keywords=tropess
```

We will be using CrIS JPSS-1 Ozone forward stream. To see all the available data for CrIS JPSS-1 Ozone (O3) go to the CrIS JPSS-1 Online Archive for O3:

```bash
open https://tropess.gesdisc.eosdis.nasa.gov/data/TROPESS_Summary/TRPSYL2O3CRS1FS.1
```

## Download some sample data

Download the TROPESS products for May 16, 2023:

```bash
pushd ./data

# download the data files

# standard product (profile)
data_file='TROPESS_CrIS-JPSS1_L2_Standard_O3_20230516_MUSES_R1p20_FS_F0p6.nc'
wget --load-cookies ~/.urs_cookies --save-cookies ~/.urs_cookies \
     --auth-no-challenge=on --keep-session-cookies --content-disposition --continue \
     https://tropess.gesdisc.eosdis.nasa.gov/data/TROPESS_Standard/TRPSDL2O3CRS1FS.1/2023/$data_file

# summary product (column)
data_file='TROPESS_CrIS-JPSS1_L2_Summary_O3_20230516_MUSES_R1p20_FS_F0p6.nc'
wget --load-cookies ~/.urs_cookies --save-cookies ~/.urs_cookies \
     --auth-no-challenge=on --keep-session-cookies --content-disposition --continue \
     https://tropess.gesdisc.eosdis.nasa.gov/data/TROPESS_Summary/TRPSYL2O3CRS1FS.1/2023/$data_file

# download the user guides and README

# standard
user_guide='TROPESS-CRIS-O3_L2_Product_Quick_Start_User_Guide_Standard_only_2-22-21.pdf'
wget --load-cookies ~/.urs_cookies --save-cookies ~/.urs_cookies \
     --auth-no-challenge=on --keep-session-cookies --content-disposition --continue \
https://docserver.gesdisc.eosdis.nasa.gov/public/project/TROPESS/User_Guides/$user_guide

# summary
user_guide='TROPESS-O3_L2_Product_Quick_Start_User_Guide_Summary_only.pdf'
wget --load-cookies ~/.urs_cookies --save-cookies ~/.urs_cookies \
     --auth-no-challenge=on --keep-session-cookies --content-disposition --continue \
https://docserver.gesdisc.eosdis.nasa.gov/public/project/TROPESS/User_Guides/$user_guide

readme='TROPESS_Forward_Stream_README.pdf'
wget --load-cookies ~/.urs_cookies --save-cookies ~/.urs_cookies \
     --auth-no-challenge=on --keep-session-cookies --content-disposition --continue \
https://tropess.gesdisc.eosdis.nasa.gov/data/TROPESS_Standard/TRPSDL2O3CRS1FS.1/doc/$readme

popd     
```
