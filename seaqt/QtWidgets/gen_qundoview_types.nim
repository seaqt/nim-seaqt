import ./gen_qlistview_types
export gen_qlistview_types

type QUndoView* = object of gen_qlistview_types.QListView
proc `=copy`(dest: var QUndoView, source: QUndoView) {.error.}
proc `=sink`(dest: var QUndoView, source: QUndoView) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

