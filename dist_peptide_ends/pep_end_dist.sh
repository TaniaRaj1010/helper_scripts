#!/bin/bash
vmd -dispdev text -psf ../step3_input.psf -netcdf ../run6.nc -e pep_end_dist.tcl
echo exit
