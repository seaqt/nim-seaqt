import ./qtquick_pkg

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
proc fcQSGGeometry_delete(self: pointer) {.importc: "QSGGeometry_delete".}
proc fcQSGGeometryAttribute_position(self: pointer): cint {.importc: "QSGGeometry__Attribute_position".}
proc fcQSGGeometryAttribute_setPosition(self: pointer, position: cint): void {.importc: "QSGGeometry__Attribute_setPosition".}
proc fcQSGGeometryAttribute_tupleSize(self: pointer): cint {.importc: "QSGGeometry__Attribute_tupleSize".}
proc fcQSGGeometryAttribute_setTupleSize(self: pointer, tupleSize: cint): void {.importc: "QSGGeometry__Attribute_setTupleSize".}
proc fcQSGGeometryAttribute_typeX(self: pointer): cint {.importc: "QSGGeometry__Attribute_type".}
proc fcQSGGeometryAttribute_setType(self: pointer, typeVal: cint): void {.importc: "QSGGeometry__Attribute_setType".}
proc fcQSGGeometryAttribute_isVertexCoordinate(self: pointer): cuint {.importc: "QSGGeometry__Attribute_isVertexCoordinate".}
proc fcQSGGeometryAttribute_setIsVertexCoordinate(self: pointer, isVertexCoordinate: cuint): void {.importc: "QSGGeometry__Attribute_setIsVertexCoordinate".}
proc fcQSGGeometryAttribute_attributeType(self: pointer): cint {.importc: "QSGGeometry__Attribute_attributeType".}
proc fcQSGGeometryAttribute_setAttributeType(self: pointer, attributeType: cint): void {.importc: "QSGGeometry__Attribute_setAttributeType".}
proc fcQSGGeometryAttribute_reserved(self: pointer): cuint {.importc: "QSGGeometry__Attribute_reserved".}
proc fcQSGGeometryAttribute_setReserved(self: pointer, reserved: cuint): void {.importc: "QSGGeometry__Attribute_setReserved".}
proc fcQSGGeometryAttribute_createX(pos: cint, tupleSize: cint, primitiveType: cint): pointer {.importc: "QSGGeometry__Attribute_create".}
proc fcQSGGeometryAttribute_createWithAttributeType(pos: cint, tupleSize: cint, primitiveType: cint, attributeType: cint): pointer {.importc: "QSGGeometry__Attribute_createWithAttributeType".}
proc fcQSGGeometryAttribute_create2(pos: cint, tupleSize: cint, primitiveType: cint, isPosition: bool): pointer {.importc: "QSGGeometry__Attribute_create2".}
proc fcQSGGeometryAttribute_delete(self: pointer) {.importc: "QSGGeometry__Attribute_delete".}
proc fcQSGGeometryAttributeSet_count(self: pointer): cint {.importc: "QSGGeometry__AttributeSet_count".}
proc fcQSGGeometryAttributeSet_setCount(self: pointer, count: cint): void {.importc: "QSGGeometry__AttributeSet_setCount".}
proc fcQSGGeometryAttributeSet_stride(self: pointer): cint {.importc: "QSGGeometry__AttributeSet_stride".}
proc fcQSGGeometryAttributeSet_setStride(self: pointer, stride: cint): void {.importc: "QSGGeometry__AttributeSet_setStride".}
proc fcQSGGeometryAttributeSet_attributes(self: pointer): pointer {.importc: "QSGGeometry__AttributeSet_attributes".}
proc fcQSGGeometryAttributeSet_setAttributes(self: pointer, attributes: pointer): void {.importc: "QSGGeometry__AttributeSet_setAttributes".}
proc fcQSGGeometryAttributeSet_delete(self: pointer) {.importc: "QSGGeometry__AttributeSet_delete".}
proc fcQSGGeometryPoint2D_x(self: pointer): float32 {.importc: "QSGGeometry__Point2D_x".}
proc fcQSGGeometryPoint2D_setX(self: pointer, x: float32): void {.importc: "QSGGeometry__Point2D_setX".}
proc fcQSGGeometryPoint2D_y(self: pointer): float32 {.importc: "QSGGeometry__Point2D_y".}
proc fcQSGGeometryPoint2D_setY(self: pointer, y: float32): void {.importc: "QSGGeometry__Point2D_setY".}
proc fcQSGGeometryPoint2D_set(self: pointer, nx: float32, ny: float32): void {.importc: "QSGGeometry__Point2D_set".}
proc fcQSGGeometryPoint2D_delete(self: pointer) {.importc: "QSGGeometry__Point2D_delete".}
proc fcQSGGeometryTexturedPoint2D_x(self: pointer): float32 {.importc: "QSGGeometry__TexturedPoint2D_x".}
proc fcQSGGeometryTexturedPoint2D_setX(self: pointer, x: float32): void {.importc: "QSGGeometry__TexturedPoint2D_setX".}
proc fcQSGGeometryTexturedPoint2D_y(self: pointer): float32 {.importc: "QSGGeometry__TexturedPoint2D_y".}
proc fcQSGGeometryTexturedPoint2D_setY(self: pointer, y: float32): void {.importc: "QSGGeometry__TexturedPoint2D_setY".}
proc fcQSGGeometryTexturedPoint2D_tx(self: pointer): float32 {.importc: "QSGGeometry__TexturedPoint2D_tx".}
proc fcQSGGeometryTexturedPoint2D_setTx(self: pointer, tx: float32): void {.importc: "QSGGeometry__TexturedPoint2D_setTx".}
proc fcQSGGeometryTexturedPoint2D_ty(self: pointer): float32 {.importc: "QSGGeometry__TexturedPoint2D_ty".}
proc fcQSGGeometryTexturedPoint2D_setTy(self: pointer, ty: float32): void {.importc: "QSGGeometry__TexturedPoint2D_setTy".}
proc fcQSGGeometryTexturedPoint2D_set(self: pointer, nx: float32, ny: float32, ntx: float32, nty: float32): void {.importc: "QSGGeometry__TexturedPoint2D_set".}
proc fcQSGGeometryTexturedPoint2D_delete(self: pointer) {.importc: "QSGGeometry__TexturedPoint2D_delete".}
proc fcQSGGeometryColoredPoint2D_x(self: pointer): float32 {.importc: "QSGGeometry__ColoredPoint2D_x".}
proc fcQSGGeometryColoredPoint2D_setX(self: pointer, x: float32): void {.importc: "QSGGeometry__ColoredPoint2D_setX".}
proc fcQSGGeometryColoredPoint2D_y(self: pointer): float32 {.importc: "QSGGeometry__ColoredPoint2D_y".}
proc fcQSGGeometryColoredPoint2D_setY(self: pointer, y: float32): void {.importc: "QSGGeometry__ColoredPoint2D_setY".}
proc fcQSGGeometryColoredPoint2D_r(self: pointer): uint8 {.importc: "QSGGeometry__ColoredPoint2D_r".}
proc fcQSGGeometryColoredPoint2D_setR(self: pointer, r: uint8): void {.importc: "QSGGeometry__ColoredPoint2D_setR".}
proc fcQSGGeometryColoredPoint2D_g(self: pointer): uint8 {.importc: "QSGGeometry__ColoredPoint2D_g".}
proc fcQSGGeometryColoredPoint2D_setG(self: pointer, g: uint8): void {.importc: "QSGGeometry__ColoredPoint2D_setG".}
proc fcQSGGeometryColoredPoint2D_b(self: pointer): uint8 {.importc: "QSGGeometry__ColoredPoint2D_b".}
proc fcQSGGeometryColoredPoint2D_setB(self: pointer, b: uint8): void {.importc: "QSGGeometry__ColoredPoint2D_setB".}
proc fcQSGGeometryColoredPoint2D_a(self: pointer): uint8 {.importc: "QSGGeometry__ColoredPoint2D_a".}
proc fcQSGGeometryColoredPoint2D_setA(self: pointer, a: uint8): void {.importc: "QSGGeometry__ColoredPoint2D_setA".}
proc fcQSGGeometryColoredPoint2D_set(self: pointer, nx: float32, ny: float32, nr: uint8, ng: uint8, nb: uint8, na: uint8): void {.importc: "QSGGeometry__ColoredPoint2D_set".}
proc fcQSGGeometryColoredPoint2D_delete(self: pointer) {.importc: "QSGGeometry__ColoredPoint2D_delete".}

