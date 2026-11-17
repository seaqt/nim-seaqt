import ./qtcore_pkg

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


import ./gen_qabstractnativeeventfilter_types
export gen_qabstractnativeeventfilter_types


type cQAbstractNativeEventFilter*{.exportc: "QAbstractNativeEventFilter", incompleteStruct.} = object

proc fcQAbstractNativeEventFilter_nativeEventFilter(self: pointer, eventType: struct_seaqt_string, message: pointer, resultVal: ptr clong): bool {.importc: "QAbstractNativeEventFilter_nativeEventFilter".}
proc fcQAbstractNativeEventFilter_vdata(self: pointer): ptr pointer {.importc: "QAbstractNativeEventFilter_vdata".}
proc fvdata_cQAbstractNativeEventFilter(self: pointer): pointer {.importc: "vdata_QAbstractNativeEventFilter".}

type cQAbstractNativeEventFilterVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  nativeEventFilter*: proc(self: pointer, eventType: struct_seaqt_string, message: pointer, resultVal: ptr clong): bool {.cdecl, raises: [], gcsafe.}
proc fcQAbstractNativeEventFilter_new(vtbl: pointer, vdata: csize_t): ptr cQAbstractNativeEventFilter {.importc: "QAbstractNativeEventFilter_new".}
proc fcQAbstractNativeEventFilter_delete(self: pointer) {.importc: "QAbstractNativeEventFilter_delete".}

proc nativeEventFilter*(self: gen_qabstractnativeeventfilter_types.QAbstractNativeEventFilter, eventType: openArray[byte], message: pointer, resultVal: ptr clong): bool =
  fcQAbstractNativeEventFilter_nativeEventFilter(self.h, struct_seaqt_string(data: if len(eventType) > 0: addr eventType[0] else: nil, len: csize_t(len(eventType))), message, resultVal)

type QAbstractNativeEventFilternativeEventFilterProc* = proc(self: QAbstractNativeEventFilter, eventType: openArray[byte], message: pointer, resultVal: ptr clong): bool {.raises: [], gcsafe.}
type QAbstractNativeEventFilterVTable* = object
  vtbl: cQAbstractNativeEventFilterVTable
  nativeEventFilter*: QAbstractNativeEventFilternativeEventFilterProc


proc fcQAbstractNativeEventFilter_vtable_callback_nativeEventFilter(self: pointer, eventType: struct_seaqt_string, message: pointer, resultVal: ptr clong): bool {.cdecl.} =
  let vtbl = cast[ptr QAbstractNativeEventFilterVTable](fcQAbstractNativeEventFilter_vdata(self)[])
  let self = QAbstractNativeEventFilter(h: self)
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArray(cast[ptr UncheckedArray[byte]](veventType_bytearray.data), 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret
  let slotval2 = message
  let slotval3 = resultVal
  var virtualReturn = vtbl[].nativeEventFilter(self, slotval1, slotval2, slotval3)
  virtualReturn

type VirtualQAbstractNativeEventFilter* {.inheritable.} = ref object of QAbstractNativeEventFilter
  vtbl*: cQAbstractNativeEventFilterVTable

method nativeEventFilter*(self: VirtualQAbstractNativeEventFilter, eventType: openArray[byte], message: pointer, resultVal: ptr clong): bool {.base.} =
  raiseAssert("missing implementation of QAbstractNativeEventFilter.nativeEventFilter")

proc fcQAbstractNativeEventFilter_method_callback_nativeEventFilter(self: pointer, eventType: struct_seaqt_string, message: pointer, resultVal: ptr clong): bool {.cdecl.} =
  let inst = cast[VirtualQAbstractNativeEventFilter](fcQAbstractNativeEventFilter_vdata(self)[])
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArray(cast[ptr UncheckedArray[byte]](veventType_bytearray.data), 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret
  let slotval2 = message
  let slotval3 = resultVal
  var virtualReturn = inst.nativeEventFilter(slotval1, slotval2, slotval3)
  virtualReturn


proc create*(T: type gen_qabstractnativeeventfilter_types.QAbstractNativeEventFilter,
    vtbl: ref QAbstractNativeEventFilterVTable = nil): gen_qabstractnativeeventfilter_types.QAbstractNativeEventFilter =
  let vtbl = if vtbl == nil: new QAbstractNativeEventFilterVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QAbstractNativeEventFilterVTable](fcQAbstractNativeEventFilter_vdata(self)[])
    GC_unref(vtbl)
  if not isNil(vtbl[].nativeEventFilter):
    vtbl[].vtbl.nativeEventFilter = fcQAbstractNativeEventFilter_vtable_callback_nativeEventFilter
  let tmp = gen_qabstractnativeeventfilter_types.QAbstractNativeEventFilter(h: fcQAbstractNativeEventFilter_new(addr(vtbl[].vtbl), csize_t(sizeof(pointer))))
  fcQAbstractNativeEventFilter_vdata(tmp.h)[] = addr(vtbl[])
  tmp
const cQAbstractNativeEventFilter_mvtbl = cQAbstractNativeEventFilterVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQAbstractNativeEventFilter()[])](self.fcQAbstractNativeEventFilter_vdata()[])
    inst[].h = nil,

  nativeEventFilter: fcQAbstractNativeEventFilter_method_callback_nativeEventFilter,
)
proc create*(T: type gen_qabstractnativeeventfilter_types.QAbstractNativeEventFilter,
    inst: VirtualQAbstractNativeEventFilter) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQAbstractNativeEventFilter_new(addr(cQAbstractNativeEventFilter_mvtbl), csize_t(sizeof(pointer)))
  fcQAbstractNativeEventFilter_vdata(inst[].h)[] = addr inst[]
  inst[].owned = true

proc delete*(self: gen_qabstractnativeeventfilter_types.QAbstractNativeEventFilter) =
  fcQAbstractNativeEventFilter_delete(self.h)
