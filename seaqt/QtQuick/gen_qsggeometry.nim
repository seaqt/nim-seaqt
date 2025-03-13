import ./Qt5Quick_libs

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


type QSGGeometryAttributeTypeEnum* = distinct cint
template UnknownAttribute*(_: type QSGGeometryAttributeTypeEnum): untyped = 0
template PositionAttribute*(_: type QSGGeometryAttributeTypeEnum): untyped = 1
template ColorAttribute*(_: type QSGGeometryAttributeTypeEnum): untyped = 2
template TexCoordAttribute*(_: type QSGGeometryAttributeTypeEnum): untyped = 3
template TexCoord1Attribute*(_: type QSGGeometryAttributeTypeEnum): untyped = 4
template TexCoord2Attribute*(_: type QSGGeometryAttributeTypeEnum): untyped = 5


type QSGGeometryDataPatternEnum* = distinct cint
template AlwaysUploadPattern*(_: type QSGGeometryDataPatternEnum): untyped = 0
template StreamPattern*(_: type QSGGeometryDataPatternEnum): untyped = 1
template DynamicPattern*(_: type QSGGeometryDataPatternEnum): untyped = 2
template StaticPattern*(_: type QSGGeometryDataPatternEnum): untyped = 3


type QSGGeometryDrawingModeEnum* = distinct cint
template DrawPoints*(_: type QSGGeometryDrawingModeEnum): untyped = 0
template DrawLines*(_: type QSGGeometryDrawingModeEnum): untyped = 1
template DrawLineLoop*(_: type QSGGeometryDrawingModeEnum): untyped = 2
template DrawLineStrip*(_: type QSGGeometryDrawingModeEnum): untyped = 3
template DrawTriangles*(_: type QSGGeometryDrawingModeEnum): untyped = 4
template DrawTriangleStrip*(_: type QSGGeometryDrawingModeEnum): untyped = 5
template DrawTriangleFan*(_: type QSGGeometryDrawingModeEnum): untyped = 6


type QSGGeometryTypeEnum* = distinct cint
template ByteType*(_: type QSGGeometryTypeEnum): untyped = 5120
template UnsignedByteType*(_: type QSGGeometryTypeEnum): untyped = 5121
template ShortType*(_: type QSGGeometryTypeEnum): untyped = 5122
template UnsignedShortType*(_: type QSGGeometryTypeEnum): untyped = 5123
template IntType*(_: type QSGGeometryTypeEnum): untyped = 5124
template UnsignedIntType*(_: type QSGGeometryTypeEnum): untyped = 5125
template FloatType*(_: type QSGGeometryTypeEnum): untyped = 5126
template Bytes2Type*(_: type QSGGeometryTypeEnum): untyped = 5127
template Bytes3Type*(_: type QSGGeometryTypeEnum): untyped = 5128
template Bytes4Type*(_: type QSGGeometryTypeEnum): untyped = 5129
template DoubleType*(_: type QSGGeometryTypeEnum): untyped = 5130


import ./gen_qsggeometry_types
export gen_qsggeometry_types

import
  ../QtCore/gen_qrect_types
export
  gen_qrect_types

type cQSGGeometry*{.exportc: "QSGGeometry", incompleteStruct.} = object
type cQSGGeometryAttribute*{.exportc: "QSGGeometry__Attribute", incompleteStruct.} = object
type cQSGGeometryAttributeSet*{.exportc: "QSGGeometry__AttributeSet", incompleteStruct.} = object
type cQSGGeometryPoint2D*{.exportc: "QSGGeometry__Point2D", incompleteStruct.} = object
type cQSGGeometryTexturedPoint2D*{.exportc: "QSGGeometry__TexturedPoint2D", incompleteStruct.} = object
type cQSGGeometryColoredPoint2D*{.exportc: "QSGGeometry__ColoredPoint2D", incompleteStruct.} = object

