import ./Qt6Core_libs

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

const cflags = gorge("pkg-config --cflags Qt6Core")  & " -fPIC"
{.compile("gen_qproperty.cpp", cflags).}


type QtPrivateBindableWarningsReasonEnum* = distinct cint
template InvalidInterface*(_: type QtPrivateBindableWarningsReasonEnum): untyped = 0
template NonBindableInterface*(_: type QtPrivateBindableWarningsReasonEnum): untyped = 1
template ReadOnlyInterface*(_: type QtPrivateBindableWarningsReasonEnum): untyped = 2


type QPropertyBindingErrorTypeEnum* = distinct cint
template NoError*(_: type QPropertyBindingErrorTypeEnum): untyped = 0
template BindingLoop*(_: type QPropertyBindingErrorTypeEnum): untyped = 1
template EvaluationError*(_: type QPropertyBindingErrorTypeEnum): untyped = 2
template UnknownError*(_: type QPropertyBindingErrorTypeEnum): untyped = 3


type QPropertyObserverBaseObserverTagEnum* = distinct cint
template ObserverNotifiesBinding*(_: type QPropertyObserverBaseObserverTagEnum): untyped = 0
template ObserverNotifiesChangeHandler*(_: type QPropertyObserverBaseObserverTagEnum): untyped = 1
template ObserverIsPlaceholder*(_: type QPropertyObserverBaseObserverTagEnum): untyped = 2
template ObserverIsAlias*(_: type QPropertyObserverBaseObserverTagEnum): untyped = 3


import ./gen_qproperty_types
export gen_qproperty_types

import
  ./gen_qmetatype_types
export
  gen_qmetatype_types

type cQPropertyBindingSourceLocation*{.exportc: "QPropertyBindingSourceLocation", incompleteStruct.} = object
type cQPropertyBindingError*{.exportc: "QPropertyBindingError", incompleteStruct.} = object
type cQUntypedPropertyBinding*{.exportc: "QUntypedPropertyBinding", incompleteStruct.} = object
type cQPropertyObserverBase*{.exportc: "QPropertyObserverBase", incompleteStruct.} = object
type cQPropertyObserver*{.exportc: "QPropertyObserver", incompleteStruct.} = object
type cQPropertyNotifier*{.exportc: "QPropertyNotifier", incompleteStruct.} = object
type cQUntypedBindable*{.exportc: "QUntypedBindable", incompleteStruct.} = object

