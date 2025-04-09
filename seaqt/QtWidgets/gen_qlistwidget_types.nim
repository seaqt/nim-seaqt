type QListWidgetItem* {.inheritable, pure.} = object
  h*: pointer
import ./gen_qlistview_types
export gen_qlistview_types

type QListWidget* = object of gen_qlistview_types.QListView
