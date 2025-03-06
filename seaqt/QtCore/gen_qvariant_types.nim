type QVariant* {.inheritable.} = object
  h*: pointer
  owned*: bool

const cflags = gorge("pkg-config --cflags Qt6Core") & " -fPIC"
{.compile("gen_qvariant.cpp", cflags).}

proc fcQVariant_delete(self: pointer) {.importc: "QVariant_delete".}
proc `=destroy`(self: var QVariant) =
  if self.owned: fcQVariant_delete(self.h)

proc `=sink`(dest: var QVariant, source: QVariant) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QVariant, source: QVariant) {.error.}
proc delete*(self: sink QVariant) =
  let h = self.h
  wasMoved(self)
  fcQVariant_delete(h)

type QVariantConstPointer* {.inheritable.} = object
  h*: pointer
  owned*: bool

proc fcQVariantConstPointer_delete(self: pointer) {.importc: "QVariantConstPointer_delete".}
proc `=destroy`(self: var QVariantConstPointer) =
  if self.owned: fcQVariantConstPointer_delete(self.h)

proc `=sink`(dest: var QVariantConstPointer, source: QVariantConstPointer) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QVariantConstPointer, source: QVariantConstPointer) {.error.}
proc delete*(self: sink QVariantConstPointer) =
  let h = self.h
  wasMoved(self)
  fcQVariantConstPointer_delete(h)

