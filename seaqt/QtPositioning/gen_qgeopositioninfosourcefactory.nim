import ./qtpositioning_pkg

{.push raises: [].}

from system/ansi_c import c_free

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


import ./gen_qgeopositioninfosourcefactory_types
export gen_qgeopositioninfosourcefactory_types

import
  ../QtCore/gen_qobject_types,
  ../QtCore/gen_qvariant_types,
  ./gen_qgeoareamonitorsource_types,
  ./gen_qgeopositioninfosource_types,
  ./gen_qgeosatelliteinfosource_types,
  std/tables
export
  gen_qobject_types,
  gen_qvariant_types,
  gen_qgeoareamonitorsource_types,
  gen_qgeopositioninfosource_types,
  gen_qgeosatelliteinfosource_types

type cQGeoPositionInfoSourceFactory*{.exportc: "QGeoPositionInfoSourceFactory", incompleteStruct.} = object
type cQGeoPositionInfoSourceFactoryV2*{.exportc: "QGeoPositionInfoSourceFactoryV2", incompleteStruct.} = object

proc fcQGeoPositionInfoSourceFactory_positionInfoSource(self: pointer, parent: pointer): pointer {.importc: "QGeoPositionInfoSourceFactory_positionInfoSource".}
proc fcQGeoPositionInfoSourceFactory_satelliteInfoSource(self: pointer, parent: pointer): pointer {.importc: "QGeoPositionInfoSourceFactory_satelliteInfoSource".}
proc fcQGeoPositionInfoSourceFactory_areaMonitor(self: pointer, parent: pointer): pointer {.importc: "QGeoPositionInfoSourceFactory_areaMonitor".}
proc fcQGeoPositionInfoSourceFactory_operatorAssign(self: pointer, param1: pointer): void {.importc: "QGeoPositionInfoSourceFactory_operatorAssign".}
proc fcQGeoPositionInfoSourceFactory_vdata(self: pointer): ptr pointer {.importc: "QGeoPositionInfoSourceFactory_vdata".}
proc fvdata_cQGeoPositionInfoSourceFactory(self: pointer): pointer {.importc: "vdata_QGeoPositionInfoSourceFactory".}

type cQGeoPositionInfoSourceFactoryVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  positionInfoSource*: proc(self: pointer, parent: pointer): pointer {.cdecl, raises: [], gcsafe.}
  satelliteInfoSource*: proc(self: pointer, parent: pointer): pointer {.cdecl, raises: [], gcsafe.}
  areaMonitor*: proc(self: pointer, parent: pointer): pointer {.cdecl, raises: [], gcsafe.}
proc fcQGeoPositionInfoSourceFactory_new(vtbl: pointer, vdata: csize_t, param1: pointer): ptr cQGeoPositionInfoSourceFactory {.importc: "QGeoPositionInfoSourceFactory_new".}
proc fcQGeoPositionInfoSourceFactory_delete(self: pointer) {.importc: "QGeoPositionInfoSourceFactory_delete".}
proc fcQGeoPositionInfoSourceFactoryV2_positionInfoSourceWithParameters(self: pointer, parent: pointer, parameters: struct_seaqt_map): pointer {.importc: "QGeoPositionInfoSourceFactoryV2_positionInfoSourceWithParameters".}
proc fcQGeoPositionInfoSourceFactoryV2_satelliteInfoSourceWithParameters(self: pointer, parent: pointer, parameters: struct_seaqt_map): pointer {.importc: "QGeoPositionInfoSourceFactoryV2_satelliteInfoSourceWithParameters".}
proc fcQGeoPositionInfoSourceFactoryV2_areaMonitorWithParameters(self: pointer, parent: pointer, parameters: struct_seaqt_map): pointer {.importc: "QGeoPositionInfoSourceFactoryV2_areaMonitorWithParameters".}
proc fcQGeoPositionInfoSourceFactoryV2_operatorAssign(self: pointer, param1: pointer): void {.importc: "QGeoPositionInfoSourceFactoryV2_operatorAssign".}
proc fcQGeoPositionInfoSourceFactoryV2_vdata(self: pointer): ptr pointer {.importc: "QGeoPositionInfoSourceFactoryV2_vdata".}
proc fvdata_cQGeoPositionInfoSourceFactoryV2(self: pointer): pointer {.importc: "vdata_QGeoPositionInfoSourceFactoryV2".}

type cQGeoPositionInfoSourceFactoryV2VTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  positionInfoSourceWithParameters*: proc(self: pointer, parent: pointer, parameters: struct_seaqt_map): pointer {.cdecl, raises: [], gcsafe.}
  satelliteInfoSourceWithParameters*: proc(self: pointer, parent: pointer, parameters: struct_seaqt_map): pointer {.cdecl, raises: [], gcsafe.}
  areaMonitorWithParameters*: proc(self: pointer, parent: pointer, parameters: struct_seaqt_map): pointer {.cdecl, raises: [], gcsafe.}
  positionInfoSource*: proc(self: pointer, parent: pointer): pointer {.cdecl, raises: [], gcsafe.}
  satelliteInfoSource*: proc(self: pointer, parent: pointer): pointer {.cdecl, raises: [], gcsafe.}
  areaMonitor*: proc(self: pointer, parent: pointer): pointer {.cdecl, raises: [], gcsafe.}