proc fcQPropertyBindingSourceLocation_new(): ptr cQPropertyBindingSourceLocation {.importc: "QPropertyBindingSourceLocation_new".}
proc fcQPropertyBindingSourceLocation_new2(param1: pointer): ptr cQPropertyBindingSourceLocation {.importc: "QPropertyBindingSourceLocation_new2".}
proc fcQPropertyBindingSourceLocation_delete(self: pointer) {.importc: "QPropertyBindingSourceLocation_delete".}
proc fcQPropertyBindingError_new(): ptr cQPropertyBindingError {.importc: "QPropertyBindingError_new".}
proc fcQPropertyBindingError_new2(typeVal: cint): ptr cQPropertyBindingError {.importc: "QPropertyBindingError_new2".}
proc fcQPropertyBindingError_new3(other: pointer): ptr cQPropertyBindingError {.importc: "QPropertyBindingError_new3".}
proc fcQPropertyBindingError_new4(typeVal: cint, description: struct_miqt_string): ptr cQPropertyBindingError {.importc: "QPropertyBindingError_new4".}
proc fcQPropertyBindingError_operatorAssign(self: pointer, other: pointer): void {.importc: "QPropertyBindingError_operatorAssign".}
proc fcQPropertyBindingError_hasError(self: pointer, ): bool {.importc: "QPropertyBindingError_hasError".}
proc fcQPropertyBindingError_typeX(self: pointer, ): cint {.importc: "QPropertyBindingError_type".}
proc fcQPropertyBindingError_description(self: pointer, ): struct_miqt_string {.importc: "QPropertyBindingError_description".}
proc fcQPropertyBindingError_delete(self: pointer) {.importc: "QPropertyBindingError_delete".}
proc fcQUntypedPropertyBinding_new(): ptr cQUntypedPropertyBinding {.importc: "QUntypedPropertyBinding_new".}
proc fcQUntypedPropertyBinding_new2(other: pointer): ptr cQUntypedPropertyBinding {.importc: "QUntypedPropertyBinding_new2".}
proc fcQUntypedPropertyBinding_operatorAssign(self: pointer, other: pointer): void {.importc: "QUntypedPropertyBinding_operatorAssign".}
proc fcQUntypedPropertyBinding_isNull(self: pointer, ): bool {.importc: "QUntypedPropertyBinding_isNull".}
proc fcQUntypedPropertyBinding_error(self: pointer, ): pointer {.importc: "QUntypedPropertyBinding_error".}
proc fcQUntypedPropertyBinding_valueMetaType(self: pointer, ): pointer {.importc: "QUntypedPropertyBinding_valueMetaType".}
proc fcQUntypedPropertyBinding_delete(self: pointer) {.importc: "QUntypedPropertyBinding_delete".}
proc fcQPropertyObserverBase_new(): ptr cQPropertyObserverBase {.importc: "QPropertyObserverBase_new".}
proc fcQPropertyObserverBase_new2(param1: pointer): ptr cQPropertyObserverBase {.importc: "QPropertyObserverBase_new2".}
proc fcQPropertyObserverBase_delete(self: pointer) {.importc: "QPropertyObserverBase_delete".}
proc fcQPropertyObserver_new(): ptr cQPropertyObserver {.importc: "QPropertyObserver_new".}
proc fcQPropertyObserver_delete(self: pointer) {.importc: "QPropertyObserver_delete".}
proc fcQPropertyNotifier_new(): ptr cQPropertyNotifier {.importc: "QPropertyNotifier_new".}
proc fcQPropertyNotifier_delete(self: pointer) {.importc: "QPropertyNotifier_delete".}
proc fcQUntypedBindable_new(): ptr cQUntypedBindable {.importc: "QUntypedBindable_new".}
proc fcQUntypedBindable_new2(param1: pointer): ptr cQUntypedBindable {.importc: "QUntypedBindable_new2".}
proc fcQUntypedBindable_isValid(self: pointer, ): bool {.importc: "QUntypedBindable_isValid".}
proc fcQUntypedBindable_isBindable(self: pointer, ): bool {.importc: "QUntypedBindable_isBindable".}
proc fcQUntypedBindable_isReadOnly(self: pointer, ): bool {.importc: "QUntypedBindable_isReadOnly".}
proc fcQUntypedBindable_makeBinding(self: pointer, ): pointer {.importc: "QUntypedBindable_makeBinding".}
proc fcQUntypedBindable_takeBinding(self: pointer, ): pointer {.importc: "QUntypedBindable_takeBinding".}
proc fcQUntypedBindable_observe(self: pointer, observer: pointer): void {.importc: "QUntypedBindable_observe".}
proc fcQUntypedBindable_binding(self: pointer, ): pointer {.importc: "QUntypedBindable_binding".}
proc fcQUntypedBindable_setBinding(self: pointer, binding: pointer): bool {.importc: "QUntypedBindable_setBinding".}
proc fcQUntypedBindable_hasBinding(self: pointer, ): bool {.importc: "QUntypedBindable_hasBinding".}
proc fcQUntypedBindable_metaType(self: pointer, ): pointer {.importc: "QUntypedBindable_metaType".}
proc fcQUntypedBindable_makeBinding1(self: pointer, location: pointer): pointer {.importc: "QUntypedBindable_makeBinding1".}
proc fcQUntypedBindable_delete(self: pointer) {.importc: "QUntypedBindable_delete".}


func init*(T: type gen_qproperty_types.QPropertyBindingSourceLocation, h: ptr cQPropertyBindingSourceLocation): gen_qproperty_types.QPropertyBindingSourceLocation =
  T(h: h)
proc create*(T: type gen_qproperty_types.QPropertyBindingSourceLocation, ): gen_qproperty_types.QPropertyBindingSourceLocation =
  gen_qproperty_types.QPropertyBindingSourceLocation.init(fcQPropertyBindingSourceLocation_new())

proc create*(T: type gen_qproperty_types.QPropertyBindingSourceLocation, param1: gen_qproperty_types.QPropertyBindingSourceLocation): gen_qproperty_types.QPropertyBindingSourceLocation =
  gen_qproperty_types.QPropertyBindingSourceLocation.init(fcQPropertyBindingSourceLocation_new2(param1.h))

proc delete*(self: gen_qproperty_types.QPropertyBindingSourceLocation) =
  fcQPropertyBindingSourceLocation_delete(self.h)

