#!/bin/bash

install: $(patsubst %/install.sh,%-install,$(wildcard */install.sh))


%-install: ./%/install.sh
	$<