proc fcQGeoPositionInfoSourceFactoryV2_new(vtbl: pointer, vdata: csize_t, param1: pointer): ptr cQGeoPositionInfoSourceFactoryV2 {.importc: "QGeoPositionInfoSourceFactoryV2_new".}
proc fcQGeoPositionInfoSourceFactoryV2_delete(self: pointer) {.importc: "QGeoPositionInfoSourceFactoryV2_delete".}

proc positionInfoSource*(self: gen_qgeopositioninfosourcefactory_types.QGeoPositionInfoSourceFactory, parent: gen_qobject_types.QObject): gen_qgeopositioninfosource_types.QGeoPositionInfoSource =
  gen_qgeopositioninfosource_types.QGeoPositionInfoSource(h: fcQGeoPositionInfoSourceFactory_positionInfoSource(self.h, parent.h))

proc satelliteInfoSource*(self: gen_qgeopositioninfosourcefactory_types.QGeoPositionInfoSourceFactory, parent: gen_qobject_types.QObject): gen_qgeosatelliteinfosource_types.QGeoSatelliteInfoSource =
  gen_qgeosatelliteinfosource_types.QGeoSatelliteInfoSource(h: fcQGeoPositionInfoSourceFactory_satelliteInfoSource(self.h, parent.h))

proc areaMonitor*(self: gen_qgeopositioninfosourcefactory_types.QGeoPositionInfoSourceFactory, parent: gen_qobject_types.QObject): gen_qgeoareamonitorsource_types.QGeoAreaMonitorSource =
  gen_qgeoareamonitorsource_types.QGeoAreaMonitorSource(h: fcQGeoPositionInfoSourceFactory_areaMonitor(self.h, parent.h))

proc operatorAssign*(self: gen_qgeopositioninfosourcefactory_types.QGeoPositionInfoSourceFactory, param1: gen_qgeopositioninfosourcefactory_types.QGeoPositionInfoSourceFactory): void =
  fcQGeoPositionInfoSourceFactory_operatorAssign(self.h, param1.h)

type QGeoPositionInfoSourceFactorypositionInfoSourceProc* = proc(self: QGeoPositionInfoSourceFactory, parent: gen_qobject_types.QObject): gen_qgeopositioninfosource_types.QGeoPositionInfoSource {.raises: [], gcsafe.}
type QGeoPositionInfoSourceFactorysatelliteInfoSourceProc* = proc(self: QGeoPositionInfoSourceFactory, parent: gen_qobject_types.QObject): gen_qgeosatelliteinfosource_types.QGeoSatelliteInfoSource {.raises: [], gcsafe.}
type QGeoPositionInfoSourceFactoryareaMonitorProc* = proc(self: QGeoPositionInfoSourceFactory, parent: gen_qobject_types.QObject): gen_qgeoareamonitorsource_types.QGeoAreaMonitorSource {.raises: [], gcsafe.}
type QGeoPositionInfoSourceFactoryVTable* = object
  vtbl: cQGeoPositionInfoSourceFactoryVTable
  positionInfoSource*: QGeoPositionInfoSourceFactorypositionInfoSourceProc
  satelliteInfoSource*: QGeoPositionInfoSourceFactorysatelliteInfoSourceProc
  areaMonitor*: QGeoPositionInfoSourceFactoryareaMonitorProc


proc fcQGeoPositionInfoSourceFactory_vtable_callback_positionInfoSource(self: pointer, parent: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QGeoPositionInfoSourceFactoryVTable](fcQGeoPositionInfoSourceFactory_vdata(self)[])
  let self = QGeoPositionInfoSourceFactory(h: self)
  let slotval1 = gen_qobject_types.QObject(h: parent)
  var virtualReturn = vtbl[].positionInfoSource(self, slotval1)
  virtualReturn.h

proc fcQGeoPositionInfoSourceFactory_vtable_callback_satelliteInfoSource(self: pointer, parent: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QGeoPositionInfoSourceFactoryVTable](fcQGeoPositionInfoSourceFactory_vdata(self)[])
  let self = QGeoPositionInfoSourceFactory(h: self)
  let slotval1 = gen_qobject_types.QObject(h: parent)
  var virtualReturn = vtbl[].satelliteInfoSource(self, slotval1)
  virtualReturn.h

proc fcQGeoPositionInfoSourceFactory_vtable_callback_areaMonitor(self: pointer, parent: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QGeoPositionInfoSourceFactoryVTable](fcQGeoPositionInfoSourceFactory_vdata(self)[])
  let self = QGeoPositionInfoSourceFactory(h: self)
  let slotval1 = gen_qobject_types.QObject(h: parent)
  var virtualReturn = vtbl[].areaMonitor(self, slotval1)
  virtualReturn.h

type VirtualQGeoPositionInfoSourceFactory* {.inheritable.} = ref object of QGeoPositionInfoSourceFactory
  vtbl*: cQGeoPositionInfoSourceFactoryVTable

