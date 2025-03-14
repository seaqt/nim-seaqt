import ./qtquick_pkg

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


{.compile("gen_qsgrectanglenode.cpp", QtQuickCFlags).}


import ./gen_qsgrectanglenode_types
export gen_qsgrectanglenode_types

import
  ../QtCore/gen_qrect_types,
  ../QtGui/gen_qcolor_types,
  ./gen_qsgnode
export
  gen_qrect_types,
  gen_qcolor_types,
  gen_qsgnode

type cQSGRectangleNode*{.exportc: "QSGRectangleNode", incompleteStruct.} = object

proc fcQSGRectangleNode_setRect(self: pointer, rect: pointer): void {.importc: "QSGRectangleNode_setRect".}
proc fcQSGRectangleNode_setRect2(self: pointer, x: float64, y: float64, w: float64, h: float64): void {.importc: "QSGRectangleNode_setRect2".}
proc fcQSGRectangleNode_rect(self: pointer): pointer {.importc: "QSGRectangleNode_rect".}
proc fcQSGRectangleNode_setColor(self: pointer, color: pointer): void {.importc: "QSGRectangleNode_setColor".}
proc fcQSGRectangleNode_color(self: pointer): pointer {.importc: "QSGRectangleNode_color".}

proc setRect*(self: gen_qsgrectanglenode_types.QSGRectangleNode, rect: gen_qrect_types.QRectF): void =
  fcQSGRectangleNode_setRect(self.h, rect.h)

proc setRect*(self: gen_qsgrectanglenode_types.QSGRectangleNode, x: float64, y: float64, w: float64, h: float64): void =
  fcQSGRectangleNode_setRect2(self.h, x, y, w, h)

proc rect*(self: gen_qsgrectanglenode_types.QSGRectangleNode): gen_qrect_types.QRectF =
  gen_qrect_types.QRectF(h: fcQSGRectangleNode_rect(self.h), owned: true)

proc setColor*(self: gen_qsgrectanglenode_types.QSGRectangleNode, color: gen_qcolor_types.QColor): void =
  fcQSGRectangleNode_setColor(self.h, color.h)

proc color*(self: gen_qsgrectanglenode_types.QSGRectangleNode): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQSGRectangleNode_color(self.h), owned: true)

