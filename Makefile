.PHONY: all
all:

DIRS := $(wildcard seaqt/Qt*)

# -fsyntax-only means no object files will be written which means everything will be recompiled every time
.PHONY: $(DIRS)

$(DIRS):
	@echo Checking $@...
	@cd $@ && clang++ -std=c++17 $(shell pkg-config --cflags Qt6$(subst Qt,,$(notdir $@))) -xc++ -fsyntax-only -Wno-deprecated $(notdir $@).cpp
	@cd $@ && clang++ -std=c++17 $(shell pkg-config --cflags Qt6$(subst Qt,,$(notdir $@))) -xc++-header -fsyntax-only *.h

test: $(DIRS)
