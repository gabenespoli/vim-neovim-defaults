" nvim defaults for vim (:help nvim-defaults)
if !has('nvim')
  set autoindent
  set autoread
  set backspace=indent,eol,start
  set belloff=all
  set complete-=i
  set formatoptions+=j
  set history=10000
  set incsearch
  set laststatus=2
  set listchars=tab:>\ ,trail:-,nbsp:+
  set mouse=a
  set shortmess+=F
  set showcmd
  set sidescroll=1
  set smarttab
  set ttyfast
  set wildmenu

  " cursor shape
  if empty($TMUX)
    let &t_SI = "\<Esc>]50;CursorShape=1\x7"
    let &t_EI = "\<Esc>]50;CursorShape=0\x7"
    let &t_SR = "\<Esc>]50;CursorShape=2\x7"
  else
    let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
    let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
    let &t_SR = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=2\x7\<Esc>\\"
  endif
endif
