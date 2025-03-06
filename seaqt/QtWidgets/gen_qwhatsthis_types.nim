type QWhatsThis* {.inheritable.} = object
  h*: pointer
  owned*: bool

const cflags = gorge("pkg-config --cflags Qt6Widgets") & " -fPIC"
{.compile("gen_qwhatsthis.cpp", cflags).}

proc fcQWhatsThis_delete(self: pointer) {.importc: "QWhatsThis_delete".}
proc `=destroy`(self: var QWhatsThis) =
  if self.owned: fcQWhatsThis_delete(self.h)

proc `=sink`(dest: var QWhatsThis, source: QWhatsThis) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QWhatsThis, source: QWhatsThis) {.error.}
proc delete*(self: sink QWhatsThis) =
  let h = self.h
  wasMoved(self)
  fcQWhatsThis_delete(h)

