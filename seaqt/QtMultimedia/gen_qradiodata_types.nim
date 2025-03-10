import ../QtCore/gen_qobject_types
export gen_qobject_types

# TODO Multiple inheritance from QMediaBindableInterface
type QRadioData* = object of gen_qobject_types.QObject
proc `=copy`(dest: var QRadioData, source: QRadioData) {.error.}
proc `=sink`(dest: var QRadioData, source: QRadioData) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

