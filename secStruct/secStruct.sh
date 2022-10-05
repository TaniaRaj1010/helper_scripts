#!/bin/bash
conda activate AmberTools22
cpptraj -i secStruct.in &> secStruct.log;
conda deactivate
