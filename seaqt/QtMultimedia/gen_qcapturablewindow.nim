import ./qtmultimedia_pkg

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


import ./gen_qcapturablewindow_types
export gen_qcapturablewindow_types

import
  ../QtCore/gen_qobjectdefs_types
export
  gen_qobjectdefs_types

type cQCapturableWindow*{.exportc: "QCapturableWindow", incompleteStruct.} = object

proc fcQCapturableWindow_operatorAssign(self: pointer, fromVal: pointer): void {.importc: "QCapturableWindow_operatorAssign".}
proc fcQCapturableWindow_swap(self: pointer, other: pointer): void {.importc: "QCapturableWindow_swap".}
proc fcQCapturableWindow_isValid(self: pointer): bool {.importc: "QCapturableWindow_isValid".}
proc fcQCapturableWindow_description(self: pointer): struct_seaqt_string {.importc: "QCapturableWindow_description".}
proc fcQCapturableWindow_new(): ptr cQCapturableWindow {.importc: "QCapturableWindow_new".}
proc fcQCapturableWindow_new2(fromVal: pointer): ptr cQCapturableWindow {.importc: "QCapturableWindow_new_from".}
proc fcQCapturableWindow_staticMetaObject(): pointer {.importc: "QCapturableWindow_staticMetaObject".}

proc operatorAssign*(self: gen_qcapturablewindow_types.QCapturableWindow, fromVal: gen_qcapturablewindow_types.QCapturableWindow): void =
  fcQCapturableWindow_operatorAssign(self.h, fromVal.h)

proc swap*(self: gen_qcapturablewindow_types.QCapturableWindow, other: gen_qcapturablewindow_types.QCapturableWindow): void =
  fcQCapturableWindow_swap(self.h, other.h)

proc isValid*(self: gen_qcapturablewindow_types.QCapturableWindow): bool =
  fcQCapturableWindow_isValid(self.h)

proc description*(self: gen_qcapturablewindow_types.QCapturableWindow): string =
  let v_ms = fcQCapturableWindow_description(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc create*(T: type gen_qcapturablewindow_types.QCapturableWindow): gen_qcapturablewindow_types.QCapturableWindow =
  let tmp = gen_qcapturablewindow_types.QCapturableWindow(h: fcQCapturableWindow_new(), owned: true)
  tmp
proc create*(T: type gen_qcapturablewindow_types.QCapturableWindow,
    fromVal: gen_qcapturablewindow_types.QCapturableWindow): gen_qcapturablewindow_types.QCapturableWindow =
  let tmp = gen_qcapturablewindow_types.QCapturableWindow(h: fcQCapturableWindow_new2(fromVal.h), owned: true)
  tmp
proc staticMetaObject*(_: type gen_qcapturablewindow_types.QCapturableWindow): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQCapturableWindow_staticMetaObject())