proc fcQSGGeometry_defaultAttributes_Point2D(): pointer {.importc: "QSGGeometry_defaultAttributes_Point2D".}
proc fcQSGGeometry_defaultAttributes_TexturedPoint2D(): pointer {.importc: "QSGGeometry_defaultAttributes_TexturedPoint2D".}
proc fcQSGGeometry_defaultAttributes_ColoredPoint2D(): pointer {.importc: "QSGGeometry_defaultAttributes_ColoredPoint2D".}
proc fcQSGGeometry_setDrawingMode(self: pointer, mode: cuint): void {.importc: "QSGGeometry_setDrawingMode".}
proc fcQSGGeometry_drawingMode(self: pointer): cuint {.importc: "QSGGeometry_drawingMode".}
proc fcQSGGeometry_allocate(self: pointer, vertexCount: cint): void {.importc: "QSGGeometry_allocate".}
proc fcQSGGeometry_vertexCount(self: pointer): cint {.importc: "QSGGeometry_vertexCount".}
proc fcQSGGeometry_vertexData(self: pointer): pointer {.importc: "QSGGeometry_vertexData".}
proc fcQSGGeometry_vertexDataAsPoint2D(self: pointer): pointer {.importc: "QSGGeometry_vertexDataAsPoint2D".}
proc fcQSGGeometry_vertexDataAsTexturedPoint2D(self: pointer): pointer {.importc: "QSGGeometry_vertexDataAsTexturedPoint2D".}
proc fcQSGGeometry_vertexDataAsColoredPoint2D(self: pointer): pointer {.importc: "QSGGeometry_vertexDataAsColoredPoint2D".}
proc fcQSGGeometry_vertexData2(self: pointer): pointer {.importc: "QSGGeometry_vertexData2".}
proc fcQSGGeometry_vertexDataAsPoint2D2(self: pointer): pointer {.importc: "QSGGeometry_vertexDataAsPoint2D2".}
proc fcQSGGeometry_vertexDataAsTexturedPoint2D2(self: pointer): pointer {.importc: "QSGGeometry_vertexDataAsTexturedPoint2D2".}
proc fcQSGGeometry_vertexDataAsColoredPoint2D2(self: pointer): pointer {.importc: "QSGGeometry_vertexDataAsColoredPoint2D2".}
proc fcQSGGeometry_indexType(self: pointer): cint {.importc: "QSGGeometry_indexType".}
proc fcQSGGeometry_indexCount(self: pointer): cint {.importc: "QSGGeometry_indexCount".}
proc fcQSGGeometry_indexData(self: pointer): pointer {.importc: "QSGGeometry_indexData".}
proc fcQSGGeometry_indexDataAsUInt(self: pointer): ptr cuint {.importc: "QSGGeometry_indexDataAsUInt".}
proc fcQSGGeometry_indexDataAsUShort(self: pointer): ptr cushort {.importc: "QSGGeometry_indexDataAsUShort".}
proc fcQSGGeometry_sizeOfIndex(self: pointer): cint {.importc: "QSGGeometry_sizeOfIndex".}
proc fcQSGGeometry_indexData2(self: pointer): pointer {.importc: "QSGGeometry_indexData2".}
proc fcQSGGeometry_indexDataAsUInt2(self: pointer): ptr cuint {.importc: "QSGGeometry_indexDataAsUInt2".}
proc fcQSGGeometry_indexDataAsUShort2(self: pointer): ptr cushort {.importc: "QSGGeometry_indexDataAsUShort2".}
proc fcQSGGeometry_attributeCount(self: pointer): cint {.importc: "QSGGeometry_attributeCount".}
proc fcQSGGeometry_attributes(self: pointer): pointer {.importc: "QSGGeometry_attributes".}
proc fcQSGGeometry_sizeOfVertex(self: pointer): cint {.importc: "QSGGeometry_sizeOfVertex".}
proc fcQSGGeometry_updateRectGeometry(g: pointer, rect: pointer): void {.importc: "QSGGeometry_updateRectGeometry".}
proc fcQSGGeometry_updateTexturedRectGeometry(g: pointer, rect: pointer, sourceRect: pointer): void {.importc: "QSGGeometry_updateTexturedRectGeometry".}
proc fcQSGGeometry_updateColoredRectGeometry(g: pointer, rect: pointer): void {.importc: "QSGGeometry_updateColoredRectGeometry".}
proc fcQSGGeometry_setIndexDataPattern(self: pointer, p: cint): void {.importc: "QSGGeometry_setIndexDataPattern".}
proc fcQSGGeometry_indexDataPattern(self: pointer): cint {.importc: "QSGGeometry_indexDataPattern".}
proc fcQSGGeometry_setVertexDataPattern(self: pointer, p: cint): void {.importc: "QSGGeometry_setVertexDataPattern".}
proc fcQSGGeometry_vertexDataPattern(self: pointer): cint {.importc: "QSGGeometry_vertexDataPattern".}
proc fcQSGGeometry_markIndexDataDirty(self: pointer): void {.importc: "QSGGeometry_markIndexDataDirty".}
proc fcQSGGeometry_markVertexDataDirty(self: pointer): void {.importc: "QSGGeometry_markVertexDataDirty".}
proc fcQSGGeometry_lineWidth(self: pointer): float32 {.importc: "QSGGeometry_lineWidth".}
proc fcQSGGeometry_setLineWidth(self: pointer, w: float32): void {.importc: "QSGGeometry_setLineWidth".}
proc fcQSGGeometry_allocate2(self: pointer, vertexCount: cint, indexCount: cint): void {.importc: "QSGGeometry_allocate2".}
proc fcQSGGeometry_new(attribs: pointer, vertexCount: cint): ptr cQSGGeometry {.importc: "QSGGeometry_new".}
proc fcQSGGeometry_new2(attribs: pointer, vertexCount: cint, indexCount: cint): ptr cQSGGeometry {.importc: "QSGGeometry_new2".}
proc fcQSGGeometry_new3(attribs: pointer, vertexCount: cint, indexCount: cint, indexType: cint): ptr cQSGGeometry {.importc: "QSGGeometry_new3".}
proc fcQSGGeometryAttribute_create(pos: cint, tupleSize: cint, primitiveType: cint): pointer {.importc: "QSGGeometry__Attribute_create".}
proc fcQSGGeometryAttribute_createWithAttributeType(pos: cint, tupleSize: cint, primitiveType: cint, attributeType: cint): pointer {.importc: "QSGGeometry__Attribute_createWithAttributeType".}
proc fcQSGGeometryAttribute_create4(pos: cint, tupleSize: cint, primitiveType: cint, isPosition: bool): pointer {.importc: "QSGGeometry__Attribute_create4".}
proc fcQSGGeometryPoint2D_set(self: pointer, nx: float32, ny: float32): void {.importc: "QSGGeometry__Point2D_set".}
proc fcQSGGeometryTexturedPoint2D_set(self: pointer, nx: float32, ny: float32, ntx: float32, nty: float32): void {.importc: "QSGGeometry__TexturedPoint2D_set".}
proc fcQSGGeometryColoredPoint2D_set(self: pointer, nx: float32, ny: float32, nr: uint8, ng: uint8, nb: uint8, na: uint8): void {.importc: "QSGGeometry__ColoredPoint2D_set".}

