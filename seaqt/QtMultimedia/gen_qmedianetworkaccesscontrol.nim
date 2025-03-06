import ./Qt5Multimedia_libs

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

const cflags = gorge("pkg-config --cflags Qt5Multimedia")  & " -fPIC"
{.compile("gen_qmedianetworkaccesscontrol.cpp", cflags).}


import ./gen_qmedianetworkaccesscontrol_types
export gen_qmedianetworkaccesscontrol_types

import
  ../QtCore/gen_qobjectdefs_types,
  ../QtNetwork/gen_qnetworkconfiguration_types,
  ./gen_qmediacontrol
export
  gen_qobjectdefs_types,
  gen_qnetworkconfiguration_types,
  gen_qmediacontrol

type cQMediaNetworkAccessControl*{.exportc: "QMediaNetworkAccessControl", incompleteStruct.} = object

proc fcQMediaNetworkAccessControl_metaObject(self: pointer, ): pointer {.importc: "QMediaNetworkAccessControl_metaObject".}
proc fcQMediaNetworkAccessControl_metacast(self: pointer, param1: cstring): pointer {.importc: "QMediaNetworkAccessControl_metacast".}
proc fcQMediaNetworkAccessControl_tr(s: cstring): struct_miqt_string {.importc: "QMediaNetworkAccessControl_tr".}
proc fcQMediaNetworkAccessControl_trUtf8(s: cstring): struct_miqt_string {.importc: "QMediaNetworkAccessControl_trUtf8".}
proc fcQMediaNetworkAccessControl_setConfigurations(self: pointer, configuration: struct_miqt_array): void {.importc: "QMediaNetworkAccessControl_setConfigurations".}
proc fcQMediaNetworkAccessControl_currentConfiguration(self: pointer, ): pointer {.importc: "QMediaNetworkAccessControl_currentConfiguration".}
proc fcQMediaNetworkAccessControl_configurationChanged(self: pointer, configuration: pointer): void {.importc: "QMediaNetworkAccessControl_configurationChanged".}
proc fcQMediaNetworkAccessControl_connect_configurationChanged(self: pointer, slot: int) {.importc: "QMediaNetworkAccessControl_connect_configurationChanged".}
proc fcQMediaNetworkAccessControl_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QMediaNetworkAccessControl_tr2".}
proc fcQMediaNetworkAccessControl_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QMediaNetworkAccessControl_tr3".}
proc fcQMediaNetworkAccessControl_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QMediaNetworkAccessControl_trUtf82".}
proc fcQMediaNetworkAccessControl_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QMediaNetworkAccessControl_trUtf83".}
proc fcQMediaNetworkAccessControl_delete(self: pointer) {.importc: "QMediaNetworkAccessControl_delete".}


func init*(T: type gen_qmedianetworkaccesscontrol_types.QMediaNetworkAccessControl, h: ptr cQMediaNetworkAccessControl): gen_qmedianetworkaccesscontrol_types.QMediaNetworkAccessControl =
  T(h: h)
proc metaObject*(self: gen_qmedianetworkaccesscontrol_types.QMediaNetworkAccessControl, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQMediaNetworkAccessControl_metaObject(self.h))

proc metacast*(self: gen_qmedianetworkaccesscontrol_types.QMediaNetworkAccessControl, param1: cstring): pointer =
  fcQMediaNetworkAccessControl_metacast(self.h, param1)

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

proc currentConfiguration*(self: gen_qmedianetworkaccesscontrol_types.QMediaNetworkAccessControl, ): gen_qnetworkconfiguration_types.QNetworkConfiguration =
  gen_qnetworkconfiguration_types.QNetworkConfiguration(h: fcQMediaNetworkAccessControl_currentConfiguration(self.h))

proc configurationChanged*(self: gen_qmedianetworkaccesscontrol_types.QMediaNetworkAccessControl, configuration: gen_qnetworkconfiguration_types.QNetworkConfiguration): void =
  fcQMediaNetworkAccessControl_configurationChanged(self.h, configuration.h)

type QMediaNetworkAccessControlconfigurationChangedSlot* = proc(configuration: gen_qnetworkconfiguration_types.QNetworkConfiguration)
proc miqt_exec_callback_QMediaNetworkAccessControl_configurationChanged(slot: int, configuration: pointer) {.exportc.} =
  let nimfunc = cast[ptr QMediaNetworkAccessControlconfigurationChangedSlot](cast[pointer](slot))
  let slotval1 = gen_qnetworkconfiguration_types.QNetworkConfiguration(h: configuration)

  nimfunc[](slotval1)

proc onconfigurationChanged*(self: gen_qmedianetworkaccesscontrol_types.QMediaNetworkAccessControl, slot: QMediaNetworkAccessControlconfigurationChangedSlot) =
  var tmp = new QMediaNetworkAccessControlconfigurationChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQMediaNetworkAccessControl_connect_configurationChanged(self.h, cast[int](addr tmp[]))

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

proc delete*(self: gen_qmedianetworkaccesscontrol_types.QMediaNetworkAccessControl) =
  fcQMediaNetworkAccessControl_delete(self.h)
