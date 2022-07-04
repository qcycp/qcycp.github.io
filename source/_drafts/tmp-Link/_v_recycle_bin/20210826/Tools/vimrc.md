.vimrc
===
```bash
set number
set hlsearch
set autoindent
set smartindent
set ic
set nowrap
hi Comment      term=bold               ctermfg=DarkCyan
set tabstop=4
set shiftwidth=4
set laststatus=2
set statusline=%4*%<\%m%<[%f\%r%h%w]%=%l,%v\ \ \ \ \ \ \ \ %p%%
```

```
" colorscheme torte
set cursorline
set cursorcolumn
" set t_Co=256
set number
set hlsearch
set incsearch
set ic
set nowrap
hi Comment cterm=bold ctermfg=DarkCyan
" hi LineNr cterm=bold ctermfg=Yellow
hi CursorLine cterm=none ctermbg=4 ctermfg=none
hi CursorColumn cterm=none ctermbg=4 ctermfg=none
set tabstop=4
set shiftwidth=4
set softtabstop=4
set smarttab
set expandtab
set laststatus=2
set statusline=%4*%<\%m%<[%f\%r%h%w]%=%l,%v\ \ \ \ \ \ \ \ %p%%
nnoremap <F2> :<C-U>setlocal lcs=tab:>-,trail:-,eol:$ list! list? <CR>
```