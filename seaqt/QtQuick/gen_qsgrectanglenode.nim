import ./Qt5Quick_libs

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

const cflags = gorge("pkg-config --cflags Qt5Quick") & " -fPIC"
{.compile("gen_qsgrectanglenode.cpp", cflags).}


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

