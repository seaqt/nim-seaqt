import ./qtscript_pkg

{.push raises: [].}

from system/ansi_c import c_free, c_malloc

type
  struct_seaqt_string {.used.} = object
    len: csize_t
    data: pointer

  struct_seaqt_array {.used.} = object
    len: csize_t
    data: pointer

  struct_seaqt_map {.used.} = object
    len: csize_t
    keys: pointer
    values: pointer

  miqt_uintptr_t {.importc: "uintptr_t", header: "stdint.h", used.} = uint
  miqt_intptr_t {.importc: "intptr_t", header: "stdint.h", used.} = int

func fromBytes(T: type string, v: struct_seaqt_string): string {.used.} =
  if v.len > 0:
    let len = cast[int](v.len)
    result = newStringUninit(len)
    when nimvm:
      let d = cast[ptr UncheckedArray[char]](v.data)
      for i in 0..<len:
        result[i] = d[i]
    else:
      copyMem(addr result[0], v.data, len)


type QScriptClassQueryFlagEnum* = distinct cint
template HandlesReadAccess*(_: type QScriptClassQueryFlagEnum): untyped = 1
template HandlesWriteAccess*(_: type QScriptClassQueryFlagEnum): untyped = 2


type QScriptClassExtensionEnum* = distinct cint
template Callable*(_: type QScriptClassExtensionEnum): untyped = 0
template HasInstance*(_: type QScriptClassExtensionEnum): untyped = 1


import ./gen_qscriptclass_types
export gen_qscriptclass_types

import
  ../QtCore/gen_qvariant_types,
  ./gen_qscriptclasspropertyiterator_types,
  ./gen_qscriptengine_types,
  ./gen_qscriptstring_types,
  ./gen_qscriptvalue_types
export
  gen_qvariant_types,
  gen_qscriptclasspropertyiterator_types,
  gen_qscriptengine_types,
  gen_qscriptstring_types,
  gen_qscriptvalue_types

type cQScriptClass*{.exportc: "QScriptClass", incompleteStruct.} = object

proc fcQScriptClass_engine(self: pointer): pointer {.importc: "QScriptClass_engine".}
proc fcQScriptClass_queryProperty(self: pointer, objectVal: pointer, name: pointer, flags: cint, id: ptr cuint): cint {.importc: "QScriptClass_queryProperty".}
proc fcQScriptClass_property(self: pointer, objectVal: pointer, name: pointer, id: cuint): pointer {.importc: "QScriptClass_property".}
proc fcQScriptClass_setProperty(self: pointer, objectVal: pointer, name: pointer, id: cuint, value: pointer): void {.importc: "QScriptClass_setProperty".}
proc fcQScriptClass_propertyFlags(self: pointer, objectVal: pointer, name: pointer, id: cuint): cint {.importc: "QScriptClass_propertyFlags".}
proc fcQScriptClass_newIterator(self: pointer, objectVal: pointer): pointer {.importc: "QScriptClass_newIterator".}
proc fcQScriptClass_prototype(self: pointer): pointer {.importc: "QScriptClass_prototype".}
proc fcQScriptClass_name(self: pointer): struct_seaqt_string {.importc: "QScriptClass_name".}
proc fcQScriptClass_supportsExtension(self: pointer, extension: cint): bool {.importc: "QScriptClass_supportsExtension".}
proc fcQScriptClass_extension(self: pointer, extension: cint, argument: pointer): pointer {.importc: "QScriptClass_extension".}
proc fcQScriptClass_vdata(self: pointer): ptr pointer {.importc: "QScriptClass_vdata".}
proc fvdata_cQScriptClass(self: pointer): pointer {.importc: "vdata_QScriptClass".}

type cQScriptClassVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  queryProperty*: proc(self: pointer, objectVal: pointer, name: pointer, flags: cint, id: ptr cuint): cint {.cdecl, raises: [], gcsafe.}
  property*: proc(self: pointer, objectVal: pointer, name: pointer, id: cuint): pointer {.cdecl, raises: [], gcsafe.}
  setProperty*: proc(self: pointer, objectVal: pointer, name: pointer, id: cuint, value: pointer): void {.cdecl, raises: [], gcsafe.}
  propertyFlags*: proc(self: pointer, objectVal: pointer, name: pointer, id: cuint): cint {.cdecl, raises: [], gcsafe.}
  newIterator*: proc(self: pointer, objectVal: pointer): pointer {.cdecl, raises: [], gcsafe.}
  prototype*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  name*: proc(self: pointer): struct_seaqt_string {.cdecl, raises: [], gcsafe.}
  supportsExtension*: proc(self: pointer, extension: cint): bool {.cdecl, raises: [], gcsafe.}
  extension*: proc(self: pointer, extension: cint, argument: pointer): pointer {.cdecl, raises: [], gcsafe.}
proc fcQScriptClass_virtualbase_queryProperty(self: pointer, objectVal: pointer, name: pointer, flags: cint, id: ptr cuint): cint {.importc: "QScriptClass_virtualbase_queryProperty".}
proc fcQScriptClass_virtualbase_property(self: pointer, objectVal: pointer, name: pointer, id: cuint): pointer {.importc: "QScriptClass_virtualbase_property".}
proc fcQScriptClass_virtualbase_setProperty(self: pointer, objectVal: pointer, name: pointer, id: cuint, value: pointer): void {.importc: "QScriptClass_virtualbase_setProperty".}
proc fcQScriptClass_virtualbase_propertyFlags(self: pointer, objectVal: pointer, name: pointer, id: cuint): cint {.importc: "QScriptClass_virtualbase_propertyFlags".}
proc fcQScriptClass_virtualbase_newIterator(self: pointer, objectVal: pointer): pointer {.importc: "QScriptClass_virtualbase_newIterator".}
proc fcQScriptClass_virtualbase_prototype(self: pointer): pointer {.importc: "QScriptClass_virtualbase_prototype".}
proc fcQScriptClass_virtualbase_name(self: pointer): struct_seaqt_string {.importc: "QScriptClass_virtualbase_name".}
proc fcQScriptClass_virtualbase_supportsExtension(self: pointer, extension: cint): bool {.importc: "QScriptClass_virtualbase_supportsExtension".}
proc fcQScriptClass_virtualbase_extension(self: pointer, extension: cint, argument: pointer): pointer {.importc: "QScriptClass_virtualbase_extension".}
proc fcQScriptClass_new(vtbl: pointer, vdata: csize_t, engine: pointer): ptr cQScriptClass {.importc: "QScriptClass_new".}
proc fcQScriptClass_delete(self: pointer) {.importc: "QScriptClass_delete".}

proc engine*(self: gen_qscriptclass_types.QScriptClass): gen_qscriptengine_types.QScriptEngine =
  gen_qscriptengine_types.QScriptEngine(h: fcQScriptClass_engine(self.h))

proc queryProperty*(self: gen_qscriptclass_types.QScriptClass, objectVal: gen_qscriptvalue_types.QScriptValue, name: gen_qscriptstring_types.QScriptString, flags: cint, id: ptr cuint): cint =
  cint(fcQScriptClass_queryProperty(self.h, objectVal.h, name.h, cint(flags), id))

proc property*(self: gen_qscriptclass_types.QScriptClass, objectVal: gen_qscriptvalue_types.QScriptValue, name: gen_qscriptstring_types.QScriptString, id: cuint): gen_qscriptvalue_types.QScriptValue =
  gen_qscriptvalue_types.QScriptValue(h: fcQScriptClass_property(self.h, objectVal.h, name.h, id))

proc setProperty*(self: gen_qscriptclass_types.QScriptClass, objectVal: gen_qscriptvalue_types.QScriptValue, name: gen_qscriptstring_types.QScriptString, id: cuint, value: gen_qscriptvalue_types.QScriptValue): void =
  fcQScriptClass_setProperty(self.h, objectVal.h, name.h, id, value.h)

proc propertyFlags*(self: gen_qscriptclass_types.QScriptClass, objectVal: gen_qscriptvalue_types.QScriptValue, name: gen_qscriptstring_types.QScriptString, id: cuint): cint =
  cint(fcQScriptClass_propertyFlags(self.h, objectVal.h, name.h, id))

