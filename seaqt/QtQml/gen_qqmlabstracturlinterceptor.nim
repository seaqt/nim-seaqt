import ./Qt6Qml_libs

{.push raises: [].}

from system/ansi_c import c_free, c_malloc

type
  struct_miqt_string {.used.} = object
    len: csize_t
    data: pointer

  struct_miqt_array {.used.} = object
    len: csize_t
    data: pointer

  struct_miqt_map {.used.} = object
    len: csize_t
    keys: pointer
    values: pointer

  miqt_uintptr_t {.importc: "uintptr_t", header: "stdint.h", used.} = uint
  miqt_intptr_t {.importc: "intptr_t", header: "stdint.h", used.} = int

func fromBytes(T: type string, v: struct_miqt_string): string {.used.} =
  if v.len > 0:
    let len = cast[int](v.len)
    result = newString(len)
    when nimvm:
      let d = cast[ptr UncheckedArray[char]](v.data)
      for i in 0..<len:
        result[i] = d[i]
    else:
      copyMem(addr result[0], v.data, len)


type QQmlAbstractUrlInterceptorDataTypeEnum* = distinct cint
template QmlFile*(_: type QQmlAbstractUrlInterceptorDataTypeEnum): untyped = 0
template JavaScriptFile*(_: type QQmlAbstractUrlInterceptorDataTypeEnum): untyped = 1
template QmldirFile*(_: type QQmlAbstractUrlInterceptorDataTypeEnum): untyped = 2
template UrlString*(_: type QQmlAbstractUrlInterceptorDataTypeEnum): untyped = 4096


import ./gen_qqmlabstracturlinterceptor_types
export gen_qqmlabstracturlinterceptor_types

import
  ../QtCore/gen_qurl_types
export
  gen_qurl_types

type cQQmlAbstractUrlInterceptor*{.exportc: "QQmlAbstractUrlInterceptor", incompleteStruct.} = object

proc fcQQmlAbstractUrlInterceptor_intercept(self: pointer, path: pointer, typeVal: cint): pointer {.importc: "QQmlAbstractUrlInterceptor_intercept".}
proc fcQQmlAbstractUrlInterceptor_operatorAssign(self: pointer, param1: pointer): void {.importc: "QQmlAbstractUrlInterceptor_operatorAssign".}
proc fcQQmlAbstractUrlInterceptor_vtbl(self: pointer): pointer {.importc: "QQmlAbstractUrlInterceptor_vtbl".}
proc fcQQmlAbstractUrlInterceptor_vdata(self: pointer): pointer {.importc: "QQmlAbstractUrlInterceptor_vdata".}
type cQQmlAbstractUrlInterceptorVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  intercept*: proc(self: pointer, path: pointer, typeVal: cint): pointer {.cdecl, raises: [], gcsafe.}
proc fcQQmlAbstractUrlInterceptor_new(vtbl, vdata: pointer): ptr cQQmlAbstractUrlInterceptor {.importc: "QQmlAbstractUrlInterceptor_new".}

proc intercept*(self: gen_qqmlabstracturlinterceptor_types.QQmlAbstractUrlInterceptor, path: gen_qurl_types.QUrl, typeVal: cint): gen_qurl_types.QUrl =
  gen_qurl_types.QUrl(h: fcQQmlAbstractUrlInterceptor_intercept(self.h, path.h, cint(typeVal)), owned: true)

proc operatorAssign*(self: gen_qqmlabstracturlinterceptor_types.QQmlAbstractUrlInterceptor, param1: gen_qqmlabstracturlinterceptor_types.QQmlAbstractUrlInterceptor): void =
  fcQQmlAbstractUrlInterceptor_operatorAssign(self.h, param1.h)

type QQmlAbstractUrlInterceptorinterceptProc* = proc(self: QQmlAbstractUrlInterceptor, path: gen_qurl_types.QUrl, typeVal: cint): gen_qurl_types.QUrl {.raises: [], gcsafe.}
type QQmlAbstractUrlInterceptorVTable* {.inheritable, pure.} = object
  vtbl: cQQmlAbstractUrlInterceptorVTable
  intercept*: QQmlAbstractUrlInterceptorinterceptProc
proc cQQmlAbstractUrlInterceptor_vtable_callback_intercept(self: pointer, path: pointer, typeVal: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QQmlAbstractUrlInterceptorVTable](fcQQmlAbstractUrlInterceptor_vdata(self))
  let self = QQmlAbstractUrlInterceptor(h: self)
  let slotval1 = gen_qurl_types.QUrl(h: path, owned: false)
  let slotval2 = cint(typeVal)
  var virtualReturn = vtbl[].intercept(self, slotval1, slotval2)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

type VirtualQQmlAbstractUrlInterceptor* {.inheritable.} = ref object of QQmlAbstractUrlInterceptor
  vtbl*: cQQmlAbstractUrlInterceptorVTable
method intercept*(self: VirtualQQmlAbstractUrlInterceptor, path: gen_qurl_types.QUrl, typeVal: cint): gen_qurl_types.QUrl {.base.} =
  raiseAssert("missing implementation of QQmlAbstractUrlInterceptor_virtualbase_intercept")
proc cQQmlAbstractUrlInterceptor_method_callback_intercept(self: pointer, path: pointer, typeVal: cint): pointer {.cdecl.} =
  let inst = cast[VirtualQQmlAbstractUrlInterceptor](fcQQmlAbstractUrlInterceptor_vdata(self))
  let slotval1 = gen_qurl_types.QUrl(h: path, owned: false)
  let slotval2 = cint(typeVal)
  var virtualReturn = inst.intercept(slotval1, slotval2)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc create*(T: type gen_qqmlabstracturlinterceptor_types.QQmlAbstractUrlInterceptor,
    vtbl: ref QQmlAbstractUrlInterceptorVTable = nil): gen_qqmlabstracturlinterceptor_types.QQmlAbstractUrlInterceptor =
  let vtbl = if vtbl == nil: new QQmlAbstractUrlInterceptorVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QQmlAbstractUrlInterceptorVTable](fcQQmlAbstractUrlInterceptor_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].intercept):
    vtbl[].vtbl.intercept = cQQmlAbstractUrlInterceptor_vtable_callback_intercept
  gen_qqmlabstracturlinterceptor_types.QQmlAbstractUrlInterceptor(h: fcQQmlAbstractUrlInterceptor_new(addr(vtbl[].vtbl), addr(vtbl[])), owned: true)

const cQQmlAbstractUrlInterceptor_mvtbl = cQQmlAbstractUrlInterceptorVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQQmlAbstractUrlInterceptor()[])](self.fcQQmlAbstractUrlInterceptor_vtbl())
    inst[].h = nil
    inst[].owned = false,
  intercept: cQQmlAbstractUrlInterceptor_method_callback_intercept,
)
proc create*(T: type gen_qqmlabstracturlinterceptor_types.QQmlAbstractUrlInterceptor,
    inst: VirtualQQmlAbstractUrlInterceptor) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQQmlAbstractUrlInterceptor_new(addr(cQQmlAbstractUrlInterceptor_mvtbl), addr(inst[]))
  inst[].owned = true

