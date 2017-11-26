#!/bin/bash

current_dir=$(shell dirname $(abspath $(lastword $(MAKEFILE_LIST))))
home_dir=/home/$$USER

dir_guard=@mkdir -p $(@D)

install: $(home_dir)/.tmux.conf
	pip install --user powerline-status

$(home_dir)/.tmux.conf: $(current_dir)/tmux.conf
	ln -s $< $@

update:
