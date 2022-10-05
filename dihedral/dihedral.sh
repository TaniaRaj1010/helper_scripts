#!/bin/bash
conda activate AmberTools22
cpptraj -i dihedral.in &> dihedral.log;
conda deactivate
