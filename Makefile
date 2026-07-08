.PHONY: all
all:

DIRS := $(wildcard seaqt/Qt*)

# -fsyntax-only means no object files will be written which means everything will be recompiled every time
.PHONY: $(DIRS)

# Qt5PrintSupport needed to work around bug in .pc file for Qt5WebKitWidgets
$(DIRS):
	@echo Checking $@...
	@cd $@ && clang++ $(shell pkg-config --cflags Qt5PrintSupport Qt5$(subst Qt,,$(notdir $@))) -xc++ -fsyntax-only -Wno-deprecated $(notdir $@).cpp
	@cd $@ && clang++ $(shell pkg-config --cflags Qt5PrintSupport Qt5$(subst Qt,,$(notdir $@))) -xc++-header -fsyntax-only *.h

test: $(DIRS)
