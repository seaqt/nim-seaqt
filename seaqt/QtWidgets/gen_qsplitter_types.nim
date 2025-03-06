import ./gen_qframe_types
export gen_qframe_types

type QSplitter* = object of gen_qframe_types.QFrame
import ./gen_qwidget_types
export gen_qwidget_types

type QSplitterHandle* = object of gen_qwidget_types.QWidget