proc defaultAttributes_Point2D*(_: type gen_qsggeometry_types.QSGGeometry): gen_qsggeometry_types.QSGGeometryAttributeSet =
  gen_qsggeometry_types.QSGGeometryAttributeSet(h: fcQSGGeometry_defaultAttributes_Point2D())

proc defaultAttributes_TexturedPoint2D*(_: type gen_qsggeometry_types.QSGGeometry): gen_qsggeometry_types.QSGGeometryAttributeSet =
  gen_qsggeometry_types.QSGGeometryAttributeSet(h: fcQSGGeometry_defaultAttributes_TexturedPoint2D())

proc defaultAttributes_ColoredPoint2D*(_: type gen_qsggeometry_types.QSGGeometry): gen_qsggeometry_types.QSGGeometryAttributeSet =
  gen_qsggeometry_types.QSGGeometryAttributeSet(h: fcQSGGeometry_defaultAttributes_ColoredPoint2D())

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
  gen_qsggeometry_types.QSGGeometryPoint2D(h: fcQSGGeometry_vertexDataAsPoint2D(self.h))

proc vertexDataAsTexturedPoint2D*(self: gen_qsggeometry_types.QSGGeometry): gen_qsggeometry_types.QSGGeometryTexturedPoint2D =
  gen_qsggeometry_types.QSGGeometryTexturedPoint2D(h: fcQSGGeometry_vertexDataAsTexturedPoint2D(self.h))

