#!/bin/bash
conda activate AmberTools22
cpptraj -i intraA.in &> intraA.log;
cpptraj -i intraB.in &> intraB.log;
cpptraj -i interAB.in &> interAB.log
conda deactivate
