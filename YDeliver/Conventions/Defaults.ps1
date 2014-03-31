$conventions = @{}
$conventions.framework = "4.0x64"
$conventions.buildMode = "Release"
$conventions.buildPath = "$rootDir\build"
$conventions.solutionFile = (Resolve-Path $rootDir\src\*.sln, $rootDir\source\*.sln -ea SilentlyContinue)
$conventions.libPath = "$yDir\Lib"
$conventions.unitTestPathPattern = "*UnitTests"

$conventions.artifactsDir = "$rootDir\artifacts"

$conventions.remoteYDeliverPath = "C:\YDeliver"

if (Test-Path $rootDir\convention.overrides.ps1) {
    . "$rootDir\convention.overrides.ps1"
}


"Conventions being used:" 
"rootDir`t`t: $rootDir"
$conventions.keys | % {
    "$_`t: $($conventions.$_)"
}
""