proc newIterator*(self: gen_qscriptclass_types.QScriptClass, objectVal: gen_qscriptvalue_types.QScriptValue): gen_qscriptclasspropertyiterator_types.QScriptClassPropertyIterator =
  gen_qscriptclasspropertyiterator_types.QScriptClassPropertyIterator(h: fcQScriptClass_newIterator(self.h, objectVal.h))

proc prototype*(self: gen_qscriptclass_types.QScriptClass): gen_qscriptvalue_types.QScriptValue =
  gen_qscriptvalue_types.QScriptValue(h: fcQScriptClass_prototype(self.h))

proc name*(self: gen_qscriptclass_types.QScriptClass): string =
  let v_ms = fcQScriptClass_name(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc supportsExtension*(self: gen_qscriptclass_types.QScriptClass, extension: cint): bool =
  fcQScriptClass_supportsExtension(self.h, cint(extension))

proc extension*(self: gen_qscriptclass_types.QScriptClass, extension: cint, argument: gen_qvariant_types.QVariant): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQScriptClass_extension(self.h, cint(extension), argument.h))

type QScriptClassqueryPropertyProc* = proc(self: QScriptClass, objectVal: gen_qscriptvalue_types.QScriptValue, name: gen_qscriptstring_types.QScriptString, flags: cint, id: ptr cuint): cint {.raises: [], gcsafe.}
type QScriptClasspropertyProc* = proc(self: QScriptClass, objectVal: gen_qscriptvalue_types.QScriptValue, name: gen_qscriptstring_types.QScriptString, id: cuint): gen_qscriptvalue_types.QScriptValue {.raises: [], gcsafe.}
type QScriptClasssetPropertyProc* = proc(self: QScriptClass, objectVal: gen_qscriptvalue_types.QScriptValue, name: gen_qscriptstring_types.QScriptString, id: cuint, value: gen_qscriptvalue_types.QScriptValue): void {.raises: [], gcsafe.}
type QScriptClasspropertyFlagsProc* = proc(self: QScriptClass, objectVal: gen_qscriptvalue_types.QScriptValue, name: gen_qscriptstring_types.QScriptString, id: cuint): cint {.raises: [], gcsafe.}
type QScriptClassnewIteratorProc* = proc(self: QScriptClass, objectVal: gen_qscriptvalue_types.QScriptValue): gen_qscriptclasspropertyiterator_types.QScriptClassPropertyIterator {.raises: [], gcsafe.}
type QScriptClassprototypeProc* = proc(self: QScriptClass): gen_qscriptvalue_types.QScriptValue {.raises: [], gcsafe.}
type QScriptClassnameProc* = proc(self: QScriptClass): string {.raises: [], gcsafe.}
type QScriptClasssupportsExtensionProc* = proc(self: QScriptClass, extension: cint): bool {.raises: [], gcsafe.}
type QScriptClassextensionProc* = proc(self: QScriptClass, extension: cint, argument: gen_qvariant_types.QVariant): gen_qvariant_types.QVariant {.raises: [], gcsafe.}
type QScriptClassVTable* = object
  vtbl: cQScriptClassVTable
  queryProperty*: QScriptClassqueryPropertyProc
  property*: QScriptClasspropertyProc
  setProperty*: QScriptClasssetPropertyProc
  propertyFlags*: QScriptClasspropertyFlagsProc
  newIterator*: QScriptClassnewIteratorProc
  prototype*: QScriptClassprototypeProc
  name*: QScriptClassnameProc
  supportsExtension*: QScriptClasssupportsExtensionProc
  extension*: QScriptClassextensionProc

proc QScriptClassqueryProperty*(self: gen_qscriptclass_types.QScriptClass, objectVal: gen_qscriptvalue_types.QScriptValue, name: gen_qscriptstring_types.QScriptString, flags: cint, id: ptr cuint): cint =
  cint(fcQScriptClass_virtualbase_queryProperty(self.h, objectVal.h, name.h, cint(flags), id))