proc defaultAttributes_Point2D*(_: type gen_qsggeometry_types.QSGGeometry): gen_qsggeometry_types.QSGGeometryAttributeSet =
  gen_qsggeometry_types.QSGGeometryAttributeSet(h: fcQSGGeometry_defaultAttributes_Point2D(), owned: false)

proc defaultAttributes_TexturedPoint2D*(_: type gen_qsggeometry_types.QSGGeometry): gen_qsggeometry_types.QSGGeometryAttributeSet =
  gen_qsggeometry_types.QSGGeometryAttributeSet(h: fcQSGGeometry_defaultAttributes_TexturedPoint2D(), owned: false)

proc defaultAttributes_ColoredPoint2D*(_: type gen_qsggeometry_types.QSGGeometry): gen_qsggeometry_types.QSGGeometryAttributeSet =
  gen_qsggeometry_types.QSGGeometryAttributeSet(h: fcQSGGeometry_defaultAttributes_ColoredPoint2D(), owned: false)

proc setDrawingMode*(self: gen_qsggeometry_types.QSGGeometry, mode: cuint): void =
  fcQSGGeometry_setDrawingMode(self.h, mode)

proc drawingMode*(self: gen_qsggeometry_types.QSGGeometry): cuint =
  fcQSGGeometry_drawingMode(self.h)

proc allocate*(self: gen_qsggeometry_types.QSGGeometry, vertexCount: cint): void =
  fcQSGGeometry_allocate(self.h, vertexCount)

proc vertexCount*(self: gen_qsggeometry_types.QSGGeometry): cint =
  fcQSGGeometry_vertexCount(self.h)

proc vertexData*(self: gen_qsggeometry_types.QSGGeometry): pointer =
  fcQSGGeometry_vertexData(self.h)

proc vertexDataAsPoint2D*(self: gen_qsggeometry_types.QSGGeometry): gen_qsggeometry_types.QSGGeometryPoint2D =
  gen_qsggeometry_types.QSGGeometryPoint2D(h: fcQSGGeometry_vertexDataAsPoint2D(self.h), owned: false)

proc vertexDataAsTexturedPoint2D*(self: gen_qsggeometry_types.QSGGeometry): gen_qsggeometry_types.QSGGeometryTexturedPoint2D =
  gen_qsggeometry_types.QSGGeometryTexturedPoint2D(h: fcQSGGeometry_vertexDataAsTexturedPoint2D(self.h), owned: false)

