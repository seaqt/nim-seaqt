import ./gen_qlayout_types
export gen_qlayout_types

type QFormLayout* = object of gen_qlayout_types.QLayout
type QFormLayoutTakeRowResult* {.inheritable.} = object
  h*: pointer
  owned*: bool

const cflags = gorge("pkg-config --cflags Qt6Widgets") & " -fPIC"
{.compile("gen_qformlayout.cpp", cflags).}

proc fcQFormLayoutTakeRowResult_delete(self: pointer) {.importc: "QFormLayout__TakeRowResult_delete".}
proc `=destroy`(self: var QFormLayoutTakeRowResult) =
  if self.owned: fcQFormLayoutTakeRowResult_delete(self.h)

proc `=sink`(dest: var QFormLayoutTakeRowResult, source: QFormLayoutTakeRowResult) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QFormLayoutTakeRowResult, source: QFormLayoutTakeRowResult) {.error.}
proc delete*(self: sink QFormLayoutTakeRowResult) =
  let h = self.h
  wasMoved(self)
  fcQFormLayoutTakeRowResult_delete(h)

