#!/bin/bash

### Download netcdf files
# Already done!
# wget -P ../../data/netcdf -i netcdf_files.txt 

### Download csv files for city data
wget -P ../../data/ https://mpctransfer.blob.core.windows.net/msd-live-lafferty-sriver/data/csv_zipped.zip
unzip ../../data/csv_zipped.zip -d ../../data/
rm ../../data/csv_zipped.zip