proc vertexDataAsColoredPoint2D*(self: gen_qsggeometry_types.QSGGeometry): gen_qsggeometry_types.QSGGeometryColoredPoint2D =
  gen_qsggeometry_types.QSGGeometryColoredPoint2D(h: fcQSGGeometry_vertexDataAsColoredPoint2D(self.h), owned: false)

proc vertexData2*(self: gen_qsggeometry_types.QSGGeometry): pointer =
  fcQSGGeometry_vertexData2(self.h)

proc vertexDataAsPoint2D2*(self: gen_qsggeometry_types.QSGGeometry): gen_qsggeometry_types.QSGGeometryPoint2D =
  gen_qsggeometry_types.QSGGeometryPoint2D(h: fcQSGGeometry_vertexDataAsPoint2D2(self.h), owned: false)

proc vertexDataAsTexturedPoint2D2*(self: gen_qsggeometry_types.QSGGeometry): gen_qsggeometry_types.QSGGeometryTexturedPoint2D =
  gen_qsggeometry_types.QSGGeometryTexturedPoint2D(h: fcQSGGeometry_vertexDataAsTexturedPoint2D2(self.h), owned: false)

proc vertexDataAsColoredPoint2D2*(self: gen_qsggeometry_types.QSGGeometry): gen_qsggeometry_types.QSGGeometryColoredPoint2D =
  gen_qsggeometry_types.QSGGeometryColoredPoint2D(h: fcQSGGeometry_vertexDataAsColoredPoint2D2(self.h), owned: false)

proc indexType*(self: gen_qsggeometry_types.QSGGeometry): cint =
  fcQSGGeometry_indexType(self.h)

proc indexCount*(self: gen_qsggeometry_types.QSGGeometry): cint =
  fcQSGGeometry_indexCount(self.h)

proc indexData*(self: gen_qsggeometry_types.QSGGeometry): pointer =
  fcQSGGeometry_indexData(self.h)

proc indexDataAsUInt*(self: gen_qsggeometry_types.QSGGeometry): ptr cuint =
  fcQSGGeometry_indexDataAsUInt(self.h)

proc indexDataAsUShort*(self: gen_qsggeometry_types.QSGGeometry): ptr cushort =
  fcQSGGeometry_indexDataAsUShort(self.h)

proc sizeOfIndex*(self: gen_qsggeometry_types.QSGGeometry): cint =
  fcQSGGeometry_sizeOfIndex(self.h)

proc indexData2*(self: gen_qsggeometry_types.QSGGeometry): pointer =
  fcQSGGeometry_indexData2(self.h)

proc indexDataAsUInt2*(self: gen_qsggeometry_types.QSGGeometry): ptr cuint =
  fcQSGGeometry_indexDataAsUInt2(self.h)

proc indexDataAsUShort2*(self: gen_qsggeometry_types.QSGGeometry): ptr cushort =
  fcQSGGeometry_indexDataAsUShort2(self.h)

proc attributeCount*(self: gen_qsggeometry_types.QSGGeometry): cint =
  fcQSGGeometry_attributeCount(self.h)

proc attributes*(self: gen_qsggeometry_types.QSGGeometry): gen_qsggeometry_types.QSGGeometryAttribute =
  gen_qsggeometry_types.QSGGeometryAttribute(h: fcQSGGeometry_attributes(self.h), owned: false)

proc sizeOfVertex*(self: gen_qsggeometry_types.QSGGeometry): cint =
  fcQSGGeometry_sizeOfVertex(self.h)

proc updateRectGeometry*(_: type gen_qsggeometry_types.QSGGeometry, g: gen_qsggeometry_types.QSGGeometry, rect: gen_qrect_types.QRectF): void =
  fcQSGGeometry_updateRectGeometry(g.h, rect.h)

proc updateTexturedRectGeometry*(_: type gen_qsggeometry_types.QSGGeometry, g: gen_qsggeometry_types.QSGGeometry, rect: gen_qrect_types.QRectF, sourceRect: gen_qrect_types.QRectF): void =
  fcQSGGeometry_updateTexturedRectGeometry(g.h, rect.h, sourceRect.h)

proc updateColoredRectGeometry*(_: type gen_qsggeometry_types.QSGGeometry, g: gen_qsggeometry_types.QSGGeometry, rect: gen_qrect_types.QRectF): void =
  fcQSGGeometry_updateColoredRectGeometry(g.h, rect.h)

proc setIndexDataPattern*(self: gen_qsggeometry_types.QSGGeometry, p: cint): void =
  fcQSGGeometry_setIndexDataPattern(self.h, cint(p))

