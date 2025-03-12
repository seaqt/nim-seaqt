import ./Qt6Core_libs

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


import ./gen_qrunnable_types
export gen_qrunnable_types


type cQRunnable*{.exportc: "QRunnable", incompleteStruct.} = object

proc fcQRunnable_run(self: pointer): void {.importc: "QRunnable_run".}
proc fcQRunnable_autoDelete(self: pointer): bool {.importc: "QRunnable_autoDelete".}
proc fcQRunnable_setAutoDelete(self: pointer, autoDelete: bool): void {.importc: "QRunnable_setAutoDelete".}
proc fcQRunnable_vtbl(self: pointer): pointer {.importc: "QRunnable_vtbl".}
proc fcQRunnable_vdata(self: pointer): pointer {.importc: "QRunnable_vdata".}
type cQRunnableVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  run*: proc(self: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQRunnable_new(vtbl, vdata: pointer): ptr cQRunnable {.importc: "QRunnable_new".}

proc run*(self: gen_qrunnable_types.QRunnable): void =
  fcQRunnable_run(self.h)

proc autoDelete*(self: gen_qrunnable_types.QRunnable): bool =
  fcQRunnable_autoDelete(self.h)

proc setAutoDelete*(self: gen_qrunnable_types.QRunnable, autoDelete: bool): void =
  fcQRunnable_setAutoDelete(self.h, autoDelete)

type QRunnablerunProc* = proc(self: QRunnable): void {.raises: [], gcsafe.}
type QRunnableVTable* {.inheritable, pure.} = object
  vtbl: cQRunnableVTable
  run*: QRunnablerunProc
proc cQRunnable_vtable_callback_run(self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QRunnableVTable](fcQRunnable_vdata(self))
  let self = QRunnable(h: self)
  vtbl[].run(self)

type VirtualQRunnable* {.inheritable.} = ref object of QRunnable
  vtbl*: cQRunnableVTable
method run*(self: VirtualQRunnable): void {.base.} =
  raiseAssert("missing implementation of QRunnable_virtualbase_run")
proc cQRunnable_method_callback_run(self: pointer): void {.cdecl.} =
  let inst = cast[VirtualQRunnable](fcQRunnable_vdata(self))
  inst.run()

proc create*(T: type gen_qrunnable_types.QRunnable,
    vtbl: ref QRunnableVTable = nil): gen_qrunnable_types.QRunnable =
  let vtbl = if vtbl == nil: new QRunnableVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QRunnableVTable](fcQRunnable_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].run):
    vtbl[].vtbl.run = cQRunnable_vtable_callback_run
  gen_qrunnable_types.QRunnable(h: fcQRunnable_new(addr(vtbl[].vtbl), addr(vtbl[])), owned: true)

const cQRunnable_mvtbl = cQRunnableVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQRunnable()[])](self.fcQRunnable_vtbl())
    inst[].h = nil
    inst[].owned = false,
  run: cQRunnable_method_callback_run,
)
proc create*(T: type gen_qrunnable_types.QRunnable,
    inst: VirtualQRunnable) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQRunnable_new(addr(cQRunnable_mvtbl), addr(inst[]))
  inst[].owned = true

