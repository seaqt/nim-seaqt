import ./qtmultimedia_pkg

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


import ./gen_qcameraviewfindersettings_types
export gen_qcameraviewfindersettings_types

import
  ../QtCore/gen_qsize_types
export
  gen_qsize_types

type cQCameraViewfinderSettings*{.exportc: "QCameraViewfinderSettings", incompleteStruct.} = object

proc fcQCameraViewfinderSettings_operatorAssign(self: pointer, fromVal: pointer): void {.importc: "QCameraViewfinderSettings_operatorAssign".}
proc fcQCameraViewfinderSettings_swap(self: pointer, other: pointer): void {.importc: "QCameraViewfinderSettings_swap".}
proc fcQCameraViewfinderSettings_isNull(self: pointer): bool {.importc: "QCameraViewfinderSettings_isNull".}
proc fcQCameraViewfinderSettings_resolution(self: pointer): pointer {.importc: "QCameraViewfinderSettings_resolution".}
proc fcQCameraViewfinderSettings_setResolutionResolution(self: pointer, resolution: pointer): void {.importc: "QCameraViewfinderSettings_setResolution_resolution".}
proc fcQCameraViewfinderSettings_setResolutionWidthHeight(self: pointer, width: cint, height: cint): void {.importc: "QCameraViewfinderSettings_setResolution_width_height".}
proc fcQCameraViewfinderSettings_minimumFrameRate(self: pointer): float64 {.importc: "QCameraViewfinderSettings_minimumFrameRate".}
proc fcQCameraViewfinderSettings_setMinimumFrameRate(self: pointer, rate: float64): void {.importc: "QCameraViewfinderSettings_setMinimumFrameRate".}
proc fcQCameraViewfinderSettings_maximumFrameRate(self: pointer): float64 {.importc: "QCameraViewfinderSettings_maximumFrameRate".}
proc fcQCameraViewfinderSettings_setMaximumFrameRate(self: pointer, rate: float64): void {.importc: "QCameraViewfinderSettings_setMaximumFrameRate".}
proc fcQCameraViewfinderSettings_pixelFormat(self: pointer): cint {.importc: "QCameraViewfinderSettings_pixelFormat".}
proc fcQCameraViewfinderSettings_setPixelFormat(self: pointer, format: cint): void {.importc: "QCameraViewfinderSettings_setPixelFormat".}
proc fcQCameraViewfinderSettings_pixelAspectRatio(self: pointer): pointer {.importc: "QCameraViewfinderSettings_pixelAspectRatio".}
proc fcQCameraViewfinderSettings_setPixelAspectRatioRatio(self: pointer, ratio: pointer): void {.importc: "QCameraViewfinderSettings_setPixelAspectRatio_ratio".}
proc fcQCameraViewfinderSettings_setPixelAspectRatioHorizontalVertical(self: pointer, horizontal: cint, vertical: cint): void {.importc: "QCameraViewfinderSettings_setPixelAspectRatio_horizontal_vertical".}
proc fcQCameraViewfinderSettings_new(): ptr cQCameraViewfinderSettings {.importc: "QCameraViewfinderSettings_new".}
proc fcQCameraViewfinderSettings_new2(fromVal: pointer): ptr cQCameraViewfinderSettings {.importc: "QCameraViewfinderSettings_new_from".}

proc operatorAssign*(self: gen_qcameraviewfindersettings_types.QCameraViewfinderSettings, fromVal: gen_qcameraviewfindersettings_types.QCameraViewfinderSettings): void =
  fcQCameraViewfinderSettings_operatorAssign(self.h, fromVal.h)

proc swap*(self: gen_qcameraviewfindersettings_types.QCameraViewfinderSettings, other: gen_qcameraviewfindersettings_types.QCameraViewfinderSettings): void =
  fcQCameraViewfinderSettings_swap(self.h, other.h)

proc isNull*(self: gen_qcameraviewfindersettings_types.QCameraViewfinderSettings): bool =
  fcQCameraViewfinderSettings_isNull(self.h)

proc resolution*(self: gen_qcameraviewfindersettings_types.QCameraViewfinderSettings): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQCameraViewfinderSettings_resolution(self.h), owned: true)

proc setResolution*(self: gen_qcameraviewfindersettings_types.QCameraViewfinderSettings, resolution: gen_qsize_types.QSize): void =
  fcQCameraViewfinderSettings_setResolutionResolution(self.h, resolution.h)

proc setResolution*(self: gen_qcameraviewfindersettings_types.QCameraViewfinderSettings, width: cint, height: cint): void =
  fcQCameraViewfinderSettings_setResolutionWidthHeight(self.h, width, height)

proc minimumFrameRate*(self: gen_qcameraviewfindersettings_types.QCameraViewfinderSettings): float64 =
  fcQCameraViewfinderSettings_minimumFrameRate(self.h)

proc setMinimumFrameRate*(self: gen_qcameraviewfindersettings_types.QCameraViewfinderSettings, rate: float64): void =
  fcQCameraViewfinderSettings_setMinimumFrameRate(self.h, rate)

proc maximumFrameRate*(self: gen_qcameraviewfindersettings_types.QCameraViewfinderSettings): float64 =
  fcQCameraViewfinderSettings_maximumFrameRate(self.h)

proc setMaximumFrameRate*(self: gen_qcameraviewfindersettings_types.QCameraViewfinderSettings, rate: float64): void =
  fcQCameraViewfinderSettings_setMaximumFrameRate(self.h, rate)

proc pixelFormat*(self: gen_qcameraviewfindersettings_types.QCameraViewfinderSettings): cint =
  cint(fcQCameraViewfinderSettings_pixelFormat(self.h))

proc setPixelFormat*(self: gen_qcameraviewfindersettings_types.QCameraViewfinderSettings, format: cint): void =
  fcQCameraViewfinderSettings_setPixelFormat(self.h, cint(format))

proc pixelAspectRatio*(self: gen_qcameraviewfindersettings_types.QCameraViewfinderSettings): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQCameraViewfinderSettings_pixelAspectRatio(self.h), owned: true)

proc setPixelAspectRatio*(self: gen_qcameraviewfindersettings_types.QCameraViewfinderSettings, ratio: gen_qsize_types.QSize): void =
  fcQCameraViewfinderSettings_setPixelAspectRatioRatio(self.h, ratio.h)

proc setPixelAspectRatio*(self: gen_qcameraviewfindersettings_types.QCameraViewfinderSettings, horizontal: cint, vertical: cint): void =
  fcQCameraViewfinderSettings_setPixelAspectRatioHorizontalVertical(self.h, horizontal, vertical)

proc create*(T: type gen_qcameraviewfindersettings_types.QCameraViewfinderSettings): gen_qcameraviewfindersettings_types.QCameraViewfinderSettings =
  let tmp = gen_qcameraviewfindersettings_types.QCameraViewfinderSettings(h: fcQCameraViewfinderSettings_new(), owned: true)
  tmp
proc create*(T: type gen_qcameraviewfindersettings_types.QCameraViewfinderSettings,
    fromVal: gen_qcameraviewfindersettings_types.QCameraViewfinderSettings): gen_qcameraviewfindersettings_types.QCameraViewfinderSettings =
  let tmp = gen_qcameraviewfindersettings_types.QCameraViewfinderSettings(h: fcQCameraViewfinderSettings_new2(fromVal.h), owned: true)
  tmp