method positionInfoSource*(self: VirtualQGeoPositionInfoSourceFactory, parent: gen_qobject_types.QObject): gen_qgeopositioninfosource_types.QGeoPositionInfoSource {.base.} =
  raiseAssert("missing implementation of QGeoPositionInfoSourceFactory.positionInfoSource")
method satelliteInfoSource*(self: VirtualQGeoPositionInfoSourceFactory, parent: gen_qobject_types.QObject): gen_qgeosatelliteinfosource_types.QGeoSatelliteInfoSource {.base.} =
  raiseAssert("missing implementation of QGeoPositionInfoSourceFactory.satelliteInfoSource")
method areaMonitor*(self: VirtualQGeoPositionInfoSourceFactory, parent: gen_qobject_types.QObject): gen_qgeoareamonitorsource_types.QGeoAreaMonitorSource {.base.} =
  raiseAssert("missing implementation of QGeoPositionInfoSourceFactory.areaMonitor")

proc fcQGeoPositionInfoSourceFactory_method_callback_positionInfoSource(self: pointer, parent: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQGeoPositionInfoSourceFactory](fcQGeoPositionInfoSourceFactory_vdata(self)[])
  let slotval1 = gen_qobject_types.QObject(h: parent)
  var virtualReturn = inst.positionInfoSource(slotval1)
  virtualReturn.h

proc fcQGeoPositionInfoSourceFactory_method_callback_satelliteInfoSource(self: pointer, parent: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQGeoPositionInfoSourceFactory](fcQGeoPositionInfoSourceFactory_vdata(self)[])
  let slotval1 = gen_qobject_types.QObject(h: parent)
  var virtualReturn = inst.satelliteInfoSource(slotval1)
  virtualReturn.h

proc fcQGeoPositionInfoSourceFactory_method_callback_areaMonitor(self: pointer, parent: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQGeoPositionInfoSourceFactory](fcQGeoPositionInfoSourceFactory_vdata(self)[])
  let slotval1 = gen_qobject_types.QObject(h: parent)
  var virtualReturn = inst.areaMonitor(slotval1)
  virtualReturn.h


proc create*(T: type gen_qgeopositioninfosourcefactory_types.QGeoPositionInfoSourceFactory,
    param1: gen_qgeopositioninfosourcefactory_types.QGeoPositionInfoSourceFactory,
    vtbl: ref QGeoPositionInfoSourceFactoryVTable = nil): gen_qgeopositioninfosourcefactory_types.QGeoPositionInfoSourceFactory =
  let vtbl = if vtbl == nil: new QGeoPositionInfoSourceFactoryVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QGeoPositionInfoSourceFactoryVTable](fcQGeoPositionInfoSourceFactory_vdata(self)[])
    GC_unref(vtbl)
  if not isNil(vtbl[].positionInfoSource):
    vtbl[].vtbl.positionInfoSource = fcQGeoPositionInfoSourceFactory_vtable_callback_positionInfoSource
  if not isNil(vtbl[].satelliteInfoSource):
    vtbl[].vtbl.satelliteInfoSource = fcQGeoPositionInfoSourceFactory_vtable_callback_satelliteInfoSource
  if not isNil(vtbl[].areaMonitor):
    vtbl[].vtbl.areaMonitor = fcQGeoPositionInfoSourceFactory_vtable_callback_areaMonitor
  let tmp = gen_qgeopositioninfosourcefactory_types.QGeoPositionInfoSourceFactory(h: fcQGeoPositionInfoSourceFactory_new(addr(vtbl[].vtbl), csize_t(sizeof(pointer)), param1.h))
  fcQGeoPositionInfoSourceFactory_vdata(tmp.h)[] = addr(vtbl[])
  tmp
const cQGeoPositionInfoSourceFactory_mvtbl = cQGeoPositionInfoSourceFactoryVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQGeoPositionInfoSourceFactory()[])](self.fcQGeoPositionInfoSourceFactory_vdata()[])
    inst[].h = nil,

  positionInfoSource: fcQGeoPositionInfoSourceFactory_method_callback_positionInfoSource,
  satelliteInfoSource: fcQGeoPositionInfoSourceFactory_method_callback_satelliteInfoSource,
  areaMonitor: fcQGeoPositionInfoSourceFactory_method_callback_areaMonitor,
)
proc create*(T: type gen_qgeopositioninfosourcefactory_types.QGeoPositionInfoSourceFactory,
    param1: gen_qgeopositioninfosourcefactory_types.QGeoPositionInfoSourceFactory,
    inst: VirtualQGeoPositionInfoSourceFactory) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQGeoPositionInfoSourceFactory_new(addr(cQGeoPositionInfoSourceFactory_mvtbl), csize_t(sizeof(pointer)), param1.h)
  fcQGeoPositionInfoSourceFactory_vdata(inst[].h)[] = addr inst[]
  inst[].owned = true

proc delete*(self: gen_qgeopositioninfosourcefactory_types.QGeoPositionInfoSourceFactory) =
  fcQGeoPositionInfoSourceFactory_delete(self.h)
