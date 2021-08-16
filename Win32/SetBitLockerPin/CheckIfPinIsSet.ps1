#Detect Pin has been set
$ExpectedKeyType = ""
$KeyProtectorTypes = (Get-BitLockerVolume).KeyProtector.keyprotectortype
if($KeyProtectorTypes -contains $ExpectedKeyType){
	#Expected KeyProtector set
} else {
	write-host "No PIN applied"
}