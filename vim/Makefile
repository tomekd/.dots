#!/bin/bash

current_dir=$(shell dirname $(abspath $(lastword $(MAKEFILE_LIST))))
home_dir=/home/$$USER

dir_guard=@mkdir -p $(@D)


install: $(home_dir)/.vim/vimrc \
	 $(home_dir)/tmp
	curl https://raw.githubusercontent.com/Shougo/neobundle.vim/master/bin/install.sh | sh
	pip install --user proselint

$(home_dir)/.vim/vimrc:
	$(dir_guard)
	ln -s $(current_dir)/vimrc $(home_dir)/.vim/vimrc

$(home_dir)/tmp:
	mkdir -p $@

update:

.PHONY: install update
