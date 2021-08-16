#Set Registry


#Detect Registry has been set
$EnhancedPin = ""
try{
	$EnhancedPin = Get-ItemPropertyValue HKLM:\SOFTWARE\Policies\Microsoft\FVE -Name UseEnhancedPin -ErrorAction SilentlyContinue
}
if ($EnhancedPin -eq "1"){
	#EnhancedPIN enabled
} else {
	write-host "Enhanced PIN not enabled"
}