import ./Qt5Script_libs

{.push raises: [].}

from system/ansi_c import c_free

type
  struct_miqt_string {.used.} = object
    len: csize_t
    data: cstring

  struct_miqt_array {.used.} = object
    len: csize_t
    data: pointer

  struct_miqt_map {.used.} = object
    len: csize_t
    keys: pointer
    values: pointer

  miqt_uintptr_t {.importc: "uintptr_t", header: "stdint.h", used.} = uint
  miqt_intptr_t {.importc: "intptr_t", header: "stdint.h", used.} = int

func fromBytes(T: type string, v: openArray[byte]): string {.used.} =
  if v.len > 0:
    result = newString(v.len)
    when nimvm:
      for i, c in v:
        result[i] = cast[char](c)
    else:
      copyMem(addr result[0], unsafeAddr v[0], v.len)

const cflags = gorge("pkg-config --cflags Qt5Script")  & " -fPIC"
{.compile("gen_qscriptclass.cpp", cflags).}


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

proc fcQScriptClass_engine(self: pointer, ): pointer {.importc: "QScriptClass_engine".}
proc fcQScriptClass_queryProperty(self: pointer, objectVal: pointer, name: pointer, flags: cint, id: ptr cuint): cint {.importc: "QScriptClass_queryProperty".}
proc fcQScriptClass_property(self: pointer, objectVal: pointer, name: pointer, id: cuint): pointer {.importc: "QScriptClass_property".}
proc fcQScriptClass_setProperty(self: pointer, objectVal: pointer, name: pointer, id: cuint, value: pointer): void {.importc: "QScriptClass_setProperty".}
proc fcQScriptClass_propertyFlags(self: pointer, objectVal: pointer, name: pointer, id: cuint): cint {.importc: "QScriptClass_propertyFlags".}
proc fcQScriptClass_newIterator(self: pointer, objectVal: pointer): pointer {.importc: "QScriptClass_newIterator".}
proc fcQScriptClass_prototype(self: pointer, ): pointer {.importc: "QScriptClass_prototype".}
proc fcQScriptClass_name(self: pointer, ): struct_miqt_string {.importc: "QScriptClass_name".}
proc fcQScriptClass_supportsExtension(self: pointer, extension: cint): bool {.importc: "QScriptClass_supportsExtension".}
proc fcQScriptClass_extension(self: pointer, extension: cint, argument: pointer): pointer {.importc: "QScriptClass_extension".}
type cQScriptClassVTable = object
  destructor*: proc(vtbl: ptr cQScriptClassVTable, self: ptr cQScriptClass) {.cdecl, raises:[], gcsafe.}
  queryProperty*: proc(vtbl, self: pointer, objectVal: pointer, name: pointer, flags: cint, id: ptr cuint): cint {.cdecl, raises: [], gcsafe.}
  property*: proc(vtbl, self: pointer, objectVal: pointer, name: pointer, id: cuint): pointer {.cdecl, raises: [], gcsafe.}
  setProperty*: proc(vtbl, self: pointer, objectVal: pointer, name: pointer, id: cuint, value: pointer): void {.cdecl, raises: [], gcsafe.}
  propertyFlags*: proc(vtbl, self: pointer, objectVal: pointer, name: pointer, id: cuint): cint {.cdecl, raises: [], gcsafe.}
  newIterator*: proc(vtbl, self: pointer, objectVal: pointer): pointer {.cdecl, raises: [], gcsafe.}
  prototype*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  name*: proc(vtbl, self: pointer, ): struct_miqt_string {.cdecl, raises: [], gcsafe.}
  supportsExtension*: proc(vtbl, self: pointer, extension: cint): bool {.cdecl, raises: [], gcsafe.}
  extension*: proc(vtbl, self: pointer, extension: cint, argument: pointer): pointer {.cdecl, raises: [], gcsafe.}
proc fcQScriptClass_virtualbase_queryProperty(self: pointer, objectVal: pointer, name: pointer, flags: cint, id: ptr cuint): cint {.importc: "QScriptClass_virtualbase_queryProperty".}
proc fcQScriptClass_virtualbase_property(self: pointer, objectVal: pointer, name: pointer, id: cuint): pointer {.importc: "QScriptClass_virtualbase_property".}
proc fcQScriptClass_virtualbase_setProperty(self: pointer, objectVal: pointer, name: pointer, id: cuint, value: pointer): void {.importc: "QScriptClass_virtualbase_setProperty".}
proc fcQScriptClass_virtualbase_propertyFlags(self: pointer, objectVal: pointer, name: pointer, id: cuint): cint {.importc: "QScriptClass_virtualbase_propertyFlags".}
proc fcQScriptClass_virtualbase_newIterator(self: pointer, objectVal: pointer): pointer {.importc: "QScriptClass_virtualbase_newIterator".}
proc fcQScriptClass_virtualbase_prototype(self: pointer, ): pointer {.importc: "QScriptClass_virtualbase_prototype".}
proc fcQScriptClass_virtualbase_name(self: pointer, ): struct_miqt_string {.importc: "QScriptClass_virtualbase_name".}
proc fcQScriptClass_virtualbase_supportsExtension(self: pointer, extension: cint): bool {.importc: "QScriptClass_virtualbase_supportsExtension".}
proc fcQScriptClass_virtualbase_extension(self: pointer, extension: cint, argument: pointer): pointer {.importc: "QScriptClass_virtualbase_extension".}
proc fcQScriptClass_new(vtbl: pointer, engine: pointer): ptr cQScriptClass {.importc: "QScriptClass_new".}
proc fcQScriptClass_delete(self: pointer) {.importc: "QScriptClass_delete".}

