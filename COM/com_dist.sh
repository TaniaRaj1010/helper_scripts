#!/bin/bash
vmd -dispdev text -psf ../step3_input.psf -netcdf ../step5_production.nc -netcdf ../step6_production.nc -e com_dist.tcl
echo exit
