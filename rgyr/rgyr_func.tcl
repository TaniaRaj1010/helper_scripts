## MAIN_PROC_
set total [molinfo top get numframes]
set segname "segname PR"

foreach character {OA OB} {
	set chain [atomselect top ${segname}$character]

	set last [expr $total-1]
	set molid 0
	set COM [veczero]
	set rgyr 0
	
	set outFile_name rgyr_PR$character
	set outFile [open $outFile_name.out w]

	for {set i 0} {$i<=$last} {incr i} {
		$chain frame $i
		$chain update
	  	set rgyr [measure rgyr $chain]
		puts $outFile "frame $i : $rgyr"
	}
	close $outFile
}
exit