proc engine*(self: gen_qscriptclass_types.QScriptClass, ): gen_qscriptengine_types.QScriptEngine =
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

proc prototype*(self: gen_qscriptclass_types.QScriptClass, ): gen_qscriptvalue_types.QScriptValue =
  gen_qscriptvalue_types.QScriptValue(h: fcQScriptClass_prototype(self.h))

proc name*(self: gen_qscriptclass_types.QScriptClass, ): string =
  let v_ms = fcQScriptClass_name(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
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

proc miqt_exec_callback_cQScriptClass_queryProperty(vtbl: pointer, self: pointer, objectVal: pointer, name: pointer, flags: cint, id: ptr cuint): cint {.cdecl.} =
  let vtbl = cast[ptr QScriptClassVTable](vtbl)
  let self = QScriptClass(h: self)
  let slotval1 = gen_qscriptvalue_types.QScriptValue(h: objectVal)
  let slotval2 = gen_qscriptstring_types.QScriptString(h: name)
  let slotval3 = cint(flags)
  let slotval4 = id
  var virtualReturn = vtbl[].queryProperty(self, slotval1, slotval2, slotval3, slotval4)
  cint(virtualReturn)

proc QScriptClassproperty*(self: gen_qscriptclass_types.QScriptClass, objectVal: gen_qscriptvalue_types.QScriptValue, name: gen_qscriptstring_types.QScriptString, id: cuint): gen_qscriptvalue_types.QScriptValue =
  gen_qscriptvalue_types.QScriptValue(h: fcQScriptClass_virtualbase_property(self.h, objectVal.h, name.h, id))

proc miqt_exec_callback_cQScriptClass_property(vtbl: pointer, self: pointer, objectVal: pointer, name: pointer, id: cuint): pointer {.cdecl.} =
  let vtbl = cast[ptr QScriptClassVTable](vtbl)
  let self = QScriptClass(h: self)
  let slotval1 = gen_qscriptvalue_types.QScriptValue(h: objectVal)
  let slotval2 = gen_qscriptstring_types.QScriptString(h: name)
  let slotval3 = id
  var virtualReturn = vtbl[].property(self, slotval1, slotval2, slotval3)
  virtualReturn.h

proc QScriptClasssetProperty*(self: gen_qscriptclass_types.QScriptClass, objectVal: gen_qscriptvalue_types.QScriptValue, name: gen_qscriptstring_types.QScriptString, id: cuint, value: gen_qscriptvalue_types.QScriptValue): void =
  fcQScriptClass_virtualbase_setProperty(self.h, objectVal.h, name.h, id, value.h)

proc miqt_exec_callback_cQScriptClass_setProperty(vtbl: pointer, self: pointer, objectVal: pointer, name: pointer, id: cuint, value: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QScriptClassVTable](vtbl)
  let self = QScriptClass(h: self)
  let slotval1 = gen_qscriptvalue_types.QScriptValue(h: objectVal)
  let slotval2 = gen_qscriptstring_types.QScriptString(h: name)
  let slotval3 = id
  let slotval4 = gen_qscriptvalue_types.QScriptValue(h: value)
  vtbl[].setProperty(self, slotval1, slotval2, slotval3, slotval4)

proc QScriptClasspropertyFlags*(self: gen_qscriptclass_types.QScriptClass, objectVal: gen_qscriptvalue_types.QScriptValue, name: gen_qscriptstring_types.QScriptString, id: cuint): cint =
  cint(fcQScriptClass_virtualbase_propertyFlags(self.h, objectVal.h, name.h, id))

proc miqt_exec_callback_cQScriptClass_propertyFlags(vtbl: pointer, self: pointer, objectVal: pointer, name: pointer, id: cuint): cint {.cdecl.} =
  let vtbl = cast[ptr QScriptClassVTable](vtbl)
  let self = QScriptClass(h: self)
  let slotval1 = gen_qscriptvalue_types.QScriptValue(h: objectVal)
  let slotval2 = gen_qscriptstring_types.QScriptString(h: name)
  let slotval3 = id
  var virtualReturn = vtbl[].propertyFlags(self, slotval1, slotval2, slotval3)
  cint(virtualReturn)

proc QScriptClassnewIterator*(self: gen_qscriptclass_types.QScriptClass, objectVal: gen_qscriptvalue_types.QScriptValue): gen_qscriptclasspropertyiterator_types.QScriptClassPropertyIterator =
  gen_qscriptclasspropertyiterator_types.QScriptClassPropertyIterator(h: fcQScriptClass_virtualbase_newIterator(self.h, objectVal.h))

proc miqt_exec_callback_cQScriptClass_newIterator(vtbl: pointer, self: pointer, objectVal: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QScriptClassVTable](vtbl)
  let self = QScriptClass(h: self)
  let slotval1 = gen_qscriptvalue_types.QScriptValue(h: objectVal)
  var virtualReturn = vtbl[].newIterator(self, slotval1)
  virtualReturn.h

proc QScriptClassprototype*(self: gen_qscriptclass_types.QScriptClass, ): gen_qscriptvalue_types.QScriptValue =
  gen_qscriptvalue_types.QScriptValue(h: fcQScriptClass_virtualbase_prototype(self.h))

proc miqt_exec_callback_cQScriptClass_prototype(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QScriptClassVTable](vtbl)
  let self = QScriptClass(h: self)
  var virtualReturn = vtbl[].prototype(self)
  virtualReturn.h

proc QScriptClassname*(self: gen_qscriptclass_types.QScriptClass, ): string =
  let v_ms = fcQScriptClass_virtualbase_name(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc miqt_exec_callback_cQScriptClass_name(vtbl: pointer, self: pointer): struct_miqt_string {.cdecl.} =
  let vtbl = cast[ptr QScriptClassVTable](vtbl)
  let self = QScriptClass(h: self)
  var virtualReturn = vtbl[].name(self)
  struct_miqt_string(data: virtualReturn, len: csize_t(len(virtualReturn)))

proc QScriptClasssupportsExtension*(self: gen_qscriptclass_types.QScriptClass, extension: cint): bool =
  fcQScriptClass_virtualbase_supportsExtension(self.h, cint(extension))

proc miqt_exec_callback_cQScriptClass_supportsExtension(vtbl: pointer, self: pointer, extension: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QScriptClassVTable](vtbl)
  let self = QScriptClass(h: self)
  let slotval1 = cint(extension)
  var virtualReturn = vtbl[].supportsExtension(self, slotval1)
  virtualReturn

proc QScriptClassextension*(self: gen_qscriptclass_types.QScriptClass, extension: cint, argument: gen_qvariant_types.QVariant): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQScriptClass_virtualbase_extension(self.h, cint(extension), argument.h))

proc miqt_exec_callback_cQScriptClass_extension(vtbl: pointer, self: pointer, extension: cint, argument: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QScriptClassVTable](vtbl)
  let self = QScriptClass(h: self)
  let slotval1 = cint(extension)
  let slotval2 = gen_qvariant_types.QVariant(h: argument)
  var virtualReturn = vtbl[].extension(self, slotval1, slotval2)
  virtualReturn.h

proc create*(T: type gen_qscriptclass_types.QScriptClass,
    engine: gen_qscriptengine_types.QScriptEngine,
    vtbl: ref QScriptClassVTable = nil): gen_qscriptclass_types.QScriptClass =
  let vtbl = if vtbl == nil: new QScriptClassVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQScriptClassVTable, _: ptr cQScriptClass) {.cdecl.} =
    let vtbl = cast[ref QScriptClassVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.queryProperty):
    vtbl[].vtbl.queryProperty = miqt_exec_callback_cQScriptClass_queryProperty
  if not isNil(vtbl.property):
    vtbl[].vtbl.property = miqt_exec_callback_cQScriptClass_property
  if not isNil(vtbl.setProperty):
    vtbl[].vtbl.setProperty = miqt_exec_callback_cQScriptClass_setProperty
  if not isNil(vtbl.propertyFlags):
    vtbl[].vtbl.propertyFlags = miqt_exec_callback_cQScriptClass_propertyFlags
  if not isNil(vtbl.newIterator):
    vtbl[].vtbl.newIterator = miqt_exec_callback_cQScriptClass_newIterator
  if not isNil(vtbl.prototype):
    vtbl[].vtbl.prototype = miqt_exec_callback_cQScriptClass_prototype
  if not isNil(vtbl.name):
    vtbl[].vtbl.name = miqt_exec_callback_cQScriptClass_name
  if not isNil(vtbl.supportsExtension):
    vtbl[].vtbl.supportsExtension = miqt_exec_callback_cQScriptClass_supportsExtension
  if not isNil(vtbl.extension):
    vtbl[].vtbl.extension = miqt_exec_callback_cQScriptClass_extension
  gen_qscriptclass_types.QScriptClass(h: fcQScriptClass_new(addr(vtbl[]), engine.h))

proc delete*(self: gen_qscriptclass_types.QScriptClass) =
  fcQScriptClass_delete(self.h)
