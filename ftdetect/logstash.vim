fun! s:DetectLogstash()
    for i in range(10)
        if getline(i) =~ '^[ \t]*\(input\|filter\|output\) {'
            set ft=logstash
            break
        endif
    endfor
endfun

autocmd BufNewFile,BufRead *.conf call s:DetectLogstash()
