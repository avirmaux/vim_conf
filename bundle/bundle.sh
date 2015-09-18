#!/bin/zsh
# No two dimensional arrays in bash... so two arrays!

bundle=("ctrlp.vim"
        "LaTeX-Box"
        "tagbar"
        "vim-airline"
        "vim-colors-solarized"
        "vim-fugitive"
        "vim-signify"
        "vim-dotoo"
        "vim-orgmode")

url=("git@github.com:kien/ctrlp.vim.git"
     "git@github.com:LaTeX-Box-Team/LaTeX-Box.git"
     "git@github.com:majutsushi/tagbar.git"
     "git@github.com:bling/vim-airline.git"
     "git@github.com:altercation/vim-colors-solarized.git"
     "git@github.com:tpope/vim-fugitive.git"
     "git@github.com:mhinz/vim-signify.git"
     "git@github.com:dhruvasagar/vim-dotoo.git"
     "git@github.com:jceb/vim-orgmode.git")

for ((i=1; i<=${#bundle}; i++))
do
    if [ -d "${bundle[$i]}" ]; then
        git -C ${bundle[$i]} pull
    else
        git clone ${url[$i]}
    fi
done