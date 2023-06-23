#!/bin/bash

FILES=("35765_x02282_AN_sb_IMAC_epoxy_HeLa1mg_1.mzid.gz" "35766_x02283_AN_sb_IMAC_maleimide_HeLa1mg_1.mzid.gz")
URL_BASE="https://ftp.pride.ebi.ac.uk/pride/data/archive/2023/05/PXD041271/"

for F in ${FILES[@]}; do
  echo "Downloading ${URL_BASE}$F"
  wget -O "$F" "${URL_BASE}$F"
  gunzip $F
done

