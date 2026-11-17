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


type QColorSpaceNamedColorSpaceEnum* = distinct cint
template SRgb*(_: type QColorSpaceNamedColorSpaceEnum): untyped = 1
template SRgbLinear*(_: type QColorSpaceNamedColorSpaceEnum): untyped = 2
template AdobeRgb*(_: type QColorSpaceNamedColorSpaceEnum): untyped = 3
template DisplayP3*(_: type QColorSpaceNamedColorSpaceEnum): untyped = 4
template ProPhotoRgb*(_: type QColorSpaceNamedColorSpaceEnum): untyped = 5
template Bt2020*(_: type QColorSpaceNamedColorSpaceEnum): untyped = 6
template Bt2100Pq*(_: type QColorSpaceNamedColorSpaceEnum): untyped = 7
template Bt2100Hlg*(_: type QColorSpaceNamedColorSpaceEnum): untyped = 8


type QColorSpacePrimariesEnum* = distinct cint
template Custom*(_: type QColorSpacePrimariesEnum): untyped = 0
template SRgb*(_: type QColorSpacePrimariesEnum): untyped = 1
template AdobeRgb*(_: type QColorSpacePrimariesEnum): untyped = 2
template DciP3D65*(_: type QColorSpacePrimariesEnum): untyped = 3
template ProPhotoRgb*(_: type QColorSpacePrimariesEnum): untyped = 4
template Bt2020*(_: type QColorSpacePrimariesEnum): untyped = 5


type QColorSpaceTransferFunctionEnum* = distinct cint
template Custom*(_: type QColorSpaceTransferFunctionEnum): untyped = 0
template Linear*(_: type QColorSpaceTransferFunctionEnum): untyped = 1
template Gamma*(_: type QColorSpaceTransferFunctionEnum): untyped = 2
template SRgb*(_: type QColorSpaceTransferFunctionEnum): untyped = 3
template ProPhotoRgb*(_: type QColorSpaceTransferFunctionEnum): untyped = 4
template Bt2020*(_: type QColorSpaceTransferFunctionEnum): untyped = 5
template St2084*(_: type QColorSpaceTransferFunctionEnum): untyped = 6
template Hlg*(_: type QColorSpaceTransferFunctionEnum): untyped = 7


type QColorSpaceTransformModelEnum* = distinct uint8
template ThreeComponentMatrix*(_: type QColorSpaceTransformModelEnum): untyped = 0
template ElementListProcessing*(_: type QColorSpaceTransformModelEnum): untyped = 1


type QColorSpaceColorModelEnum* = distinct uint8
template Undefined*(_: type QColorSpaceColorModelEnum): untyped = 0
template Rgb*(_: type QColorSpaceColorModelEnum): untyped = 1
template Gray*(_: type QColorSpaceColorModelEnum): untyped = 2
template Cmyk*(_: type QColorSpaceColorModelEnum): untyped = 3


import ./gen_qcolorspace_types
export gen_qcolorspace_types

import
  ../QtCore/gen_qobjectdefs_types,
  ../QtCore/gen_qpoint_types,
  ../QtCore/gen_qvariant_types,
  ./gen_qcolortransform_types
export
  gen_qobjectdefs_types,
  gen_qpoint_types,
  gen_qvariant_types,
  gen_qcolortransform_types

type cQColorSpace*{.exportc: "QColorSpace", incompleteStruct.} = object

