type QSizePolicy* {.inheritable.} = object
  h*: pointer
  owned*: bool

const cflags = gorge("pkg-config --cflags Qt6Widgets") & " -fPIC"
{.compile("gen_qsizepolicy.cpp", cflags).}

proc fcQSizePolicy_delete(self: pointer) {.importc: "QSizePolicy_delete".}
proc `=destroy`(self: var QSizePolicy) =
  if self.owned: fcQSizePolicy_delete(self.h)

proc `=sink`(dest: var QSizePolicy, source: QSizePolicy) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QSizePolicy, source: QSizePolicy) {.error.}
proc delete*(self: sink QSizePolicy) =
  let h = self.h
  wasMoved(self)
  fcQSizePolicy_delete(h)

