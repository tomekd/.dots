#!/bin/bash

current_dir=$(shell dirname $(abspath $(lastword $(MAKEFILE_LIST))))
home_dir=$$HOME

dir_guard=@mkdir -p $(@D)

all: install

install: $(home_dir)/.tmux.conf
	pip install --user powerline-status

$(home_dir)/.tmux.conf: $(current_dir)/tmux.conf
	ln -r -s $< $@

update:
