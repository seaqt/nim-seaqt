.PHONY: all
all:

# TODO Can we avoid repeating the qt module list?
COREPRIV := $(shell pkg-config --variable=includedir Qt6Core)/QtCore/$(shell pkg-config --modversion Qt6Core)

CXXFLAGS := $(shell pkg-config --cflags Qt6Core Qt6Gui Qt6Widgets Qt6Network Qt6Multimedia Qt6MultimediaWidgets Qt6PrintSupport Qt6Svg Qt6SvgWidgets Qt6SpatialAudio Qt6WebChannel Qt6WebEngineCore Qt6WebEngineQuick Qt6WebEngineWidgets Qt6Qml Qt6Quick)

DIRS := $(wildcard seaqt/Qt*)

# -fsyntax-only means no object files will be written which means everything will be recompiled every time
.PHONY: $(DIRS)

$(DIRS):
	@echo Checking $@...
	@cd $@ && cat *.cpp | clang++ -std=c++17 $(CXXFLAGS) -xc++ -fsyntax-only -
	@cd $@ && clang++ -std=c++17 $(CXXFLAGS) -xc++-header -fsyntax-only *.h

test: $(DIRS)
