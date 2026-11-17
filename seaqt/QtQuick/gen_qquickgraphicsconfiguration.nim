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


import ./gen_qquickgraphicsconfiguration_types
export gen_qquickgraphicsconfiguration_types


type cQQuickGraphicsConfiguration*{.exportc: "QQuickGraphicsConfiguration", incompleteStruct.} = object

proc fcQQuickGraphicsConfiguration_operatorAssign(self: pointer, fromVal: pointer): void {.importc: "QQuickGraphicsConfiguration_operatorAssign".}
proc fcQQuickGraphicsConfiguration_preferredInstanceExtensions(): struct_seaqt_array {.importc: "QQuickGraphicsConfiguration_preferredInstanceExtensions".}
proc fcQQuickGraphicsConfiguration_setDeviceExtensions(self: pointer, extensions: struct_seaqt_array): void {.importc: "QQuickGraphicsConfiguration_setDeviceExtensions".}
proc fcQQuickGraphicsConfiguration_deviceExtensions(self: pointer): struct_seaqt_array {.importc: "QQuickGraphicsConfiguration_deviceExtensions".}
proc fcQQuickGraphicsConfiguration_setDepthBufferFor2D(self: pointer, enable: bool): void {.importc: "QQuickGraphicsConfiguration_setDepthBufferFor2D".}
proc fcQQuickGraphicsConfiguration_isDepthBufferEnabledFor2D(self: pointer): bool {.importc: "QQuickGraphicsConfiguration_isDepthBufferEnabledFor2D".}
proc fcQQuickGraphicsConfiguration_setDebugLayer(self: pointer, enable: bool): void {.importc: "QQuickGraphicsConfiguration_setDebugLayer".}
proc fcQQuickGraphicsConfiguration_isDebugLayerEnabled(self: pointer): bool {.importc: "QQuickGraphicsConfiguration_isDebugLayerEnabled".}
proc fcQQuickGraphicsConfiguration_setDebugMarkers(self: pointer, enable: bool): void {.importc: "QQuickGraphicsConfiguration_setDebugMarkers".}
proc fcQQuickGraphicsConfiguration_isDebugMarkersEnabled(self: pointer): bool {.importc: "QQuickGraphicsConfiguration_isDebugMarkersEnabled".}
proc fcQQuickGraphicsConfiguration_setTimestamps(self: pointer, enable: bool): void {.importc: "QQuickGraphicsConfiguration_setTimestamps".}
proc fcQQuickGraphicsConfiguration_timestampsEnabled(self: pointer): bool {.importc: "QQuickGraphicsConfiguration_timestampsEnabled".}
proc fcQQuickGraphicsConfiguration_setPreferSoftwareDevice(self: pointer, enable: bool): void {.importc: "QQuickGraphicsConfiguration_setPreferSoftwareDevice".}
proc fcQQuickGraphicsConfiguration_prefersSoftwareDevice(self: pointer): bool {.importc: "QQuickGraphicsConfiguration_prefersSoftwareDevice".}
proc fcQQuickGraphicsConfiguration_setAutomaticPipelineCache(self: pointer, enable: bool): void {.importc: "QQuickGraphicsConfiguration_setAutomaticPipelineCache".}
proc fcQQuickGraphicsConfiguration_isAutomaticPipelineCacheEnabled(self: pointer): bool {.importc: "QQuickGraphicsConfiguration_isAutomaticPipelineCacheEnabled".}
proc fcQQuickGraphicsConfiguration_setPipelineCacheSaveFile(self: pointer, filename: struct_seaqt_string): void {.importc: "QQuickGraphicsConfiguration_setPipelineCacheSaveFile".}
proc fcQQuickGraphicsConfiguration_pipelineCacheSaveFile(self: pointer): struct_seaqt_string {.importc: "QQuickGraphicsConfiguration_pipelineCacheSaveFile".}
proc fcQQuickGraphicsConfiguration_setPipelineCacheLoadFile(self: pointer, filename: struct_seaqt_string): void {.importc: "QQuickGraphicsConfiguration_setPipelineCacheLoadFile".}
proc fcQQuickGraphicsConfiguration_pipelineCacheLoadFile(self: pointer): struct_seaqt_string {.importc: "QQuickGraphicsConfiguration_pipelineCacheLoadFile".}
proc fcQQuickGraphicsConfiguration_new(): ptr cQQuickGraphicsConfiguration {.importc: "QQuickGraphicsConfiguration_new".}
proc fcQQuickGraphicsConfiguration_new2(fromVal: pointer): ptr cQQuickGraphicsConfiguration {.importc: "QQuickGraphicsConfiguration_new_from".}