proc positionInfoSourceWithParameters*(self: gen_qgeopositioninfosourcefactory_types.QGeoPositionInfoSourceFactoryV2, parent: gen_qobject_types.QObject, parameters: Table[string,gen_qvariant_types.QVariant]): gen_qgeopositioninfosource_types.QGeoPositionInfoSource =
  var parameters_Keys_CArray = newSeq[struct_seaqt_string](len(parameters))
  var parameters_Values_CArray = newSeq[pointer](len(parameters))
  var parameters_ctr = 0
  for parameters_k, parameters_v in parameters:
    parameters_Keys_CArray[parameters_ctr] = struct_seaqt_string(data: if len(parameters_k) > 0: addr parameters_k[0] else: nil, len: csize_t(len(parameters_k)))
    parameters_Values_CArray[parameters_ctr] = parameters_v.h
    parameters_ctr += 1

  gen_qgeopositioninfosource_types.QGeoPositionInfoSource(h: fcQGeoPositionInfoSourceFactoryV2_positionInfoSourceWithParameters(self.h, parent.h, struct_seaqt_map(len: csize_t(len(parameters)),keys: if len(parameters) == 0: nil else: addr(parameters_Keys_CArray[0]), values: if len(parameters) == 0: nil else: addr(parameters_Values_CArray[0]),)))

proc satelliteInfoSourceWithParameters*(self: gen_qgeopositioninfosourcefactory_types.QGeoPositionInfoSourceFactoryV2, parent: gen_qobject_types.QObject, parameters: Table[string,gen_qvariant_types.QVariant]): gen_qgeosatelliteinfosource_types.QGeoSatelliteInfoSource =
  var parameters_Keys_CArray = newSeq[struct_seaqt_string](len(parameters))
  var parameters_Values_CArray = newSeq[pointer](len(parameters))
  var parameters_ctr = 0
  for parameters_k, parameters_v in parameters:
    parameters_Keys_CArray[parameters_ctr] = struct_seaqt_string(data: if len(parameters_k) > 0: addr parameters_k[0] else: nil, len: csize_t(len(parameters_k)))
    parameters_Values_CArray[parameters_ctr] = parameters_v.h
    parameters_ctr += 1

  gen_qgeosatelliteinfosource_types.QGeoSatelliteInfoSource(h: fcQGeoPositionInfoSourceFactoryV2_satelliteInfoSourceWithParameters(self.h, parent.h, struct_seaqt_map(len: csize_t(len(parameters)),keys: if len(parameters) == 0: nil else: addr(parameters_Keys_CArray[0]), values: if len(parameters) == 0: nil else: addr(parameters_Values_CArray[0]),)))

proc areaMonitorWithParameters*(self: gen_qgeopositioninfosourcefactory_types.QGeoPositionInfoSourceFactoryV2, parent: gen_qobject_types.QObject, parameters: Table[string,gen_qvariant_types.QVariant]): gen_qgeoareamonitorsource_types.QGeoAreaMonitorSource =
  var parameters_Keys_CArray = newSeq[struct_seaqt_string](len(parameters))
  var parameters_Values_CArray = newSeq[pointer](len(parameters))
  var parameters_ctr = 0
  for parameters_k, parameters_v in parameters:
    parameters_Keys_CArray[parameters_ctr] = struct_seaqt_string(data: if len(parameters_k) > 0: addr parameters_k[0] else: nil, len: csize_t(len(parameters_k)))
    parameters_Values_CArray[parameters_ctr] = parameters_v.h
    parameters_ctr += 1

  gen_qgeoareamonitorsource_types.QGeoAreaMonitorSource(h: fcQGeoPositionInfoSourceFactoryV2_areaMonitorWithParameters(self.h, parent.h, struct_seaqt_map(len: csize_t(len(parameters)),keys: if len(parameters) == 0: nil else: addr(parameters_Keys_CArray[0]), values: if len(parameters) == 0: nil else: addr(parameters_Values_CArray[0]),)))

proc operatorAssign*(self: gen_qgeopositioninfosourcefactory_types.QGeoPositionInfoSourceFactoryV2, param1: gen_qgeopositioninfosourcefactory_types.QGeoPositionInfoSourceFactoryV2): void =
  fcQGeoPositionInfoSourceFactoryV2_operatorAssign(self.h, param1.h)