proc vertexDataAsColoredPoint2D*(self: gen_qsggeometry_types.QSGGeometry): gen_qsggeometry_types.QSGGeometryColoredPoint2D =
  gen_qsggeometry_types.QSGGeometryColoredPoint2D(h: fcQSGGeometry_vertexDataAsColoredPoint2D(self.h))

proc vertexData2*(self: gen_qsggeometry_types.QSGGeometry): pointer =
  fcQSGGeometry_vertexData2(self.h)

proc vertexDataAsPoint2D2*(self: gen_qsggeometry_types.QSGGeometry): gen_qsggeometry_types.QSGGeometryPoint2D =
  gen_qsggeometry_types.QSGGeometryPoint2D(h: fcQSGGeometry_vertexDataAsPoint2D2(self.h))

proc vertexDataAsTexturedPoint2D2*(self: gen_qsggeometry_types.QSGGeometry): gen_qsggeometry_types.QSGGeometryTexturedPoint2D =
  gen_qsggeometry_types.QSGGeometryTexturedPoint2D(h: fcQSGGeometry_vertexDataAsTexturedPoint2D2(self.h))

proc vertexDataAsColoredPoint2D2*(self: gen_qsggeometry_types.QSGGeometry): gen_qsggeometry_types.QSGGeometryColoredPoint2D =
  gen_qsggeometry_types.QSGGeometryColoredPoint2D(h: fcQSGGeometry_vertexDataAsColoredPoint2D2(self.h))

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
  gen_qsggeometry_types.QSGGeometryAttribute(h: fcQSGGeometry_attributes(self.h))

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
  let tmp = gen_qsggeometry_types.QSGGeometry(h: fcQSGGeometry_new(attribs.h, vertexCount))
  tmp
proc create*(T: type gen_qsggeometry_types.QSGGeometry,
    attribs: gen_qsggeometry_types.QSGGeometryAttributeSet, vertexCount: cint, indexCount: cint): gen_qsggeometry_types.QSGGeometry =
  let tmp = gen_qsggeometry_types.QSGGeometry(h: fcQSGGeometry_new2(attribs.h, vertexCount, indexCount))
  tmp
proc create*(T: type gen_qsggeometry_types.QSGGeometry,
    attribs: gen_qsggeometry_types.QSGGeometryAttributeSet, vertexCount: cint, indexCount: cint, indexType: cint): gen_qsggeometry_types.QSGGeometry =
  let tmp = gen_qsggeometry_types.QSGGeometry(h: fcQSGGeometry_new3(attribs.h, vertexCount, indexCount, indexType))
  tmp
proc delete*(self: gen_qsggeometry_types.QSGGeometry) =
  fcQSGGeometry_delete(self.h)
proc position*(self: gen_qsggeometry_types.QSGGeometryAttribute): cint =
  fcQSGGeometryAttribute_position(self.h)

proc setPosition*(self: gen_qsggeometry_types.QSGGeometryAttribute, position: cint): void =
  fcQSGGeometryAttribute_setPosition(self.h, position)

proc tupleSize*(self: gen_qsggeometry_types.QSGGeometryAttribute): cint =
  fcQSGGeometryAttribute_tupleSize(self.h)

proc setTupleSize*(self: gen_qsggeometry_types.QSGGeometryAttribute, tupleSize: cint): void =
  fcQSGGeometryAttribute_setTupleSize(self.h, tupleSize)

proc typeX*(self: gen_qsggeometry_types.QSGGeometryAttribute): cint =
  fcQSGGeometryAttribute_typeX(self.h)

proc setType*(self: gen_qsggeometry_types.QSGGeometryAttribute, typeVal: cint): void =
  fcQSGGeometryAttribute_setType(self.h, typeVal)

proc isVertexCoordinate*(self: gen_qsggeometry_types.QSGGeometryAttribute): cuint =
  fcQSGGeometryAttribute_isVertexCoordinate(self.h)

