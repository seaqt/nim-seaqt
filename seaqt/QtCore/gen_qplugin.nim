import ./qtcore_pkg

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


import ./gen_qplugin_types
export gen_qplugin_types

import
  ./gen_qjsonobject_types
export
  gen_qjsonobject_types

type cQPluginMetaData*{.exportc: "QPluginMetaData", incompleteStruct.} = object
type cQStaticPlugin*{.exportc: "QStaticPlugin", incompleteStruct.} = object
type cQPluginMetaDataHeader*{.exportc: "QPluginMetaData__Header", incompleteStruct.} = object
type cQPluginMetaDataMagicHeader*{.exportc: "QPluginMetaData__MagicHeader", incompleteStruct.} = object
type cQPluginMetaDataElfNoteHeader*{.exportc: "QPluginMetaData__ElfNoteHeader", incompleteStruct.} = object

proc fcQPluginMetaData_archRequirements(): uint8 {.importc: "QPluginMetaData_archRequirements".}
proc fcQPluginMetaData_size(self: pointer): csize_t {.importc: "QPluginMetaData_size".}
proc fcQPluginMetaData_setSize(self: pointer, size: csize_t): void {.importc: "QPluginMetaData_setSize".}
proc fcQStaticPlugin_metaData(self: pointer): pointer {.importc: "QStaticPlugin_metaData".}
proc fcQPluginMetaDataHeader_version(self: pointer): uint8 {.importc: "QPluginMetaData__Header_version".}
proc fcQPluginMetaDataHeader_setVersion(self: pointer, version: uint8): void {.importc: "QPluginMetaData__Header_setVersion".}
proc fcQPluginMetaDataHeader_majorVersion(self: pointer): uint8 {.importc: "QPluginMetaData__Header_majorVersion".}
proc fcQPluginMetaDataHeader_setQtMajorVersion(self: pointer, qt_major_version: uint8): void {.importc: "QPluginMetaData__Header_setQtMajorVersion".}
proc fcQPluginMetaDataHeader_minorVersion(self: pointer): uint8 {.importc: "QPluginMetaData__Header_minorVersion".}
proc fcQPluginMetaDataHeader_setQtMinorVersion(self: pointer, qt_minor_version: uint8): void {.importc: "QPluginMetaData__Header_setQtMinorVersion".}
proc fcQPluginMetaDataHeader_pluginArchRequirements(self: pointer): uint8 {.importc: "QPluginMetaData__Header_pluginArchRequirements".}
proc fcQPluginMetaDataHeader_setPluginArchRequirements(self: pointer, plugin_arch_requirements: uint8): void {.importc: "QPluginMetaData__Header_setPluginArchRequirements".}
proc fcQPluginMetaDataHeader_new(param1: pointer): ptr cQPluginMetaDataHeader {.importc: "QPluginMetaData__Header_new".}
proc fcQPluginMetaDataMagicHeader_header(self: pointer): pointer {.importc: "QPluginMetaData__MagicHeader_header".}
proc fcQPluginMetaDataMagicHeader_setHeader(self: pointer, header: pointer): void {.importc: "QPluginMetaData__MagicHeader_setHeader".}
proc fcQPluginMetaDataMagicHeader_new(): ptr cQPluginMetaDataMagicHeader {.importc: "QPluginMetaData__MagicHeader_new".}
proc fcQPluginMetaDataElfNoteHeader_nNamesz(self: pointer): cuint {.importc: "QPluginMetaData__ElfNoteHeader_nNamesz".}
proc fcQPluginMetaDataElfNoteHeader_setNNamesz(self: pointer, n_namesz: cuint): void {.importc: "QPluginMetaData__ElfNoteHeader_setNNamesz".}
proc fcQPluginMetaDataElfNoteHeader_nDescsz(self: pointer): cuint {.importc: "QPluginMetaData__ElfNoteHeader_nDescsz".}
proc fcQPluginMetaDataElfNoteHeader_setNDescsz(self: pointer, n_descsz: cuint): void {.importc: "QPluginMetaData__ElfNoteHeader_setNDescsz".}
proc fcQPluginMetaDataElfNoteHeader_nType(self: pointer): cuint {.importc: "QPluginMetaData__ElfNoteHeader_nType".}
proc fcQPluginMetaDataElfNoteHeader_setNType(self: pointer, n_type: cuint): void {.importc: "QPluginMetaData__ElfNoteHeader_setNType".}
proc fcQPluginMetaDataElfNoteHeader_header(self: pointer): pointer {.importc: "QPluginMetaData__ElfNoteHeader_header".}
proc fcQPluginMetaDataElfNoteHeader_setHeader(self: pointer, header: pointer): void {.importc: "QPluginMetaData__ElfNoteHeader_setHeader".}
proc fcQPluginMetaDataElfNoteHeader_new(payloadSize: cuint): ptr cQPluginMetaDataElfNoteHeader {.importc: "QPluginMetaData__ElfNoteHeader_new".}
proc fcQPluginMetaDataElfNoteHeader_new2(param1: pointer): ptr cQPluginMetaDataElfNoteHeader {.importc: "QPluginMetaData__ElfNoteHeader_new2".}

proc archRequirements*(_: type gen_qplugin_types.QPluginMetaData): uint8 =
  fcQPluginMetaData_archRequirements()

proc size*(self: gen_qplugin_types.QPluginMetaData): csize_t =
  fcQPluginMetaData_size(self.h)

proc setSize*(self: gen_qplugin_types.QPluginMetaData, size: csize_t): void =
  fcQPluginMetaData_setSize(self.h, size)

