" vim-go
autocmd BufNewFile,BufRead *.go set filetype=go
autocmd FileType go setlocal noexpandtab tabstop=4 shiftwidth=4
"" mapping
""" go runのキーマッピング
au FileType go nmap gr (go-run)
""" go testのキーマッピング
au FileType go nmap gt (go-test)
"" highlight
let g:go_hightlight_functions = 1
let g:go_hightlight_methods = 1
let g:go_hightlight_structs = 1
let g:go_hightlight_interfaces = 1
let g:go_hightlight_operators = 1
let g:go_hightlight_build_constraints = 1
"" GoFmt時にインポートするパッケージを整理(GoFmtはファイル書き込み時に自動的に実行される)
let g:go_fmt_command = "goimports"

autocmd FileType go :highlight goErr cterm=bold ctermfg=214
autocmd FileType go :match goErr /\<err\>/