proc QScriptClassproperty*(self: gen_qscriptclass_types.QScriptClass, objectVal: gen_qscriptvalue_types.QScriptValue, name: gen_qscriptstring_types.QScriptString, id: cuint): gen_qscriptvalue_types.QScriptValue =
  gen_qscriptvalue_types.QScriptValue(h: fcQScriptClass_virtualbase_property(self.h, objectVal.h, name.h, id))

proc QScriptClasssetProperty*(self: gen_qscriptclass_types.QScriptClass, objectVal: gen_qscriptvalue_types.QScriptValue, name: gen_qscriptstring_types.QScriptString, id: cuint, value: gen_qscriptvalue_types.QScriptValue): void =
  fcQScriptClass_virtualbase_setProperty(self.h, objectVal.h, name.h, id, value.h)

proc QScriptClasspropertyFlags*(self: gen_qscriptclass_types.QScriptClass, objectVal: gen_qscriptvalue_types.QScriptValue, name: gen_qscriptstring_types.QScriptString, id: cuint): cint =
  cint(fcQScriptClass_virtualbase_propertyFlags(self.h, objectVal.h, name.h, id))

proc QScriptClassnewIterator*(self: gen_qscriptclass_types.QScriptClass, objectVal: gen_qscriptvalue_types.QScriptValue): gen_qscriptclasspropertyiterator_types.QScriptClassPropertyIterator =
  gen_qscriptclasspropertyiterator_types.QScriptClassPropertyIterator(h: fcQScriptClass_virtualbase_newIterator(self.h, objectVal.h))

proc QScriptClassprototype*(self: gen_qscriptclass_types.QScriptClass): gen_qscriptvalue_types.QScriptValue =
  gen_qscriptvalue_types.QScriptValue(h: fcQScriptClass_virtualbase_prototype(self.h))

proc QScriptClassname*(self: gen_qscriptclass_types.QScriptClass): string =
  let v_ms = fcQScriptClass_virtualbase_name(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc QScriptClasssupportsExtension*(self: gen_qscriptclass_types.QScriptClass, extension: cint): bool =
  fcQScriptClass_virtualbase_supportsExtension(self.h, cint(extension))

proc QScriptClassextension*(self: gen_qscriptclass_types.QScriptClass, extension: cint, argument: gen_qvariant_types.QVariant): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQScriptClass_virtualbase_extension(self.h, cint(extension), argument.h))


proc fcQScriptClass_vtable_callback_queryProperty(self: pointer, objectVal: pointer, name: pointer, flags: cint, id: ptr cuint): cint {.cdecl.} =
  let vtbl = cast[ptr QScriptClassVTable](fcQScriptClass_vdata(self)[])
  let self = QScriptClass(h: self)
  let slotval1 = gen_qscriptvalue_types.QScriptValue(h: objectVal)
  let slotval2 = gen_qscriptstring_types.QScriptString(h: name)
  let slotval3 = cint(flags)
  let slotval4 = id
  var virtualReturn = vtbl[].queryProperty(self, slotval1, slotval2, slotval3, slotval4)
  cint(virtualReturn)

proc fcQScriptClass_vtable_callback_property(self: pointer, objectVal: pointer, name: pointer, id: cuint): pointer {.cdecl.} =
  let vtbl = cast[ptr QScriptClassVTable](fcQScriptClass_vdata(self)[])
  let self = QScriptClass(h: self)
  let slotval1 = gen_qscriptvalue_types.QScriptValue(h: objectVal)
  let slotval2 = gen_qscriptstring_types.QScriptString(h: name)
  let slotval3 = id
  var virtualReturn = vtbl[].property(self, slotval1, slotval2, slotval3)
  virtualReturn.h

proc fcQScriptClass_vtable_callback_setProperty(self: pointer, objectVal: pointer, name: pointer, id: cuint, value: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QScriptClassVTable](fcQScriptClass_vdata(self)[])
  let self = QScriptClass(h: self)
  let slotval1 = gen_qscriptvalue_types.QScriptValue(h: objectVal)
  let slotval2 = gen_qscriptstring_types.QScriptString(h: name)
  let slotval3 = id
  let slotval4 = gen_qscriptvalue_types.QScriptValue(h: value)
  vtbl[].setProperty(self, slotval1, slotval2, slotval3, slotval4)

