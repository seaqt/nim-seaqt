type QIcon* {.inheritable.} = object
  h*: pointer
  owned*: bool

const cflags = gorge("pkg-config --cflags Qt6Gui") & " -fPIC"
{.compile("gen_qicon.cpp", cflags).}

proc fcQIcon_delete(self: pointer) {.importc: "QIcon_delete".}
proc `=destroy`(self: var QIcon) =
  if self.owned: fcQIcon_delete(self.h)

proc `=sink`(dest: var QIcon, source: QIcon) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QIcon, source: QIcon) {.error.}
proc delete*(self: sink QIcon) =
  let h = self.h
  wasMoved(self)
  fcQIcon_delete(h)

