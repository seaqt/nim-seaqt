import ./gen_qmediacontrol_types
export gen_qmediacontrol_types

type QCameraViewfinderSettingsControl* = object of gen_qmediacontrol_types.QMediaControl
proc `=copy`(dest: var QCameraViewfinderSettingsControl, source: QCameraViewfinderSettingsControl) {.error.}
proc `=sink`(dest: var QCameraViewfinderSettingsControl, source: QCameraViewfinderSettingsControl) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

type QCameraViewfinderSettingsControl2* = object of gen_qmediacontrol_types.QMediaControl
proc `=copy`(dest: var QCameraViewfinderSettingsControl2, source: QCameraViewfinderSettingsControl2) {.error.}
proc `=sink`(dest: var QCameraViewfinderSettingsControl2, source: QCameraViewfinderSettingsControl2) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