proc fcQScriptClass_vtable_callback_propertyFlags(self: pointer, objectVal: pointer, name: pointer, id: cuint): cint {.cdecl.} =
  let vtbl = cast[ptr QScriptClassVTable](fcQScriptClass_vdata(self)[])
  let self = QScriptClass(h: self)
  let slotval1 = gen_qscriptvalue_types.QScriptValue(h: objectVal)
  let slotval2 = gen_qscriptstring_types.QScriptString(h: name)
  let slotval3 = id
  var virtualReturn = vtbl[].propertyFlags(self, slotval1, slotval2, slotval3)
  cint(virtualReturn)

proc fcQScriptClass_vtable_callback_newIterator(self: pointer, objectVal: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QScriptClassVTable](fcQScriptClass_vdata(self)[])
  let self = QScriptClass(h: self)
  let slotval1 = gen_qscriptvalue_types.QScriptValue(h: objectVal)
  var virtualReturn = vtbl[].newIterator(self, slotval1)
  virtualReturn.h

proc fcQScriptClass_vtable_callback_prototype(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QScriptClassVTable](fcQScriptClass_vdata(self)[])
  let self = QScriptClass(h: self)
  var virtualReturn = vtbl[].prototype(self)
  virtualReturn.h

proc fcQScriptClass_vtable_callback_name(self: pointer): struct_seaqt_string {.cdecl.} =
  let vtbl = cast[ptr QScriptClassVTable](fcQScriptClass_vdata(self)[])
  let self = QScriptClass(h: self)
  var virtualReturn = vtbl[].name(self)
  var virtualReturn_copy = if len(virtualReturn) > 0: c_malloc(csize_t(len(virtualReturn))) else: nil
  if len(virtualReturn) > 0: copyMem(virtualReturn_copy, addr virtualReturn[0], csize_t(len(virtualReturn)))
  struct_seaqt_string(data: virtualReturn_copy, len: csize_t(len(virtualReturn)))

proc fcQScriptClass_vtable_callback_supportsExtension(self: pointer, extension: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QScriptClassVTable](fcQScriptClass_vdata(self)[])
  let self = QScriptClass(h: self)
  let slotval1 = cint(extension)
  var virtualReturn = vtbl[].supportsExtension(self, slotval1)
  virtualReturn

proc fcQScriptClass_vtable_callback_extension(self: pointer, extension: cint, argument: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QScriptClassVTable](fcQScriptClass_vdata(self)[])
  let self = QScriptClass(h: self)
  let slotval1 = cint(extension)
  let slotval2 = gen_qvariant_types.QVariant(h: argument)
  var virtualReturn = vtbl[].extension(self, slotval1, slotval2)
  virtualReturn.h

type VirtualQScriptClass* {.inheritable.} = ref object of QScriptClass
  vtbl*: cQScriptClassVTable

method queryProperty*(self: VirtualQScriptClass, objectVal: gen_qscriptvalue_types.QScriptValue, name: gen_qscriptstring_types.QScriptString, flags: cint, id: ptr cuint): cint {.base.} =
  QScriptClassqueryProperty(self[], objectVal, name, flags, id)
method property*(self: VirtualQScriptClass, objectVal: gen_qscriptvalue_types.QScriptValue, name: gen_qscriptstring_types.QScriptString, id: cuint): gen_qscriptvalue_types.QScriptValue {.base.} =
  QScriptClassproperty(self[], objectVal, name, id)
method setProperty*(self: VirtualQScriptClass, objectVal: gen_qscriptvalue_types.QScriptValue, name: gen_qscriptstring_types.QScriptString, id: cuint, value: gen_qscriptvalue_types.QScriptValue): void {.base.} =
  QScriptClasssetProperty(self[], objectVal, name, id, value)
method propertyFlags*(self: VirtualQScriptClass, objectVal: gen_qscriptvalue_types.QScriptValue, name: gen_qscriptstring_types.QScriptString, id: cuint): cint {.base.} =
  QScriptClasspropertyFlags(self[], objectVal, name, id)
