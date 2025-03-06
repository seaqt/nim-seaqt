type QItemSelectionRange* {.inheritable, pure.} = object
  h*: pointer
import ./gen_qobject_types
export gen_qobject_types

type QItemSelectionModel* = object of gen_qobject_types.QObject
type QItemSelection* {.inheritable, pure.} = object
  h*: pointer
