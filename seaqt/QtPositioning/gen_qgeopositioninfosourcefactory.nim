import ./qtpositioning_pkg

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

proc fcQGeoPositionInfoSourceFactory_positionInfoSource(self: pointer, parent: pointer, parameters: struct_seaqt_map): pointer {.importc: "QGeoPositionInfoSourceFactory_positionInfoSource".}
proc fcQGeoPositionInfoSourceFactory_satelliteInfoSource(self: pointer, parent: pointer, parameters: struct_seaqt_map): pointer {.importc: "QGeoPositionInfoSourceFactory_satelliteInfoSource".}
proc fcQGeoPositionInfoSourceFactory_areaMonitor(self: pointer, parent: pointer, parameters: struct_seaqt_map): pointer {.importc: "QGeoPositionInfoSourceFactory_areaMonitor".}
proc fcQGeoPositionInfoSourceFactory_operatorAssign(self: pointer, param1: pointer): void {.importc: "QGeoPositionInfoSourceFactory_operatorAssign".}

proc positionInfoSource*(self: gen_qgeopositioninfosourcefactory_types.QGeoPositionInfoSourceFactory, parent: gen_qobject_types.QObject, parameters: Table[string,gen_qvariant_types.QVariant]): gen_qgeopositioninfosource_types.QGeoPositionInfoSource =
  var parameters_Keys_CArray = newSeq[struct_seaqt_string](len(parameters))
  var parameters_Values_CArray = newSeq[pointer](len(parameters))
  var parameters_ctr = 0
  for parameters_k in parameters.keys():
    parameters_Keys_CArray[parameters_ctr] = struct_seaqt_string(data: if len(parameters_k) > 0: addr parameters_k[0] else: nil, len: csize_t(len(parameters_k)))
    parameters_ctr += 1
  parameters_ctr = 0
  for parameters_v in parameters.values():
    parameters_Values_CArray[parameters_ctr] = parameters_v.h
    parameters_ctr += 1

  gen_qgeopositioninfosource_types.QGeoPositionInfoSource(h: fcQGeoPositionInfoSourceFactory_positionInfoSource(self.h, parent.h, struct_seaqt_map(len: csize_t(len(parameters)),keys: if len(parameters) == 0: nil else: addr(parameters_Keys_CArray[0]), values: if len(parameters) == 0: nil else: addr(parameters_Values_CArray[0]),)), owned: false)

proc satelliteInfoSource*(self: gen_qgeopositioninfosourcefactory_types.QGeoPositionInfoSourceFactory, parent: gen_qobject_types.QObject, parameters: Table[string,gen_qvariant_types.QVariant]): gen_qgeosatelliteinfosource_types.QGeoSatelliteInfoSource =
  var parameters_Keys_CArray = newSeq[struct_seaqt_string](len(parameters))
  var parameters_Values_CArray = newSeq[pointer](len(parameters))
  var parameters_ctr = 0
  for parameters_k in parameters.keys():
    parameters_Keys_CArray[parameters_ctr] = struct_seaqt_string(data: if len(parameters_k) > 0: addr parameters_k[0] else: nil, len: csize_t(len(parameters_k)))
    parameters_ctr += 1
  parameters_ctr = 0
  for parameters_v in parameters.values():
    parameters_Values_CArray[parameters_ctr] = parameters_v.h
    parameters_ctr += 1

  gen_qgeosatelliteinfosource_types.QGeoSatelliteInfoSource(h: fcQGeoPositionInfoSourceFactory_satelliteInfoSource(self.h, parent.h, struct_seaqt_map(len: csize_t(len(parameters)),keys: if len(parameters) == 0: nil else: addr(parameters_Keys_CArray[0]), values: if len(parameters) == 0: nil else: addr(parameters_Values_CArray[0]),)), owned: false)

proc areaMonitor*(self: gen_qgeopositioninfosourcefactory_types.QGeoPositionInfoSourceFactory, parent: gen_qobject_types.QObject, parameters: Table[string,gen_qvariant_types.QVariant]): gen_qgeoareamonitorsource_types.QGeoAreaMonitorSource =
  var parameters_Keys_CArray = newSeq[struct_seaqt_string](len(parameters))
  var parameters_Values_CArray = newSeq[pointer](len(parameters))
  var parameters_ctr = 0
  for parameters_k in parameters.keys():
    parameters_Keys_CArray[parameters_ctr] = struct_seaqt_string(data: if len(parameters_k) > 0: addr parameters_k[0] else: nil, len: csize_t(len(parameters_k)))
    parameters_ctr += 1
  parameters_ctr = 0
  for parameters_v in parameters.values():
    parameters_Values_CArray[parameters_ctr] = parameters_v.h
    parameters_ctr += 1

  gen_qgeoareamonitorsource_types.QGeoAreaMonitorSource(h: fcQGeoPositionInfoSourceFactory_areaMonitor(self.h, parent.h, struct_seaqt_map(len: csize_t(len(parameters)),keys: if len(parameters) == 0: nil else: addr(parameters_Keys_CArray[0]), values: if len(parameters) == 0: nil else: addr(parameters_Values_CArray[0]),)), owned: false)

proc operatorAssign*(self: gen_qgeopositioninfosourcefactory_types.QGeoPositionInfoSourceFactory, param1: gen_qgeopositioninfosourcefactory_types.QGeoPositionInfoSourceFactory): void =
  fcQGeoPositionInfoSourceFactory_operatorAssign(self.h, param1.h)

