
function! pastenreplace#PasteAndReplace()
    normal! ggVG"_d"+p
    exec '%'. s:replace_cmd
    normal! ggVGy
endf

function! pastenreplace#ControlActivation(should_activate, replace_cmd)
    augroup pastenreplace
        au!
        if a:should_activate
            let s:replace_cmd = a:replace_cmd
            au FocusGained <buffer> call pastenreplace#PasteAndReplace()
        endif
    augroup END
endf
