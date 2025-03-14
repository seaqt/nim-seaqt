import ./qtgui_pkg

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


import ./gen_qtestsupport_gui_types
export gen_qtestsupport_gui_types

import
  ../QtCore/gen_qpoint_types,
  ./gen_qeventpoint_types,
  ./gen_qwindow_types
export
  gen_qpoint_types,
  gen_qeventpoint_types,
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
proc fcQTestQTouchEventSequence_protectedbase_mapToScreen(self: pointer, window: pointer, pt: pointer): pointer {.importc: "QTest__QTouchEventSequence_protectedbase_mapToScreen".}
proc fcQTestQTouchEventSequence_protectedbase_point(self: pointer, touchId: cint): pointer {.importc: "QTest__QTouchEventSequence_protectedbase_point".}
proc fcQTestQTouchEventSequence_protectedbase_pointOrPreviousPoint(self: pointer, touchId: cint): pointer {.importc: "QTest__QTouchEventSequence_protectedbase_pointOrPreviousPoint".}

proc press*(self: gen_qtestsupport_gui_types.QTestQTouchEventSequence, touchId: cint, pt: gen_qpoint_types.QPoint): gen_qtestsupport_gui_types.QTestQTouchEventSequence =
  gen_qtestsupport_gui_types.QTestQTouchEventSequence(h: fcQTestQTouchEventSequence_press(self.h, touchId, pt.h), owned: false)

proc move*(self: gen_qtestsupport_gui_types.QTestQTouchEventSequence, touchId: cint, pt: gen_qpoint_types.QPoint): gen_qtestsupport_gui_types.QTestQTouchEventSequence =
  gen_qtestsupport_gui_types.QTestQTouchEventSequence(h: fcQTestQTouchEventSequence_move(self.h, touchId, pt.h), owned: false)

proc release*(self: gen_qtestsupport_gui_types.QTestQTouchEventSequence, touchId: cint, pt: gen_qpoint_types.QPoint): gen_qtestsupport_gui_types.QTestQTouchEventSequence =
  gen_qtestsupport_gui_types.QTestQTouchEventSequence(h: fcQTestQTouchEventSequence_release(self.h, touchId, pt.h), owned: false)

proc stationary*(self: gen_qtestsupport_gui_types.QTestQTouchEventSequence, touchId: cint): gen_qtestsupport_gui_types.QTestQTouchEventSequence =
  gen_qtestsupport_gui_types.QTestQTouchEventSequence(h: fcQTestQTouchEventSequence_stationary(self.h, touchId), owned: false)

proc commit*(self: gen_qtestsupport_gui_types.QTestQTouchEventSequence, processEvents: bool): bool =
  fcQTestQTouchEventSequence_commit(self.h, processEvents)

proc press*(self: gen_qtestsupport_gui_types.QTestQTouchEventSequence, touchId: cint, pt: gen_qpoint_types.QPoint, window: gen_qwindow_types.QWindow): gen_qtestsupport_gui_types.QTestQTouchEventSequence =
  gen_qtestsupport_gui_types.QTestQTouchEventSequence(h: fcQTestQTouchEventSequence_press3(self.h, touchId, pt.h, window.h), owned: false)

proc move*(self: gen_qtestsupport_gui_types.QTestQTouchEventSequence, touchId: cint, pt: gen_qpoint_types.QPoint, window: gen_qwindow_types.QWindow): gen_qtestsupport_gui_types.QTestQTouchEventSequence =
  gen_qtestsupport_gui_types.QTestQTouchEventSequence(h: fcQTestQTouchEventSequence_move3(self.h, touchId, pt.h, window.h), owned: false)

proc release*(self: gen_qtestsupport_gui_types.QTestQTouchEventSequence, touchId: cint, pt: gen_qpoint_types.QPoint, window: gen_qwindow_types.QWindow): gen_qtestsupport_gui_types.QTestQTouchEventSequence =
  gen_qtestsupport_gui_types.QTestQTouchEventSequence(h: fcQTestQTouchEventSequence_release3(self.h, touchId, pt.h, window.h), owned: false)

proc mapToScreen*(self: gen_qtestsupport_gui_types.QTestQTouchEventSequence, window: gen_qwindow_types.QWindow, pt: gen_qpoint_types.QPoint): gen_qpoint_types.QPoint =
  gen_qpoint_types.QPoint(h: fcQTestQTouchEventSequence_protectedbase_mapToScreen(self.h, window.h, pt.h), owned: true)

proc point*(self: gen_qtestsupport_gui_types.QTestQTouchEventSequence, touchId: cint): gen_qeventpoint_types.QEventPoint =
  gen_qeventpoint_types.QEventPoint(h: fcQTestQTouchEventSequence_protectedbase_point(self.h, touchId), owned: false)

proc pointOrPreviousPoint*(self: gen_qtestsupport_gui_types.QTestQTouchEventSequence, touchId: cint): gen_qeventpoint_types.QEventPoint =
  gen_qeventpoint_types.QEventPoint(h: fcQTestQTouchEventSequence_protectedbase_pointOrPreviousPoint(self.h, touchId), owned: false)

