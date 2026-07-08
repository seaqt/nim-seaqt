import ./gen_qvideowidget_types
export gen_qvideowidget_types

type QCameraViewfinder* = object of gen_qvideowidget_types.QVideoWidget
proc `=copy`(dest: var QCameraViewfinder, source: QCameraViewfinder) {.error.}
proc `=sink`(dest: var QCameraViewfinder, source: QCameraViewfinder) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