type QGeoPositionInfoSourceFactoryV2positionInfoSourceWithParametersProc* = proc(self: QGeoPositionInfoSourceFactoryV2, parent: gen_qobject_types.QObject, parameters: Table[string,gen_qvariant_types.QVariant]): gen_qgeopositioninfosource_types.QGeoPositionInfoSource {.raises: [], gcsafe.}
type QGeoPositionInfoSourceFactoryV2satelliteInfoSourceWithParametersProc* = proc(self: QGeoPositionInfoSourceFactoryV2, parent: gen_qobject_types.QObject, parameters: Table[string,gen_qvariant_types.QVariant]): gen_qgeosatelliteinfosource_types.QGeoSatelliteInfoSource {.raises: [], gcsafe.}
type QGeoPositionInfoSourceFactoryV2areaMonitorWithParametersProc* = proc(self: QGeoPositionInfoSourceFactoryV2, parent: gen_qobject_types.QObject, parameters: Table[string,gen_qvariant_types.QVariant]): gen_qgeoareamonitorsource_types.QGeoAreaMonitorSource {.raises: [], gcsafe.}
type QGeoPositionInfoSourceFactoryV2positionInfoSourceProc* = proc(self: QGeoPositionInfoSourceFactoryV2, parent: gen_qobject_types.QObject): gen_qgeopositioninfosource_types.QGeoPositionInfoSource {.raises: [], gcsafe.}
type QGeoPositionInfoSourceFactoryV2satelliteInfoSourceProc* = proc(self: QGeoPositionInfoSourceFactoryV2, parent: gen_qobject_types.QObject): gen_qgeosatelliteinfosource_types.QGeoSatelliteInfoSource {.raises: [], gcsafe.}
type QGeoPositionInfoSourceFactoryV2areaMonitorProc* = proc(self: QGeoPositionInfoSourceFactoryV2, parent: gen_qobject_types.QObject): gen_qgeoareamonitorsource_types.QGeoAreaMonitorSource {.raises: [], gcsafe.}
type QGeoPositionInfoSourceFactoryV2VTable* = object
  vtbl: cQGeoPositionInfoSourceFactoryV2VTable
  positionInfoSourceWithParameters*: QGeoPositionInfoSourceFactoryV2positionInfoSourceWithParametersProc
  satelliteInfoSourceWithParameters*: QGeoPositionInfoSourceFactoryV2satelliteInfoSourceWithParametersProc
  areaMonitorWithParameters*: QGeoPositionInfoSourceFactoryV2areaMonitorWithParametersProc
  positionInfoSource*: QGeoPositionInfoSourceFactoryV2positionInfoSourceProc
  satelliteInfoSource*: QGeoPositionInfoSourceFactoryV2satelliteInfoSourceProc
  areaMonitor*: QGeoPositionInfoSourceFactoryV2areaMonitorProc


proc fcQGeoPositionInfoSourceFactoryV2_vtable_callback_positionInfoSourceWithParameters(self: pointer, parent: pointer, parameters: struct_seaqt_map): pointer {.cdecl.} =
  let vtbl = cast[ptr QGeoPositionInfoSourceFactoryV2VTable](fcQGeoPositionInfoSourceFactoryV2_vdata(self)[])
  let self = QGeoPositionInfoSourceFactoryV2(h: self)
  let slotval1 = gen_qobject_types.QObject(h: parent)
  var vparameters_mm = parameters
  var vparametersx_ret: Table[string, gen_qvariant_types.QVariant]
  var vparameters_Keys = cast[ptr UncheckedArray[struct_seaqt_string]](vparameters_mm.keys)
  var vparameters_Values = cast[ptr UncheckedArray[pointer]](vparameters_mm.values)
  for i in 0..<vparameters_mm.len:
    let vparameters_mapkey_ms = vparameters_Keys[i]
    let vparameters_mapkeyx_ret = string.fromBytes(vparameters_mapkey_ms)
    c_free(vparameters_mapkey_ms.data)
    var vparameters_entry_Key = vparameters_mapkeyx_ret

    var vparameters_entry_Value = gen_qvariant_types.QVariant(h: vparameters_Values[i])

    vparametersx_ret[vparameters_entry_Key] = vparameters_entry_Value
  c_free(vparameters_mm.keys)
  c_free(vparameters_mm.values)
  let slotval2 = vparametersx_ret
  var virtualReturn = vtbl[].positionInfoSourceWithParameters(self, slotval1, slotval2)
  virtualReturn.h

proc fcQGeoPositionInfoSourceFactoryV2_vtable_callback_satelliteInfoSourceWithParameters(self: pointer, parent: pointer, parameters: struct_seaqt_map): pointer {.cdecl.} =
  let vtbl = cast[ptr QGeoPositionInfoSourceFactoryV2VTable](fcQGeoPositionInfoSourceFactoryV2_vdata(self)[])
  let self = QGeoPositionInfoSourceFactoryV2(h: self)
  let slotval1 = gen_qobject_types.QObject(h: parent)
  var vparameters_mm = parameters
  var vparametersx_ret: Table[string, gen_qvariant_types.QVariant]
  var vparameters_Keys = cast[ptr UncheckedArray[struct_seaqt_string]](vparameters_mm.keys)
  var vparameters_Values = cast[ptr UncheckedArray[pointer]](vparameters_mm.values)
  for i in 0..<vparameters_mm.len:
    let vparameters_mapkey_ms = vparameters_Keys[i]
    let vparameters_mapkeyx_ret = string.fromBytes(vparameters_mapkey_ms)
    c_free(vparameters_mapkey_ms.data)
    var vparameters_entry_Key = vparameters_mapkeyx_ret

    var vparameters_entry_Value = gen_qvariant_types.QVariant(h: vparameters_Values[i])

    vparametersx_ret[vparameters_entry_Key] = vparameters_entry_Value
  c_free(vparameters_mm.keys)
  c_free(vparameters_mm.values)
  let slotval2 = vparametersx_ret
  var virtualReturn = vtbl[].satelliteInfoSourceWithParameters(self, slotval1, slotval2)
  virtualReturn.h

