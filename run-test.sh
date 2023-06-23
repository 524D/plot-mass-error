#!/bin/sh

if [ ! -f 35765_x02282_AN_sb_IMAC_epoxy_HeLa1mg_1.mzid ] || [ ! -f 35766_x02283_AN_sb_IMAC_maleimide_HeLa1mg_1.mzid ]
then
    ./get-testdata.sh
fi

./plot-mass-error.R --outfile "PXD041271.png" --name PXD041271 --colors "#F01010,#1010F0" --legend "AN_sb_IMAC_epoxy_HeLa1mg_1,AN_sb_IMAC_maleimide_HeLa1mg_1" 35765_x02282_AN_sb_IMAC_epoxy_HeLa1mg_1.mzid 35766_x02283_AN_sb_IMAC_maleimide_HeLa1mg_1.mzid