proc operatorAssign*(self: gen_qquickgraphicsconfiguration_types.QQuickGraphicsConfiguration, fromVal: gen_qquickgraphicsconfiguration_types.QQuickGraphicsConfiguration): void =
  fcQQuickGraphicsConfiguration_operatorAssign(self.h, fromVal.h)

proc preferredInstanceExtensions*(_: type gen_qquickgraphicsconfiguration_types.QQuickGraphicsConfiguration): seq[seq[byte]] =
  var v_ma = fcQQuickGraphicsConfiguration_preferredInstanceExtensions()
  var vx_ret = newSeq[seq[byte]](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_seaqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    var vx_lv_bytearray = v_outCast[i]
    var vx_lvx_ret = @(toOpenArray(cast[ptr UncheckedArray[byte]](vx_lv_bytearray.data), 0, int(vx_lv_bytearray.len)-1))
    c_free(vx_lv_bytearray.data)
    vx_ret[i] = vx_lvx_ret
  c_free(v_ma.data)
  vx_ret

proc setDeviceExtensions*(self: gen_qquickgraphicsconfiguration_types.QQuickGraphicsConfiguration, extensions: openArray[seq[byte]]): void =
  var extensions_CArray = newSeq[struct_seaqt_string](len(extensions))
  for i in 0..<len(extensions):
    extensions_CArray[i] = struct_seaqt_string(data: if len(extensions[i]) > 0: addr extensions[i][0] else: nil, len: csize_t(len(extensions[i])))

  fcQQuickGraphicsConfiguration_setDeviceExtensions(self.h, struct_seaqt_array(len: csize_t(len(extensions)), data: if len(extensions) == 0: nil else: addr(extensions_CArray[0])))

proc deviceExtensions*(self: gen_qquickgraphicsconfiguration_types.QQuickGraphicsConfiguration): seq[seq[byte]] =
  var v_ma = fcQQuickGraphicsConfiguration_deviceExtensions(self.h)
  var vx_ret = newSeq[seq[byte]](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_seaqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    var vx_lv_bytearray = v_outCast[i]
    var vx_lvx_ret = @(toOpenArray(cast[ptr UncheckedArray[byte]](vx_lv_bytearray.data), 0, int(vx_lv_bytearray.len)-1))
    c_free(vx_lv_bytearray.data)
    vx_ret[i] = vx_lvx_ret
  c_free(v_ma.data)
  vx_ret

proc setDepthBufferFor2D*(self: gen_qquickgraphicsconfiguration_types.QQuickGraphicsConfiguration, enable: bool): void =
  fcQQuickGraphicsConfiguration_setDepthBufferFor2D(self.h, enable)

proc isDepthBufferEnabledFor2D*(self: gen_qquickgraphicsconfiguration_types.QQuickGraphicsConfiguration): bool =
  fcQQuickGraphicsConfiguration_isDepthBufferEnabledFor2D(self.h)

proc setDebugLayer*(self: gen_qquickgraphicsconfiguration_types.QQuickGraphicsConfiguration, enable: bool): void =
  fcQQuickGraphicsConfiguration_setDebugLayer(self.h, enable)

proc isDebugLayerEnabled*(self: gen_qquickgraphicsconfiguration_types.QQuickGraphicsConfiguration): bool =
  fcQQuickGraphicsConfiguration_isDebugLayerEnabled(self.h)

proc setDebugMarkers*(self: gen_qquickgraphicsconfiguration_types.QQuickGraphicsConfiguration, enable: bool): void =
  fcQQuickGraphicsConfiguration_setDebugMarkers(self.h, enable)

proc isDebugMarkersEnabled*(self: gen_qquickgraphicsconfiguration_types.QQuickGraphicsConfiguration): bool =
  fcQQuickGraphicsConfiguration_isDebugMarkersEnabled(self.h)

proc setTimestamps*(self: gen_qquickgraphicsconfiguration_types.QQuickGraphicsConfiguration, enable: bool): void =
  fcQQuickGraphicsConfiguration_setTimestamps(self.h, enable)

proc timestampsEnabled*(self: gen_qquickgraphicsconfiguration_types.QQuickGraphicsConfiguration): bool =
  fcQQuickGraphicsConfiguration_timestampsEnabled(self.h)

proc setPreferSoftwareDevice*(self: gen_qquickgraphicsconfiguration_types.QQuickGraphicsConfiguration, enable: bool): void =
  fcQQuickGraphicsConfiguration_setPreferSoftwareDevice(self.h, enable)

proc prefersSoftwareDevice*(self: gen_qquickgraphicsconfiguration_types.QQuickGraphicsConfiguration): bool =
  fcQQuickGraphicsConfiguration_prefersSoftwareDevice(self.h)

proc setAutomaticPipelineCache*(self: gen_qquickgraphicsconfiguration_types.QQuickGraphicsConfiguration, enable: bool): void =
  fcQQuickGraphicsConfiguration_setAutomaticPipelineCache(self.h, enable)

proc isAutomaticPipelineCacheEnabled*(self: gen_qquickgraphicsconfiguration_types.QQuickGraphicsConfiguration): bool =
  fcQQuickGraphicsConfiguration_isAutomaticPipelineCacheEnabled(self.h)

proc setPipelineCacheSaveFile*(self: gen_qquickgraphicsconfiguration_types.QQuickGraphicsConfiguration, filename: openArray[char]): void =
  fcQQuickGraphicsConfiguration_setPipelineCacheSaveFile(self.h, struct_seaqt_string(data: if len(filename) > 0: addr filename[0] else: nil, len: csize_t(len(filename))))

proc pipelineCacheSaveFile*(self: gen_qquickgraphicsconfiguration_types.QQuickGraphicsConfiguration): string =
  let v_ms = fcQQuickGraphicsConfiguration_pipelineCacheSaveFile(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc setPipelineCacheLoadFile*(self: gen_qquickgraphicsconfiguration_types.QQuickGraphicsConfiguration, filename: openArray[char]): void =
  fcQQuickGraphicsConfiguration_setPipelineCacheLoadFile(self.h, struct_seaqt_string(data: if len(filename) > 0: addr filename[0] else: nil, len: csize_t(len(filename))))

proc pipelineCacheLoadFile*(self: gen_qquickgraphicsconfiguration_types.QQuickGraphicsConfiguration): string =
  let v_ms = fcQQuickGraphicsConfiguration_pipelineCacheLoadFile(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc create*(T: type gen_qquickgraphicsconfiguration_types.QQuickGraphicsConfiguration): gen_qquickgraphicsconfiguration_types.QQuickGraphicsConfiguration =
  let tmp = gen_qquickgraphicsconfiguration_types.QQuickGraphicsConfiguration(h: fcQQuickGraphicsConfiguration_new(), owned: true)
  tmp
proc create*(T: type gen_qquickgraphicsconfiguration_types.QQuickGraphicsConfiguration,
    fromVal: gen_qquickgraphicsconfiguration_types.QQuickGraphicsConfiguration): gen_qquickgraphicsconfiguration_types.QQuickGraphicsConfiguration =
  let tmp = gen_qquickgraphicsconfiguration_types.QQuickGraphicsConfiguration(h: fcQQuickGraphicsConfiguration_new2(fromVal.h), owned: true)
  tmp
