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

proc fcQScriptClass_new(engine: pointer): ptr cQScriptClass {.importc: "QScriptClass_new".}
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
proc fQScriptClass_virtualbase_queryProperty(self: pointer, objectVal: pointer, name: pointer, flags: cint, id: ptr cuint): cint{.importc: "QScriptClass_virtualbase_queryProperty".}
proc fcQScriptClass_override_virtual_queryProperty(self: pointer, slot: int) {.importc: "QScriptClass_override_virtual_queryProperty".}
proc fQScriptClass_virtualbase_property(self: pointer, objectVal: pointer, name: pointer, id: cuint): pointer{.importc: "QScriptClass_virtualbase_property".}
proc fcQScriptClass_override_virtual_property(self: pointer, slot: int) {.importc: "QScriptClass_override_virtual_property".}
proc fQScriptClass_virtualbase_setProperty(self: pointer, objectVal: pointer, name: pointer, id: cuint, value: pointer): void{.importc: "QScriptClass_virtualbase_setProperty".}
proc fcQScriptClass_override_virtual_setProperty(self: pointer, slot: int) {.importc: "QScriptClass_override_virtual_setProperty".}
proc fQScriptClass_virtualbase_propertyFlags(self: pointer, objectVal: pointer, name: pointer, id: cuint): cint{.importc: "QScriptClass_virtualbase_propertyFlags".}
proc fcQScriptClass_override_virtual_propertyFlags(self: pointer, slot: int) {.importc: "QScriptClass_override_virtual_propertyFlags".}
proc fQScriptClass_virtualbase_newIterator(self: pointer, objectVal: pointer): pointer{.importc: "QScriptClass_virtualbase_newIterator".}
proc fcQScriptClass_override_virtual_newIterator(self: pointer, slot: int) {.importc: "QScriptClass_override_virtual_newIterator".}
proc fQScriptClass_virtualbase_prototype(self: pointer, ): pointer{.importc: "QScriptClass_virtualbase_prototype".}
proc fcQScriptClass_override_virtual_prototype(self: pointer, slot: int) {.importc: "QScriptClass_override_virtual_prototype".}
proc fQScriptClass_virtualbase_name(self: pointer, ): struct_miqt_string{.importc: "QScriptClass_virtualbase_name".}
proc fcQScriptClass_override_virtual_name(self: pointer, slot: int) {.importc: "QScriptClass_override_virtual_name".}
proc fQScriptClass_virtualbase_supportsExtension(self: pointer, extension: cint): bool{.importc: "QScriptClass_virtualbase_supportsExtension".}
proc fcQScriptClass_override_virtual_supportsExtension(self: pointer, slot: int) {.importc: "QScriptClass_override_virtual_supportsExtension".}
proc fQScriptClass_virtualbase_extension(self: pointer, extension: cint, argument: pointer): pointer{.importc: "QScriptClass_virtualbase_extension".}
proc fcQScriptClass_override_virtual_extension(self: pointer, slot: int) {.importc: "QScriptClass_override_virtual_extension".}
proc fcQScriptClass_delete(self: pointer) {.importc: "QScriptClass_delete".}


func init*(T: type gen_qscriptclass_types.QScriptClass, h: ptr cQScriptClass): gen_qscriptclass_types.QScriptClass =
  T(h: h)
proc create*(T: type gen_qscriptclass_types.QScriptClass, engine: gen_qscriptengine_types.QScriptEngine): gen_qscriptclass_types.QScriptClass =
  gen_qscriptclass_types.QScriptClass.init(fcQScriptClass_new(engine.h))

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

proc QScriptClassqueryProperty*(self: gen_qscriptclass_types.QScriptClass, objectVal: gen_qscriptvalue_types.QScriptValue, name: gen_qscriptstring_types.QScriptString, flags: cint, id: ptr cuint): cint =
  cint(fQScriptClass_virtualbase_queryProperty(self.h, objectVal.h, name.h, cint(flags), id))

type QScriptClassqueryPropertyProc* = proc(objectVal: gen_qscriptvalue_types.QScriptValue, name: gen_qscriptstring_types.QScriptString, flags: cint, id: ptr cuint): cint
proc onqueryProperty*(self: gen_qscriptclass_types.QScriptClass, slot: QScriptClassqueryPropertyProc) =
  # TODO check subclass
  var tmp = new QScriptClassqueryPropertyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQScriptClass_override_virtual_queryProperty(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QScriptClass_queryProperty(self: ptr cQScriptClass, slot: int, objectVal: pointer, name: pointer, flags: cint, id: ptr cuint): cint {.exportc: "miqt_exec_callback_QScriptClass_queryProperty ".} =
  var nimfunc = cast[ptr QScriptClassqueryPropertyProc](cast[pointer](slot))
  let slotval1 = gen_qscriptvalue_types.QScriptValue(h: objectVal)

  let slotval2 = gen_qscriptstring_types.QScriptString(h: name)

  let slotval3 = cint(flags)

  let slotval4 = id


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3, slotval4 )

  cint(virtualReturn)
