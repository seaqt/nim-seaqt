import ./gen_qobject_types
export gen_qobject_types

type QAbstractEventDispatcher* = object of gen_qobject_types.QObject
type QAbstractEventDispatcherTimerInfo* {.inheritable, pure.} = object
  h*: pointer