method newIterator*(self: VirtualQScriptClass, objectVal: gen_qscriptvalue_types.QScriptValue): gen_qscriptclasspropertyiterator_types.QScriptClassPropertyIterator {.base.} =
  QScriptClassnewIterator(self[], objectVal)
method prototype*(self: VirtualQScriptClass): gen_qscriptvalue_types.QScriptValue {.base.} =
  QScriptClassprototype(self[])
method name*(self: VirtualQScriptClass): string {.base.} =
  QScriptClassname(self[])
method supportsExtension*(self: VirtualQScriptClass, extension: cint): bool {.base.} =
  QScriptClasssupportsExtension(self[], extension)
method extension*(self: VirtualQScriptClass, extension: cint, argument: gen_qvariant_types.QVariant): gen_qvariant_types.QVariant {.base.} =
  QScriptClassextension(self[], extension, argument)

proc fcQScriptClass_method_callback_queryProperty(self: pointer, objectVal: pointer, name: pointer, flags: cint, id: ptr cuint): cint {.cdecl.} =
  let inst = cast[VirtualQScriptClass](fcQScriptClass_vdata(self)[])
  let slotval1 = gen_qscriptvalue_types.QScriptValue(h: objectVal)
  let slotval2 = gen_qscriptstring_types.QScriptString(h: name)
  let slotval3 = cint(flags)
  let slotval4 = id
  var virtualReturn = inst.queryProperty(slotval1, slotval2, slotval3, slotval4)
  cint(virtualReturn)

proc fcQScriptClass_method_callback_property(self: pointer, objectVal: pointer, name: pointer, id: cuint): pointer {.cdecl.} =
  let inst = cast[VirtualQScriptClass](fcQScriptClass_vdata(self)[])
  let slotval1 = gen_qscriptvalue_types.QScriptValue(h: objectVal)
  let slotval2 = gen_qscriptstring_types.QScriptString(h: name)
  let slotval3 = id
  var virtualReturn = inst.property(slotval1, slotval2, slotval3)
  virtualReturn.h

proc fcQScriptClass_method_callback_setProperty(self: pointer, objectVal: pointer, name: pointer, id: cuint, value: pointer): void {.cdecl.} =
  let inst = cast[VirtualQScriptClass](fcQScriptClass_vdata(self)[])
  let slotval1 = gen_qscriptvalue_types.QScriptValue(h: objectVal)
  let slotval2 = gen_qscriptstring_types.QScriptString(h: name)
  let slotval3 = id
  let slotval4 = gen_qscriptvalue_types.QScriptValue(h: value)
  inst.setProperty(slotval1, slotval2, slotval3, slotval4)

proc fcQScriptClass_method_callback_propertyFlags(self: pointer, objectVal: pointer, name: pointer, id: cuint): cint {.cdecl.} =
  let inst = cast[VirtualQScriptClass](fcQScriptClass_vdata(self)[])
  let slotval1 = gen_qscriptvalue_types.QScriptValue(h: objectVal)
  let slotval2 = gen_qscriptstring_types.QScriptString(h: name)
  let slotval3 = id
  var virtualReturn = inst.propertyFlags(slotval1, slotval2, slotval3)
  cint(virtualReturn)

proc fcQScriptClass_method_callback_newIterator(self: pointer, objectVal: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQScriptClass](fcQScriptClass_vdata(self)[])
  let slotval1 = gen_qscriptvalue_types.QScriptValue(h: objectVal)
  var virtualReturn = inst.newIterator(slotval1)
  virtualReturn.h

proc fcQScriptClass_method_callback_prototype(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQScriptClass](fcQScriptClass_vdata(self)[])
  var virtualReturn = inst.prototype()
  virtualReturn.h

proc fcQScriptClass_method_callback_name(self: pointer): struct_seaqt_string {.cdecl.} =
  let inst = cast[VirtualQScriptClass](fcQScriptClass_vdata(self)[])
  var virtualReturn = inst.name()
  var virtualReturn_copy = if len(virtualReturn) > 0: c_malloc(csize_t(len(virtualReturn))) else: nil
  if len(virtualReturn) > 0: copyMem(virtualReturn_copy, addr virtualReturn[0], csize_t(len(virtualReturn)))
  struct_seaqt_string(data: virtualReturn_copy, len: csize_t(len(virtualReturn)))

