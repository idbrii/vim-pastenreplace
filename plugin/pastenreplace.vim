if exists('loaded_pastenreplace') || &cp || version < 700
    finish
endif
let loaded_pastenreplace = 1

command! -bang -nargs=* PasteAndReplaceStart call pastenreplace#ControlActivation(1, <q-args>)
command! -bang -nargs=* PasteAndReplaceStop call pastenreplace#ControlActivation(0, 0)
