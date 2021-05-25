let SessionLoad = 1
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd /media/fraser/HDD/github/reactjs/tutorial/src
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +4 /media/fraser/HDD/github/reactjs/tutorial/src/TodoList.js
badd +2 /media/fraser/HDD/github/reactjs/tutorial/src/index.js
badd +30 /media/fraser/HDD/github/reactjs/tutorial/src/App.js
badd +6 /media/fraser/HDD/github/reactjs/tutorial/src/Todo.js
argglobal
%argdel
$argadd TodoList.js
edit /media/fraser/HDD/github/reactjs/tutorial/src/Todo.js
set splitbelow splitright
wincmd _ | wincmd |
vsplit
wincmd _ | wincmd |
vsplit
2wincmd h
wincmd _ | wincmd |
split
1wincmd k
wincmd w
wincmd w
wincmd w
set nosplitbelow
set nosplitright
wincmd t
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
exe '1resize ' . ((&lines * 37 + 38) / 77)
exe 'vert 1resize ' . ((&columns * 124 + 186) / 372)
exe '2resize ' . ((&lines * 36 + 38) / 77)
exe 'vert 2resize ' . ((&columns * 124 + 186) / 372)
exe 'vert 3resize ' . ((&columns * 123 + 186) / 372)
exe 'vert 4resize ' . ((&columns * 123 + 186) / 372)
argglobal
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 15 - ((14 * winheight(0) + 18) / 37)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
15
normal! 08|
wincmd w
argglobal
if bufexists("/media/fraser/HDD/github/reactjs/tutorial/src/TodoList.js") | buffer /media/fraser/HDD/github/reactjs/tutorial/src/TodoList.js | else | edit /media/fraser/HDD/github/reactjs/tutorial/src/TodoList.js | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 2 - ((1 * winheight(0) + 18) / 36)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
2
normal! 026|
wincmd w
argglobal
if bufexists("/media/fraser/HDD/github/reactjs/tutorial/src/App.js") | buffer /media/fraser/HDD/github/reactjs/tutorial/src/App.js | else | edit /media/fraser/HDD/github/reactjs/tutorial/src/App.js | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 30 - ((29 * winheight(0) + 37) / 74)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
30
normal! 029|
wincmd w
argglobal
if bufexists("/media/fraser/HDD/github/reactjs/tutorial/src/index.js") | buffer /media/fraser/HDD/github/reactjs/tutorial/src/index.js | else | edit /media/fraser/HDD/github/reactjs/tutorial/src/index.js | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 2 - ((1 * winheight(0) + 37) / 74)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
2
normal! 0
wincmd w
3wincmd w
exe '1resize ' . ((&lines * 37 + 38) / 77)
exe 'vert 1resize ' . ((&columns * 124 + 186) / 372)
exe '2resize ' . ((&lines * 36 + 38) / 77)
exe 'vert 2resize ' . ((&columns * 124 + 186) / 372)
exe 'vert 3resize ' . ((&columns * 123 + 186) / 372)
exe 'vert 4resize ' . ((&columns * 123 + 186) / 372)
tabnext 1
if exists('s:wipebuf') && getbufvar(s:wipebuf, '&buftype') isnot# 'terminal'
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20 winminheight=1 winminwidth=1 shortmess=filnxtToOFcI
let s:sx = expand("<sfile>:p:r")."x.vim"
if file_readable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &so = s:so_save | let &siso = s:siso_save
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
