import ./gen_qmediacontrol_types
export gen_qmediacontrol_types

type QVideoRendererControl* = object of gen_qmediacontrol_types.QMediaControl
proc `=copy`(dest: var QVideoRendererControl, source: QVideoRendererControl) {.error.}
proc `=sink`(dest: var QVideoRendererControl, source: QVideoRendererControl) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

