# Download Data

Download TROPESS summary products for CrIS JPSS-1 Carbon Monoxide (CO) for the period from June 1st, 2023 till June 8th, 2023. 

Create a bash script file with the following contents and save it as `download-canadian-fires.sh` in the `scripts` subdirectory:

```bash
#!/usr/bin/env bash

# date range, the last downloaded day will be `end_date - 1 day`
start_date=2023-06-01
end_date=2023-06-09

# after this, start_date and end_date will be valid ISO 8601 dates,
start_date=$(gdate -I -d "$start_date") || exit 1
end_date=$(gdate -I -d "$end_date") || exit 1

pushd ./data

current_date="$start_date"
while [ "$current_date" != "$end_date" ]; do 
    echo Downloading $current_date

    file_date=$(gdate -d "$current_date" +"%Y%m%d")
    data_file="TROPESS_CrIS-JPSS1_L2_Summary_CO_${file_date}_MUSES_R1p20_FS_F0p6.nc"

    wget --load-cookies ~/.urs_cookies --save-cookies ~/.urs_cookies \
         --auth-no-challenge=on --keep-session-cookies --content-disposition --continue \
        https://tropess.gesdisc.eosdis.nasa.gov/data/TROPESS_Summary/TRPSYL2COCRS1FS.1/2023/$data_file

    # advance to next date
    current_date=$(gdate -I -d "$current_date + 1 day")
done

popd
```

Make the script executable:

```bash
chmod +x ./scripts/download-canadian-fires.sh
```

Run the script to download the data files:

```bash
./scripts/download-canadian-fires.sh
```
