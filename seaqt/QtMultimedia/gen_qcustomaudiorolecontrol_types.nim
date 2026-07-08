import ./gen_qmediacontrol_types
export gen_qmediacontrol_types

type QCustomAudioRoleControl* = object of gen_qmediacontrol_types.QMediaControl
proc `=copy`(dest: var QCustomAudioRoleControl, source: QCustomAudioRoleControl) {.error.}
proc `=sink`(dest: var QCustomAudioRoleControl, source: QCustomAudioRoleControl) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

