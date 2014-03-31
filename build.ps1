param($environment = "dev",
      $application = "Siemens",
      $artifactDir = "build",
      $buildNumber = "1.0.0.0",
      $testToRun = "",
      $includeTestCategory = "",
      [Parameter(Position=0, ValueFromRemainingArguments=$true)] $args)

$script:scriptDir = split-path $MyInvocation.MyCommand.Path -parent

Import-Module $script:scriptDir\YDeliver\YDeliver.psm1
Import-Module $script:scriptDir\YDeliver\lib\PowerYaml\PowerYaml.psm1

$config = Get-Yaml -FromFile $script:scriptDir\build.yml
$workflow = $config.workflow

if (-not $args) {
    $currentWorkFlow = "default"
} else {
    $currentWorkFlow = $args[0]
}
echo "Running Workflow"
echo $currentWorkFlow

$buildTasks = $workflow.$currentWorkFlow.build
$deployTasks = $workflow.$currentWorkFlow.install

if ($buildTasks) {
    Invoke-YBuild $buildTasks -buildVersion $buildNumber
}

if ($deployTasks) {
    Invoke-YInstall $deployTasks -application $application -environment $environment -artifactDir $artifactDir -buildVersion $buildNumber -testToRun $testToRun -includeTestCategory $includeTestCategory
}
