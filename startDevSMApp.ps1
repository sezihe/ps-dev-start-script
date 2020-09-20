Write-Host "|||||||||||||||||||||||||||||||||||||||||||||||||||||||||||
|||||||||||||||||||||||||||||||||||||||||||||||||||||||||||
|||||||||||||||||||||||||||||||||||||||||||||||||||||||||||" -f magenta;
Write-Host "------------- DANIEL - SOCIAL MEDIA MERN APP --------------" -f green;
Write-Host "|||||||||||||||||||||||||||||||||||||||||||||||||||||||||||
|||||||||||||||||||||||||||||||||||||||||||||||||||||||||||
|||||||||||||||||||||||||||||||||||||||||||||||||||||||||||" -f magenta;
Sleep 2;
$location = "C:/drexx/Social Media MERN App/";
$running = $TRUE;
cd $location;
Write-Host ">>> Opening VS Code..." -f darkgreen;
# check if vs-code is already running.
$vsCode = Get-Process code -ErrorAction SilentlyContinue;
# $vsCode variable would be null if it's not running so let's work on the result;
if ($vsCode) {
	while($TRUE) {
		Write-Host ">> VS Code is already running. Do you still want to open it?" -f cyan -nonewline;
		Write-Host " [Y] Yes  [N] No: " -f yellow -nonewline;
		$stillOpenVsCode = Read-Host;
		if($stillOpenVsCode -eq "y") {
			Write-Host ">>> Opening..." -f darkgreen -nonewline;
			code .;
			break;
		} elseif($stillOpenVsCode -eq "n") {
			Write-Host ">>> Alright! I'll skip the opening of VS Code..." -f darkgreen -nonewline;
			break;
		} else {
			Write-Host "Please choose an option" -f red;
		}	
	}
} else {
	code .;
}
Sleep 1;
# open up some other things
while($running) {
	# `r`n adds a new line
	Write-Host "`r`n>> Do you want to run Client or Server NPM Start?" -f darkcyan -nonewline;
	Write-Host " [C] Client  [S] Server  [N] None: " -f yellow -nonewline;
	$startClientNPM = Read-Host;
	if($startClientNPM -eq "c") {
		Write-Host ">>> Setting Up Client NPM..." -f darkgreen -nonewline;
		cd client;
		npm start;
		break;
	} elseif($startClientNPM -eq "s") {
		Write-Host ">>> Setting Up Server NPM..." -f darkgreen -nonewline;
		cd server;
		npm run dev;
		break;
	} elseif($startClientNPM -eq "n") {
		Write-Host "Ok, you're good to go!" -f green;
		break;
	} else {
		Write-Host "Please select an option" -f red;
	}
}

Write-Host "Bye Daniel! [smiles]" -f darkgreen;