proc fcQColorSpace_operatorAssign(self: pointer, fromVal: pointer): void {.importc: "QColorSpace_operatorAssign".}
proc fcQColorSpace_swap(self: pointer, colorSpace: pointer): void {.importc: "QColorSpace_swap".}
proc fcQColorSpace_primaries(self: pointer): cint {.importc: "QColorSpace_primaries".}
proc fcQColorSpace_transferFunction(self: pointer): cint {.importc: "QColorSpace_transferFunction".}
proc fcQColorSpace_gamma(self: pointer): float32 {.importc: "QColorSpace_gamma".}
proc fcQColorSpace_description(self: pointer): struct_seaqt_string {.importc: "QColorSpace_description".}
proc fcQColorSpace_setDescription(self: pointer, description: struct_seaqt_string): void {.importc: "QColorSpace_setDescription".}
proc fcQColorSpace_setTransferFunctionTransferFunction(self: pointer, transferFunction: cint): void {.importc: "QColorSpace_setTransferFunction_transferFunction".}
proc fcQColorSpace_setTransferFunctionTransferFunctionTable(self: pointer, transferFunctionTable: struct_seaqt_array): void {.importc: "QColorSpace_setTransferFunction_transferFunctionTable".}
proc fcQColorSpace_setTransferFunctions(self: pointer, redTransferFunctionTable: struct_seaqt_array, greenTransferFunctionTable: struct_seaqt_array, blueTransferFunctionTable: struct_seaqt_array): void {.importc: "QColorSpace_setTransferFunctions".}
proc fcQColorSpace_withTransferFunctionTransferFunction(self: pointer, transferFunction: cint): pointer {.importc: "QColorSpace_withTransferFunction_transferFunction".}
proc fcQColorSpace_withTransferFunctionTransferFunctionTable(self: pointer, transferFunctionTable: struct_seaqt_array): pointer {.importc: "QColorSpace_withTransferFunction_transferFunctionTable".}
proc fcQColorSpace_withTransferFunctions(self: pointer, redTransferFunctionTable: struct_seaqt_array, greenTransferFunctionTable: struct_seaqt_array, blueTransferFunctionTable: struct_seaqt_array): pointer {.importc: "QColorSpace_withTransferFunctions".}
proc fcQColorSpace_setPrimariesPrimariesId(self: pointer, primariesId: cint): void {.importc: "QColorSpace_setPrimaries_primariesId".}
proc fcQColorSpace_setPrimariesWhitePointRedPointGreenPointBluePoint(self: pointer, whitePoint: pointer, redPoint: pointer, greenPoint: pointer, bluePoint: pointer): void {.importc: "QColorSpace_setPrimaries_whitePoint_redPoint_greenPoint_bluePoint".}
proc fcQColorSpace_setWhitePoint(self: pointer, whitePoint: pointer): void {.importc: "QColorSpace_setWhitePoint".}
proc fcQColorSpace_whitePoint(self: pointer): pointer {.importc: "QColorSpace_whitePoint".}
proc fcQColorSpace_transformModel(self: pointer): cint {.importc: "QColorSpace_transformModel".}
proc fcQColorSpace_colorModel(self: pointer): cint {.importc: "QColorSpace_colorModel".}
proc fcQColorSpace_detach(self: pointer): void {.importc: "QColorSpace_detach".}
proc fcQColorSpace_isValid(self: pointer): bool {.importc: "QColorSpace_isValid".}
proc fcQColorSpace_isValidTarget(self: pointer): bool {.importc: "QColorSpace_isValidTarget".}
proc fcQColorSpace_fromIccProfile(iccProfile: struct_seaqt_string): pointer {.importc: "QColorSpace_fromIccProfile".}
proc fcQColorSpace_iccProfile(self: pointer): struct_seaqt_string {.importc: "QColorSpace_iccProfile".}
proc fcQColorSpace_transformationToColorSpace(self: pointer, colorspace: pointer): pointer {.importc: "QColorSpace_transformationToColorSpace".}
proc fcQColorSpace_ToQVariant(self: pointer): pointer {.importc: "QColorSpace_ToQVariant".}
proc fcQColorSpace_setTransferFunctionTransferFunctionGamma(self: pointer, transferFunction: cint, gamma: float32): void {.importc: "QColorSpace_setTransferFunction_transferFunction_gamma".}
proc fcQColorSpace_withTransferFunctionTransferFunctionGamma(self: pointer, transferFunction: cint, gamma: float32): pointer {.importc: "QColorSpace_withTransferFunction_transferFunction_gamma".}
proc fcQColorSpace_new(): ptr cQColorSpace {.importc: "QColorSpace_new".}
proc fcQColorSpace_new2(namedColorSpace: cint): ptr cQColorSpace {.importc: "QColorSpace_new_namedColorSpace".}
proc fcQColorSpace_new3(whitePoint: pointer, transferFunction: cint): ptr cQColorSpace {.importc: "QColorSpace_new_whitePoint_transferFunction".}
proc fcQColorSpace_new4(whitePoint: pointer, transferFunctionTable: struct_seaqt_array): ptr cQColorSpace {.importc: "QColorSpace_new_whitePoint_transferFunctionTable".}
proc fcQColorSpace_new5(primaries: cint, transferFunction: cint): ptr cQColorSpace {.importc: "QColorSpace_new_primaries_transferFunction".}
proc fcQColorSpace_new6(primaries: cint, gamma: float32): ptr cQColorSpace {.importc: "QColorSpace_new_primaries_gamma".}
proc fcQColorSpace_new7(primaries: cint, transferFunctionTable: struct_seaqt_array): ptr cQColorSpace {.importc: "QColorSpace_new_primaries_transferFunctionTable".}
proc fcQColorSpace_new8(whitePoint: pointer, redPoint: pointer, greenPoint: pointer, bluePoint: pointer, transferFunction: cint): ptr cQColorSpace {.importc: "QColorSpace_new_whitePoint_redPoint_greenPoint_bluePoint_transferFunction".}
proc fcQColorSpace_new9(whitePoint: pointer, redPoint: pointer, greenPoint: pointer, bluePoint: pointer, transferFunctionTable: struct_seaqt_array): ptr cQColorSpace {.importc: "QColorSpace_new_whitePoint_redPoint_greenPoint_bluePoint_transferFunctionTable".}
proc fcQColorSpace_new10(whitePoint: pointer, redPoint: pointer, greenPoint: pointer, bluePoint: pointer, redTransferFunctionTable: struct_seaqt_array, greenTransferFunctionTable: struct_seaqt_array, blueTransferFunctionTable: struct_seaqt_array): ptr cQColorSpace {.importc: "QColorSpace_new_whitePoint_redPoint_greenPoint_bluePoint_redTransferFunctionTable_greenTransferFunctionTable_blueTransferFunctionTable".}
proc fcQColorSpace_new11(fromVal: pointer): ptr cQColorSpace {.importc: "QColorSpace_new_from".}
proc fcQColorSpace_new12(whitePoint: pointer, transferFunction: cint, gamma: float32): ptr cQColorSpace {.importc: "QColorSpace_new_whitePoint_transferFunction_gamma".}
proc fcQColorSpace_new13(primaries: cint, transferFunction: cint, gamma: float32): ptr cQColorSpace {.importc: "QColorSpace_new_primaries_transferFunction_gamma".}
proc fcQColorSpace_new14(whitePoint: pointer, redPoint: pointer, greenPoint: pointer, bluePoint: pointer, transferFunction: cint, gamma: float32): ptr cQColorSpace {.importc: "QColorSpace_new_whitePoint_redPoint_greenPoint_bluePoint_transferFunction_gamma".}
proc fcQColorSpace_staticMetaObject(): pointer {.importc: "QColorSpace_staticMetaObject".}

