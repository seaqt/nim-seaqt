import ./gen_qmediacontrol_types
export gen_qmediacontrol_types

type QMediaContainerControl* = object of gen_qmediacontrol_types.QMediaControl
proc `=copy`(dest: var QMediaContainerControl, source: QMediaContainerControl) {.error.}
proc `=sink`(dest: var QMediaContainerControl, source: QMediaContainerControl) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