proc fcQGeoPositionInfoSourceFactoryV2_vtable_callback_areaMonitorWithParameters(self: pointer, parent: pointer, parameters: struct_seaqt_map): pointer {.cdecl.} =
  let vtbl = cast[ptr QGeoPositionInfoSourceFactoryV2VTable](fcQGeoPositionInfoSourceFactoryV2_vdata(self)[])
  let self = QGeoPositionInfoSourceFactoryV2(h: self)
  let slotval1 = gen_qobject_types.QObject(h: parent)
  var vparameters_mm = parameters
  var vparametersx_ret: Table[string, gen_qvariant_types.QVariant]
  var vparameters_Keys = cast[ptr UncheckedArray[struct_seaqt_string]](vparameters_mm.keys)
  var vparameters_Values = cast[ptr UncheckedArray[pointer]](vparameters_mm.values)
  for i in 0..<vparameters_mm.len:
    let vparameters_mapkey_ms = vparameters_Keys[i]
    let vparameters_mapkeyx_ret = string.fromBytes(vparameters_mapkey_ms)
    c_free(vparameters_mapkey_ms.data)
    var vparameters_entry_Key = vparameters_mapkeyx_ret

    var vparameters_entry_Value = gen_qvariant_types.QVariant(h: vparameters_Values[i])

    vparametersx_ret[vparameters_entry_Key] = vparameters_entry_Value
  c_free(vparameters_mm.keys)
  c_free(vparameters_mm.values)
  let slotval2 = vparametersx_ret
  var virtualReturn = vtbl[].areaMonitorWithParameters(self, slotval1, slotval2)
  virtualReturn.h

proc fcQGeoPositionInfoSourceFactoryV2_vtable_callback_positionInfoSource(self: pointer, parent: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QGeoPositionInfoSourceFactoryV2VTable](fcQGeoPositionInfoSourceFactoryV2_vdata(self)[])
  let self = QGeoPositionInfoSourceFactoryV2(h: self)
  let slotval1 = gen_qobject_types.QObject(h: parent)
  var virtualReturn = vtbl[].positionInfoSource(self, slotval1)
  virtualReturn.h

proc fcQGeoPositionInfoSourceFactoryV2_vtable_callback_satelliteInfoSource(self: pointer, parent: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QGeoPositionInfoSourceFactoryV2VTable](fcQGeoPositionInfoSourceFactoryV2_vdata(self)[])
  let self = QGeoPositionInfoSourceFactoryV2(h: self)
  let slotval1 = gen_qobject_types.QObject(h: parent)
  var virtualReturn = vtbl[].satelliteInfoSource(self, slotval1)
  virtualReturn.h

proc fcQGeoPositionInfoSourceFactoryV2_vtable_callback_areaMonitor(self: pointer, parent: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QGeoPositionInfoSourceFactoryV2VTable](fcQGeoPositionInfoSourceFactoryV2_vdata(self)[])
  let self = QGeoPositionInfoSourceFactoryV2(h: self)
  let slotval1 = gen_qobject_types.QObject(h: parent)
  var virtualReturn = vtbl[].areaMonitor(self, slotval1)
  virtualReturn.h

type VirtualQGeoPositionInfoSourceFactoryV2* {.inheritable.} = ref object of QGeoPositionInfoSourceFactoryV2
  vtbl*: cQGeoPositionInfoSourceFactoryV2VTable

method positionInfoSourceWithParameters*(self: VirtualQGeoPositionInfoSourceFactoryV2, parent: gen_qobject_types.QObject, parameters: Table[string,gen_qvariant_types.QVariant]): gen_qgeopositioninfosource_types.QGeoPositionInfoSource {.base.} =
  raiseAssert("missing implementation of QGeoPositionInfoSourceFactoryV2.positionInfoSourceWithParameters")
method satelliteInfoSourceWithParameters*(self: VirtualQGeoPositionInfoSourceFactoryV2, parent: gen_qobject_types.QObject, parameters: Table[string,gen_qvariant_types.QVariant]): gen_qgeosatelliteinfosource_types.QGeoSatelliteInfoSource {.base.} =
  raiseAssert("missing implementation of QGeoPositionInfoSourceFactoryV2.satelliteInfoSourceWithParameters")
method areaMonitorWithParameters*(self: VirtualQGeoPositionInfoSourceFactoryV2, parent: gen_qobject_types.QObject, parameters: Table[string,gen_qvariant_types.QVariant]): gen_qgeoareamonitorsource_types.QGeoAreaMonitorSource {.base.} =
  raiseAssert("missing implementation of QGeoPositionInfoSourceFactoryV2.areaMonitorWithParameters")
method positionInfoSource*(self: VirtualQGeoPositionInfoSourceFactoryV2, parent: gen_qobject_types.QObject): gen_qgeopositioninfosource_types.QGeoPositionInfoSource {.base.} =
  raiseAssert("missing implementation of QGeoPositionInfoSourceFactoryV2.positionInfoSource")
method satelliteInfoSource*(self: VirtualQGeoPositionInfoSourceFactoryV2, parent: gen_qobject_types.QObject): gen_qgeosatelliteinfosource_types.QGeoSatelliteInfoSource {.base.} =
  raiseAssert("missing implementation of QGeoPositionInfoSourceFactoryV2.satelliteInfoSource")
