# find in file
Select-String {filePath} -pattern {pattern}

# get line number of find results
Select-String {filePath} -pattern {pattern} | Select LineNumber

# print line
(Get-Content {filePath})[{lineNumber}]

# find and replace regex
((Get-Content {filePath}) -replace {find}, {replace}) | Set-Content {newFilePath}

# find and replace carriage returns
((Get-Content {filePath} | Out-String).Replace('
', '') | Set-Content {newFilePath}