proc QScriptClassproperty*(self: gen_qscriptclass_types.QScriptClass, objectVal: gen_qscriptvalue_types.QScriptValue, name: gen_qscriptstring_types.QScriptString, id: cuint): gen_qscriptvalue_types.QScriptValue =
  gen_qscriptvalue_types.QScriptValue(h: fQScriptClass_virtualbase_property(self.h, objectVal.h, name.h, id))

type QScriptClasspropertyProc* = proc(objectVal: gen_qscriptvalue_types.QScriptValue, name: gen_qscriptstring_types.QScriptString, id: cuint): gen_qscriptvalue_types.QScriptValue
proc onproperty*(self: gen_qscriptclass_types.QScriptClass, slot: QScriptClasspropertyProc) =
  # TODO check subclass
  var tmp = new QScriptClasspropertyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQScriptClass_override_virtual_property(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QScriptClass_property(self: ptr cQScriptClass, slot: int, objectVal: pointer, name: pointer, id: cuint): pointer {.exportc: "miqt_exec_callback_QScriptClass_property ".} =
  var nimfunc = cast[ptr QScriptClasspropertyProc](cast[pointer](slot))
  let slotval1 = gen_qscriptvalue_types.QScriptValue(h: objectVal)

  let slotval2 = gen_qscriptstring_types.QScriptString(h: name)

  let slotval3 = id


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn.h
proc QScriptClasssetProperty*(self: gen_qscriptclass_types.QScriptClass, objectVal: gen_qscriptvalue_types.QScriptValue, name: gen_qscriptstring_types.QScriptString, id: cuint, value: gen_qscriptvalue_types.QScriptValue): void =
  fQScriptClass_virtualbase_setProperty(self.h, objectVal.h, name.h, id, value.h)

type QScriptClasssetPropertyProc* = proc(objectVal: gen_qscriptvalue_types.QScriptValue, name: gen_qscriptstring_types.QScriptString, id: cuint, value: gen_qscriptvalue_types.QScriptValue): void
proc onsetProperty*(self: gen_qscriptclass_types.QScriptClass, slot: QScriptClasssetPropertyProc) =
  # TODO check subclass
  var tmp = new QScriptClasssetPropertyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQScriptClass_override_virtual_setProperty(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QScriptClass_setProperty(self: ptr cQScriptClass, slot: int, objectVal: pointer, name: pointer, id: cuint, value: pointer): void {.exportc: "miqt_exec_callback_QScriptClass_setProperty ".} =
  var nimfunc = cast[ptr QScriptClasssetPropertyProc](cast[pointer](slot))
  let slotval1 = gen_qscriptvalue_types.QScriptValue(h: objectVal)

  let slotval2 = gen_qscriptstring_types.QScriptString(h: name)

  let slotval3 = id

  let slotval4 = gen_qscriptvalue_types.QScriptValue(h: value)


  nimfunc[](slotval1, slotval2, slotval3, slotval4)
proc QScriptClasspropertyFlags*(self: gen_qscriptclass_types.QScriptClass, objectVal: gen_qscriptvalue_types.QScriptValue, name: gen_qscriptstring_types.QScriptString, id: cuint): cint =
  cint(fQScriptClass_virtualbase_propertyFlags(self.h, objectVal.h, name.h, id))

type QScriptClasspropertyFlagsProc* = proc(objectVal: gen_qscriptvalue_types.QScriptValue, name: gen_qscriptstring_types.QScriptString, id: cuint): cint
proc onpropertyFlags*(self: gen_qscriptclass_types.QScriptClass, slot: QScriptClasspropertyFlagsProc) =
  # TODO check subclass
  var tmp = new QScriptClasspropertyFlagsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQScriptClass_override_virtual_propertyFlags(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QScriptClass_propertyFlags(self: ptr cQScriptClass, slot: int, objectVal: pointer, name: pointer, id: cuint): cint {.exportc: "miqt_exec_callback_QScriptClass_propertyFlags ".} =
  var nimfunc = cast[ptr QScriptClasspropertyFlagsProc](cast[pointer](slot))
  let slotval1 = gen_qscriptvalue_types.QScriptValue(h: objectVal)

  let slotval2 = gen_qscriptstring_types.QScriptString(h: name)

  let slotval3 = id


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  cint(virtualReturn)
proc QScriptClassnewIterator*(self: gen_qscriptclass_types.QScriptClass, objectVal: gen_qscriptvalue_types.QScriptValue): gen_qscriptclasspropertyiterator_types.QScriptClassPropertyIterator =
  gen_qscriptclasspropertyiterator_types.QScriptClassPropertyIterator(h: fQScriptClass_virtualbase_newIterator(self.h, objectVal.h))

type QScriptClassnewIteratorProc* = proc(objectVal: gen_qscriptvalue_types.QScriptValue): gen_qscriptclasspropertyiterator_types.QScriptClassPropertyIterator
proc onnewIterator*(self: gen_qscriptclass_types.QScriptClass, slot: QScriptClassnewIteratorProc) =
  # TODO check subclass
  var tmp = new QScriptClassnewIteratorProc
  tmp[] = slot
  GC_ref(tmp)
  fcQScriptClass_override_virtual_newIterator(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QScriptClass_newIterator(self: ptr cQScriptClass, slot: int, objectVal: pointer): pointer {.exportc: "miqt_exec_callback_QScriptClass_newIterator ".} =
  var nimfunc = cast[ptr QScriptClassnewIteratorProc](cast[pointer](slot))
  let slotval1 = gen_qscriptvalue_types.QScriptValue(h: objectVal)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QScriptClassprototype*(self: gen_qscriptclass_types.QScriptClass, ): gen_qscriptvalue_types.QScriptValue =
  gen_qscriptvalue_types.QScriptValue(h: fQScriptClass_virtualbase_prototype(self.h))

type QScriptClassprototypeProc* = proc(): gen_qscriptvalue_types.QScriptValue
proc onprototype*(self: gen_qscriptclass_types.QScriptClass, slot: QScriptClassprototypeProc) =
  # TODO check subclass
  var tmp = new QScriptClassprototypeProc
  tmp[] = slot
  GC_ref(tmp)
  fcQScriptClass_override_virtual_prototype(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QScriptClass_prototype(self: ptr cQScriptClass, slot: int): pointer {.exportc: "miqt_exec_callback_QScriptClass_prototype ".} =
  var nimfunc = cast[ptr QScriptClassprototypeProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QScriptClassname*(self: gen_qscriptclass_types.QScriptClass, ): string =
  let v_ms = fQScriptClass_virtualbase_name(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

type QScriptClassnameProc* = proc(): string
proc onname*(self: gen_qscriptclass_types.QScriptClass, slot: QScriptClassnameProc) =
  # TODO check subclass
  var tmp = new QScriptClassnameProc
  tmp[] = slot
  GC_ref(tmp)
  fcQScriptClass_override_virtual_name(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QScriptClass_name(self: ptr cQScriptClass, slot: int): struct_miqt_string {.exportc: "miqt_exec_callback_QScriptClass_name ".} =
  var nimfunc = cast[ptr QScriptClassnameProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  struct_miqt_string(data: virtualReturn, len: csize_t(len(virtualReturn)))
proc QScriptClasssupportsExtension*(self: gen_qscriptclass_types.QScriptClass, extension: cint): bool =
  fQScriptClass_virtualbase_supportsExtension(self.h, cint(extension))

type QScriptClasssupportsExtensionProc* = proc(extension: cint): bool
proc onsupportsExtension*(self: gen_qscriptclass_types.QScriptClass, slot: QScriptClasssupportsExtensionProc) =
  # TODO check subclass
  var tmp = new QScriptClasssupportsExtensionProc
  tmp[] = slot
  GC_ref(tmp)
  fcQScriptClass_override_virtual_supportsExtension(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QScriptClass_supportsExtension(self: ptr cQScriptClass, slot: int, extension: cint): bool {.exportc: "miqt_exec_callback_QScriptClass_supportsExtension ".} =
  var nimfunc = cast[ptr QScriptClasssupportsExtensionProc](cast[pointer](slot))
  let slotval1 = cint(extension)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QScriptClassextension*(self: gen_qscriptclass_types.QScriptClass, extension: cint, argument: gen_qvariant_types.QVariant): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fQScriptClass_virtualbase_extension(self.h, cint(extension), argument.h))

type QScriptClassextensionProc* = proc(extension: cint, argument: gen_qvariant_types.QVariant): gen_qvariant_types.QVariant
proc onextension*(self: gen_qscriptclass_types.QScriptClass, slot: QScriptClassextensionProc) =
  # TODO check subclass
  var tmp = new QScriptClassextensionProc
  tmp[] = slot
  GC_ref(tmp)
  fcQScriptClass_override_virtual_extension(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QScriptClass_extension(self: ptr cQScriptClass, slot: int, extension: cint, argument: pointer): pointer {.exportc: "miqt_exec_callback_QScriptClass_extension ".} =
  var nimfunc = cast[ptr QScriptClassextensionProc](cast[pointer](slot))
  let slotval1 = cint(extension)

  let slotval2 = gen_qvariant_types.QVariant(h: argument)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn.h
proc delete*(self: gen_qscriptclass_types.QScriptClass) =
  fcQScriptClass_delete(self.h)
