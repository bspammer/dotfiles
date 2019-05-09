function fs
	du -sh $argv 2>/dev/null | sort -h;
end
