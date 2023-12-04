function mkdir#check() abort
	let dirname = expand('<afile>:p:h')
	if dirname =~# '\v^\l+://'
		return
	endif
	if isdirectory(dirname)
		return
	endif
	if confirm("Directory not found. Create it?", "&Yes\n&No") == 1
		call mkdir(dirname, 'p')
	endif
endfunction
