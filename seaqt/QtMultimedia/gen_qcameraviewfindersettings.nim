import ./Qt5Multimedia_libs

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

const cflags = gorge("pkg-config --cflags Qt5Multimedia")  & " -fPIC"
{.compile("gen_qcameraviewfindersettings.cpp", cflags).}


import ./gen_qcameraviewfindersettings_types
export gen_qcameraviewfindersettings_types

import
  ../QtCore/gen_qsize_types
export
  gen_qsize_types

type cQCameraViewfinderSettings*{.exportc: "QCameraViewfinderSettings", incompleteStruct.} = object

proc fcQCameraViewfinderSettings_operatorAssign(self: pointer, other: pointer): void {.importc: "QCameraViewfinderSettings_operatorAssign".}
proc fcQCameraViewfinderSettings_swap(self: pointer, other: pointer): void {.importc: "QCameraViewfinderSettings_swap".}
proc fcQCameraViewfinderSettings_isNull(self: pointer, ): bool {.importc: "QCameraViewfinderSettings_isNull".}
proc fcQCameraViewfinderSettings_resolution(self: pointer, ): pointer {.importc: "QCameraViewfinderSettings_resolution".}
proc fcQCameraViewfinderSettings_setResolution(self: pointer, resolution: pointer): void {.importc: "QCameraViewfinderSettings_setResolution".}
proc fcQCameraViewfinderSettings_setResolution2(self: pointer, width: cint, height: cint): void {.importc: "QCameraViewfinderSettings_setResolution2".}
proc fcQCameraViewfinderSettings_minimumFrameRate(self: pointer, ): float64 {.importc: "QCameraViewfinderSettings_minimumFrameRate".}
proc fcQCameraViewfinderSettings_setMinimumFrameRate(self: pointer, rate: float64): void {.importc: "QCameraViewfinderSettings_setMinimumFrameRate".}
proc fcQCameraViewfinderSettings_maximumFrameRate(self: pointer, ): float64 {.importc: "QCameraViewfinderSettings_maximumFrameRate".}
proc fcQCameraViewfinderSettings_setMaximumFrameRate(self: pointer, rate: float64): void {.importc: "QCameraViewfinderSettings_setMaximumFrameRate".}
proc fcQCameraViewfinderSettings_pixelFormat(self: pointer, ): cint {.importc: "QCameraViewfinderSettings_pixelFormat".}
proc fcQCameraViewfinderSettings_setPixelFormat(self: pointer, format: cint): void {.importc: "QCameraViewfinderSettings_setPixelFormat".}
proc fcQCameraViewfinderSettings_pixelAspectRatio(self: pointer, ): pointer {.importc: "QCameraViewfinderSettings_pixelAspectRatio".}
proc fcQCameraViewfinderSettings_setPixelAspectRatio(self: pointer, ratio: pointer): void {.importc: "QCameraViewfinderSettings_setPixelAspectRatio".}
proc fcQCameraViewfinderSettings_setPixelAspectRatio2(self: pointer, horizontal: cint, vertical: cint): void {.importc: "QCameraViewfinderSettings_setPixelAspectRatio2".}
proc fcQCameraViewfinderSettings_new(): ptr cQCameraViewfinderSettings {.importc: "QCameraViewfinderSettings_new".}
proc fcQCameraViewfinderSettings_new2(other: pointer): ptr cQCameraViewfinderSettings {.importc: "QCameraViewfinderSettings_new2".}
proc fcQCameraViewfinderSettings_delete(self: pointer) {.importc: "QCameraViewfinderSettings_delete".}

proc operatorAssign*(self: gen_qcameraviewfindersettings_types.QCameraViewfinderSettings, other: gen_qcameraviewfindersettings_types.QCameraViewfinderSettings): void =
  fcQCameraViewfinderSettings_operatorAssign(self.h, other.h)

proc swap*(self: gen_qcameraviewfindersettings_types.QCameraViewfinderSettings, other: gen_qcameraviewfindersettings_types.QCameraViewfinderSettings): void =
  fcQCameraViewfinderSettings_swap(self.h, other.h)

proc isNull*(self: gen_qcameraviewfindersettings_types.QCameraViewfinderSettings, ): bool =
  fcQCameraViewfinderSettings_isNull(self.h)

proc resolution*(self: gen_qcameraviewfindersettings_types.QCameraViewfinderSettings, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQCameraViewfinderSettings_resolution(self.h))

proc setResolution*(self: gen_qcameraviewfindersettings_types.QCameraViewfinderSettings, resolution: gen_qsize_types.QSize): void =
  fcQCameraViewfinderSettings_setResolution(self.h, resolution.h)

proc setResolution*(self: gen_qcameraviewfindersettings_types.QCameraViewfinderSettings, width: cint, height: cint): void =
  fcQCameraViewfinderSettings_setResolution2(self.h, width, height)

proc minimumFrameRate*(self: gen_qcameraviewfindersettings_types.QCameraViewfinderSettings, ): float64 =
  fcQCameraViewfinderSettings_minimumFrameRate(self.h)

proc setMinimumFrameRate*(self: gen_qcameraviewfindersettings_types.QCameraViewfinderSettings, rate: float64): void =
  fcQCameraViewfinderSettings_setMinimumFrameRate(self.h, rate)

proc maximumFrameRate*(self: gen_qcameraviewfindersettings_types.QCameraViewfinderSettings, ): float64 =
  fcQCameraViewfinderSettings_maximumFrameRate(self.h)

proc setMaximumFrameRate*(self: gen_qcameraviewfindersettings_types.QCameraViewfinderSettings, rate: float64): void =
  fcQCameraViewfinderSettings_setMaximumFrameRate(self.h, rate)

proc pixelFormat*(self: gen_qcameraviewfindersettings_types.QCameraViewfinderSettings, ): cint =
  cint(fcQCameraViewfinderSettings_pixelFormat(self.h))

proc setPixelFormat*(self: gen_qcameraviewfindersettings_types.QCameraViewfinderSettings, format: cint): void =
  fcQCameraViewfinderSettings_setPixelFormat(self.h, cint(format))

proc pixelAspectRatio*(self: gen_qcameraviewfindersettings_types.QCameraViewfinderSettings, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQCameraViewfinderSettings_pixelAspectRatio(self.h))

proc setPixelAspectRatio*(self: gen_qcameraviewfindersettings_types.QCameraViewfinderSettings, ratio: gen_qsize_types.QSize): void =
  fcQCameraViewfinderSettings_setPixelAspectRatio(self.h, ratio.h)

proc setPixelAspectRatio*(self: gen_qcameraviewfindersettings_types.QCameraViewfinderSettings, horizontal: cint, vertical: cint): void =
  fcQCameraViewfinderSettings_setPixelAspectRatio2(self.h, horizontal, vertical)

proc create*(T: type gen_qcameraviewfindersettings_types.QCameraViewfinderSettings): gen_qcameraviewfindersettings_types.QCameraViewfinderSettings =
  gen_qcameraviewfindersettings_types.QCameraViewfinderSettings(h: fcQCameraViewfinderSettings_new())

proc create*(T: type gen_qcameraviewfindersettings_types.QCameraViewfinderSettings,
    other: gen_qcameraviewfindersettings_types.QCameraViewfinderSettings): gen_qcameraviewfindersettings_types.QCameraViewfinderSettings =
  gen_qcameraviewfindersettings_types.QCameraViewfinderSettings(h: fcQCameraViewfinderSettings_new2(other.h))

proc delete*(self: gen_qcameraviewfindersettings_types.QCameraViewfinderSettings) =
  fcQCameraViewfinderSettings_delete(self.h)
