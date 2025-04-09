type QUndoCommand* {.inheritable, pure.} = object
  h*: pointer
import ../QtCore/gen_qobject_types
export gen_qobject_types

type QUndoStack* = object of gen_qobject_types.QObject
