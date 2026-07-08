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


type QColorSpacePrimariesEnum* = distinct cint
template Custom*(_: type QColorSpacePrimariesEnum): untyped = 0
template SRgb*(_: type QColorSpacePrimariesEnum): untyped = 1
template AdobeRgb*(_: type QColorSpacePrimariesEnum): untyped = 2
template DciP3D65*(_: type QColorSpacePrimariesEnum): untyped = 3
template ProPhotoRgb*(_: type QColorSpacePrimariesEnum): untyped = 4


type QColorSpaceTransferFunctionEnum* = distinct cint
template Custom*(_: type QColorSpaceTransferFunctionEnum): untyped = 0
template Linear*(_: type QColorSpaceTransferFunctionEnum): untyped = 1
template Gamma*(_: type QColorSpaceTransferFunctionEnum): untyped = 2
template SRgb*(_: type QColorSpaceTransferFunctionEnum): untyped = 3
template ProPhotoRgb*(_: type QColorSpaceTransferFunctionEnum): untyped = 4


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
proc fcQColorSpace_setTransferFunctionTransferFunction(self: pointer, transferFunction: cint): void {.importc: "QColorSpace_setTransferFunction_transferFunction".}
proc fcQColorSpace_withTransferFunctionTransferFunction(self: pointer, transferFunction: cint): pointer {.importc: "QColorSpace_withTransferFunction_transferFunction".}
proc fcQColorSpace_setPrimariesPrimariesId(self: pointer, primariesId: cint): void {.importc: "QColorSpace_setPrimaries_primariesId".}
proc fcQColorSpace_setPrimariesWhitePointRedPointGreenPointBluePoint(self: pointer, whitePoint: pointer, redPoint: pointer, greenPoint: pointer, bluePoint: pointer): void {.importc: "QColorSpace_setPrimaries_whitePoint_redPoint_greenPoint_bluePoint".}
proc fcQColorSpace_isValid(self: pointer): bool {.importc: "QColorSpace_isValid".}
proc fcQColorSpace_fromIccProfile(iccProfile: struct_seaqt_string): pointer {.importc: "QColorSpace_fromIccProfile".}
proc fcQColorSpace_iccProfile(self: pointer): struct_seaqt_string {.importc: "QColorSpace_iccProfile".}
proc fcQColorSpace_transformationToColorSpace(self: pointer, colorspace: pointer): pointer {.importc: "QColorSpace_transformationToColorSpace".}
proc fcQColorSpace_ToQVariant(self: pointer): pointer {.importc: "QColorSpace_ToQVariant".}
proc fcQColorSpace_setTransferFunctionTransferFunctionGamma(self: pointer, transferFunction: cint, gamma: float32): void {.importc: "QColorSpace_setTransferFunction_transferFunction_gamma".}
proc fcQColorSpace_withTransferFunctionTransferFunctionGamma(self: pointer, transferFunction: cint, gamma: float32): pointer {.importc: "QColorSpace_withTransferFunction_transferFunction_gamma".}
proc fcQColorSpace_new(): ptr cQColorSpace {.importc: "QColorSpace_new".}
proc fcQColorSpace_new2(namedColorSpace: cint): ptr cQColorSpace {.importc: "QColorSpace_new_namedColorSpace".}
proc fcQColorSpace_new3(primaries: cint, transferFunction: cint): ptr cQColorSpace {.importc: "QColorSpace_new_primaries_transferFunction".}
proc fcQColorSpace_new4(primaries: cint, gamma: float32): ptr cQColorSpace {.importc: "QColorSpace_new_primaries_gamma".}
proc fcQColorSpace_new5(whitePoint: pointer, redPoint: pointer, greenPoint: pointer, bluePoint: pointer, transferFunction: cint): ptr cQColorSpace {.importc: "QColorSpace_new_whitePoint_redPoint_greenPoint_bluePoint_transferFunction".}
proc fcQColorSpace_new6(fromVal: pointer): ptr cQColorSpace {.importc: "QColorSpace_new_from".}
proc fcQColorSpace_new7(primaries: cint, transferFunction: cint, gamma: float32): ptr cQColorSpace {.importc: "QColorSpace_new_primaries_transferFunction_gamma".}
proc fcQColorSpace_new8(whitePoint: pointer, redPoint: pointer, greenPoint: pointer, bluePoint: pointer, transferFunction: cint, gamma: float32): ptr cQColorSpace {.importc: "QColorSpace_new_whitePoint_redPoint_greenPoint_bluePoint_transferFunction_gamma".}
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

