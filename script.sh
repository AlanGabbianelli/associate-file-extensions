#!/bin/bash

# Highly inspired by Darragh ORiordan's article "Set vscode as the default editor for text files on mac"
# See https://www.darraghoriordan.com/2021/09/15/vscode-default-text-files-mac/

export HOMEBREW_NO_AUTO_UPDATE=1
brew ls duti &>/dev/null || brew install duti # https://github.com/moretension/duti/

app_name=${@:-Visual Studio Code} # https://code.visualstudio.com
app_id=$(osascript -e "id of app \"${app_name}\"")

extensions=(
  ".c"
  ".cfg"
  ".conf"
  ".cpp"
  ".cs"
  ".css"
  ".go"
  ".html"
  ".java"
  ".js"
  ".json"
  ".jsx"
  ".less"
  ".log"
  ".lua"
  ".md"
  ".php"
  ".pl"
  ".py"
  ".rb"
  ".sass"
  ".scss"
  ".toml"
  ".ts"
  ".tsx"
  ".txt"
  ".vue"
  ".yaml"
  ".yml"
  "public.data"
  "public.json"
  "public.plain-text"
  "public.python-script"
  "public.shell-script"
  "public.source-code"
  "public.text"
  "public.unix-executable"
)

for extension in "${extensions[@]}"; do
  duti -s ${app_id} ${extension} all
done