proc setIsVertexCoordinate*(self: gen_qsggeometry_types.QSGGeometryAttribute, isVertexCoordinate: cuint): void =
  fcQSGGeometryAttribute_setIsVertexCoordinate(self.h, isVertexCoordinate)

proc attributeType*(self: gen_qsggeometry_types.QSGGeometryAttribute): cint =
  cint(fcQSGGeometryAttribute_attributeType(self.h))

proc setAttributeType*(self: gen_qsggeometry_types.QSGGeometryAttribute, attributeType: cint): void =
  fcQSGGeometryAttribute_setAttributeType(self.h, cint(attributeType))

proc reserved*(self: gen_qsggeometry_types.QSGGeometryAttribute): cuint =
  fcQSGGeometryAttribute_reserved(self.h)

proc setReserved*(self: gen_qsggeometry_types.QSGGeometryAttribute, reserved: cuint): void =
  fcQSGGeometryAttribute_setReserved(self.h, reserved)

proc createX*(_: type gen_qsggeometry_types.QSGGeometryAttribute, pos: cint, tupleSize: cint, primitiveType: cint): gen_qsggeometry_types.QSGGeometryAttribute =
  gen_qsggeometry_types.QSGGeometryAttribute(h: fcQSGGeometryAttribute_createX(pos, tupleSize, primitiveType))

proc createWithAttributeType*(_: type gen_qsggeometry_types.QSGGeometryAttribute, pos: cint, tupleSize: cint, primitiveType: cint, attributeType: cint): gen_qsggeometry_types.QSGGeometryAttribute =
  gen_qsggeometry_types.QSGGeometryAttribute(h: fcQSGGeometryAttribute_createWithAttributeType(pos, tupleSize, primitiveType, cint(attributeType)))

proc createX*(_: type gen_qsggeometry_types.QSGGeometryAttribute, pos: cint, tupleSize: cint, primitiveType: cint, isPosition: bool): gen_qsggeometry_types.QSGGeometryAttribute =
  gen_qsggeometry_types.QSGGeometryAttribute(h: fcQSGGeometryAttribute_create2(pos, tupleSize, primitiveType, isPosition))

proc delete*(self: gen_qsggeometry_types.QSGGeometryAttribute) =
  fcQSGGeometryAttribute_delete(self.h)
proc count*(self: gen_qsggeometry_types.QSGGeometryAttributeSet): cint =
  fcQSGGeometryAttributeSet_count(self.h)

proc setCount*(self: gen_qsggeometry_types.QSGGeometryAttributeSet, count: cint): void =
  fcQSGGeometryAttributeSet_setCount(self.h, count)

proc stride*(self: gen_qsggeometry_types.QSGGeometryAttributeSet): cint =
  fcQSGGeometryAttributeSet_stride(self.h)

proc setStride*(self: gen_qsggeometry_types.QSGGeometryAttributeSet, stride: cint): void =
  fcQSGGeometryAttributeSet_setStride(self.h, stride)

proc attributes*(self: gen_qsggeometry_types.QSGGeometryAttributeSet): gen_qsggeometry_types.QSGGeometryAttribute =
  gen_qsggeometry_types.QSGGeometryAttribute(h: fcQSGGeometryAttributeSet_attributes(self.h))

proc setAttributes*(self: gen_qsggeometry_types.QSGGeometryAttributeSet, attributes: gen_qsggeometry_types.QSGGeometryAttribute): void =
  fcQSGGeometryAttributeSet_setAttributes(self.h, attributes.h)

proc delete*(self: gen_qsggeometry_types.QSGGeometryAttributeSet) =
  fcQSGGeometryAttributeSet_delete(self.h)
proc x*(self: gen_qsggeometry_types.QSGGeometryPoint2D): float32 =
  fcQSGGeometryPoint2D_x(self.h)

proc setX*(self: gen_qsggeometry_types.QSGGeometryPoint2D, x: float32): void =
  fcQSGGeometryPoint2D_setX(self.h, x)

proc y*(self: gen_qsggeometry_types.QSGGeometryPoint2D): float32 =
  fcQSGGeometryPoint2D_y(self.h)

proc setY*(self: gen_qsggeometry_types.QSGGeometryPoint2D, y: float32): void =
  fcQSGGeometryPoint2D_setY(self.h, y)

proc set*(self: gen_qsggeometry_types.QSGGeometryPoint2D, nx: float32, ny: float32): void =
  fcQSGGeometryPoint2D_set(self.h, nx, ny)

