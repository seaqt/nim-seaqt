type QAccessibleInterface* {.inheritable.} = object
  h*: pointer
  owned*: bool

type QAccessibleTextInterface* {.inheritable.} = object
  h*: pointer
  owned*: bool

const cflags = gorge("pkg-config --cflags Qt6Gui") & " -fPIC"
{.compile("gen_qaccessible.cpp", cflags).}

proc fcQAccessibleTextInterface_delete(self: pointer) {.importc: "QAccessibleTextInterface_delete".}
proc `=destroy`(self: var QAccessibleTextInterface) =
  if self.owned: fcQAccessibleTextInterface_delete(self.h)

proc `=sink`(dest: var QAccessibleTextInterface, source: QAccessibleTextInterface) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QAccessibleTextInterface, source: QAccessibleTextInterface) {.error.}
proc delete*(self: sink QAccessibleTextInterface) =
  let h = self.h
  wasMoved(self)
  fcQAccessibleTextInterface_delete(h)

type QAccessibleEditableTextInterface* {.inheritable.} = object
  h*: pointer
  owned*: bool

proc fcQAccessibleEditableTextInterface_delete(self: pointer) {.importc: "QAccessibleEditableTextInterface_delete".}
proc `=destroy`(self: var QAccessibleEditableTextInterface) =
  if self.owned: fcQAccessibleEditableTextInterface_delete(self.h)

proc `=sink`(dest: var QAccessibleEditableTextInterface, source: QAccessibleEditableTextInterface) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QAccessibleEditableTextInterface, source: QAccessibleEditableTextInterface) {.error.}
proc delete*(self: sink QAccessibleEditableTextInterface) =
  let h = self.h
  wasMoved(self)
  fcQAccessibleEditableTextInterface_delete(h)

type QAccessibleValueInterface* {.inheritable.} = object
  h*: pointer
  owned*: bool

proc fcQAccessibleValueInterface_delete(self: pointer) {.importc: "QAccessibleValueInterface_delete".}
proc `=destroy`(self: var QAccessibleValueInterface) =
  if self.owned: fcQAccessibleValueInterface_delete(self.h)

proc `=sink`(dest: var QAccessibleValueInterface, source: QAccessibleValueInterface) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QAccessibleValueInterface, source: QAccessibleValueInterface) {.error.}
proc delete*(self: sink QAccessibleValueInterface) =
  let h = self.h
  wasMoved(self)
  fcQAccessibleValueInterface_delete(h)

type QAccessibleTableCellInterface* {.inheritable.} = object
  h*: pointer
  owned*: bool

proc fcQAccessibleTableCellInterface_delete(self: pointer) {.importc: "QAccessibleTableCellInterface_delete".}
proc `=destroy`(self: var QAccessibleTableCellInterface) =
  if self.owned: fcQAccessibleTableCellInterface_delete(self.h)

proc `=sink`(dest: var QAccessibleTableCellInterface, source: QAccessibleTableCellInterface) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QAccessibleTableCellInterface, source: QAccessibleTableCellInterface) {.error.}
proc delete*(self: sink QAccessibleTableCellInterface) =
  let h = self.h
  wasMoved(self)
  fcQAccessibleTableCellInterface_delete(h)

type QAccessibleTableInterface* {.inheritable.} = object
  h*: pointer
  owned*: bool

proc fcQAccessibleTableInterface_delete(self: pointer) {.importc: "QAccessibleTableInterface_delete".}
proc `=destroy`(self: var QAccessibleTableInterface) =
  if self.owned: fcQAccessibleTableInterface_delete(self.h)

proc `=sink`(dest: var QAccessibleTableInterface, source: QAccessibleTableInterface) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QAccessibleTableInterface, source: QAccessibleTableInterface) {.error.}
proc delete*(self: sink QAccessibleTableInterface) =
  let h = self.h
  wasMoved(self)
  fcQAccessibleTableInterface_delete(h)

type QAccessibleActionInterface* {.inheritable.} = object
  h*: pointer
  owned*: bool

proc fcQAccessibleActionInterface_delete(self: pointer) {.importc: "QAccessibleActionInterface_delete".}
proc `=destroy`(self: var QAccessibleActionInterface) =
  if self.owned: fcQAccessibleActionInterface_delete(self.h)

proc `=sink`(dest: var QAccessibleActionInterface, source: QAccessibleActionInterface) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QAccessibleActionInterface, source: QAccessibleActionInterface) {.error.}
proc delete*(self: sink QAccessibleActionInterface) =
  let h = self.h
  wasMoved(self)
  fcQAccessibleActionInterface_delete(h)

type QAccessibleImageInterface* {.inheritable.} = object
  h*: pointer
  owned*: bool

proc fcQAccessibleImageInterface_delete(self: pointer) {.importc: "QAccessibleImageInterface_delete".}
proc `=destroy`(self: var QAccessibleImageInterface) =
  if self.owned: fcQAccessibleImageInterface_delete(self.h)

proc `=sink`(dest: var QAccessibleImageInterface, source: QAccessibleImageInterface) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QAccessibleImageInterface, source: QAccessibleImageInterface) {.error.}
proc delete*(self: sink QAccessibleImageInterface) =
  let h = self.h
  wasMoved(self)
  fcQAccessibleImageInterface_delete(h)

type QAccessibleHyperlinkInterface* {.inheritable.} = object
  h*: pointer
  owned*: bool

proc fcQAccessibleHyperlinkInterface_delete(self: pointer) {.importc: "QAccessibleHyperlinkInterface_delete".}
proc `=destroy`(self: var QAccessibleHyperlinkInterface) =
  if self.owned: fcQAccessibleHyperlinkInterface_delete(self.h)

proc `=sink`(dest: var QAccessibleHyperlinkInterface, source: QAccessibleHyperlinkInterface) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QAccessibleHyperlinkInterface, source: QAccessibleHyperlinkInterface) {.error.}
proc delete*(self: sink QAccessibleHyperlinkInterface) =
  let h = self.h
  wasMoved(self)
  fcQAccessibleHyperlinkInterface_delete(h)

type QAccessibleEvent* {.inheritable.} = object
  h*: pointer
  owned*: bool

proc fcQAccessibleEvent_delete(self: pointer) {.importc: "QAccessibleEvent_delete".}
proc `=destroy`(self: var QAccessibleEvent) =
  if self.owned: fcQAccessibleEvent_delete(self.h)

proc `=sink`(dest: var QAccessibleEvent, source: QAccessibleEvent) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QAccessibleEvent, source: QAccessibleEvent) {.error.}
proc delete*(self: sink QAccessibleEvent) =
  let h = self.h
  wasMoved(self)
  fcQAccessibleEvent_delete(h)

type QAccessibleStateChangeEvent* = object of QAccessibleEvent
type QAccessibleTextCursorEvent* = object of QAccessibleEvent
type QAccessibleTextSelectionEvent* = object of QAccessibleTextCursorEvent
type QAccessibleTextInsertEvent* = object of QAccessibleTextCursorEvent
type QAccessibleTextRemoveEvent* = object of QAccessibleTextCursorEvent
type QAccessibleTextUpdateEvent* = object of QAccessibleTextCursorEvent
type QAccessibleValueChangeEvent* = object of QAccessibleEvent
type QAccessibleTableModelChangeEvent* = object of QAccessibleEvent
