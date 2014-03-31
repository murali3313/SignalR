$conventions.solutionFile = (Resolve-Path $rootDir\*.sln -ea SilentlyContinue)
$conventions.node = "$rootDir\YDeliver\Lib\nodejs\node.exe"
$conventions.npm = "$rootDir\YDeliver\Lib\nodejs\npm.cmd"
$conventions.appScriptSourcePath = "$rootDir\SignalRSample\Scripts\App"
$conventions.jasmineSpecsPath = "$rootDir\SignalRSample\SignalRSample.Js.Tests\specs"