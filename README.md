# emacs.d

This is my personal emacs.d setup that lets me work on projects.

### Install Emacs (using d12frosted)

* brew tap d12frosted/emacs-plus
* brew install emacs-plus@27 --with-modern-black-variant-icon

### Prereqs
* go
  * `brew install go`
  * `go install -u github.com/nsf/gocode`
  * `go install -u golang.org/x/tools/cmd/goimports`
  * `go install -u golang.org/x/tools/gopls@latest`
* node
  * `brew install node`
  * `npm i -g javascript-typescript-langserver vscode-css-languageserver-bin dockerfile-language-server-nodejs`
* rustup
  * `brew install rustup-init`
  * `rustup component add rls rust-analysis rust-src`
* ruby
  * `brew install rbenv`
  * `gem install solargraph rubocop`
