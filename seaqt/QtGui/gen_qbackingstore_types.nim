type QBackingStore* {.inheritable.} = object
  h*: pointer
  owned*: bool

import ./qtgui_pkg

{.compile("gen_qbackingstore.cpp", QtGuiCFlags).}

proc fcQBackingStore_delete(self: pointer) {.importc: "QBackingStore_delete".}
proc `=destroy`(self: var QBackingStore) =
  if self.owned: fcQBackingStore_delete(self.h)

proc `=sink`(dest: var QBackingStore, source: QBackingStore) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QBackingStore, source: QBackingStore) {.error.}
proc delete*(self: sink QBackingStore) =
  let h = self.h
  wasMoved(self)
  fcQBackingStore_delete(h)

