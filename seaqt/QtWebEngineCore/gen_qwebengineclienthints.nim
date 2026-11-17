import ./qtwebenginecore_pkg

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


{.compile("gen_qwebengineclienthints.cpp", QtWebEngineCoreCFlags).}


import ./gen_qwebengineclienthints_types
export gen_qwebengineclienthints_types

import
  ../QtCore/gen_qmetaobject_types,
  ../QtCore/gen_qobject,
  ../QtCore/gen_qobjectdefs_types,
  ../QtCore/gen_qvariant_types,
  std/tables
export
  gen_qmetaobject_types,
  gen_qobject,
  gen_qobjectdefs_types,
  gen_qvariant_types

type cQWebEngineClientHints*{.exportc: "QWebEngineClientHints", incompleteStruct.} = object

proc fcQWebEngineClientHints_metaObject(self: pointer): pointer {.importc: "QWebEngineClientHints_metaObject".}
proc fcQWebEngineClientHints_metacast(self: pointer, param1: cstring): pointer {.importc: "QWebEngineClientHints_metacast".}
proc fcQWebEngineClientHints_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QWebEngineClientHints_metacall".}
proc fcQWebEngineClientHints_trS(s: cstring): struct_seaqt_string {.importc: "QWebEngineClientHints_tr_s".}
proc fcQWebEngineClientHints_arch(self: pointer): struct_seaqt_string {.importc: "QWebEngineClientHints_arch".}
proc fcQWebEngineClientHints_platform(self: pointer): struct_seaqt_string {.importc: "QWebEngineClientHints_platform".}
proc fcQWebEngineClientHints_model(self: pointer): struct_seaqt_string {.importc: "QWebEngineClientHints_model".}
proc fcQWebEngineClientHints_isMobile(self: pointer): bool {.importc: "QWebEngineClientHints_isMobile".}
proc fcQWebEngineClientHints_fullVersion(self: pointer): struct_seaqt_string {.importc: "QWebEngineClientHints_fullVersion".}
proc fcQWebEngineClientHints_platformVersion(self: pointer): struct_seaqt_string {.importc: "QWebEngineClientHints_platformVersion".}
proc fcQWebEngineClientHints_bitness(self: pointer): struct_seaqt_string {.importc: "QWebEngineClientHints_bitness".}
proc fcQWebEngineClientHints_fullVersionList(self: pointer): struct_seaqt_map {.importc: "QWebEngineClientHints_fullVersionList".}
proc fcQWebEngineClientHints_isWow64(self: pointer): bool {.importc: "QWebEngineClientHints_isWow64".}
proc fcQWebEngineClientHints_formFactors(self: pointer): struct_seaqt_array {.importc: "QWebEngineClientHints_formFactors".}
proc fcQWebEngineClientHints_setArch(self: pointer, arch: struct_seaqt_string): void {.importc: "QWebEngineClientHints_setArch".}
proc fcQWebEngineClientHints_setPlatform(self: pointer, platform: struct_seaqt_string): void {.importc: "QWebEngineClientHints_setPlatform".}
proc fcQWebEngineClientHints_setModel(self: pointer, model: struct_seaqt_string): void {.importc: "QWebEngineClientHints_setModel".}
proc fcQWebEngineClientHints_setIsMobile(self: pointer, isMobile: bool): void {.importc: "QWebEngineClientHints_setIsMobile".}
proc fcQWebEngineClientHints_setFullVersion(self: pointer, fullVersion: struct_seaqt_string): void {.importc: "QWebEngineClientHints_setFullVersion".}
proc fcQWebEngineClientHints_setPlatformVersion(self: pointer, platformVersion: struct_seaqt_string): void {.importc: "QWebEngineClientHints_setPlatformVersion".}
proc fcQWebEngineClientHints_setBitness(self: pointer, bitness: struct_seaqt_string): void {.importc: "QWebEngineClientHints_setBitness".}
proc fcQWebEngineClientHints_setFullVersionList(self: pointer, fullVersionList: struct_seaqt_map): void {.importc: "QWebEngineClientHints_setFullVersionList".}
proc fcQWebEngineClientHints_setIsWow64(self: pointer, isWow64: bool): void {.importc: "QWebEngineClientHints_setIsWow64".}
proc fcQWebEngineClientHints_setFormFactors(self: pointer, formFactors: struct_seaqt_array): void {.importc: "QWebEngineClientHints_setFormFactors".}
proc fcQWebEngineClientHints_isAllClientHintsEnabled(self: pointer): bool {.importc: "QWebEngineClientHints_isAllClientHintsEnabled".}
proc fcQWebEngineClientHints_setAllClientHintsEnabled(self: pointer, enabled: bool): void {.importc: "QWebEngineClientHints_setAllClientHintsEnabled".}
proc fcQWebEngineClientHints_resetAll(self: pointer): void {.importc: "QWebEngineClientHints_resetAll".}
proc fcQWebEngineClientHints_trSC(s: cstring, c: cstring): struct_seaqt_string {.importc: "QWebEngineClientHints_tr_s_c".}
proc fcQWebEngineClientHints_trSCN(s: cstring, c: cstring, n: cint): struct_seaqt_string {.importc: "QWebEngineClientHints_tr_s_c_n".}
proc fcQWebEngineClientHints_protectedbase_sender(self: pointer): pointer {.importc: "QWebEngineClientHints_protectedbase_sender".}
proc fcQWebEngineClientHints_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QWebEngineClientHints_protectedbase_senderSignalIndex".}
proc fcQWebEngineClientHints_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QWebEngineClientHints_protectedbase_receivers".}
proc fcQWebEngineClientHints_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QWebEngineClientHints_protectedbase_isSignalConnected".}
proc fcQWebEngineClientHints_staticMetaObject(): pointer {.importc: "QWebEngineClientHints_staticMetaObject".}

