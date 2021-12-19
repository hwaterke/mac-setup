alias rmemptydir="find . -type d -empty -print -delete"
alias rmdsstore="find . -name '.DS_Store' -type f -print -delete"
alias rmnodemodules="find . -name 'node_modules' -type d -print -prune -exec rm -rf '{}' +"
alias bigfiles="find . -type f -print0 | xargs -0 du -h | sort -rh | head -n 15"
