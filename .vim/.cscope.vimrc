if has('cscope') && filereadable("/usr/bin/cscope")
	set csprg='/usr/bin/cscope'	
	set csto=0
	set cst
	set nocsverb
	nnoremap <C-\>s :cs find s <C-R>=expand("<cword>")<CR><CR>
	nnoremap <C-\>g :cs find g <C-R>=expand("<cword>")<CR><CR>
	nnoremap <C-\>c :cs find c <C-R>=expand("<cword>")<CR><CR>
	nnoremap <C-\>t :cs find t <C-R>=expand("<cword>")<CR><CR>
	nnoremap <C-\>e :cs find e <C-R>=expand("<cword>")<CR><CR>
	nnoremap <C-\>f :cs find f <C-R>=expand("<cword>")<CR><CR>
	nnoremap <C-\>i :cs find i <C-R>=expand("<cword>")<CR><CR>
	nnoremap <C-\>d :cs find d <C-R>=expand("<cword>")<CR><CR>
	if(filereadable("cscope.out"))
		cs add $PWD/cscope.out
	elseif $CSCOPE_DB != ""
		cs add $CSCOPE_DB 
	endif
	set csverb
endif
