$ErrorActionPreference = "Stop" 

git clone https://github.com/gocd/gocd --depth 1 C:\\gocd --quiet
cd C:\\gocd
./gradlew.bat compileAll yarnInstall prepareJRuby --no-build-cache --quiet
timeout 5
./gradlew.bat clean --quiet
timeout 5
tasklist
taskkill /F /IM java.exe
git clean -ffddx
tasklist
cd \
Remove-Item -Path C:\\gocd -Force -Recurse
New-Item C:\\go -ItemType Directory