proc setTransferFunction*(self: gen_qcolorspace_types.QColorSpace, transferFunction: cint): void =
  fcQColorSpace_setTransferFunctionTransferFunction(self.h, cint(transferFunction))

proc withTransferFunction*(self: gen_qcolorspace_types.QColorSpace, transferFunction: cint): gen_qcolorspace_types.QColorSpace =
  gen_qcolorspace_types.QColorSpace(h: fcQColorSpace_withTransferFunctionTransferFunction(self.h, cint(transferFunction)), owned: true)

proc setPrimaries*(self: gen_qcolorspace_types.QColorSpace, primariesId: cint): void =
  fcQColorSpace_setPrimariesPrimariesId(self.h, cint(primariesId))

proc setPrimaries*(self: gen_qcolorspace_types.QColorSpace, whitePoint: gen_qpoint_types.QPointF, redPoint: gen_qpoint_types.QPointF, greenPoint: gen_qpoint_types.QPointF, bluePoint: gen_qpoint_types.QPointF): void =
  fcQColorSpace_setPrimariesWhitePointRedPointGreenPointBluePoint(self.h, whitePoint.h, redPoint.h, greenPoint.h, bluePoint.h)

proc isValid*(self: gen_qcolorspace_types.QColorSpace): bool =
  fcQColorSpace_isValid(self.h)

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
    primaries: cint, transferFunction: cint): gen_qcolorspace_types.QColorSpace =
  let tmp = gen_qcolorspace_types.QColorSpace(h: fcQColorSpace_new3(cint(primaries), cint(transferFunction)), owned: true)
  tmp
proc create*(T: type gen_qcolorspace_types.QColorSpace,
    primaries: cint, gamma: float32): gen_qcolorspace_types.QColorSpace =
  let tmp = gen_qcolorspace_types.QColorSpace(h: fcQColorSpace_new4(cint(primaries), gamma), owned: true)
  tmp
proc create*(T: type gen_qcolorspace_types.QColorSpace,
    whitePoint: gen_qpoint_types.QPointF, redPoint: gen_qpoint_types.QPointF, greenPoint: gen_qpoint_types.QPointF, bluePoint: gen_qpoint_types.QPointF, transferFunction: cint): gen_qcolorspace_types.QColorSpace =
  let tmp = gen_qcolorspace_types.QColorSpace(h: fcQColorSpace_new5(whitePoint.h, redPoint.h, greenPoint.h, bluePoint.h, cint(transferFunction)), owned: true)
  tmp
proc create*(T: type gen_qcolorspace_types.QColorSpace,
    fromVal: gen_qcolorspace_types.QColorSpace): gen_qcolorspace_types.QColorSpace =
  let tmp = gen_qcolorspace_types.QColorSpace(h: fcQColorSpace_new6(fromVal.h), owned: true)
  tmp
proc create*(T: type gen_qcolorspace_types.QColorSpace,
    primaries: cint, transferFunction: cint, gamma: float32): gen_qcolorspace_types.QColorSpace =
  let tmp = gen_qcolorspace_types.QColorSpace(h: fcQColorSpace_new7(cint(primaries), cint(transferFunction), gamma), owned: true)
  tmp
proc create*(T: type gen_qcolorspace_types.QColorSpace,
    whitePoint: gen_qpoint_types.QPointF, redPoint: gen_qpoint_types.QPointF, greenPoint: gen_qpoint_types.QPointF, bluePoint: gen_qpoint_types.QPointF, transferFunction: cint, gamma: float32): gen_qcolorspace_types.QColorSpace =
  let tmp = gen_qcolorspace_types.QColorSpace(h: fcQColorSpace_new8(whitePoint.h, redPoint.h, greenPoint.h, bluePoint.h, cint(transferFunction), gamma), owned: true)
  tmp
proc staticMetaObject*(_: type gen_qcolorspace_types.QColorSpace): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQColorSpace_staticMetaObject())
