function cdf --description 'cd to the directory of the active Finder window'
  set currFolderPath (/usr/bin/osascript -e 'tell application "Finder"'\n'try'\n'set currFolder to (folder of the front window as alias)'\n'on error'\n'set currFolder to (path to desktop folder as alias)'\n'end try'\n'POSIX path of currFolder'\n'end tell')
  echo "cd to \"$currFolderPath\""
  cd "$currFolderPath"
end
