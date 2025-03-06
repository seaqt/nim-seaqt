type QPropertyBindingSourceLocation* {.inheritable.} = object
  h*: pointer
  owned*: bool

const cflags = gorge("pkg-config --cflags Qt6Core") & " -fPIC"
{.compile("gen_qproperty.cpp", cflags).}

proc fcQPropertyBindingSourceLocation_delete(self: pointer) {.importc: "QPropertyBindingSourceLocation_delete".}
proc `=destroy`(self: var QPropertyBindingSourceLocation) =
  if self.owned: fcQPropertyBindingSourceLocation_delete(self.h)

proc `=sink`(dest: var QPropertyBindingSourceLocation, source: QPropertyBindingSourceLocation) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QPropertyBindingSourceLocation, source: QPropertyBindingSourceLocation) {.error.}
proc delete*(self: sink QPropertyBindingSourceLocation) =
  let h = self.h
  wasMoved(self)
  fcQPropertyBindingSourceLocation_delete(h)

type QPropertyBindingError* {.inheritable.} = object
  h*: pointer
  owned*: bool

proc fcQPropertyBindingError_delete(self: pointer) {.importc: "QPropertyBindingError_delete".}
proc `=destroy`(self: var QPropertyBindingError) =
  if self.owned: fcQPropertyBindingError_delete(self.h)

proc `=sink`(dest: var QPropertyBindingError, source: QPropertyBindingError) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QPropertyBindingError, source: QPropertyBindingError) {.error.}
proc delete*(self: sink QPropertyBindingError) =
  let h = self.h
  wasMoved(self)
  fcQPropertyBindingError_delete(h)

type QUntypedPropertyBinding* {.inheritable.} = object
  h*: pointer
  owned*: bool

proc fcQUntypedPropertyBinding_delete(self: pointer) {.importc: "QUntypedPropertyBinding_delete".}
proc `=destroy`(self: var QUntypedPropertyBinding) =
  if self.owned: fcQUntypedPropertyBinding_delete(self.h)

proc `=sink`(dest: var QUntypedPropertyBinding, source: QUntypedPropertyBinding) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QUntypedPropertyBinding, source: QUntypedPropertyBinding) {.error.}
proc delete*(self: sink QUntypedPropertyBinding) =
  let h = self.h
  wasMoved(self)
  fcQUntypedPropertyBinding_delete(h)

type QPropertyObserverBase* {.inheritable.} = object
  h*: pointer
  owned*: bool

proc fcQPropertyObserverBase_delete(self: pointer) {.importc: "QPropertyObserverBase_delete".}
proc `=destroy`(self: var QPropertyObserverBase) =
  if self.owned: fcQPropertyObserverBase_delete(self.h)

proc `=sink`(dest: var QPropertyObserverBase, source: QPropertyObserverBase) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QPropertyObserverBase, source: QPropertyObserverBase) {.error.}
proc delete*(self: sink QPropertyObserverBase) =
  let h = self.h
  wasMoved(self)
  fcQPropertyObserverBase_delete(h)

type QPropertyObserver* = object of QPropertyObserverBase
type QPropertyNotifier* = object of QPropertyObserver
type QUntypedBindable* {.inheritable.} = object
  h*: pointer
  owned*: bool

proc fcQUntypedBindable_delete(self: pointer) {.importc: "QUntypedBindable_delete".}
proc `=destroy`(self: var QUntypedBindable) =
  if self.owned: fcQUntypedBindable_delete(self.h)

proc `=sink`(dest: var QUntypedBindable, source: QUntypedBindable) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QUntypedBindable, source: QUntypedBindable) {.error.}
proc delete*(self: sink QUntypedBindable) =
  let h = self.h
  wasMoved(self)
  fcQUntypedBindable_delete(h)

