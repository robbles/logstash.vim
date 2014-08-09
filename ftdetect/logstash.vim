fun! s:DetectLogstash()
    if getline(1) =~ '^[ \t]*input {'
        set ft=logstash
    endif
endfun

autocmd BufNewFile,BufRead *.conf call s:DetectLogstash()