method areaMonitor*(self: VirtualQGeoPositionInfoSourceFactoryV2, parent: gen_qobject_types.QObject): gen_qgeoareamonitorsource_types.QGeoAreaMonitorSource {.base.} =
  raiseAssert("missing implementation of QGeoPositionInfoSourceFactoryV2.areaMonitor")

proc fcQGeoPositionInfoSourceFactoryV2_method_callback_positionInfoSourceWithParameters(self: pointer, parent: pointer, parameters: struct_seaqt_map): pointer {.cdecl.} =
  let inst = cast[VirtualQGeoPositionInfoSourceFactoryV2](fcQGeoPositionInfoSourceFactoryV2_vdata(self)[])
  let slotval1 = gen_qobject_types.QObject(h: parent)
  var vparameters_mm = parameters
  var vparametersx_ret: Table[string, gen_qvariant_types.QVariant]
  var vparameters_Keys = cast[ptr UncheckedArray[struct_seaqt_string]](vparameters_mm.keys)
  var vparameters_Values = cast[ptr UncheckedArray[pointer]](vparameters_mm.values)
  for i in 0..<vparameters_mm.len:
    let vparameters_mapkey_ms = vparameters_Keys[i]
    let vparameters_mapkeyx_ret = string.fromBytes(vparameters_mapkey_ms)
    c_free(vparameters_mapkey_ms.data)
    var vparameters_entry_Key = vparameters_mapkeyx_ret

    var vparameters_entry_Value = gen_qvariant_types.QVariant(h: vparameters_Values[i])

    vparametersx_ret[vparameters_entry_Key] = vparameters_entry_Value
  c_free(vparameters_mm.keys)
  c_free(vparameters_mm.values)
  let slotval2 = vparametersx_ret
  var virtualReturn = inst.positionInfoSourceWithParameters(slotval1, slotval2)
  virtualReturn.h

proc fcQGeoPositionInfoSourceFactoryV2_method_callback_satelliteInfoSourceWithParameters(self: pointer, parent: pointer, parameters: struct_seaqt_map): pointer {.cdecl.} =
  let inst = cast[VirtualQGeoPositionInfoSourceFactoryV2](fcQGeoPositionInfoSourceFactoryV2_vdata(self)[])
  let slotval1 = gen_qobject_types.QObject(h: parent)
  var vparameters_mm = parameters
  var vparametersx_ret: Table[string, gen_qvariant_types.QVariant]
  var vparameters_Keys = cast[ptr UncheckedArray[struct_seaqt_string]](vparameters_mm.keys)
  var vparameters_Values = cast[ptr UncheckedArray[pointer]](vparameters_mm.values)
  for i in 0..<vparameters_mm.len:
    let vparameters_mapkey_ms = vparameters_Keys[i]
    let vparameters_mapkeyx_ret = string.fromBytes(vparameters_mapkey_ms)
    c_free(vparameters_mapkey_ms.data)
    var vparameters_entry_Key = vparameters_mapkeyx_ret

    var vparameters_entry_Value = gen_qvariant_types.QVariant(h: vparameters_Values[i])

    vparametersx_ret[vparameters_entry_Key] = vparameters_entry_Value
  c_free(vparameters_mm.keys)
  c_free(vparameters_mm.values)
  let slotval2 = vparametersx_ret
  var virtualReturn = inst.satelliteInfoSourceWithParameters(slotval1, slotval2)
  virtualReturn.h

proc fcQGeoPositionInfoSourceFactoryV2_method_callback_areaMonitorWithParameters(self: pointer, parent: pointer, parameters: struct_seaqt_map): pointer {.cdecl.} =
  let inst = cast[VirtualQGeoPositionInfoSourceFactoryV2](fcQGeoPositionInfoSourceFactoryV2_vdata(self)[])
  let slotval1 = gen_qobject_types.QObject(h: parent)
  var vparameters_mm = parameters
  var vparametersx_ret: Table[string, gen_qvariant_types.QVariant]
  var vparameters_Keys = cast[ptr UncheckedArray[struct_seaqt_string]](vparameters_mm.keys)
  var vparameters_Values = cast[ptr UncheckedArray[pointer]](vparameters_mm.values)
  for i in 0..<vparameters_mm.len:
    let vparameters_mapkey_ms = vparameters_Keys[i]
    let vparameters_mapkeyx_ret = string.fromBytes(vparameters_mapkey_ms)
    c_free(vparameters_mapkey_ms.data)
    var vparameters_entry_Key = vparameters_mapkeyx_ret

    var vparameters_entry_Value = gen_qvariant_types.QVariant(h: vparameters_Values[i])

    vparametersx_ret[vparameters_entry_Key] = vparameters_entry_Value
  c_free(vparameters_mm.keys)
  c_free(vparameters_mm.values)
  let slotval2 = vparametersx_ret
  var virtualReturn = inst.areaMonitorWithParameters(slotval1, slotval2)
  virtualReturn.h

proc fcQGeoPositionInfoSourceFactoryV2_method_callback_positionInfoSource(self: pointer, parent: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQGeoPositionInfoSourceFactoryV2](fcQGeoPositionInfoSourceFactoryV2_vdata(self)[])
  let slotval1 = gen_qobject_types.QObject(h: parent)
  var virtualReturn = inst.positionInfoSource(slotval1)
  virtualReturn.h