proc fcQScriptClass_method_callback_supportsExtension(self: pointer, extension: cint): bool {.cdecl.} =
  let inst = cast[VirtualQScriptClass](fcQScriptClass_vdata(self)[])
  let slotval1 = cint(extension)
  var virtualReturn = inst.supportsExtension(slotval1)
  virtualReturn

proc fcQScriptClass_method_callback_extension(self: pointer, extension: cint, argument: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQScriptClass](fcQScriptClass_vdata(self)[])
  let slotval1 = cint(extension)
  let slotval2 = gen_qvariant_types.QVariant(h: argument)
  var virtualReturn = inst.extension(slotval1, slotval2)
  virtualReturn.h


proc create*(T: type gen_qscriptclass_types.QScriptClass,
    engine: gen_qscriptengine_types.QScriptEngine,
    vtbl: ref QScriptClassVTable = nil): gen_qscriptclass_types.QScriptClass =
  let vtbl = if vtbl == nil: new QScriptClassVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QScriptClassVTable](fcQScriptClass_vdata(self)[])
    GC_unref(vtbl)
  if not isNil(vtbl[].queryProperty):
    vtbl[].vtbl.queryProperty = fcQScriptClass_vtable_callback_queryProperty
  if not isNil(vtbl[].property):
    vtbl[].vtbl.property = fcQScriptClass_vtable_callback_property
  if not isNil(vtbl[].setProperty):
    vtbl[].vtbl.setProperty = fcQScriptClass_vtable_callback_setProperty
  if not isNil(vtbl[].propertyFlags):
    vtbl[].vtbl.propertyFlags = fcQScriptClass_vtable_callback_propertyFlags
  if not isNil(vtbl[].newIterator):
    vtbl[].vtbl.newIterator = fcQScriptClass_vtable_callback_newIterator
  if not isNil(vtbl[].prototype):
    vtbl[].vtbl.prototype = fcQScriptClass_vtable_callback_prototype
  if not isNil(vtbl[].name):
    vtbl[].vtbl.name = fcQScriptClass_vtable_callback_name
  if not isNil(vtbl[].supportsExtension):
    vtbl[].vtbl.supportsExtension = fcQScriptClass_vtable_callback_supportsExtension
  if not isNil(vtbl[].extension):
    vtbl[].vtbl.extension = fcQScriptClass_vtable_callback_extension
  let tmp = gen_qscriptclass_types.QScriptClass(h: fcQScriptClass_new(addr(vtbl[].vtbl), csize_t(sizeof(pointer)), engine.h))
  fcQScriptClass_vdata(tmp.h)[] = addr(vtbl[])
  tmp
const cQScriptClass_mvtbl = cQScriptClassVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQScriptClass()[])](self.fcQScriptClass_vdata()[])
    inst[].h = nil,

  queryProperty: fcQScriptClass_method_callback_queryProperty,
  property: fcQScriptClass_method_callback_property,
  setProperty: fcQScriptClass_method_callback_setProperty,
  propertyFlags: fcQScriptClass_method_callback_propertyFlags,
  newIterator: fcQScriptClass_method_callback_newIterator,
  prototype: fcQScriptClass_method_callback_prototype,
  name: fcQScriptClass_method_callback_name,
  supportsExtension: fcQScriptClass_method_callback_supportsExtension,
  extension: fcQScriptClass_method_callback_extension,
)
proc create*(T: type gen_qscriptclass_types.QScriptClass,
    engine: gen_qscriptengine_types.QScriptEngine,
    inst: VirtualQScriptClass) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQScriptClass_new(addr(cQScriptClass_mvtbl), csize_t(sizeof(pointer)), engine.h)
  fcQScriptClass_vdata(inst[].h)[] = addr inst[]
  inst[].owned = true

proc delete*(self: gen_qscriptclass_types.QScriptClass) =
  fcQScriptClass_delete(self.h)
