function NPMInstall(){
    Write-Host -fore yellow "Installing NPM Packages"
    sl $rootDir
    $npm = Get-Conventions npm
    exec { iex "$npm $command" } "npm failed"
}

function Run-Node(){
   param($script)
    $node = Get-Conventions node
    exec { iex "$node $script" } "Script failed"
}