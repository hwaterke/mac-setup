function rmnodemodules
	find . -name 'node_modules' -type d -print -prune -exec rm -rf '{}' +
end
