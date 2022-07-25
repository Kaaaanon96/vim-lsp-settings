#!/bin/sh

set -e

git clone --depth=1 https://github.com/fsprojects/fsharp-language-server .
npm install
dotnet publish --configuration Release --output Publish

cat <<EOF >fsharp-language-server
#!/bin/sh

DIR=\$(cd \$(dirname \$0); pwd)
\$DIR/Publish/FSharpLanguageServer.dll \$*
EOF

chmod +x fsharp-language-server
