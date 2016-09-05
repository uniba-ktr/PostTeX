# Copyright 2016, Marcel Großmann <marcel.grossmann@uni-bamberg.de>
# Adjust your base GIT directory relatively to Makefile
base := .
# Internal Variables - Touch & Perish
# Folder to clone TeXMeta to, relatively to $base
meta := $(base)/meta
main := poster
classes := baposter.cls

MAKE_FILE := $(meta)/Makefile
include $(MAKE_FILE)
