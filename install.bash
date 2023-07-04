#########################################################################
# File Name:    install.bash
# Author:       程序员Carl
# 微信公众号:   代码随想录
# Created Time: Sun Jul 22 21:57:48 2018
#########################################################################
#!/bin/bash

function digitaldatetime() {
    echo `date +"%Y%m%d%H%M%S"`
}

if [ -e "/usr/bin/ctags" ];then
    echo "ctags已经安装"
else
    echo "ctags未安装，请自行使用包管理器安装"
    exit 0
fi

PowerVim=`pwd -P`
cd $HOME

echo -e "\033[0;35mStart to install vim-conf\033[0m"
echo -e "\033[0;36mLooking for an existing vim config...\033[0m"
if [ -f ~/.vimrc ] || [ -h ~/.vimrc ]; then
    echo -e "\033[0;33mFound ~/.vimrc.\033[0m \033[0;32mBacking up to ~/.vimrc.`digitaldatetime`\033[0m";
    mv ~/.vimrc ~/.vimrc.`digitaldatetime`;
fi

if [ -f ~/.ctags ] || [ -h ~/.ctags ]; then
    echo -e "\033[0;33mFound ~/.ctags.\033[0m \033[0;32mBacking up to ~/.ctags.`digitaldatetime`\033[0m";
    mv ~/.ctags ~/.ctags.`digitaldatetime`;
fi

if [ -d ~/.vim ]; then
    echo -e "\033[0;33mFound ~/.vim.\033[0m \033[0;32mBacking up to ~/.vim.`digitaldatetime`\033[0m";
    mv ~/.vim ~/.vim.`digitaldatetime`;
fi

echo -e "\033[0;36mCopying .vimrc and .vim\033[0m"
echo -e "\033[0;32mln -s ${PowerVim}/.vimrc .vimrc\033[0m"
ln -s ${PowerVim}/.vimrc .vimrc
echo -e "\033[0;32mln -s ${PowerVim}/.vim .vim\033[0m"
ln -s ${PowerVim}/.vim .vim
echo -e "\033[0;32mln -s ${PowerVim}/.ctags .ctags\033[0m"
ln -s ${PowerVim}/.ctags .ctags
 # _____                    __      ___           
 # |  __ \                   \ \    / (_)          
 # | |__) |____      _____ _ _\ \  / / _ _ __ ___  
 # |  ___/ _ \ \ /\ / / _ \ '__\ \/ / | | '_ ` _ \ 
 # | |  | (_) \ V  V /  __/ |   \  /  | | | | | | |
 # |_|   \___/ \_/\_/ \___|_|    \/   |_|_| |_| |_|)'')
echo -e "\033[0;35m"'  ______                    __      ___             '"\033[0m"
echo -e "\033[0;35m"'  |  __ \                   \ \    / (_)           '"\033[0m"
echo -e "\033[0;35m"'  | |__) |____      _____ _ _\ \  / / _ _ __ ___   '"\033[0m"
echo -e "\033[0;35m"'  |  ___/ _ \ \ /\ / / _ \ \__\ \/ / | |  _   _ \  '"\033[0m"
echo -e "\033[0;35m"'  | |  | (_) \ V  V /  __/ /   \  /  | | | | | | | '"\033[0m"
echo -e "\033[0;35m"'  |_|   \___/ \_/\_/ \___|_|    \/   |_|_| |_| |_| '"\033[0m"
echo -e "\n\n \033[0;35mEnjoy!.\033[0m"