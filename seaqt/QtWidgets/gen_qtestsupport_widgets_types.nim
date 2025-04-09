import ../QtGui/gen_qtestsupport_gui_types
export gen_qtestsupport_gui_types

type QTestQTouchEventWidgetSequence* = object of gen_qtestsupport_gui_types.QTestQTouchEventSequence
proc `=copy`(dest: var QTestQTouchEventWidgetSequence, source: QTestQTouchEventWidgetSequence) {.error.}
proc `=sink`(dest: var QTestQTouchEventWidgetSequence, source: QTestQTouchEventWidgetSequence) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

