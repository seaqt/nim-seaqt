import ./gen_qmediacontrol_types
export gen_qmediacontrol_types

type QAudioRoleControl* = object of gen_qmediacontrol_types.QMediaControl
proc `=copy`(dest: var QAudioRoleControl, source: QAudioRoleControl) {.error.}
proc `=sink`(dest: var QAudioRoleControl, source: QAudioRoleControl) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

