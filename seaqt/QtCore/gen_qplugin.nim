import ./Qt6Core_libs

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
proc fcQStaticPlugin_metaData(self: pointer, ): pointer {.importc: "QStaticPlugin_metaData".}
proc fcQPluginMetaDataHeader_new(param1: pointer): ptr cQPluginMetaDataHeader {.importc: "QPluginMetaData__Header_new".}
proc fcQPluginMetaDataMagicHeader_new(): ptr cQPluginMetaDataMagicHeader {.importc: "QPluginMetaData__MagicHeader_new".}
proc fcQPluginMetaDataElfNoteHeader_new(payloadSize: cuint): ptr cQPluginMetaDataElfNoteHeader {.importc: "QPluginMetaData__ElfNoteHeader_new".}
proc fcQPluginMetaDataElfNoteHeader_new2(param1: pointer): ptr cQPluginMetaDataElfNoteHeader {.importc: "QPluginMetaData__ElfNoteHeader_new2".}

proc archRequirements*(_: type gen_qplugin_types.QPluginMetaData, ): uint8 =
  fcQPluginMetaData_archRequirements()

proc metaData*(self: gen_qplugin_types.QStaticPlugin, ): gen_qjsonobject_types.QJsonObject =
  gen_qjsonobject_types.QJsonObject(h: fcQStaticPlugin_metaData(self.h), owned: true)

proc create*(T: type gen_qplugin_types.QPluginMetaDataHeader,
    param1: gen_qplugin_types.QPluginMetaDataHeader): gen_qplugin_types.QPluginMetaDataHeader =
  gen_qplugin_types.QPluginMetaDataHeader(h: fcQPluginMetaDataHeader_new(param1.h), owned: true)

proc create*(T: type gen_qplugin_types.QPluginMetaDataMagicHeader): gen_qplugin_types.QPluginMetaDataMagicHeader =
  gen_qplugin_types.QPluginMetaDataMagicHeader(h: fcQPluginMetaDataMagicHeader_new(), owned: true)

proc create*(T: type gen_qplugin_types.QPluginMetaDataElfNoteHeader,
    payloadSize: cuint): gen_qplugin_types.QPluginMetaDataElfNoteHeader =
  gen_qplugin_types.QPluginMetaDataElfNoteHeader(h: fcQPluginMetaDataElfNoteHeader_new(payloadSize), owned: true)

proc create*(T: type gen_qplugin_types.QPluginMetaDataElfNoteHeader,
    param1: gen_qplugin_types.QPluginMetaDataElfNoteHeader): gen_qplugin_types.QPluginMetaDataElfNoteHeader =
  gen_qplugin_types.QPluginMetaDataElfNoteHeader(h: fcQPluginMetaDataElfNoteHeader_new2(param1.h), owned: true)

