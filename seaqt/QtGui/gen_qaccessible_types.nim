type QAccessible* {.inheritable, pure.} = object
  h*: pointer
type QAccessibleInterface* {.inheritable, pure.} = object
  h*: pointer
type QAccessibleTextInterface* {.inheritable, pure.} = object
  h*: pointer
type QAccessibleEditableTextInterface* {.inheritable, pure.} = object
  h*: pointer
type QAccessibleValueInterface* {.inheritable, pure.} = object
  h*: pointer
type QAccessibleTableCellInterface* {.inheritable, pure.} = object
  h*: pointer
type QAccessibleTableInterface* {.inheritable, pure.} = object
  h*: pointer
type QAccessibleActionInterface* {.inheritable, pure.} = object
  h*: pointer
type QAccessibleImageInterface* {.inheritable, pure.} = object
  h*: pointer
type QAccessibleEvent* {.inheritable, pure.} = object
  h*: pointer
type QAccessibleStateChangeEvent* = object of QAccessibleEvent
type QAccessibleTextCursorEvent* = object of QAccessibleEvent
type QAccessibleTextSelectionEvent* = object of QAccessibleTextCursorEvent
type QAccessibleTextInsertEvent* = object of QAccessibleTextCursorEvent
type QAccessibleTextRemoveEvent* = object of QAccessibleTextCursorEvent
type QAccessibleTextUpdateEvent* = object of QAccessibleTextCursorEvent
type QAccessibleValueChangeEvent* = object of QAccessibleEvent
type QAccessibleTableModelChangeEvent* = object of QAccessibleEvent
type QAccessibleState* {.inheritable, pure.} = object
  h*: pointer
type QAccessibleActivationObserver* {.inheritable, pure.} = object
  h*: pointer
