type QMetaMethod* {.inheritable.} = object
  h*: pointer
  owned*: bool

const cflags = gorge("pkg-config --cflags Qt6Core") & " -fPIC"
{.compile("gen_qmetaobject.cpp", cflags).}

proc fcQMetaMethod_delete(self: pointer) {.importc: "QMetaMethod_delete".}
proc `=destroy`(self: var QMetaMethod) =
  if self.owned: fcQMetaMethod_delete(self.h)

proc `=sink`(dest: var QMetaMethod, source: QMetaMethod) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QMetaMethod, source: QMetaMethod) {.error.}
proc delete*(self: sink QMetaMethod) =
  let h = self.h
  wasMoved(self)
  fcQMetaMethod_delete(h)

type QMetaEnum* {.inheritable.} = object
  h*: pointer
  owned*: bool

proc fcQMetaEnum_delete(self: pointer) {.importc: "QMetaEnum_delete".}
proc `=destroy`(self: var QMetaEnum) =
  if self.owned: fcQMetaEnum_delete(self.h)

proc `=sink`(dest: var QMetaEnum, source: QMetaEnum) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QMetaEnum, source: QMetaEnum) {.error.}
proc delete*(self: sink QMetaEnum) =
  let h = self.h
  wasMoved(self)
  fcQMetaEnum_delete(h)

type QMetaProperty* {.inheritable.} = object
  h*: pointer
  owned*: bool

proc fcQMetaProperty_delete(self: pointer) {.importc: "QMetaProperty_delete".}
proc `=destroy`(self: var QMetaProperty) =
  if self.owned: fcQMetaProperty_delete(self.h)

proc `=sink`(dest: var QMetaProperty, source: QMetaProperty) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QMetaProperty, source: QMetaProperty) {.error.}
proc delete*(self: sink QMetaProperty) =
  let h = self.h
  wasMoved(self)
  fcQMetaProperty_delete(h)

type QMetaClassInfo* {.inheritable.} = object
  h*: pointer
  owned*: bool

proc fcQMetaClassInfo_delete(self: pointer) {.importc: "QMetaClassInfo_delete".}
proc `=destroy`(self: var QMetaClassInfo) =
  if self.owned: fcQMetaClassInfo_delete(self.h)

proc `=sink`(dest: var QMetaClassInfo, source: QMetaClassInfo) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QMetaClassInfo, source: QMetaClassInfo) {.error.}
proc delete*(self: sink QMetaClassInfo) =
  let h = self.h
  wasMoved(self)
  fcQMetaClassInfo_delete(h)

