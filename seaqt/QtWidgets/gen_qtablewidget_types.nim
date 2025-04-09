type QTableWidgetSelectionRange* {.inheritable, pure.} = object
  h*: pointer
type QTableWidgetItem* {.inheritable, pure.} = object
  h*: pointer
import ./gen_qtableview_types
export gen_qtableview_types

type QTableWidget* = object of gen_qtableview_types.QTableView
