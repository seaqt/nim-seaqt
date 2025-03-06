import ./Qt5Qml_libs

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

const cflags = gorge("pkg-config --cflags Qt5Qml")  & " -fPIC"
{.compile("gen_qqmlabstracturlinterceptor.cpp", cflags).}


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
type cQQmlAbstractUrlInterceptorVTable = object
  destructor*: proc(vtbl: ptr cQQmlAbstractUrlInterceptorVTable, self: ptr cQQmlAbstractUrlInterceptor) {.cdecl, raises:[], gcsafe.}
  intercept*: proc(vtbl, self: pointer, path: pointer, typeVal: cint): pointer {.cdecl, raises: [], gcsafe.}
proc fcQQmlAbstractUrlInterceptor_new(vtbl: pointer, ): ptr cQQmlAbstractUrlInterceptor {.importc: "QQmlAbstractUrlInterceptor_new".}
proc fcQQmlAbstractUrlInterceptor_delete(self: pointer) {.importc: "QQmlAbstractUrlInterceptor_delete".}

proc intercept*(self: gen_qqmlabstracturlinterceptor_types.QQmlAbstractUrlInterceptor, path: gen_qurl_types.QUrl, typeVal: cint): gen_qurl_types.QUrl =
  gen_qurl_types.QUrl(h: fcQQmlAbstractUrlInterceptor_intercept(self.h, path.h, cint(typeVal)))

proc operatorAssign*(self: gen_qqmlabstracturlinterceptor_types.QQmlAbstractUrlInterceptor, param1: gen_qqmlabstracturlinterceptor_types.QQmlAbstractUrlInterceptor): void =
  fcQQmlAbstractUrlInterceptor_operatorAssign(self.h, param1.h)

type QQmlAbstractUrlInterceptorinterceptProc* = proc(self: QQmlAbstractUrlInterceptor, path: gen_qurl_types.QUrl, typeVal: cint): gen_qurl_types.QUrl {.raises: [], gcsafe.}
type QQmlAbstractUrlInterceptorVTable* = object
  vtbl: cQQmlAbstractUrlInterceptorVTable
  intercept*: QQmlAbstractUrlInterceptorinterceptProc
proc miqt_exec_callback_cQQmlAbstractUrlInterceptor_intercept(vtbl: pointer, self: pointer, path: pointer, typeVal: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QQmlAbstractUrlInterceptorVTable](vtbl)
  let self = QQmlAbstractUrlInterceptor(h: self)
  let slotval1 = gen_qurl_types.QUrl(h: path)
  let slotval2 = cint(typeVal)
  var virtualReturn = vtbl[].intercept(self, slotval1, slotval2)
  virtualReturn.h

proc create*(T: type gen_qqmlabstracturlinterceptor_types.QQmlAbstractUrlInterceptor,
    vtbl: ref QQmlAbstractUrlInterceptorVTable = nil): gen_qqmlabstracturlinterceptor_types.QQmlAbstractUrlInterceptor =
  let vtbl = if vtbl == nil: new QQmlAbstractUrlInterceptorVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQQmlAbstractUrlInterceptorVTable, _: ptr cQQmlAbstractUrlInterceptor) {.cdecl.} =
    let vtbl = cast[ref QQmlAbstractUrlInterceptorVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.intercept):
    vtbl[].vtbl.intercept = miqt_exec_callback_cQQmlAbstractUrlInterceptor_intercept
  gen_qqmlabstracturlinterceptor_types.QQmlAbstractUrlInterceptor(h: fcQQmlAbstractUrlInterceptor_new(addr(vtbl[]), ))

proc delete*(self: gen_qqmlabstracturlinterceptor_types.QQmlAbstractUrlInterceptor) =
  fcQQmlAbstractUrlInterceptor_delete(self.h)
