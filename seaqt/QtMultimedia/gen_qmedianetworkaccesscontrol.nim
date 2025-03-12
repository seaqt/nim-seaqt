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

const cflags = gorge("pkg-config --cflags Qt5Multimedia") & " -fPIC"
{.compile("gen_qmedianetworkaccesscontrol.cpp", cflags).}


import ./gen_qmedianetworkaccesscontrol_types
export gen_qmedianetworkaccesscontrol_types

import
  ../QtCore/gen_qmetaobject_types,
  ../QtCore/gen_qobject_types,
  ../QtCore/gen_qobjectdefs_types,
  ../QtNetwork/gen_qnetworkconfiguration_types,
  ./gen_qmediacontrol
export
  gen_qmetaobject_types,
  gen_qobject_types,
  gen_qobjectdefs_types,
  gen_qnetworkconfiguration_types,
  gen_qmediacontrol

type cQMediaNetworkAccessControl*{.exportc: "QMediaNetworkAccessControl", incompleteStruct.} = object

proc fcQMediaNetworkAccessControl_metaObject(self: pointer): pointer {.importc: "QMediaNetworkAccessControl_metaObject".}
proc fcQMediaNetworkAccessControl_metacast(self: pointer, param1: cstring): pointer {.importc: "QMediaNetworkAccessControl_metacast".}
proc fcQMediaNetworkAccessControl_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QMediaNetworkAccessControl_metacall".}
proc fcQMediaNetworkAccessControl_tr(s: cstring): struct_miqt_string {.importc: "QMediaNetworkAccessControl_tr".}
proc fcQMediaNetworkAccessControl_trUtf8(s: cstring): struct_miqt_string {.importc: "QMediaNetworkAccessControl_trUtf8".}
proc fcQMediaNetworkAccessControl_setConfigurations(self: pointer, configuration: struct_miqt_array): void {.importc: "QMediaNetworkAccessControl_setConfigurations".}
proc fcQMediaNetworkAccessControl_currentConfiguration(self: pointer): pointer {.importc: "QMediaNetworkAccessControl_currentConfiguration".}
proc fcQMediaNetworkAccessControl_configurationChanged(self: pointer, configuration: pointer): void {.importc: "QMediaNetworkAccessControl_configurationChanged".}
proc fcQMediaNetworkAccessControl_connect_configurationChanged(self: pointer, slot: int, callback: proc (slot: int, configuration: pointer) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QMediaNetworkAccessControl_connect_configurationChanged".}
proc fcQMediaNetworkAccessControl_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QMediaNetworkAccessControl_tr2".}
proc fcQMediaNetworkAccessControl_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QMediaNetworkAccessControl_tr3".}
proc fcQMediaNetworkAccessControl_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QMediaNetworkAccessControl_trUtf82".}
proc fcQMediaNetworkAccessControl_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QMediaNetworkAccessControl_trUtf83".}
proc fcQMediaNetworkAccessControl_protectedbase_sender(self: pointer): pointer {.importc: "QMediaNetworkAccessControl_protectedbase_sender".}
proc fcQMediaNetworkAccessControl_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QMediaNetworkAccessControl_protectedbase_senderSignalIndex".}
proc fcQMediaNetworkAccessControl_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QMediaNetworkAccessControl_protectedbase_receivers".}
proc fcQMediaNetworkAccessControl_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QMediaNetworkAccessControl_protectedbase_isSignalConnected".}
proc fcQMediaNetworkAccessControl_staticMetaObject(): pointer {.importc: "QMediaNetworkAccessControl_staticMetaObject".}

proc metaObject*(self: gen_qmedianetworkaccesscontrol_types.QMediaNetworkAccessControl): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQMediaNetworkAccessControl_metaObject(self.h), owned: false)

proc metacast*(self: gen_qmedianetworkaccesscontrol_types.QMediaNetworkAccessControl, param1: cstring): pointer =
  fcQMediaNetworkAccessControl_metacast(self.h, param1)

