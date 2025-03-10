import ./gen_qframe_types
export gen_qframe_types

type QSplitter* = object of gen_qframe_types.QFrame
proc `=copy`(dest: var QSplitter, source: QSplitter) {.error.}
proc `=sink`(dest: var QSplitter, source: QSplitter) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

import ./gen_qwidget_types
export gen_qwidget_types

type QSplitterHandle* = object of gen_qwidget_types.QWidget
proc `=copy`(dest: var QSplitterHandle, source: QSplitterHandle) {.error.}
proc `=sink`(dest: var QSplitterHandle, source: QSplitterHandle) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

