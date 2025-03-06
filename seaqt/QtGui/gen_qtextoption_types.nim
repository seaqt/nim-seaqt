type QTextOption* {.inheritable.} = object
  h*: pointer
  owned*: bool

const cflags = gorge("pkg-config --cflags Qt6Gui") & " -fPIC"
{.compile("gen_qtextoption.cpp", cflags).}

proc fcQTextOption_delete(self: pointer) {.importc: "QTextOption_delete".}
proc `=destroy`(self: var QTextOption) =
  if self.owned: fcQTextOption_delete(self.h)

proc `=sink`(dest: var QTextOption, source: QTextOption) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QTextOption, source: QTextOption) {.error.}
proc delete*(self: sink QTextOption) =
  let h = self.h
  wasMoved(self)
  fcQTextOption_delete(h)

type QTextOptionTab* {.inheritable.} = object
  h*: pointer
  owned*: bool

proc fcQTextOptionTab_delete(self: pointer) {.importc: "QTextOption__Tab_delete".}
proc `=destroy`(self: var QTextOptionTab) =
  if self.owned: fcQTextOptionTab_delete(self.h)

proc `=sink`(dest: var QTextOptionTab, source: QTextOptionTab) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QTextOptionTab, source: QTextOptionTab) {.error.}
proc delete*(self: sink QTextOptionTab) =
  let h = self.h
  wasMoved(self)
  fcQTextOptionTab_delete(h)

