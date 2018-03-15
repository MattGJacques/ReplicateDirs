function Copy-Music($source, $dest, $logloc){
	#Mirror local music library to NAS
  $a = "$logloc\$datestr.log
	$datestr = (get-date).ToString('ddMMyyyy')
	Robocopy $source $dest *.* /MIR /R:2 /W:10 /LOG:$a /TEE
}
