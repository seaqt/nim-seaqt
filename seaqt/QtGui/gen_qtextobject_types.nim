import ../QtCore/gen_qobject_types
export gen_qobject_types

type QTextObject* = object of gen_qobject_types.QObject
proc `=copy`(dest: var QTextObject, source: QTextObject) {.error.}
proc `=sink`(dest: var QTextObject, source: QTextObject) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

type QTextBlockGroup* = object of QTextObject
proc `=copy`(dest: var QTextBlockGroup, source: QTextBlockGroup) {.error.}
proc `=sink`(dest: var QTextBlockGroup, source: QTextBlockGroup) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

type QTextFrame* = object of QTextObject
proc `=copy`(dest: var QTextFrame, source: QTextFrame) {.error.}
proc `=sink`(dest: var QTextFrame, source: QTextFrame) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

type QTextBlockUserData* {.inheritable, pure.} = object
  h*: pointer
  owned*: bool

import ./qtgui_pkg

{.compile("gen_qtextobject.cpp", QtGuiCFlags).}

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

type QTextBlock* {.inheritable, pure.} = object
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

type QTextFragment* {.inheritable, pure.} = object
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

type QTextFrameiterator* {.inheritable, pure.} = object
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

type QTextBlockiterator* {.inheritable, pure.} = object
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

