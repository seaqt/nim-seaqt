import ./Qt5Quick_libs

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

const cflags = gorge("pkg-config --cflags Qt5Quick")  & " -fPIC"
{.compile("gen_qsgninepatchnode.cpp", cflags).}


import ./gen_qsgninepatchnode_types
export gen_qsgninepatchnode_types

import
  ../QtCore/gen_qrect_types,
  ../QtGui/gen_qvector4d_types,
  ./gen_qsggeometry_types,
  ./gen_qsgnode,
  ./gen_qsgtexture_types
export
  gen_qrect_types,
  gen_qvector4d_types,
  gen_qsggeometry_types,
  gen_qsgnode,
  gen_qsgtexture_types

type cQSGNinePatchNode*{.exportc: "QSGNinePatchNode", incompleteStruct.} = object

proc fcQSGNinePatchNode_setTexture(self: pointer, texture: pointer): void {.importc: "QSGNinePatchNode_setTexture".}
proc fcQSGNinePatchNode_setBounds(self: pointer, bounds: pointer): void {.importc: "QSGNinePatchNode_setBounds".}
proc fcQSGNinePatchNode_setDevicePixelRatio(self: pointer, ratio: float64): void {.importc: "QSGNinePatchNode_setDevicePixelRatio".}
proc fcQSGNinePatchNode_setPadding(self: pointer, left: float64, top: float64, right: float64, bottom: float64): void {.importc: "QSGNinePatchNode_setPadding".}
proc fcQSGNinePatchNode_update(self: pointer, ): void {.importc: "QSGNinePatchNode_update".}
proc fcQSGNinePatchNode_rebuildGeometry(texture: pointer, geometry: pointer, padding: pointer, bounds: pointer, dpr: float64): void {.importc: "QSGNinePatchNode_rebuildGeometry".}
proc fcQSGNinePatchNode_delete(self: pointer) {.importc: "QSGNinePatchNode_delete".}

proc setTexture*(self: gen_qsgninepatchnode_types.QSGNinePatchNode, texture: gen_qsgtexture_types.QSGTexture): void =
  fcQSGNinePatchNode_setTexture(self.h, texture.h)

proc setBounds*(self: gen_qsgninepatchnode_types.QSGNinePatchNode, bounds: gen_qrect_types.QRectF): void =
  fcQSGNinePatchNode_setBounds(self.h, bounds.h)

proc setDevicePixelRatio*(self: gen_qsgninepatchnode_types.QSGNinePatchNode, ratio: float64): void =
  fcQSGNinePatchNode_setDevicePixelRatio(self.h, ratio)

proc setPadding*(self: gen_qsgninepatchnode_types.QSGNinePatchNode, left: float64, top: float64, right: float64, bottom: float64): void =
  fcQSGNinePatchNode_setPadding(self.h, left, top, right, bottom)

proc update*(self: gen_qsgninepatchnode_types.QSGNinePatchNode, ): void =
  fcQSGNinePatchNode_update(self.h)

proc rebuildGeometry*(_: type gen_qsgninepatchnode_types.QSGNinePatchNode, texture: gen_qsgtexture_types.QSGTexture, geometry: gen_qsggeometry_types.QSGGeometry, padding: gen_qvector4d_types.QVector4D, bounds: gen_qrect_types.QRectF, dpr: float64): void =
  fcQSGNinePatchNode_rebuildGeometry(texture.h, geometry.h, padding.h, bounds.h, dpr)

proc delete*(self: gen_qsgninepatchnode_types.QSGNinePatchNode) =
  fcQSGNinePatchNode_delete(self.h)