proc delete*(self: gen_qsggeometry_types.QSGGeometryPoint2D) =
  fcQSGGeometryPoint2D_delete(self.h)
proc x*(self: gen_qsggeometry_types.QSGGeometryTexturedPoint2D): float32 =
  fcQSGGeometryTexturedPoint2D_x(self.h)

proc setX*(self: gen_qsggeometry_types.QSGGeometryTexturedPoint2D, x: float32): void =
  fcQSGGeometryTexturedPoint2D_setX(self.h, x)

proc y*(self: gen_qsggeometry_types.QSGGeometryTexturedPoint2D): float32 =
  fcQSGGeometryTexturedPoint2D_y(self.h)

proc setY*(self: gen_qsggeometry_types.QSGGeometryTexturedPoint2D, y: float32): void =
  fcQSGGeometryTexturedPoint2D_setY(self.h, y)

proc tx*(self: gen_qsggeometry_types.QSGGeometryTexturedPoint2D): float32 =
  fcQSGGeometryTexturedPoint2D_tx(self.h)

proc setTx*(self: gen_qsggeometry_types.QSGGeometryTexturedPoint2D, tx: float32): void =
  fcQSGGeometryTexturedPoint2D_setTx(self.h, tx)

proc ty*(self: gen_qsggeometry_types.QSGGeometryTexturedPoint2D): float32 =
  fcQSGGeometryTexturedPoint2D_ty(self.h)

proc setTy*(self: gen_qsggeometry_types.QSGGeometryTexturedPoint2D, ty: float32): void =
  fcQSGGeometryTexturedPoint2D_setTy(self.h, ty)

proc set*(self: gen_qsggeometry_types.QSGGeometryTexturedPoint2D, nx: float32, ny: float32, ntx: float32, nty: float32): void =
  fcQSGGeometryTexturedPoint2D_set(self.h, nx, ny, ntx, nty)

proc delete*(self: gen_qsggeometry_types.QSGGeometryTexturedPoint2D) =
  fcQSGGeometryTexturedPoint2D_delete(self.h)
proc x*(self: gen_qsggeometry_types.QSGGeometryColoredPoint2D): float32 =
  fcQSGGeometryColoredPoint2D_x(self.h)

proc setX*(self: gen_qsggeometry_types.QSGGeometryColoredPoint2D, x: float32): void =
  fcQSGGeometryColoredPoint2D_setX(self.h, x)

proc y*(self: gen_qsggeometry_types.QSGGeometryColoredPoint2D): float32 =
  fcQSGGeometryColoredPoint2D_y(self.h)

proc setY*(self: gen_qsggeometry_types.QSGGeometryColoredPoint2D, y: float32): void =
  fcQSGGeometryColoredPoint2D_setY(self.h, y)

proc r*(self: gen_qsggeometry_types.QSGGeometryColoredPoint2D): uint8 =
  fcQSGGeometryColoredPoint2D_r(self.h)

proc setR*(self: gen_qsggeometry_types.QSGGeometryColoredPoint2D, r: uint8): void =
  fcQSGGeometryColoredPoint2D_setR(self.h, r)

proc g*(self: gen_qsggeometry_types.QSGGeometryColoredPoint2D): uint8 =
  fcQSGGeometryColoredPoint2D_g(self.h)

proc setG*(self: gen_qsggeometry_types.QSGGeometryColoredPoint2D, g: uint8): void =
  fcQSGGeometryColoredPoint2D_setG(self.h, g)

proc b*(self: gen_qsggeometry_types.QSGGeometryColoredPoint2D): uint8 =
  fcQSGGeometryColoredPoint2D_b(self.h)

proc setB*(self: gen_qsggeometry_types.QSGGeometryColoredPoint2D, b: uint8): void =
  fcQSGGeometryColoredPoint2D_setB(self.h, b)

proc a*(self: gen_qsggeometry_types.QSGGeometryColoredPoint2D): uint8 =
  fcQSGGeometryColoredPoint2D_a(self.h)

proc setA*(self: gen_qsggeometry_types.QSGGeometryColoredPoint2D, a: uint8): void =
  fcQSGGeometryColoredPoint2D_setA(self.h, a)

proc set*(self: gen_qsggeometry_types.QSGGeometryColoredPoint2D, nx: float32, ny: float32, nr: uint8, ng: uint8, nb: uint8, na: uint8): void =
  fcQSGGeometryColoredPoint2D_set(self.h, nx, ny, nr, ng, nb, na)

proc delete*(self: gen_qsggeometry_types.QSGGeometryColoredPoint2D) =
  fcQSGGeometryColoredPoint2D_delete(self.h)