proc metaData*(self: gen_qplugin_types.QStaticPlugin): gen_qjsonobject_types.QJsonObject =
  gen_qjsonobject_types.QJsonObject(h: fcQStaticPlugin_metaData(self.h), owned: true)

proc version*(self: gen_qplugin_types.QPluginMetaDataHeader): uint8 =
  fcQPluginMetaDataHeader_version(self.h)

proc setVersion*(self: gen_qplugin_types.QPluginMetaDataHeader, version: uint8): void =
  fcQPluginMetaDataHeader_setVersion(self.h, version)

proc majorVersion*(self: gen_qplugin_types.QPluginMetaDataHeader): uint8 =
  fcQPluginMetaDataHeader_majorVersion(self.h)

proc setQtMajorVersion*(self: gen_qplugin_types.QPluginMetaDataHeader, qt_major_version: uint8): void =
  fcQPluginMetaDataHeader_setQtMajorVersion(self.h, qt_major_version)

proc minorVersion*(self: gen_qplugin_types.QPluginMetaDataHeader): uint8 =
  fcQPluginMetaDataHeader_minorVersion(self.h)

proc setQtMinorVersion*(self: gen_qplugin_types.QPluginMetaDataHeader, qt_minor_version: uint8): void =
  fcQPluginMetaDataHeader_setQtMinorVersion(self.h, qt_minor_version)

proc pluginArchRequirements*(self: gen_qplugin_types.QPluginMetaDataHeader): uint8 =
  fcQPluginMetaDataHeader_pluginArchRequirements(self.h)

proc setPluginArchRequirements*(self: gen_qplugin_types.QPluginMetaDataHeader, plugin_arch_requirements: uint8): void =
  fcQPluginMetaDataHeader_setPluginArchRequirements(self.h, plugin_arch_requirements)

proc create*(T: type gen_qplugin_types.QPluginMetaDataHeader,
    param1: gen_qplugin_types.QPluginMetaDataHeader): gen_qplugin_types.QPluginMetaDataHeader =
  let tmp = gen_qplugin_types.QPluginMetaDataHeader(h: fcQPluginMetaDataHeader_new(param1.h), owned: true)
  tmp
proc header*(self: gen_qplugin_types.QPluginMetaDataMagicHeader): gen_qplugin_types.QPluginMetaDataHeader =
  gen_qplugin_types.QPluginMetaDataHeader(h: fcQPluginMetaDataMagicHeader_header(self.h), owned: true)

proc setHeader*(self: gen_qplugin_types.QPluginMetaDataMagicHeader, header: gen_qplugin_types.QPluginMetaDataHeader): void =
  fcQPluginMetaDataMagicHeader_setHeader(self.h, header.h)

proc create*(T: type gen_qplugin_types.QPluginMetaDataMagicHeader): gen_qplugin_types.QPluginMetaDataMagicHeader =
  let tmp = gen_qplugin_types.QPluginMetaDataMagicHeader(h: fcQPluginMetaDataMagicHeader_new(), owned: true)
  tmp
proc nNamesz*(self: gen_qplugin_types.QPluginMetaDataElfNoteHeader): cuint =
  fcQPluginMetaDataElfNoteHeader_nNamesz(self.h)

proc setNNamesz*(self: gen_qplugin_types.QPluginMetaDataElfNoteHeader, n_namesz: cuint): void =
  fcQPluginMetaDataElfNoteHeader_setNNamesz(self.h, n_namesz)

proc nDescsz*(self: gen_qplugin_types.QPluginMetaDataElfNoteHeader): cuint =
  fcQPluginMetaDataElfNoteHeader_nDescsz(self.h)

proc setNDescsz*(self: gen_qplugin_types.QPluginMetaDataElfNoteHeader, n_descsz: cuint): void =
  fcQPluginMetaDataElfNoteHeader_setNDescsz(self.h, n_descsz)

proc nType*(self: gen_qplugin_types.QPluginMetaDataElfNoteHeader): cuint =
  fcQPluginMetaDataElfNoteHeader_nType(self.h)

proc setNType*(self: gen_qplugin_types.QPluginMetaDataElfNoteHeader, n_type: cuint): void =
  fcQPluginMetaDataElfNoteHeader_setNType(self.h, n_type)

proc header*(self: gen_qplugin_types.QPluginMetaDataElfNoteHeader): gen_qplugin_types.QPluginMetaDataHeader =
  gen_qplugin_types.QPluginMetaDataHeader(h: fcQPluginMetaDataElfNoteHeader_header(self.h), owned: true)

proc setHeader*(self: gen_qplugin_types.QPluginMetaDataElfNoteHeader, header: gen_qplugin_types.QPluginMetaDataHeader): void =
  fcQPluginMetaDataElfNoteHeader_setHeader(self.h, header.h)

proc create*(T: type gen_qplugin_types.QPluginMetaDataElfNoteHeader,
    payloadSize: cuint): gen_qplugin_types.QPluginMetaDataElfNoteHeader =
  let tmp = gen_qplugin_types.QPluginMetaDataElfNoteHeader(h: fcQPluginMetaDataElfNoteHeader_new(payloadSize), owned: true)
  tmp
proc create*(T: type gen_qplugin_types.QPluginMetaDataElfNoteHeader,
    param1: gen_qplugin_types.QPluginMetaDataElfNoteHeader): gen_qplugin_types.QPluginMetaDataElfNoteHeader =
  let tmp = gen_qplugin_types.QPluginMetaDataElfNoteHeader(h: fcQPluginMetaDataElfNoteHeader_new2(param1.h), owned: true)
  tmp
