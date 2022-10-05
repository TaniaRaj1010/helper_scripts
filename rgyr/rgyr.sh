#!/bin/bash
vmd -dispdev text -psf ../step3_input.psf -netcdf ../run1.nc -netcdf ../run2.nc -netcdf ../run3.nc -netcdf ../run4.nc -netcdf ../run5.nc -e rgyr_func.tcl
echo exit
