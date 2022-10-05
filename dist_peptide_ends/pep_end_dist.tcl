set sel [atomselect top all]

set group1_A [ atomselect top "residue 0"]
set group2_A [ atomselect top "residue 29"]

set group1_B [ atomselect top "residue 30"]
set group2_B [ atomselect top "residue 59"]

set distance 0

set outFile [open "pep_end_dist.out" w]
	
	#CHAIN_A:
		set com1 [ measure center $group1_A ]
		set com2 [ measure center $group2_A ]
  		set distance [ vecdist $com1 $com2 ]
		puts $outFile "longest distance A : $distance"

	#CHAIN_B:
		set com1 [ measure center $group1_B ]
		set com2 [ measure center $group2_B ]
       		set distance [ vecdist $com1 $com2 ]
		puts $outFile "longest distance B : $distance"

close $outFile
exit