proc indexDataPattern*(self: gen_qsggeometry_types.QSGGeometry): cint =
  cint(fcQSGGeometry_indexDataPattern(self.h))

proc setVertexDataPattern*(self: gen_qsggeometry_types.QSGGeometry, p: cint): void =
  fcQSGGeometry_setVertexDataPattern(self.h, cint(p))

proc vertexDataPattern*(self: gen_qsggeometry_types.QSGGeometry): cint =
  cint(fcQSGGeometry_vertexDataPattern(self.h))

proc markIndexDataDirty*(self: gen_qsggeometry_types.QSGGeometry): void =
  fcQSGGeometry_markIndexDataDirty(self.h)

proc markVertexDataDirty*(self: gen_qsggeometry_types.QSGGeometry): void =
  fcQSGGeometry_markVertexDataDirty(self.h)

proc lineWidth*(self: gen_qsggeometry_types.QSGGeometry): float32 =
  fcQSGGeometry_lineWidth(self.h)

proc setLineWidth*(self: gen_qsggeometry_types.QSGGeometry, w: float32): void =
  fcQSGGeometry_setLineWidth(self.h, w)

proc allocate*(self: gen_qsggeometry_types.QSGGeometry, vertexCount: cint, indexCount: cint): void =
  fcQSGGeometry_allocate2(self.h, vertexCount, indexCount)

proc create*(T: type gen_qsggeometry_types.QSGGeometry,
    attribs: gen_qsggeometry_types.QSGGeometryAttributeSet, vertexCount: cint): gen_qsggeometry_types.QSGGeometry =
  gen_qsggeometry_types.QSGGeometry(h: fcQSGGeometry_new(attribs.h, vertexCount), owned: true)

proc create*(T: type gen_qsggeometry_types.QSGGeometry,
    attribs: gen_qsggeometry_types.QSGGeometryAttributeSet, vertexCount: cint, indexCount: cint): gen_qsggeometry_types.QSGGeometry =
  gen_qsggeometry_types.QSGGeometry(h: fcQSGGeometry_new2(attribs.h, vertexCount, indexCount), owned: true)

proc create*(T: type gen_qsggeometry_types.QSGGeometry,
    attribs: gen_qsggeometry_types.QSGGeometryAttributeSet, vertexCount: cint, indexCount: cint, indexType: cint): gen_qsggeometry_types.QSGGeometry =
  gen_qsggeometry_types.QSGGeometry(h: fcQSGGeometry_new3(attribs.h, vertexCount, indexCount, indexType), owned: true)

proc create*(_: type gen_qsggeometry_types.QSGGeometryAttribute, pos: cint, tupleSize: cint, primitiveType: cint): gen_qsggeometry_types.QSGGeometryAttribute =
  gen_qsggeometry_types.QSGGeometryAttribute(h: fcQSGGeometryAttribute_create(pos, tupleSize, primitiveType), owned: true)

proc createWithAttributeType*(_: type gen_qsggeometry_types.QSGGeometryAttribute, pos: cint, tupleSize: cint, primitiveType: cint, attributeType: cint): gen_qsggeometry_types.QSGGeometryAttribute =
  gen_qsggeometry_types.QSGGeometryAttribute(h: fcQSGGeometryAttribute_createWithAttributeType(pos, tupleSize, primitiveType, cint(attributeType)), owned: true)

proc create*(_: type gen_qsggeometry_types.QSGGeometryAttribute, pos: cint, tupleSize: cint, primitiveType: cint, isPosition: bool): gen_qsggeometry_types.QSGGeometryAttribute =
  gen_qsggeometry_types.QSGGeometryAttribute(h: fcQSGGeometryAttribute_create4(pos, tupleSize, primitiveType, isPosition), owned: true)

proc set*(self: gen_qsggeometry_types.QSGGeometryPoint2D, nx: float32, ny: float32): void =
  fcQSGGeometryPoint2D_set(self.h, nx, ny)

proc set*(self: gen_qsggeometry_types.QSGGeometryTexturedPoint2D, nx: float32, ny: float32, ntx: float32, nty: float32): void =
  fcQSGGeometryTexturedPoint2D_set(self.h, nx, ny, ntx, nty)

proc set*(self: gen_qsggeometry_types.QSGGeometryColoredPoint2D, nx: float32, ny: float32, nr: uint8, ng: uint8, nb: uint8, na: uint8): void =
  fcQSGGeometryColoredPoint2D_set(self.h, nx, ny, nr, ng, nb, na)

