Write-Host '=================================='
Write-Host 'STARTING WORKSTATION ONBOARDING...'
Write-Host '=================================='

$Packages = @(
"Microsoft.VisualStudioCode",
"Git.Git"
)
write-host 'Installing Packages..' -ForegroundColor Yellow

foreach ($Pkg in $Packages) {
winget install --id $Pkg --exact --silent --accept-package-agreements --accept-source-agreements
}

Write-Host '====================================================='
Write-Host 'FINISHED! SUCCESSFULLY INSTALLED ONBOARDING PACKAGES.'
Write-Host '====================================================='