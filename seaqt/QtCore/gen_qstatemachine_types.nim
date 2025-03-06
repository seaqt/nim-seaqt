import ./gen_qstate_types
export gen_qstate_types

type QStateMachine* = object of gen_qstate_types.QState
import ./gen_qcoreevent_types
export gen_qcoreevent_types

type QStateMachineSignalEvent* = object of gen_qcoreevent_types.QEvent
type QStateMachineWrappedEvent* = object of gen_qcoreevent_types.QEvent
