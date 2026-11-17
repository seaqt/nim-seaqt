type QRemoteObjectPendingCall* {.inheritable.} = object
  h*: pointer
  owned*: bool

import ./qtremoteobjects_pkg

{.compile("gen_qremoteobjectpendingcall.cpp", QtRemoteObjectsCFlags).}

proc fcQRemoteObjectPendingCall_delete(self: pointer) {.importc: "QRemoteObjectPendingCall_delete".}
proc `=destroy`(self: var QRemoteObjectPendingCall) =
  if self.owned: fcQRemoteObjectPendingCall_delete(self.h)

proc `=sink`(dest: var QRemoteObjectPendingCall, source: QRemoteObjectPendingCall) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QRemoteObjectPendingCall, source: QRemoteObjectPendingCall) {.error.}
proc delete*(self: sink QRemoteObjectPendingCall) =
  let h = self.h
  wasMoved(self)
  fcQRemoteObjectPendingCall_delete(h)

import ../QtCore/gen_qobject_types
export gen_qobject_types

# TODO Multiple inheritance from QRemoteObjectPendingCall
type QRemoteObjectPendingCallWatcher* = object of gen_qobject_types.QObject
proc `=copy`(dest: var QRemoteObjectPendingCallWatcher, source: QRemoteObjectPendingCallWatcher) {.error.}
proc `=sink`(dest: var QRemoteObjectPendingCallWatcher, source: QRemoteObjectPendingCallWatcher) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

