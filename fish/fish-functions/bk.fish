function bk --description 'Creates a copy of a file prepending the current date'
	cp $argv[1] (date +%F)_$argv[1]
end