proc metaObject*(self: gen_qwebengineclienthints_types.QWebEngineClientHints): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQWebEngineClientHints_metaObject(self.h), owned: false)

proc metacast*(self: gen_qwebengineclienthints_types.QWebEngineClientHints, param1: cstring): pointer =
  fcQWebEngineClientHints_metacast(self.h, param1)

proc metacall*(self: gen_qwebengineclienthints_types.QWebEngineClientHints, param1: cint, param2: cint, param3: pointer): cint =
  fcQWebEngineClientHints_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qwebengineclienthints_types.QWebEngineClientHints, s: cstring): string =
  let v_ms = fcQWebEngineClientHints_trS(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc arch*(self: gen_qwebengineclienthints_types.QWebEngineClientHints): string =
  let v_ms = fcQWebEngineClientHints_arch(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc platform*(self: gen_qwebengineclienthints_types.QWebEngineClientHints): string =
  let v_ms = fcQWebEngineClientHints_platform(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc model*(self: gen_qwebengineclienthints_types.QWebEngineClientHints): string =
  let v_ms = fcQWebEngineClientHints_model(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc isMobile*(self: gen_qwebengineclienthints_types.QWebEngineClientHints): bool =
  fcQWebEngineClientHints_isMobile(self.h)

proc fullVersion*(self: gen_qwebengineclienthints_types.QWebEngineClientHints): string =
  let v_ms = fcQWebEngineClientHints_fullVersion(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc platformVersion*(self: gen_qwebengineclienthints_types.QWebEngineClientHints): string =
  let v_ms = fcQWebEngineClientHints_platformVersion(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc bitness*(self: gen_qwebengineclienthints_types.QWebEngineClientHints): string =
  let v_ms = fcQWebEngineClientHints_bitness(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc fullVersionList*(self: gen_qwebengineclienthints_types.QWebEngineClientHints): Table[string,gen_qvariant_types.QVariant] =
  var v_mm = fcQWebEngineClientHints_fullVersionList(self.h)
  var vx_ret: Table[string, gen_qvariant_types.QVariant]
  var v_Keys = cast[ptr UncheckedArray[struct_seaqt_string]](v_mm.keys)
  var v_Values = cast[ptr UncheckedArray[pointer]](v_mm.values)
  for i in 0..<v_mm.len:
    let vx_mapkey_ms = v_Keys[i]
    let vx_mapkeyx_ret = string.fromBytes(vx_mapkey_ms)
    c_free(vx_mapkey_ms.data)
    var v_entry_Key = vx_mapkeyx_ret

    var v_entry_Value = gen_qvariant_types.QVariant(h: v_Values[i], owned: true)

    vx_ret[v_entry_Key] = v_entry_Value
  c_free(v_mm.keys)
  c_free(v_mm.values)
  vx_ret

proc isWow64*(self: gen_qwebengineclienthints_types.QWebEngineClientHints): bool =
  fcQWebEngineClientHints_isWow64(self.h)

proc formFactors*(self: gen_qwebengineclienthints_types.QWebEngineClientHints): seq[string] =
  var v_ma = fcQWebEngineClientHints_formFactors(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_seaqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(vx_lv_ms)
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  c_free(v_ma.data)
  vx_ret

proc setArch*(self: gen_qwebengineclienthints_types.QWebEngineClientHints, arch: openArray[char]): void =
  fcQWebEngineClientHints_setArch(self.h, struct_seaqt_string(data: if len(arch) > 0: addr arch[0] else: nil, len: csize_t(len(arch))))

proc setPlatform*(self: gen_qwebengineclienthints_types.QWebEngineClientHints, platform: openArray[char]): void =
  fcQWebEngineClientHints_setPlatform(self.h, struct_seaqt_string(data: if len(platform) > 0: addr platform[0] else: nil, len: csize_t(len(platform))))

proc setModel*(self: gen_qwebengineclienthints_types.QWebEngineClientHints, model: openArray[char]): void =
  fcQWebEngineClientHints_setModel(self.h, struct_seaqt_string(data: if len(model) > 0: addr model[0] else: nil, len: csize_t(len(model))))

proc setIsMobile*(self: gen_qwebengineclienthints_types.QWebEngineClientHints, isMobile: bool): void =
  fcQWebEngineClientHints_setIsMobile(self.h, isMobile)

proc setFullVersion*(self: gen_qwebengineclienthints_types.QWebEngineClientHints, fullVersion: openArray[char]): void =
  fcQWebEngineClientHints_setFullVersion(self.h, struct_seaqt_string(data: if len(fullVersion) > 0: addr fullVersion[0] else: nil, len: csize_t(len(fullVersion))))

proc setPlatformVersion*(self: gen_qwebengineclienthints_types.QWebEngineClientHints, platformVersion: openArray[char]): void =
  fcQWebEngineClientHints_setPlatformVersion(self.h, struct_seaqt_string(data: if len(platformVersion) > 0: addr platformVersion[0] else: nil, len: csize_t(len(platformVersion))))

proc setBitness*(self: gen_qwebengineclienthints_types.QWebEngineClientHints, bitness: openArray[char]): void =
  fcQWebEngineClientHints_setBitness(self.h, struct_seaqt_string(data: if len(bitness) > 0: addr bitness[0] else: nil, len: csize_t(len(bitness))))

proc setFullVersionList*(self: gen_qwebengineclienthints_types.QWebEngineClientHints, fullVersionList: Table[string,gen_qvariant_types.QVariant]): void =
  var fullVersionList_Keys_CArray = newSeq[struct_seaqt_string](len(fullVersionList))
  var fullVersionList_Values_CArray = newSeq[pointer](len(fullVersionList))
  var fullVersionList_ctr = 0
  for fullVersionList_k in fullVersionList.keys():
    fullVersionList_Keys_CArray[fullVersionList_ctr] = struct_seaqt_string(data: if len(fullVersionList_k) > 0: addr fullVersionList_k[0] else: nil, len: csize_t(len(fullVersionList_k)))
    fullVersionList_ctr += 1
  fullVersionList_ctr = 0
  for fullVersionList_v in fullVersionList.values():
    fullVersionList_Values_CArray[fullVersionList_ctr] = fullVersionList_v.h
    fullVersionList_ctr += 1

  fcQWebEngineClientHints_setFullVersionList(self.h, struct_seaqt_map(len: csize_t(len(fullVersionList)),keys: if len(fullVersionList) == 0: nil else: addr(fullVersionList_Keys_CArray[0]), values: if len(fullVersionList) == 0: nil else: addr(fullVersionList_Values_CArray[0]),))

proc setIsWow64*(self: gen_qwebengineclienthints_types.QWebEngineClientHints, isWow64: bool): void =
  fcQWebEngineClientHints_setIsWow64(self.h, isWow64)

proc setFormFactors*(self: gen_qwebengineclienthints_types.QWebEngineClientHints, formFactors: openArray[string]): void =
  var formFactors_CArray = newSeq[struct_seaqt_string](len(formFactors))
  for i in 0..<len(formFactors):
    formFactors_CArray[i] = struct_seaqt_string(data: if len(formFactors[i]) > 0: addr formFactors[i][0] else: nil, len: csize_t(len(formFactors[i])))

  fcQWebEngineClientHints_setFormFactors(self.h, struct_seaqt_array(len: csize_t(len(formFactors)), data: if len(formFactors) == 0: nil else: addr(formFactors_CArray[0])))

proc isAllClientHintsEnabled*(self: gen_qwebengineclienthints_types.QWebEngineClientHints): bool =
  fcQWebEngineClientHints_isAllClientHintsEnabled(self.h)

proc setAllClientHintsEnabled*(self: gen_qwebengineclienthints_types.QWebEngineClientHints, enabled: bool): void =
  fcQWebEngineClientHints_setAllClientHintsEnabled(self.h, enabled)

proc resetAll*(self: gen_qwebengineclienthints_types.QWebEngineClientHints): void =
  fcQWebEngineClientHints_resetAll(self.h)

proc tr*(_: type gen_qwebengineclienthints_types.QWebEngineClientHints, s: cstring, c: cstring): string =
  let v_ms = fcQWebEngineClientHints_trSC(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qwebengineclienthints_types.QWebEngineClientHints, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQWebEngineClientHints_trSCN(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc sender*(self: gen_qwebengineclienthints_types.QWebEngineClientHints): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQWebEngineClientHints_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qwebengineclienthints_types.QWebEngineClientHints): cint =
  fcQWebEngineClientHints_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qwebengineclienthints_types.QWebEngineClientHints, signal: cstring): cint =
  fcQWebEngineClientHints_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qwebengineclienthints_types.QWebEngineClientHints, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQWebEngineClientHints_protectedbase_isSignalConnected(self.h, signal.h)

proc staticMetaObject*(_: type gen_qwebengineclienthints_types.QWebEngineClientHints): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQWebEngineClientHints_staticMetaObject())
