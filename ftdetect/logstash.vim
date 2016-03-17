fun! s:DetectLogstash()
	"skip comment lines
	let lnr = line(".")
	let this_line = getline(lnr)
	while (this_line =~ '^#')
		let lnr = lnr+1
		let this_line = getline(lnr)
	endwhile

	"look for keywords in next 10 lines
    for i in range(10)
        if (this_line =~ '^[ \t]*\(input\|grok\|json\|mutate\|filter\|output\) {')
            set ft=logstash
            break
        endif
		let lnr = lnr + 1
		let this_line = getline(lnr)
    endfor
endfun

autocmd BufNewFile,BufRead *.conf call s:DetectLogstash()
autocmd FileType logstash set commentstring=#\ %s
