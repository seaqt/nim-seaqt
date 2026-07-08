import ./gen_qstate_types
export gen_qstate_types

type QStateMachine* = object of gen_qstate_types.QState
proc `=copy`(dest: var QStateMachine, source: QStateMachine) {.error.}
proc `=sink`(dest: var QStateMachine, source: QStateMachine) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

import ./gen_qcoreevent_types
export gen_qcoreevent_types

type QStateMachineSignalEvent* = object of gen_qcoreevent_types.QEvent
proc `=copy`(dest: var QStateMachineSignalEvent, source: QStateMachineSignalEvent) {.error.}
proc `=sink`(dest: var QStateMachineSignalEvent, source: QStateMachineSignalEvent) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

type QStateMachineWrappedEvent* = object of gen_qcoreevent_types.QEvent
proc `=copy`(dest: var QStateMachineWrappedEvent, source: QStateMachineWrappedEvent) {.error.}
proc `=sink`(dest: var QStateMachineWrappedEvent, source: QStateMachineWrappedEvent) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

