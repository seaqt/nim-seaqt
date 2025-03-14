type QUndoCommand* {.inheritable.} = object
  h*: pointer
  owned*: bool

import ./qtwidgets_pkg

{.compile("gen_qundostack.cpp", QtWidgetsCFlags).}

proc fcQUndoCommand_delete(self: pointer) {.importc: "QUndoCommand_delete".}
proc `=destroy`(self: var QUndoCommand) =
  if self.owned: fcQUndoCommand_delete(self.h)

proc `=sink`(dest: var QUndoCommand, source: QUndoCommand) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QUndoCommand, source: QUndoCommand) {.error.}
proc delete*(self: sink QUndoCommand) =
  let h = self.h
  wasMoved(self)
  fcQUndoCommand_delete(h)

import ../QtCore/gen_qobject_types
export gen_qobject_types

type QUndoStack* = object of gen_qobject_types.QObject
proc `=copy`(dest: var QUndoStack, source: QUndoStack) {.error.}
proc `=sink`(dest: var QUndoStack, source: QUndoStack) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

