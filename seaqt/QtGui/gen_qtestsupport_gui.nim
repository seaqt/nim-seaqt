import ./Qt6Gui_libs

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

const cflags = gorge("pkg-config --cflags Qt6Gui")  & " -fPIC"
{.compile("gen_qtestsupport_gui.cpp", cflags).}


import ./gen_qtestsupport_gui_types
export gen_qtestsupport_gui_types

import
  ../QtCore/gen_qpoint_types,
  ./gen_qwindow_types
export
  gen_qpoint_types,
  gen_qwindow_types

type cQTestQTouchEventSequence*{.exportc: "QTest__QTouchEventSequence", incompleteStruct.} = object

proc fcQTestQTouchEventSequence_press(self: pointer, touchId: cint, pt: pointer): pointer {.importc: "QTest__QTouchEventSequence_press".}
proc fcQTestQTouchEventSequence_move(self: pointer, touchId: cint, pt: pointer): pointer {.importc: "QTest__QTouchEventSequence_move".}
proc fcQTestQTouchEventSequence_release(self: pointer, touchId: cint, pt: pointer): pointer {.importc: "QTest__QTouchEventSequence_release".}
proc fcQTestQTouchEventSequence_stationary(self: pointer, touchId: cint): pointer {.importc: "QTest__QTouchEventSequence_stationary".}
proc fcQTestQTouchEventSequence_commit(self: pointer, processEvents: bool): bool {.importc: "QTest__QTouchEventSequence_commit".}
proc fcQTestQTouchEventSequence_press3(self: pointer, touchId: cint, pt: pointer, window: pointer): pointer {.importc: "QTest__QTouchEventSequence_press3".}
proc fcQTestQTouchEventSequence_move3(self: pointer, touchId: cint, pt: pointer, window: pointer): pointer {.importc: "QTest__QTouchEventSequence_move3".}
proc fcQTestQTouchEventSequence_release3(self: pointer, touchId: cint, pt: pointer, window: pointer): pointer {.importc: "QTest__QTouchEventSequence_release3".}
proc fcQTestQTouchEventSequence_delete(self: pointer) {.importc: "QTest__QTouchEventSequence_delete".}

proc press*(self: gen_qtestsupport_gui_types.QTestQTouchEventSequence, touchId: cint, pt: gen_qpoint_types.QPoint): gen_qtestsupport_gui_types.QTestQTouchEventSequence =
  gen_qtestsupport_gui_types.QTestQTouchEventSequence(h: fcQTestQTouchEventSequence_press(self.h, touchId, pt.h))

proc move*(self: gen_qtestsupport_gui_types.QTestQTouchEventSequence, touchId: cint, pt: gen_qpoint_types.QPoint): gen_qtestsupport_gui_types.QTestQTouchEventSequence =
  gen_qtestsupport_gui_types.QTestQTouchEventSequence(h: fcQTestQTouchEventSequence_move(self.h, touchId, pt.h))

proc release*(self: gen_qtestsupport_gui_types.QTestQTouchEventSequence, touchId: cint, pt: gen_qpoint_types.QPoint): gen_qtestsupport_gui_types.QTestQTouchEventSequence =
  gen_qtestsupport_gui_types.QTestQTouchEventSequence(h: fcQTestQTouchEventSequence_release(self.h, touchId, pt.h))

proc stationary*(self: gen_qtestsupport_gui_types.QTestQTouchEventSequence, touchId: cint): gen_qtestsupport_gui_types.QTestQTouchEventSequence =
  gen_qtestsupport_gui_types.QTestQTouchEventSequence(h: fcQTestQTouchEventSequence_stationary(self.h, touchId))

proc commit*(self: gen_qtestsupport_gui_types.QTestQTouchEventSequence, processEvents: bool): bool =
  fcQTestQTouchEventSequence_commit(self.h, processEvents)

proc press*(self: gen_qtestsupport_gui_types.QTestQTouchEventSequence, touchId: cint, pt: gen_qpoint_types.QPoint, window: gen_qwindow_types.QWindow): gen_qtestsupport_gui_types.QTestQTouchEventSequence =
  gen_qtestsupport_gui_types.QTestQTouchEventSequence(h: fcQTestQTouchEventSequence_press3(self.h, touchId, pt.h, window.h))

proc move*(self: gen_qtestsupport_gui_types.QTestQTouchEventSequence, touchId: cint, pt: gen_qpoint_types.QPoint, window: gen_qwindow_types.QWindow): gen_qtestsupport_gui_types.QTestQTouchEventSequence =
  gen_qtestsupport_gui_types.QTestQTouchEventSequence(h: fcQTestQTouchEventSequence_move3(self.h, touchId, pt.h, window.h))

proc release*(self: gen_qtestsupport_gui_types.QTestQTouchEventSequence, touchId: cint, pt: gen_qpoint_types.QPoint, window: gen_qwindow_types.QWindow): gen_qtestsupport_gui_types.QTestQTouchEventSequence =
  gen_qtestsupport_gui_types.QTestQTouchEventSequence(h: fcQTestQTouchEventSequence_release3(self.h, touchId, pt.h, window.h))

proc delete*(self: gen_qtestsupport_gui_types.QTestQTouchEventSequence) =
  fcQTestQTouchEventSequence_delete(self.h)
