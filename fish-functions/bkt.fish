function bkt --description 'Creates a tar archive of the file/folder'
	tar cvjf (date +%F)_$argv[1].tar.bz $argv[1]
end