proc fcQGeoPositionInfoSourceFactoryV2_method_callback_satelliteInfoSource(self: pointer, parent: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQGeoPositionInfoSourceFactoryV2](fcQGeoPositionInfoSourceFactoryV2_vdata(self)[])
  let slotval1 = gen_qobject_types.QObject(h: parent)
  var virtualReturn = inst.satelliteInfoSource(slotval1)
  virtualReturn.h

proc fcQGeoPositionInfoSourceFactoryV2_method_callback_areaMonitor(self: pointer, parent: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQGeoPositionInfoSourceFactoryV2](fcQGeoPositionInfoSourceFactoryV2_vdata(self)[])
  let slotval1 = gen_qobject_types.QObject(h: parent)
  var virtualReturn = inst.areaMonitor(slotval1)
  virtualReturn.h


proc create*(T: type gen_qgeopositioninfosourcefactory_types.QGeoPositionInfoSourceFactoryV2,
    param1: gen_qgeopositioninfosourcefactory_types.QGeoPositionInfoSourceFactoryV2,
    vtbl: ref QGeoPositionInfoSourceFactoryV2VTable = nil): gen_qgeopositioninfosourcefactory_types.QGeoPositionInfoSourceFactoryV2 =
  let vtbl = if vtbl == nil: new QGeoPositionInfoSourceFactoryV2VTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QGeoPositionInfoSourceFactoryV2VTable](fcQGeoPositionInfoSourceFactoryV2_vdata(self)[])
    GC_unref(vtbl)
  if not isNil(vtbl[].positionInfoSourceWithParameters):
    vtbl[].vtbl.positionInfoSourceWithParameters = fcQGeoPositionInfoSourceFactoryV2_vtable_callback_positionInfoSourceWithParameters
  if not isNil(vtbl[].satelliteInfoSourceWithParameters):
    vtbl[].vtbl.satelliteInfoSourceWithParameters = fcQGeoPositionInfoSourceFactoryV2_vtable_callback_satelliteInfoSourceWithParameters
  if not isNil(vtbl[].areaMonitorWithParameters):
    vtbl[].vtbl.areaMonitorWithParameters = fcQGeoPositionInfoSourceFactoryV2_vtable_callback_areaMonitorWithParameters
  if not isNil(vtbl[].positionInfoSource):
    vtbl[].vtbl.positionInfoSource = fcQGeoPositionInfoSourceFactoryV2_vtable_callback_positionInfoSource
  if not isNil(vtbl[].satelliteInfoSource):
    vtbl[].vtbl.satelliteInfoSource = fcQGeoPositionInfoSourceFactoryV2_vtable_callback_satelliteInfoSource
  if not isNil(vtbl[].areaMonitor):
    vtbl[].vtbl.areaMonitor = fcQGeoPositionInfoSourceFactoryV2_vtable_callback_areaMonitor
  let tmp = gen_qgeopositioninfosourcefactory_types.QGeoPositionInfoSourceFactoryV2(h: fcQGeoPositionInfoSourceFactoryV2_new(addr(vtbl[].vtbl), csize_t(sizeof(pointer)), param1.h))
  fcQGeoPositionInfoSourceFactoryV2_vdata(tmp.h)[] = addr(vtbl[])
  tmp
const cQGeoPositionInfoSourceFactoryV2_mvtbl = cQGeoPositionInfoSourceFactoryV2VTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQGeoPositionInfoSourceFactoryV2()[])](self.fcQGeoPositionInfoSourceFactoryV2_vdata()[])
    inst[].h = nil,

  positionInfoSourceWithParameters: fcQGeoPositionInfoSourceFactoryV2_method_callback_positionInfoSourceWithParameters,
  satelliteInfoSourceWithParameters: fcQGeoPositionInfoSourceFactoryV2_method_callback_satelliteInfoSourceWithParameters,
  areaMonitorWithParameters: fcQGeoPositionInfoSourceFactoryV2_method_callback_areaMonitorWithParameters,
  positionInfoSource: fcQGeoPositionInfoSourceFactoryV2_method_callback_positionInfoSource,
  satelliteInfoSource: fcQGeoPositionInfoSourceFactoryV2_method_callback_satelliteInfoSource,
  areaMonitor: fcQGeoPositionInfoSourceFactoryV2_method_callback_areaMonitor,
)
proc create*(T: type gen_qgeopositioninfosourcefactory_types.QGeoPositionInfoSourceFactoryV2,
    param1: gen_qgeopositioninfosourcefactory_types.QGeoPositionInfoSourceFactoryV2,
    inst: VirtualQGeoPositionInfoSourceFactoryV2) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQGeoPositionInfoSourceFactoryV2_new(addr(cQGeoPositionInfoSourceFactoryV2_mvtbl), csize_t(sizeof(pointer)), param1.h)
  fcQGeoPositionInfoSourceFactoryV2_vdata(inst[].h)[] = addr inst[]
  inst[].owned = true

proc delete*(self: gen_qgeopositioninfosourcefactory_types.QGeoPositionInfoSourceFactoryV2) =
  fcQGeoPositionInfoSourceFactoryV2_delete(self.h)
