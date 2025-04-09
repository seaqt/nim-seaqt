type QTreeWidgetItem* {.inheritable, pure.} = object
  h*: pointer
import ./gen_qtreeview_types
export gen_qtreeview_types

type QTreeWidget* = object of gen_qtreeview_types.QTreeView