func init*(T: type gen_qproperty_types.QPropertyBindingError, h: ptr cQPropertyBindingError): gen_qproperty_types.QPropertyBindingError =
  T(h: h)
proc create*(T: type gen_qproperty_types.QPropertyBindingError, ): gen_qproperty_types.QPropertyBindingError =
  gen_qproperty_types.QPropertyBindingError.init(fcQPropertyBindingError_new())

proc create*(T: type gen_qproperty_types.QPropertyBindingError, typeVal: cint): gen_qproperty_types.QPropertyBindingError =
  gen_qproperty_types.QPropertyBindingError.init(fcQPropertyBindingError_new2(cint(typeVal)))

proc create*(T: type gen_qproperty_types.QPropertyBindingError, other: gen_qproperty_types.QPropertyBindingError): gen_qproperty_types.QPropertyBindingError =
  gen_qproperty_types.QPropertyBindingError.init(fcQPropertyBindingError_new3(other.h))

proc create*(T: type gen_qproperty_types.QPropertyBindingError, typeVal: cint, description: string): gen_qproperty_types.QPropertyBindingError =
  gen_qproperty_types.QPropertyBindingError.init(fcQPropertyBindingError_new4(cint(typeVal), struct_miqt_string(data: description, len: csize_t(len(description)))))

proc operatorAssign*(self: gen_qproperty_types.QPropertyBindingError, other: gen_qproperty_types.QPropertyBindingError): void =
  fcQPropertyBindingError_operatorAssign(self.h, other.h)

proc hasError*(self: gen_qproperty_types.QPropertyBindingError, ): bool =
  fcQPropertyBindingError_hasError(self.h)

proc typeX*(self: gen_qproperty_types.QPropertyBindingError, ): cint =
  cint(fcQPropertyBindingError_typeX(self.h))

