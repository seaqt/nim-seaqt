import ./Qt6Gui_libs

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

const cflags = gorge("pkg-config --cflags Qt6Gui")  & " -fPIC"
{.compile("gen_qbackingstore.cpp", cflags).}


import ./gen_qbackingstore_types
export gen_qbackingstore_types

import
  ../QtCore/gen_qpoint_types,
  ../QtCore/gen_qsize_types,
  ./gen_qpaintdevice_types,
  ./gen_qregion_types,
  ./gen_qwindow_types
export
  gen_qpoint_types,
  gen_qsize_types,
  gen_qpaintdevice_types,
  gen_qregion_types,
  gen_qwindow_types

type cQBackingStore*{.exportc: "QBackingStore", incompleteStruct.} = object

proc fcQBackingStore_window(self: pointer, ): pointer {.importc: "QBackingStore_window".}
proc fcQBackingStore_paintDevice(self: pointer, ): pointer {.importc: "QBackingStore_paintDevice".}
proc fcQBackingStore_flush(self: pointer, region: pointer): void {.importc: "QBackingStore_flush".}
proc fcQBackingStore_resize(self: pointer, size: pointer): void {.importc: "QBackingStore_resize".}
proc fcQBackingStore_size(self: pointer, ): pointer {.importc: "QBackingStore_size".}
proc fcQBackingStore_scroll(self: pointer, area: pointer, dx: cint, dy: cint): bool {.importc: "QBackingStore_scroll".}
proc fcQBackingStore_beginPaint(self: pointer, param1: pointer): void {.importc: "QBackingStore_beginPaint".}
proc fcQBackingStore_endPaint(self: pointer, ): void {.importc: "QBackingStore_endPaint".}
proc fcQBackingStore_setStaticContents(self: pointer, region: pointer): void {.importc: "QBackingStore_setStaticContents".}
proc fcQBackingStore_staticContents(self: pointer, ): pointer {.importc: "QBackingStore_staticContents".}
proc fcQBackingStore_hasStaticContents(self: pointer, ): bool {.importc: "QBackingStore_hasStaticContents".}
proc fcQBackingStore_flush2(self: pointer, region: pointer, window: pointer): void {.importc: "QBackingStore_flush2".}
proc fcQBackingStore_flush3(self: pointer, region: pointer, window: pointer, offset: pointer): void {.importc: "QBackingStore_flush3".}
proc fcQBackingStore_new(window: pointer): ptr cQBackingStore {.importc: "QBackingStore_new".}
proc fcQBackingStore_delete(self: pointer) {.importc: "QBackingStore_delete".}

proc window*(self: gen_qbackingstore_types.QBackingStore, ): gen_qwindow_types.QWindow =
  gen_qwindow_types.QWindow(h: fcQBackingStore_window(self.h))

proc paintDevice*(self: gen_qbackingstore_types.QBackingStore, ): gen_qpaintdevice_types.QPaintDevice =
  gen_qpaintdevice_types.QPaintDevice(h: fcQBackingStore_paintDevice(self.h))

proc flush*(self: gen_qbackingstore_types.QBackingStore, region: gen_qregion_types.QRegion): void =
  fcQBackingStore_flush(self.h, region.h)

proc resize*(self: gen_qbackingstore_types.QBackingStore, size: gen_qsize_types.QSize): void =
  fcQBackingStore_resize(self.h, size.h)

proc size*(self: gen_qbackingstore_types.QBackingStore, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQBackingStore_size(self.h))

proc scroll*(self: gen_qbackingstore_types.QBackingStore, area: gen_qregion_types.QRegion, dx: cint, dy: cint): bool =
  fcQBackingStore_scroll(self.h, area.h, dx, dy)

proc beginPaint*(self: gen_qbackingstore_types.QBackingStore, param1: gen_qregion_types.QRegion): void =
  fcQBackingStore_beginPaint(self.h, param1.h)

proc endPaint*(self: gen_qbackingstore_types.QBackingStore, ): void =
  fcQBackingStore_endPaint(self.h)

proc setStaticContents*(self: gen_qbackingstore_types.QBackingStore, region: gen_qregion_types.QRegion): void =
  fcQBackingStore_setStaticContents(self.h, region.h)

proc staticContents*(self: gen_qbackingstore_types.QBackingStore, ): gen_qregion_types.QRegion =
  gen_qregion_types.QRegion(h: fcQBackingStore_staticContents(self.h))

proc hasStaticContents*(self: gen_qbackingstore_types.QBackingStore, ): bool =
  fcQBackingStore_hasStaticContents(self.h)

proc flush*(self: gen_qbackingstore_types.QBackingStore, region: gen_qregion_types.QRegion, window: gen_qwindow_types.QWindow): void =
  fcQBackingStore_flush2(self.h, region.h, window.h)

proc flush*(self: gen_qbackingstore_types.QBackingStore, region: gen_qregion_types.QRegion, window: gen_qwindow_types.QWindow, offset: gen_qpoint_types.QPoint): void =
  fcQBackingStore_flush3(self.h, region.h, window.h, offset.h)

proc create*(T: type gen_qbackingstore_types.QBackingStore,
    window: gen_qwindow_types.QWindow): gen_qbackingstore_types.QBackingStore =
  gen_qbackingstore_types.QBackingStore(h: fcQBackingStore_new(window.h))

proc delete*(self: gen_qbackingstore_types.QBackingStore) =
  fcQBackingStore_delete(self.h)
