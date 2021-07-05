.PHONY: install

install:
	@echo "Installing emacs.d to ~/.emacs.d"
	rm -rf ~/.emacs
	rm -rf ~/.emacs.d
	ln -s $(PWD) ~/.emacs.d