proc metacall*(self: gen_qmedianetworkaccesscontrol_types.QMediaNetworkAccessControl, param1: cint, param2: cint, param3: pointer): cint =
  fcQMediaNetworkAccessControl_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qmedianetworkaccesscontrol_types.QMediaNetworkAccessControl, s: cstring): string =
  let v_ms = fcQMediaNetworkAccessControl_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qmedianetworkaccesscontrol_types.QMediaNetworkAccessControl, s: cstring): string =
  let v_ms = fcQMediaNetworkAccessControl_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setConfigurations*(self: gen_qmedianetworkaccesscontrol_types.QMediaNetworkAccessControl, configuration: seq[gen_qnetworkconfiguration_types.QNetworkConfiguration]): void =
  var configuration_CArray = newSeq[pointer](len(configuration))
  for i in 0..<len(configuration):
    configuration_CArray[i] = configuration[i].h

  fcQMediaNetworkAccessControl_setConfigurations(self.h, struct_miqt_array(len: csize_t(len(configuration)), data: if len(configuration) == 0: nil else: addr(configuration_CArray[0])))

proc currentConfiguration*(self: gen_qmedianetworkaccesscontrol_types.QMediaNetworkAccessControl): gen_qnetworkconfiguration_types.QNetworkConfiguration =
  gen_qnetworkconfiguration_types.QNetworkConfiguration(h: fcQMediaNetworkAccessControl_currentConfiguration(self.h), owned: true)

proc configurationChanged*(self: gen_qmedianetworkaccesscontrol_types.QMediaNetworkAccessControl, configuration: gen_qnetworkconfiguration_types.QNetworkConfiguration): void =
  fcQMediaNetworkAccessControl_configurationChanged(self.h, configuration.h)

type QMediaNetworkAccessControlconfigurationChangedSlot* = proc(configuration: gen_qnetworkconfiguration_types.QNetworkConfiguration)
proc cQMediaNetworkAccessControl_slot_callback_configurationChanged(slot: int, configuration: pointer) {.cdecl.} =
  let nimfunc = cast[ptr QMediaNetworkAccessControlconfigurationChangedSlot](cast[pointer](slot))
  let slotval1 = gen_qnetworkconfiguration_types.QNetworkConfiguration(h: configuration, owned: false)

  nimfunc[](slotval1)

proc cQMediaNetworkAccessControl_slot_callback_configurationChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QMediaNetworkAccessControlconfigurationChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onconfigurationChanged*(self: gen_qmedianetworkaccesscontrol_types.QMediaNetworkAccessControl, slot: QMediaNetworkAccessControlconfigurationChangedSlot) =
  var tmp = new QMediaNetworkAccessControlconfigurationChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQMediaNetworkAccessControl_connect_configurationChanged(self.h, cast[int](addr tmp[]), cQMediaNetworkAccessControl_slot_callback_configurationChanged, cQMediaNetworkAccessControl_slot_callback_configurationChanged_release)

proc tr*(_: type gen_qmedianetworkaccesscontrol_types.QMediaNetworkAccessControl, s: cstring, c: cstring): string =
  let v_ms = fcQMediaNetworkAccessControl_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qmedianetworkaccesscontrol_types.QMediaNetworkAccessControl, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQMediaNetworkAccessControl_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qmedianetworkaccesscontrol_types.QMediaNetworkAccessControl, s: cstring, c: cstring): string =
  let v_ms = fcQMediaNetworkAccessControl_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qmedianetworkaccesscontrol_types.QMediaNetworkAccessControl, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQMediaNetworkAccessControl_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc sender*(self: gen_qmedianetworkaccesscontrol_types.QMediaNetworkAccessControl): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQMediaNetworkAccessControl_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qmedianetworkaccesscontrol_types.QMediaNetworkAccessControl): cint =
  fcQMediaNetworkAccessControl_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qmedianetworkaccesscontrol_types.QMediaNetworkAccessControl, signal: cstring): cint =
  fcQMediaNetworkAccessControl_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qmedianetworkaccesscontrol_types.QMediaNetworkAccessControl, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQMediaNetworkAccessControl_protectedbase_isSignalConnected(self.h, signal.h)

proc staticMetaObject*(_: type gen_qmedianetworkaccesscontrol_types.QMediaNetworkAccessControl): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQMediaNetworkAccessControl_staticMetaObject())
