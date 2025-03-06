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
{.compile("gen_qrunnable.cpp", cflags).}


import ./gen_qrunnable_types
export gen_qrunnable_types


type cQRunnable*{.exportc: "QRunnable", incompleteStruct.} = object

proc fcQRunnable_run(self: pointer, ): void {.importc: "QRunnable_run".}
proc fcQRunnable_autoDelete(self: pointer, ): bool {.importc: "QRunnable_autoDelete".}
proc fcQRunnable_setAutoDelete(self: pointer, x_autoDelete: bool): void {.importc: "QRunnable_setAutoDelete".}
proc fcQRunnable_operatorAssign(self: pointer, param1: pointer): void {.importc: "QRunnable_operatorAssign".}
type cQRunnableVTable = object
  destructor*: proc(vtbl: ptr cQRunnableVTable, self: ptr cQRunnable) {.cdecl, raises:[], gcsafe.}
  run*: proc(vtbl, self: pointer, ): void {.cdecl, raises: [], gcsafe.}
proc fcQRunnable_new(vtbl: pointer, ): ptr cQRunnable {.importc: "QRunnable_new".}
proc fcQRunnable_delete(self: pointer) {.importc: "QRunnable_delete".}

proc run*(self: gen_qrunnable_types.QRunnable, ): void =
  fcQRunnable_run(self.h)

proc autoDelete*(self: gen_qrunnable_types.QRunnable, ): bool =
  fcQRunnable_autoDelete(self.h)

proc setAutoDelete*(self: gen_qrunnable_types.QRunnable, x_autoDelete: bool): void =
  fcQRunnable_setAutoDelete(self.h, x_autoDelete)

proc operatorAssign*(self: gen_qrunnable_types.QRunnable, param1: gen_qrunnable_types.QRunnable): void =
  fcQRunnable_operatorAssign(self.h, param1.h)

type QRunnablerunProc* = proc(self: QRunnable): void {.raises: [], gcsafe.}
type QRunnableVTable* = object
  vtbl: cQRunnableVTable
  run*: QRunnablerunProc
proc miqt_exec_callback_cQRunnable_run(vtbl: pointer, self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QRunnableVTable](vtbl)
  let self = QRunnable(h: self)
  vtbl[].run(self)

proc create*(T: type gen_qrunnable_types.QRunnable,
    vtbl: ref QRunnableVTable = nil): gen_qrunnable_types.QRunnable =
  let vtbl = if vtbl == nil: new QRunnableVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQRunnableVTable, _: ptr cQRunnable) {.cdecl.} =
    let vtbl = cast[ref QRunnableVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.run):
    vtbl[].vtbl.run = miqt_exec_callback_cQRunnable_run
  gen_qrunnable_types.QRunnable(h: fcQRunnable_new(addr(vtbl[]), ))

proc delete*(self: gen_qrunnable_types.QRunnable) =
  fcQRunnable_delete(self.h)
