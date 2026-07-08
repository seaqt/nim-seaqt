import ./qtgui_pkg

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


type QPainterStateGuardInitialStateEnum* = distinct uint8
template Save*(_: type QPainterStateGuardInitialStateEnum): untyped = 0
template NoSave*(_: type QPainterStateGuardInitialStateEnum): untyped = 1


import ./gen_qpainterstateguard_types
export gen_qpainterstateguard_types

import
  ./gen_qpainter_types
export
  gen_qpainter_types

type cQPainterStateGuard*{.exportc: "QPainterStateGuard", incompleteStruct.} = object

proc fcQPainterStateGuard_swap(self: pointer, other: pointer): void {.importc: "QPainterStateGuard_swap".}
proc fcQPainterStateGuard_save(self: pointer): void {.importc: "QPainterStateGuard_save".}
proc fcQPainterStateGuard_restore(self: pointer): void {.importc: "QPainterStateGuard_restore".}
proc fcQPainterStateGuard_new(painter: pointer): ptr cQPainterStateGuard {.importc: "QPainterStateGuard_new_painter".}
proc fcQPainterStateGuard_new2(painter: pointer, state: cint): ptr cQPainterStateGuard {.importc: "QPainterStateGuard_new_painter_state".}

proc swap*(self: gen_qpainterstateguard_types.QPainterStateGuard, other: gen_qpainterstateguard_types.QPainterStateGuard): void =
  fcQPainterStateGuard_swap(self.h, other.h)

proc save*(self: gen_qpainterstateguard_types.QPainterStateGuard): void =
  fcQPainterStateGuard_save(self.h)

proc restore*(self: gen_qpainterstateguard_types.QPainterStateGuard): void =
  fcQPainterStateGuard_restore(self.h)

proc create*(T: type gen_qpainterstateguard_types.QPainterStateGuard,
    painter: gen_qpainter_types.QPainter): gen_qpainterstateguard_types.QPainterStateGuard =
  let tmp = gen_qpainterstateguard_types.QPainterStateGuard(h: fcQPainterStateGuard_new(painter.h), owned: true)
  tmp
proc create*(T: type gen_qpainterstateguard_types.QPainterStateGuard,
    painter: gen_qpainter_types.QPainter, state: cint): gen_qpainterstateguard_types.QPainterStateGuard =
  let tmp = gen_qpainterstateguard_types.QPainterStateGuard(h: fcQPainterStateGuard_new2(painter.h, cint(state)), owned: true)
  tmp
