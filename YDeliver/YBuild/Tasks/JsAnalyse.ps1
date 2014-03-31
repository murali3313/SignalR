task JsAnalyse -Description 'Run JSHint tool on Script/App' {
	$inputPath = Get-Conventions appScriptSourcePath
	$jasmineSpecsPath = Get-Conventions jasmineSpecsPath

	sl $rootDir

	exec {iex "jshint $inputPath"}
}