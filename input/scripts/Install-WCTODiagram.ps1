param([Parameter(Mandatory=$true)][string]$RepoPath)
$ErrorActionPreference = 'Stop'
$packageRoot = Split-Path -Parent $PSScriptRoot
$src = Join-Path $packageRoot 'diagrams\fhir-data-model.puml'
if (!(Test-Path $src)) { throw "Missing package diagram: $src" }
if (!(Test-Path $RepoPath)) { throw "IG repo not found: $RepoPath" }
$diagrams = Join-Path $RepoPath 'diagrams'
$images = Join-Path $RepoPath 'input\images'
New-Item -ItemType Directory -Force -Path $diagrams,$images | Out-Null
$dest = Join-Path $diagrams 'fhir-data-model.puml'
if (Test-Path $dest) {
  $stamp = Get-Date -Format 'yyyyMMdd-HHmmss'
  Copy-Item $dest "$dest.backup-$stamp"
  Write-Host "Backed up previous diagram: $dest.backup-$stamp"
}
Copy-Item $src $dest -Force
Write-Host "Installed editable diagram: $dest"
$rendered = Join-Path $diagrams 'fhir-data-model.svg'
$plantuml = Get-Command plantuml -ErrorAction SilentlyContinue
if ($plantuml) {
  & plantuml -tsvg $dest
} else {
  $jar = Join-Path $packageRoot 'plantuml.jar'
  $java = Get-Command java -ErrorAction SilentlyContinue
  if ($java -and (Test-Path $jar)) {
    & java -jar $jar -tsvg $dest
  } else {
    Write-Warning 'SVG not generated: install PlantUML on PATH, or place plantuml.jar in this extracted folder (Java required), then rerun.'
    Write-Host 'Your editable .puml has been installed. The IG image has NOT been changed.'
    exit 0
  }
}
if (!(Test-Path $rendered)) { throw 'PlantUML rendering did not produce an SVG. Check its output.' }
Copy-Item $rendered (Join-Path $images 'wcto-fhir-data-model.svg') -Force
Write-Host "Installed rendered image: $(Join-Path $images 'wcto-fhir-data-model.svg')"
Write-Host ''
Write-Host 'In the EXISTING FHIR Data Model Markdown page, replace only the old diagram image line with:'
Write-Host '![WCTO/B4SC FHIR resource data model](wcto-fhir-data-model.svg)'
Write-Host 'Then rebuild your IG and inspect the page.'
