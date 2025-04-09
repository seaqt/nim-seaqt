type QUntypedPropertyData* {.inheritable.} = object
  h*: pointer
  owned*: bool

const cflags = gorge("pkg-config --cflags Qt6Core") & " -fPIC"
{.compile("gen_qpropertyprivate.cpp", cflags).}

proc fcQUntypedPropertyData_delete(self: pointer) {.importc: "QUntypedPropertyData_delete".}
proc `=destroy`(self: var QUntypedPropertyData) =
  if self.owned: fcQUntypedPropertyData_delete(self.h)

proc `=sink`(dest: var QUntypedPropertyData, source: QUntypedPropertyData) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QUntypedPropertyData, source: QUntypedPropertyData) {.error.}
proc delete*(self: sink QUntypedPropertyData) =
  let h = self.h
  wasMoved(self)
  fcQUntypedPropertyData_delete(h)

type QPropertyProxyBindingData* {.inheritable.} = object
  h*: pointer
  owned*: bool

proc fcQPropertyProxyBindingData_delete(self: pointer) {.importc: "QPropertyProxyBindingData_delete".}
proc `=destroy`(self: var QPropertyProxyBindingData) =
  if self.owned: fcQPropertyProxyBindingData_delete(self.h)

proc `=sink`(dest: var QPropertyProxyBindingData, source: QPropertyProxyBindingData) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QPropertyProxyBindingData, source: QPropertyProxyBindingData) {.error.}
proc delete*(self: sink QPropertyProxyBindingData) =
  let h = self.h
  wasMoved(self)
  fcQPropertyProxyBindingData_delete(h)

