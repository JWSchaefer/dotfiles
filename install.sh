# Latex 
## Install latex cli
brew install --cask mactex

## Install formatter 
brew install latexindent

## PDF Viewer
(
setopt PIPE_FAIL PRINT_EXIT_VALUE ERR_RETURN SOURCE_TRACE XTRACE

git clone --recursive https://github.com/ahrm/sioyek
cd sioyek
chmod +x build_mac.sh

brew install 'qt@5' freeglut mesa harfbuzz

export PATH="/opt/homebrew/opt/qt@5/bin:$PATH"
#: The above is needed to make =qmake= from =qt= be found.
#: Find the path using =brew info 'qt@5'=.

MAKE_PARALLEL=8 ./build_mac.sh

mv build/sioyek.app /Applications/
sudo codesign --force --sign - --deep /Applications/sioyek.app
)
