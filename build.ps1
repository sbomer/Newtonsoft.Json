rm -r .\Src\Newtonsoft.Json\obj\
dotnet build .\Src\Newtonsoft.Json\ | sls '(Newtonsoft.Json relies|ExpressionReflection|succeeded)'
# sls 'Newtonsoft.Json relies'

# sls 'JsonTypeReflector.cs'

#$ sls 'PublicConstructor'
# sls 'Newtonsoft.Json relies'
# sls 'annotations must match'

# sls -pattern 'annotations must match' | sls Read

# sls -pattern '(Newtonsoft.Json relies)|(succeeded)'



if ($LASTEXITCODE -ne 0) {
    throw "build failed"
}
