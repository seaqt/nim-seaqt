import ./Qt5Core_libs

{.push raises: [].}

from system/ansi_c import c_free, c_malloc

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

const cflags = gorge("pkg-config --cflags Qt5Core")  & " -fPIC"
{.compile("gen_qabstractnativeeventfilter.cpp", cflags).}


import ./gen_qabstractnativeeventfilter_types
export gen_qabstractnativeeventfilter_types


type cQAbstractNativeEventFilter*{.exportc: "QAbstractNativeEventFilter", incompleteStruct.} = object

proc fcQAbstractNativeEventFilter_nativeEventFilter(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool {.importc: "QAbstractNativeEventFilter_nativeEventFilter".}
type cQAbstractNativeEventFilterVTable = object
  destructor*: proc(vtbl: ptr cQAbstractNativeEventFilterVTable, self: ptr cQAbstractNativeEventFilter) {.cdecl, raises:[], gcsafe.}
  nativeEventFilter*: proc(vtbl, self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool {.cdecl, raises: [], gcsafe.}
proc fcQAbstractNativeEventFilter_new(vtbl: pointer, ): ptr cQAbstractNativeEventFilter {.importc: "QAbstractNativeEventFilter_new".}
proc fcQAbstractNativeEventFilter_delete(self: pointer) {.importc: "QAbstractNativeEventFilter_delete".}

proc nativeEventFilter*(self: gen_qabstractnativeeventfilter_types.QAbstractNativeEventFilter, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool =
  fcQAbstractNativeEventFilter_nativeEventFilter(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

type QAbstractNativeEventFilternativeEventFilterProc* = proc(self: QAbstractNativeEventFilter, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool {.raises: [], gcsafe.}
type QAbstractNativeEventFilterVTable* = object
  vtbl: cQAbstractNativeEventFilterVTable
  nativeEventFilter*: QAbstractNativeEventFilternativeEventFilterProc
proc miqt_exec_callback_cQAbstractNativeEventFilter_nativeEventFilter(vtbl: pointer, self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool {.cdecl.} =
  let vtbl = cast[ptr QAbstractNativeEventFilterVTable](vtbl)
  let self = QAbstractNativeEventFilter(h: self)
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArrayByte(veventType_bytearray.data, 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret
  let slotval2 = message
  let slotval3 = resultVal
  var virtualReturn = vtbl[].nativeEventFilter(self, slotval1, slotval2, slotval3)
  virtualReturn

proc create*(T: type gen_qabstractnativeeventfilter_types.QAbstractNativeEventFilter,
    vtbl: ref QAbstractNativeEventFilterVTable = nil): gen_qabstractnativeeventfilter_types.QAbstractNativeEventFilter =
  let vtbl = if vtbl == nil: new QAbstractNativeEventFilterVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQAbstractNativeEventFilterVTable, _: ptr cQAbstractNativeEventFilter) {.cdecl.} =
    let vtbl = cast[ref QAbstractNativeEventFilterVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.nativeEventFilter):
    vtbl[].vtbl.nativeEventFilter = miqt_exec_callback_cQAbstractNativeEventFilter_nativeEventFilter
  gen_qabstractnativeeventfilter_types.QAbstractNativeEventFilter(h: fcQAbstractNativeEventFilter_new(addr(vtbl[]), ))

proc delete*(self: gen_qabstractnativeeventfilter_types.QAbstractNativeEventFilter) =
  fcQAbstractNativeEventFilter_delete(self.h)
