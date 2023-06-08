#!/bin/bash

wget -P ../../data/netcdf -i netcdf_files.txt

wget -P ../../data/ https://mpctransfer.blob.core.windows.net/msd-live-lafferty-sriver/data/csv_zipped.zip
unzip ../../data/csv_zipped.zip -d ../../data/
rm ../../data/csv_zipped.zip
 