proc description*(self: gen_qproperty_types.QPropertyBindingError, ): string =
  let v_ms = fcQPropertyBindingError_description(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc delete*(self: gen_qproperty_types.QPropertyBindingError) =
  fcQPropertyBindingError_delete(self.h)

func init*(T: type gen_qproperty_types.QUntypedPropertyBinding, h: ptr cQUntypedPropertyBinding): gen_qproperty_types.QUntypedPropertyBinding =
  T(h: h)
proc create*(T: type gen_qproperty_types.QUntypedPropertyBinding, ): gen_qproperty_types.QUntypedPropertyBinding =
  gen_qproperty_types.QUntypedPropertyBinding.init(fcQUntypedPropertyBinding_new())

proc create*(T: type gen_qproperty_types.QUntypedPropertyBinding, other: gen_qproperty_types.QUntypedPropertyBinding): gen_qproperty_types.QUntypedPropertyBinding =
  gen_qproperty_types.QUntypedPropertyBinding.init(fcQUntypedPropertyBinding_new2(other.h))

proc operatorAssign*(self: gen_qproperty_types.QUntypedPropertyBinding, other: gen_qproperty_types.QUntypedPropertyBinding): void =
  fcQUntypedPropertyBinding_operatorAssign(self.h, other.h)

proc isNull*(self: gen_qproperty_types.QUntypedPropertyBinding, ): bool =
  fcQUntypedPropertyBinding_isNull(self.h)

proc error*(self: gen_qproperty_types.QUntypedPropertyBinding, ): gen_qproperty_types.QPropertyBindingError =
  gen_qproperty_types.QPropertyBindingError(h: fcQUntypedPropertyBinding_error(self.h))

proc valueMetaType*(self: gen_qproperty_types.QUntypedPropertyBinding, ): gen_qmetatype_types.QMetaType =
  gen_qmetatype_types.QMetaType(h: fcQUntypedPropertyBinding_valueMetaType(self.h))

proc delete*(self: gen_qproperty_types.QUntypedPropertyBinding) =
  fcQUntypedPropertyBinding_delete(self.h)

func init*(T: type gen_qproperty_types.QPropertyObserverBase, h: ptr cQPropertyObserverBase): gen_qproperty_types.QPropertyObserverBase =
  T(h: h)
proc create*(T: type gen_qproperty_types.QPropertyObserverBase, ): gen_qproperty_types.QPropertyObserverBase =
  gen_qproperty_types.QPropertyObserverBase.init(fcQPropertyObserverBase_new())

proc create*(T: type gen_qproperty_types.QPropertyObserverBase, param1: gen_qproperty_types.QPropertyObserverBase): gen_qproperty_types.QPropertyObserverBase =
  gen_qproperty_types.QPropertyObserverBase.init(fcQPropertyObserverBase_new2(param1.h))

proc delete*(self: gen_qproperty_types.QPropertyObserverBase) =
  fcQPropertyObserverBase_delete(self.h)

func init*(T: type gen_qproperty_types.QPropertyObserver, h: ptr cQPropertyObserver): gen_qproperty_types.QPropertyObserver =
  T(h: h)
proc create*(T: type gen_qproperty_types.QPropertyObserver, ): gen_qproperty_types.QPropertyObserver =
  gen_qproperty_types.QPropertyObserver.init(fcQPropertyObserver_new())

proc delete*(self: gen_qproperty_types.QPropertyObserver) =
  fcQPropertyObserver_delete(self.h)

func init*(T: type gen_qproperty_types.QPropertyNotifier, h: ptr cQPropertyNotifier): gen_qproperty_types.QPropertyNotifier =
  T(h: h)
proc create*(T: type gen_qproperty_types.QPropertyNotifier, ): gen_qproperty_types.QPropertyNotifier =
  gen_qproperty_types.QPropertyNotifier.init(fcQPropertyNotifier_new())

proc delete*(self: gen_qproperty_types.QPropertyNotifier) =
  fcQPropertyNotifier_delete(self.h)

func init*(T: type gen_qproperty_types.QUntypedBindable, h: ptr cQUntypedBindable): gen_qproperty_types.QUntypedBindable =
  T(h: h)
proc create*(T: type gen_qproperty_types.QUntypedBindable, ): gen_qproperty_types.QUntypedBindable =
  gen_qproperty_types.QUntypedBindable.init(fcQUntypedBindable_new())

proc create*(T: type gen_qproperty_types.QUntypedBindable, param1: gen_qproperty_types.QUntypedBindable): gen_qproperty_types.QUntypedBindable =
  gen_qproperty_types.QUntypedBindable.init(fcQUntypedBindable_new2(param1.h))

proc isValid*(self: gen_qproperty_types.QUntypedBindable, ): bool =
  fcQUntypedBindable_isValid(self.h)

proc isBindable*(self: gen_qproperty_types.QUntypedBindable, ): bool =
  fcQUntypedBindable_isBindable(self.h)

proc isReadOnly*(self: gen_qproperty_types.QUntypedBindable, ): bool =
  fcQUntypedBindable_isReadOnly(self.h)

proc makeBinding*(self: gen_qproperty_types.QUntypedBindable, ): gen_qproperty_types.QUntypedPropertyBinding =
  gen_qproperty_types.QUntypedPropertyBinding(h: fcQUntypedBindable_makeBinding(self.h))

proc takeBinding*(self: gen_qproperty_types.QUntypedBindable, ): gen_qproperty_types.QUntypedPropertyBinding =
  gen_qproperty_types.QUntypedPropertyBinding(h: fcQUntypedBindable_takeBinding(self.h))

proc observe*(self: gen_qproperty_types.QUntypedBindable, observer: gen_qproperty_types.QPropertyObserver): void =
  fcQUntypedBindable_observe(self.h, observer.h)

proc binding*(self: gen_qproperty_types.QUntypedBindable, ): gen_qproperty_types.QUntypedPropertyBinding =
  gen_qproperty_types.QUntypedPropertyBinding(h: fcQUntypedBindable_binding(self.h))

proc setBinding*(self: gen_qproperty_types.QUntypedBindable, binding: gen_qproperty_types.QUntypedPropertyBinding): bool =
  fcQUntypedBindable_setBinding(self.h, binding.h)

proc hasBinding*(self: gen_qproperty_types.QUntypedBindable, ): bool =
  fcQUntypedBindable_hasBinding(self.h)

proc metaType*(self: gen_qproperty_types.QUntypedBindable, ): gen_qmetatype_types.QMetaType =
  gen_qmetatype_types.QMetaType(h: fcQUntypedBindable_metaType(self.h))

proc makeBinding*(self: gen_qproperty_types.QUntypedBindable, location: gen_qproperty_types.QPropertyBindingSourceLocation): gen_qproperty_types.QUntypedPropertyBinding =
  gen_qproperty_types.QUntypedPropertyBinding(h: fcQUntypedBindable_makeBinding1(self.h, location.h))

proc delete*(self: gen_qproperty_types.QUntypedBindable) =
  fcQUntypedBindable_delete(self.h)
