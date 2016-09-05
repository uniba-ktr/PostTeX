# Copyright 2016, Marcel Großmann <marcel.grossmann@uni-bamberg.de>
# Adjust your base GIT directory relatively to Makefile
base := .
# Internal Variables - Touch & Perish
# Folder to clone TeXMeta to, relatively to $base
meta := $(base)/meta
main := poster
classes := baposter.cls

MAKE_FILE := $(meta)/Makefile

ifeq ($(wildcard $(MAKE_FILE)),)
$(make initialize)
else
include $(MAKE_FILE)
$(make prepare)
endif

# Call initialize to setup the infrastructure
initialize: gitmodules
	@test -f .prepared || rm -rf .git .gitmodules meta
	@test -f .prepared || ( cd $(base) && ( test -d .git || git init ) )

# Internal Targets
gitmodules:
	@test -d $(meta) || git submodule add $(metaurl) $(meta)
	@git submodule update --init $(meta)
	@( git add $(meta) && git commit -m "Update meta" ) || true
