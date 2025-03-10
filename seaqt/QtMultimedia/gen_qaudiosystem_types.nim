import ../QtCore/gen_qobject_types
export gen_qobject_types

type QAbstractAudioDeviceInfo* = object of gen_qobject_types.QObject
proc `=copy`(dest: var QAbstractAudioDeviceInfo, source: QAbstractAudioDeviceInfo) {.error.}
proc `=sink`(dest: var QAbstractAudioDeviceInfo, source: QAbstractAudioDeviceInfo) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

type QAbstractAudioOutput* = object of gen_qobject_types.QObject
proc `=copy`(dest: var QAbstractAudioOutput, source: QAbstractAudioOutput) {.error.}
proc `=sink`(dest: var QAbstractAudioOutput, source: QAbstractAudioOutput) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

type QAbstractAudioInput* = object of gen_qobject_types.QObject
proc `=copy`(dest: var QAbstractAudioInput, source: QAbstractAudioInput) {.error.}
proc `=sink`(dest: var QAbstractAudioInput, source: QAbstractAudioInput) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

