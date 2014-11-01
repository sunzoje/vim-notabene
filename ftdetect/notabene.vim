au BufNewFile,BufRead *.notes set filetype=notabene

function! s:DetectNotes()
    if getline(1) =~ '^#!.*notes'
        set filetype=notabene
    endif
endfunction

au BufNewFile,BufRead * call s:DetectNotes()