proc operatorAssign*(self: gen_qcolorspace_types.QColorSpace, fromVal: gen_qcolorspace_types.QColorSpace): void =
  fcQColorSpace_operatorAssign(self.h, fromVal.h)

proc swap*(self: gen_qcolorspace_types.QColorSpace, colorSpace: gen_qcolorspace_types.QColorSpace): void =
  fcQColorSpace_swap(self.h, colorSpace.h)

proc primaries*(self: gen_qcolorspace_types.QColorSpace): cint =
  cint(fcQColorSpace_primaries(self.h))

proc transferFunction*(self: gen_qcolorspace_types.QColorSpace): cint =
  cint(fcQColorSpace_transferFunction(self.h))

proc gamma*(self: gen_qcolorspace_types.QColorSpace): float32 =
  fcQColorSpace_gamma(self.h)

proc description*(self: gen_qcolorspace_types.QColorSpace): string =
  let v_ms = fcQColorSpace_description(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc setDescription*(self: gen_qcolorspace_types.QColorSpace, description: openArray[char]): void =
  fcQColorSpace_setDescription(self.h, struct_seaqt_string(data: if len(description) > 0: addr description[0] else: nil, len: csize_t(len(description))))

proc setTransferFunction*(self: gen_qcolorspace_types.QColorSpace, transferFunction: cint): void =
  fcQColorSpace_setTransferFunctionTransferFunction(self.h, cint(transferFunction))

proc setTransferFunction*(self: gen_qcolorspace_types.QColorSpace, transferFunctionTable: openArray[uint16]): void =
  var transferFunctionTable_CArray = newSeq[uint16](len(transferFunctionTable))
  for i in 0..<len(transferFunctionTable):
    transferFunctionTable_CArray[i] = transferFunctionTable[i]

  fcQColorSpace_setTransferFunctionTransferFunctionTable(self.h, struct_seaqt_array(len: csize_t(len(transferFunctionTable)), data: if len(transferFunctionTable) == 0: nil else: addr(transferFunctionTable_CArray[0])))

proc setTransferFunctions*(self: gen_qcolorspace_types.QColorSpace, redTransferFunctionTable: openArray[uint16], greenTransferFunctionTable: openArray[uint16], blueTransferFunctionTable: openArray[uint16]): void =
  var redTransferFunctionTable_CArray = newSeq[uint16](len(redTransferFunctionTable))
  for i in 0..<len(redTransferFunctionTable):
    redTransferFunctionTable_CArray[i] = redTransferFunctionTable[i]

  var greenTransferFunctionTable_CArray = newSeq[uint16](len(greenTransferFunctionTable))
  for i in 0..<len(greenTransferFunctionTable):
    greenTransferFunctionTable_CArray[i] = greenTransferFunctionTable[i]

  var blueTransferFunctionTable_CArray = newSeq[uint16](len(blueTransferFunctionTable))
  for i in 0..<len(blueTransferFunctionTable):
    blueTransferFunctionTable_CArray[i] = blueTransferFunctionTable[i]

  fcQColorSpace_setTransferFunctions(self.h, struct_seaqt_array(len: csize_t(len(redTransferFunctionTable)), data: if len(redTransferFunctionTable) == 0: nil else: addr(redTransferFunctionTable_CArray[0])), struct_seaqt_array(len: csize_t(len(greenTransferFunctionTable)), data: if len(greenTransferFunctionTable) == 0: nil else: addr(greenTransferFunctionTable_CArray[0])), struct_seaqt_array(len: csize_t(len(blueTransferFunctionTable)), data: if len(blueTransferFunctionTable) == 0: nil else: addr(blueTransferFunctionTable_CArray[0])))

proc withTransferFunction*(self: gen_qcolorspace_types.QColorSpace, transferFunction: cint): gen_qcolorspace_types.QColorSpace =
  gen_qcolorspace_types.QColorSpace(h: fcQColorSpace_withTransferFunctionTransferFunction(self.h, cint(transferFunction)), owned: true)

proc withTransferFunction*(self: gen_qcolorspace_types.QColorSpace, transferFunctionTable: openArray[uint16]): gen_qcolorspace_types.QColorSpace =
  var transferFunctionTable_CArray = newSeq[uint16](len(transferFunctionTable))
  for i in 0..<len(transferFunctionTable):
    transferFunctionTable_CArray[i] = transferFunctionTable[i]

  gen_qcolorspace_types.QColorSpace(h: fcQColorSpace_withTransferFunctionTransferFunctionTable(self.h, struct_seaqt_array(len: csize_t(len(transferFunctionTable)), data: if len(transferFunctionTable) == 0: nil else: addr(transferFunctionTable_CArray[0]))), owned: true)

proc withTransferFunctions*(self: gen_qcolorspace_types.QColorSpace, redTransferFunctionTable: openArray[uint16], greenTransferFunctionTable: openArray[uint16], blueTransferFunctionTable: openArray[uint16]): gen_qcolorspace_types.QColorSpace =
  var redTransferFunctionTable_CArray = newSeq[uint16](len(redTransferFunctionTable))
  for i in 0..<len(redTransferFunctionTable):
    redTransferFunctionTable_CArray[i] = redTransferFunctionTable[i]

  var greenTransferFunctionTable_CArray = newSeq[uint16](len(greenTransferFunctionTable))
  for i in 0..<len(greenTransferFunctionTable):
    greenTransferFunctionTable_CArray[i] = greenTransferFunctionTable[i]

  var blueTransferFunctionTable_CArray = newSeq[uint16](len(blueTransferFunctionTable))
  for i in 0..<len(blueTransferFunctionTable):
    blueTransferFunctionTable_CArray[i] = blueTransferFunctionTable[i]

  gen_qcolorspace_types.QColorSpace(h: fcQColorSpace_withTransferFunctions(self.h, struct_seaqt_array(len: csize_t(len(redTransferFunctionTable)), data: if len(redTransferFunctionTable) == 0: nil else: addr(redTransferFunctionTable_CArray[0])), struct_seaqt_array(len: csize_t(len(greenTransferFunctionTable)), data: if len(greenTransferFunctionTable) == 0: nil else: addr(greenTransferFunctionTable_CArray[0])), struct_seaqt_array(len: csize_t(len(blueTransferFunctionTable)), data: if len(blueTransferFunctionTable) == 0: nil else: addr(blueTransferFunctionTable_CArray[0]))), owned: true)

proc setPrimaries*(self: gen_qcolorspace_types.QColorSpace, primariesId: cint): void =
  fcQColorSpace_setPrimariesPrimariesId(self.h, cint(primariesId))

proc setPrimaries*(self: gen_qcolorspace_types.QColorSpace, whitePoint: gen_qpoint_types.QPointF, redPoint: gen_qpoint_types.QPointF, greenPoint: gen_qpoint_types.QPointF, bluePoint: gen_qpoint_types.QPointF): void =
  fcQColorSpace_setPrimariesWhitePointRedPointGreenPointBluePoint(self.h, whitePoint.h, redPoint.h, greenPoint.h, bluePoint.h)

proc setWhitePoint*(self: gen_qcolorspace_types.QColorSpace, whitePoint: gen_qpoint_types.QPointF): void =
  fcQColorSpace_setWhitePoint(self.h, whitePoint.h)

proc whitePoint*(self: gen_qcolorspace_types.QColorSpace): gen_qpoint_types.QPointF =
  gen_qpoint_types.QPointF(h: fcQColorSpace_whitePoint(self.h), owned: true)

proc transformModel*(self: gen_qcolorspace_types.QColorSpace): cint =
  cint(fcQColorSpace_transformModel(self.h))

proc colorModel*(self: gen_qcolorspace_types.QColorSpace): cint =
  cint(fcQColorSpace_colorModel(self.h))

proc detach*(self: gen_qcolorspace_types.QColorSpace): void =
  fcQColorSpace_detach(self.h)

proc isValid*(self: gen_qcolorspace_types.QColorSpace): bool =
  fcQColorSpace_isValid(self.h)

proc isValidTarget*(self: gen_qcolorspace_types.QColorSpace): bool =
  fcQColorSpace_isValidTarget(self.h)

proc fromIccProfile*(_: type gen_qcolorspace_types.QColorSpace, iccProfile: openArray[byte]): gen_qcolorspace_types.QColorSpace =
  gen_qcolorspace_types.QColorSpace(h: fcQColorSpace_fromIccProfile(struct_seaqt_string(data: if len(iccProfile) > 0: addr iccProfile[0] else: nil, len: csize_t(len(iccProfile)))), owned: true)

proc iccProfile*(self: gen_qcolorspace_types.QColorSpace): seq[byte] =
  var v_bytearray = fcQColorSpace_iccProfile(self.h)
  var vx_ret = @(toOpenArray(cast[ptr UncheckedArray[byte]](v_bytearray.data), 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc transformationToColorSpace*(self: gen_qcolorspace_types.QColorSpace, colorspace: gen_qcolorspace_types.QColorSpace): gen_qcolortransform_types.QColorTransform =
  gen_qcolortransform_types.QColorTransform(h: fcQColorSpace_transformationToColorSpace(self.h, colorspace.h), owned: true)

proc ToQVariant*(self: gen_qcolorspace_types.QColorSpace): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQColorSpace_ToQVariant(self.h), owned: true)

proc setTransferFunction*(self: gen_qcolorspace_types.QColorSpace, transferFunction: cint, gamma: float32): void =
  fcQColorSpace_setTransferFunctionTransferFunctionGamma(self.h, cint(transferFunction), gamma)

proc withTransferFunction*(self: gen_qcolorspace_types.QColorSpace, transferFunction: cint, gamma: float32): gen_qcolorspace_types.QColorSpace =
  gen_qcolorspace_types.QColorSpace(h: fcQColorSpace_withTransferFunctionTransferFunctionGamma(self.h, cint(transferFunction), gamma), owned: true)

proc create*(T: type gen_qcolorspace_types.QColorSpace): gen_qcolorspace_types.QColorSpace =
  let tmp = gen_qcolorspace_types.QColorSpace(h: fcQColorSpace_new(), owned: true)
  tmp
proc create*(T: type gen_qcolorspace_types.QColorSpace,
    namedColorSpace: cint): gen_qcolorspace_types.QColorSpace =
  let tmp = gen_qcolorspace_types.QColorSpace(h: fcQColorSpace_new2(cint(namedColorSpace)), owned: true)
  tmp
proc create*(T: type gen_qcolorspace_types.QColorSpace,
    whitePoint: gen_qpoint_types.QPointF, transferFunction: cint): gen_qcolorspace_types.QColorSpace =
  let tmp = gen_qcolorspace_types.QColorSpace(h: fcQColorSpace_new3(whitePoint.h, cint(transferFunction)), owned: true)
  tmp
proc create*(T: type gen_qcolorspace_types.QColorSpace,
    whitePoint: gen_qpoint_types.QPointF, transferFunctionTable: openArray[uint16]): gen_qcolorspace_types.QColorSpace =
  var transferFunctionTable_CArray = newSeq[uint16](len(transferFunctionTable))
  for i in 0..<len(transferFunctionTable):
    transferFunctionTable_CArray[i] = transferFunctionTable[i]

  let tmp = gen_qcolorspace_types.QColorSpace(h: fcQColorSpace_new4(whitePoint.h, struct_seaqt_array(len: csize_t(len(transferFunctionTable)), data: if len(transferFunctionTable) == 0: nil else: addr(transferFunctionTable_CArray[0]))), owned: true)
  tmp
proc create*(T: type gen_qcolorspace_types.QColorSpace,
    primaries: cint, transferFunction: cint): gen_qcolorspace_types.QColorSpace =
  let tmp = gen_qcolorspace_types.QColorSpace(h: fcQColorSpace_new5(cint(primaries), cint(transferFunction)), owned: true)
  tmp
proc create*(T: type gen_qcolorspace_types.QColorSpace,
    primaries: cint, gamma: float32): gen_qcolorspace_types.QColorSpace =
  let tmp = gen_qcolorspace_types.QColorSpace(h: fcQColorSpace_new6(cint(primaries), gamma), owned: true)
  tmp
proc create*(T: type gen_qcolorspace_types.QColorSpace,
    primaries: cint, transferFunctionTable: openArray[uint16]): gen_qcolorspace_types.QColorSpace =
  var transferFunctionTable_CArray = newSeq[uint16](len(transferFunctionTable))
  for i in 0..<len(transferFunctionTable):
    transferFunctionTable_CArray[i] = transferFunctionTable[i]

  let tmp = gen_qcolorspace_types.QColorSpace(h: fcQColorSpace_new7(cint(primaries), struct_seaqt_array(len: csize_t(len(transferFunctionTable)), data: if len(transferFunctionTable) == 0: nil else: addr(transferFunctionTable_CArray[0]))), owned: true)
  tmp
proc create*(T: type gen_qcolorspace_types.QColorSpace,
    whitePoint: gen_qpoint_types.QPointF, redPoint: gen_qpoint_types.QPointF, greenPoint: gen_qpoint_types.QPointF, bluePoint: gen_qpoint_types.QPointF, transferFunction: cint): gen_qcolorspace_types.QColorSpace =
  let tmp = gen_qcolorspace_types.QColorSpace(h: fcQColorSpace_new8(whitePoint.h, redPoint.h, greenPoint.h, bluePoint.h, cint(transferFunction)), owned: true)
  tmp
proc create*(T: type gen_qcolorspace_types.QColorSpace,
    whitePoint: gen_qpoint_types.QPointF, redPoint: gen_qpoint_types.QPointF, greenPoint: gen_qpoint_types.QPointF, bluePoint: gen_qpoint_types.QPointF, transferFunctionTable: openArray[uint16]): gen_qcolorspace_types.QColorSpace =
  var transferFunctionTable_CArray = newSeq[uint16](len(transferFunctionTable))
  for i in 0..<len(transferFunctionTable):
    transferFunctionTable_CArray[i] = transferFunctionTable[i]

  let tmp = gen_qcolorspace_types.QColorSpace(h: fcQColorSpace_new9(whitePoint.h, redPoint.h, greenPoint.h, bluePoint.h, struct_seaqt_array(len: csize_t(len(transferFunctionTable)), data: if len(transferFunctionTable) == 0: nil else: addr(transferFunctionTable_CArray[0]))), owned: true)
  tmp
proc create*(T: type gen_qcolorspace_types.QColorSpace,
    whitePoint: gen_qpoint_types.QPointF, redPoint: gen_qpoint_types.QPointF, greenPoint: gen_qpoint_types.QPointF, bluePoint: gen_qpoint_types.QPointF, redTransferFunctionTable: openArray[uint16], greenTransferFunctionTable: openArray[uint16], blueTransferFunctionTable: openArray[uint16]): gen_qcolorspace_types.QColorSpace =
  var redTransferFunctionTable_CArray = newSeq[uint16](len(redTransferFunctionTable))
  for i in 0..<len(redTransferFunctionTable):
    redTransferFunctionTable_CArray[i] = redTransferFunctionTable[i]

  var greenTransferFunctionTable_CArray = newSeq[uint16](len(greenTransferFunctionTable))
  for i in 0..<len(greenTransferFunctionTable):
    greenTransferFunctionTable_CArray[i] = greenTransferFunctionTable[i]

  var blueTransferFunctionTable_CArray = newSeq[uint16](len(blueTransferFunctionTable))
  for i in 0..<len(blueTransferFunctionTable):
    blueTransferFunctionTable_CArray[i] = blueTransferFunctionTable[i]

  let tmp = gen_qcolorspace_types.QColorSpace(h: fcQColorSpace_new10(whitePoint.h, redPoint.h, greenPoint.h, bluePoint.h, struct_seaqt_array(len: csize_t(len(redTransferFunctionTable)), data: if len(redTransferFunctionTable) == 0: nil else: addr(redTransferFunctionTable_CArray[0])), struct_seaqt_array(len: csize_t(len(greenTransferFunctionTable)), data: if len(greenTransferFunctionTable) == 0: nil else: addr(greenTransferFunctionTable_CArray[0])), struct_seaqt_array(len: csize_t(len(blueTransferFunctionTable)), data: if len(blueTransferFunctionTable) == 0: nil else: addr(blueTransferFunctionTable_CArray[0]))), owned: true)
  tmp
proc create*(T: type gen_qcolorspace_types.QColorSpace,
    fromVal: gen_qcolorspace_types.QColorSpace): gen_qcolorspace_types.QColorSpace =
  let tmp = gen_qcolorspace_types.QColorSpace(h: fcQColorSpace_new11(fromVal.h), owned: true)
  tmp
proc create*(T: type gen_qcolorspace_types.QColorSpace,
    whitePoint: gen_qpoint_types.QPointF, transferFunction: cint, gamma: float32): gen_qcolorspace_types.QColorSpace =
  let tmp = gen_qcolorspace_types.QColorSpace(h: fcQColorSpace_new12(whitePoint.h, cint(transferFunction), gamma), owned: true)
  tmp
proc create*(T: type gen_qcolorspace_types.QColorSpace,
    primaries: cint, transferFunction: cint, gamma: float32): gen_qcolorspace_types.QColorSpace =
  let tmp = gen_qcolorspace_types.QColorSpace(h: fcQColorSpace_new13(cint(primaries), cint(transferFunction), gamma), owned: true)
  tmp
proc create*(T: type gen_qcolorspace_types.QColorSpace,
    whitePoint: gen_qpoint_types.QPointF, redPoint: gen_qpoint_types.QPointF, greenPoint: gen_qpoint_types.QPointF, bluePoint: gen_qpoint_types.QPointF, transferFunction: cint, gamma: float32): gen_qcolorspace_types.QColorSpace =
  let tmp = gen_qcolorspace_types.QColorSpace(h: fcQColorSpace_new14(whitePoint.h, redPoint.h, greenPoint.h, bluePoint.h, cint(transferFunction), gamma), owned: true)
  tmp
proc staticMetaObject*(_: type gen_qcolorspace_types.QColorSpace): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQColorSpace_staticMetaObject())
