import ../QtCore/gen_qobject_types
export gen_qobject_types

type QTextObject* = object of gen_qobject_types.QObject
type QTextBlockGroup* = object of QTextObject
type QTextFrameLayoutData* {.inheritable.} = object
  h*: pointer
  owned*: bool

const cflags = gorge("pkg-config --cflags Qt6Gui") & " -fPIC"
{.compile("gen_qtextobject.cpp", cflags).}

proc fcQTextFrameLayoutData_delete(self: pointer) {.importc: "QTextFrameLayoutData_delete".}
proc `=destroy`(self: var QTextFrameLayoutData) =
  if self.owned: fcQTextFrameLayoutData_delete(self.h)

proc `=sink`(dest: var QTextFrameLayoutData, source: QTextFrameLayoutData) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QTextFrameLayoutData, source: QTextFrameLayoutData) {.error.}
proc delete*(self: sink QTextFrameLayoutData) =
  let h = self.h
  wasMoved(self)
  fcQTextFrameLayoutData_delete(h)

type QTextFrame* = object of QTextObject
type QTextBlockUserData* {.inheritable.} = object
  h*: pointer
  owned*: bool

proc fcQTextBlockUserData_delete(self: pointer) {.importc: "QTextBlockUserData_delete".}
proc `=destroy`(self: var QTextBlockUserData) =
  if self.owned: fcQTextBlockUserData_delete(self.h)

proc `=sink`(dest: var QTextBlockUserData, source: QTextBlockUserData) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QTextBlockUserData, source: QTextBlockUserData) {.error.}
proc delete*(self: sink QTextBlockUserData) =
  let h = self.h
  wasMoved(self)
  fcQTextBlockUserData_delete(h)

type QTextBlock* {.inheritable.} = object
  h*: pointer
  owned*: bool

proc fcQTextBlock_delete(self: pointer) {.importc: "QTextBlock_delete".}
proc `=destroy`(self: var QTextBlock) =
  if self.owned: fcQTextBlock_delete(self.h)

proc `=sink`(dest: var QTextBlock, source: QTextBlock) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QTextBlock, source: QTextBlock) {.error.}
proc delete*(self: sink QTextBlock) =
  let h = self.h
  wasMoved(self)
  fcQTextBlock_delete(h)

type QTextFragment* {.inheritable.} = object
  h*: pointer
  owned*: bool

proc fcQTextFragment_delete(self: pointer) {.importc: "QTextFragment_delete".}
proc `=destroy`(self: var QTextFragment) =
  if self.owned: fcQTextFragment_delete(self.h)

proc `=sink`(dest: var QTextFragment, source: QTextFragment) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QTextFragment, source: QTextFragment) {.error.}
proc delete*(self: sink QTextFragment) =
  let h = self.h
  wasMoved(self)
  fcQTextFragment_delete(h)

type QTextFrameiterator* {.inheritable.} = object
  h*: pointer
  owned*: bool

proc fcQTextFrameiterator_delete(self: pointer) {.importc: "QTextFrame__iterator_delete".}
proc `=destroy`(self: var QTextFrameiterator) =
  if self.owned: fcQTextFrameiterator_delete(self.h)

proc `=sink`(dest: var QTextFrameiterator, source: QTextFrameiterator) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QTextFrameiterator, source: QTextFrameiterator) {.error.}
proc delete*(self: sink QTextFrameiterator) =
  let h = self.h
  wasMoved(self)
  fcQTextFrameiterator_delete(h)

type QTextBlockiterator* {.inheritable.} = object
  h*: pointer
  owned*: bool

proc fcQTextBlockiterator_delete(self: pointer) {.importc: "QTextBlock__iterator_delete".}
proc `=destroy`(self: var QTextBlockiterator) =
  if self.owned: fcQTextBlockiterator_delete(self.h)

proc `=sink`(dest: var QTextBlockiterator, source: QTextBlockiterator) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QTextBlockiterator, source: QTextBlockiterator) {.error.}
proc delete*(self: sink QTextBlockiterator) =
  let h = self.h
  wasMoved(self)
  fcQTextBlockiterator_delete(h)

