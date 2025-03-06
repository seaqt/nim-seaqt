type QMetaType* {.inheritable.} = object
  h*: pointer
  owned*: bool

const cflags = gorge("pkg-config --cflags Qt5Core") & " -fPIC"
{.compile("gen_qmetatype.cpp", cflags).}

proc fcQMetaType_delete(self: pointer) {.importc: "QMetaType_delete".}
proc `=destroy`(self: var QMetaType) =
  if self.owned: fcQMetaType_delete(self.h)

proc `=sink`(dest: var QMetaType, source: QMetaType) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QMetaType, source: QMetaType) {.error.}
proc delete*(self: sink QMetaType) =
  let h = self.h
  wasMoved(self)
  fcQMetaType_delete(h)

