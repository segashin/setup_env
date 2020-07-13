#setup vimrc
New-Item -ItemType SymbolicLink -Value ./.vimrc -Path ~ -Name .vimrc
New-Item -ItemType SymbolicLink -Value ./.vim -Path ~ -Name .vim

#setup dein
Invoke-WebRequest https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.ps1 -OutFile installer.ps1
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser
./installer.ps1 ./.cache/dein
New-Item -ItemType SymbolicLink -Value ./.cache -Path ~ -Name .cache
