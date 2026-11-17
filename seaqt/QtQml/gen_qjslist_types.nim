type QJSListIndexClamp* {.inheritable.} = object
  h*: pointer
  owned*: bool

import ./qtqml_pkg

{.compile("gen_qjslist.cpp", QtQmlCFlags).}

proc fcQJSListIndexClamp_delete(self: pointer) {.importc: "QJSListIndexClamp_delete".}
proc `=destroy`(self: var QJSListIndexClamp) =
  if self.owned: fcQJSListIndexClamp_delete(self.h)

proc `=sink`(dest: var QJSListIndexClamp, source: QJSListIndexClamp) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QJSListIndexClamp, source: QJSListIndexClamp) {.error.}
proc delete*(self: sink QJSListIndexClamp) =
  let h = self.h
  wasMoved(self)
  fcQJSListIndexClamp_delete(h)

type QJSListForInIterator* {.inheritable.} = object
  h*: pointer
  owned*: bool

proc fcQJSListForInIterator_delete(self: pointer) {.importc: "QJSListForInIterator_delete".}
proc `=destroy`(self: var QJSListForInIterator) =
  if self.owned: fcQJSListForInIterator_delete(self.h)

proc `=sink`(dest: var QJSListForInIterator, source: QJSListForInIterator) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QJSListForInIterator, source: QJSListForInIterator) {.error.}
proc delete*(self: sink QJSListForInIterator) =
  let h = self.h
  wasMoved(self)
  fcQJSListForInIterator_delete(h)

type QJSListForOfIterator* {.inheritable.} = object
  h*: pointer
  owned*: bool

proc fcQJSListForOfIterator_delete(self: pointer) {.importc: "QJSListForOfIterator_delete".}
proc `=destroy`(self: var QJSListForOfIterator) =
  if self.owned: fcQJSListForOfIterator_delete(self.h)

proc `=sink`(dest: var QJSListForOfIterator, source: QJSListForOfIterator) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QJSListForOfIterator, source: QJSListForOfIterator) {.error.}
proc delete*(self: sink QJSListForOfIterator) =
  let h = self.h
  wasMoved(self)
  fcQJSListForOfIterator_delete(h)

