imap jk <Esc>
" noremap j gj
" noremap k gk

nmap U :redo<CR>
unmap W
map W b
unmap <C-r>
map <C-r> <C-u>
unmap <C-e>
map <C-e> <C-d>
"  nnoremap <CR> o<Esc>
nmap <CR> ;
nmap <S-CR> ,
" use in GUI
" noremap <S-CR> ,
" noremap vv <S-v>
" inoremap <ESC> <NOP>
vmap U ~
vmap ~ <NOP>
" vnoremap <ESC> <NOP>
vmap u <Esc>

" vnoremap p "1dp
" 防止每次都在后面粘贴，不符合习惯
" map c "1c
" map x "1x
vmap p "_dP
set clipboard=unnamedplus
nmap Y gg^yG<End>
map J }
map K {
" nmap <Leader>j *
" nmap <Leader>k #
" nmap zc zz
" nmap zz zc
" nmap zZ zM
" nmap zO zR
" nmap vi> T>vt<
" nmap gh <C-w>h
" nmap gj <C-w>j
" nmap sV :sp<CR>
" nmap sv :vs<CR>
" nmap gk <C-w>k
" nmap gl <C-w>l
" nmap <Tab> >>
" nnoremap <S-Tab> <<
nmap <BS> <<
map H ^
map L $
vmap <Tab> >
" vnoremap <S-Tab> < 
vmap <BS> < 

exmap back obcommand app:go-back
nmap <C-o> :back
exmap forward obcommand app:go-forward
nmap <C-n> :forward
exmap pre obcommand workspace:previous-tab
nmap E :pre
exmap next obcommand workspace:next-tab 
nmap R :next
