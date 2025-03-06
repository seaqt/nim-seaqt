type QItemSelectionRange* {.inheritable.} = object
  h*: pointer
  owned*: bool

const cflags = gorge("pkg-config --cflags Qt5Core") & " -fPIC"
{.compile("gen_qitemselectionmodel.cpp", cflags).}

proc fcQItemSelectionRange_delete(self: pointer) {.importc: "QItemSelectionRange_delete".}
proc `=destroy`(self: var QItemSelectionRange) =
  if self.owned: fcQItemSelectionRange_delete(self.h)

proc `=sink`(dest: var QItemSelectionRange, source: QItemSelectionRange) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QItemSelectionRange, source: QItemSelectionRange) {.error.}
proc delete*(self: sink QItemSelectionRange) =
  let h = self.h
  wasMoved(self)
  fcQItemSelectionRange_delete(h)

import ./gen_qobject_types
export gen_qobject_types

type QItemSelectionModel* = object of gen_qobject_types.QObject
type QItemSelection* {.inheritable.} = object
  h*: pointer
  owned*: bool

proc fcQItemSelection_delete(self: pointer) {.importc: "QItemSelection_delete".}
proc `=destroy`(self: var QItemSelection) =
  if self.owned: fcQItemSelection_delete(self.h)

proc `=sink`(dest: var QItemSelection, source: QItemSelection) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QItemSelection, source: QItemSelection) {.error.}
proc delete*(self: sink QItemSelection) =
  let h = self.h
  wasMoved(self)
  fcQItemSelection_delete(h)

