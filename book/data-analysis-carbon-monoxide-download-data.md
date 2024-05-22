# Download Data

> Download the TROPESS CO products for May 16, 2023 into  the `./data` directory.

## Browse products

Browse [TROPESS products](https://disc.gsfc.nasa.gov/datasets?keywords=tropess):

```bash
open https://disc.gsfc.nasa.gov/datasets?keywords=tropess
```

We will be using CrIS JPSS-1 Carbon Monoxide forward stream. To see all the available data for CrIS JPSS-1 Carbon Monoxide (CO) go to the [CrIS JPSS-1 CO Online Archive](https://tropess.gesdisc.eosdis.nasa.gov/data/TROPESS_Summary/TRPSYL2COCRS1FS.1):

```bash
open https://tropess.gesdisc.eosdis.nasa.gov/data/TROPESS_Summary/TRPSYL2COCRS1FS.1
```

## Download the data files

```bash
mkdir -p ./data

pushd ./data

# standard product (profile)
data_file='TROPESS_CrIS-JPSS1_L2_Standard_CO_20230516_MUSES_R1p20_FS_F0p6.nc'
wget --load-cookies ~/.urs_cookies --save-cookies ~/.urs_cookies \
     --auth-no-challenge=on --keep-session-cookies --content-disposition --continue \
     https://tropess.gesdisc.eosdis.nasa.gov/data/TROPESS_Standard/TRPSDL2COCRS1FS.1/2023/$data_file

# summary product (column)
data_file='TROPESS_CrIS-JPSS1_L2_Summary_CO_20230516_MUSES_R1p20_FS_F0p6.nc'
wget --load-cookies ~/.urs_cookies --save-cookies ~/.urs_cookies \
     --auth-no-challenge=on --keep-session-cookies --content-disposition --continue \
     https://tropess.gesdisc.eosdis.nasa.gov/data/TROPESS_Summary/TRPSYL2COCRS1FS.1/2023/$data_file

popd
```

## Download user guides

```bash
mkdir -p ./data

pushd ./data

# standard
user_guide='TROPESS-AIRS-CrIS_CO_L2_Product_User_Guide.pdf'
wget --load-cookies ~/.urs_cookies --save-cookies ~/.urs_cookies \
     --auth-no-challenge=on --keep-session-cookies --content-disposition --continue \
https://docserver.gesdisc.eosdis.nasa.gov/public/project/TROPESS/User_Guides/$user_guide

# summary
user_guide='TROPESS-CO_L2_Product_Quick_Start_User_Guide_Summary_only.pdf'
wget --load-cookies ~/.urs_cookies --save-cookies ~/.urs_cookies \
     --auth-no-challenge=on --keep-session-cookies --content-disposition --continue \
https://docserver.gesdisc.eosdis.nasa.gov/public/project/TROPESS/User_Guides/$user_guide

readme='TROPESS_Forward_Stream_README.pdf'
wget --load-cookies ~/.urs_cookies --save-cookies ~/.urs_cookies \
     --auth-no-challenge=on --keep-session-cookies --content-disposition --continue \
https://tropess.gesdisc.eosdis.nasa.gov/data/TROPESS_Standard/TRPSDL2COCRS1FS.1/doc/$readme

popd     
```
