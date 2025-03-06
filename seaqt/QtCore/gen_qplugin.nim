import ./Qt6Core_libs

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

const cflags = gorge("pkg-config --cflags Qt6Core")  & " -fPIC"
{.compile("gen_qplugin.cpp", cflags).}


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
proc fcQPluginMetaData_delete(self: pointer) {.importc: "QPluginMetaData_delete".}
proc fcQStaticPlugin_metaData(self: pointer, ): pointer {.importc: "QStaticPlugin_metaData".}
proc fcQStaticPlugin_delete(self: pointer) {.importc: "QStaticPlugin_delete".}
proc fcQPluginMetaDataHeader_new(param1: pointer): ptr cQPluginMetaDataHeader {.importc: "QPluginMetaData__Header_new".}
proc fcQPluginMetaDataHeader_delete(self: pointer) {.importc: "QPluginMetaData__Header_delete".}
proc fcQPluginMetaDataMagicHeader_new(): ptr cQPluginMetaDataMagicHeader {.importc: "QPluginMetaData__MagicHeader_new".}
proc fcQPluginMetaDataMagicHeader_delete(self: pointer) {.importc: "QPluginMetaData__MagicHeader_delete".}
proc fcQPluginMetaDataElfNoteHeader_new(payloadSize: cuint): ptr cQPluginMetaDataElfNoteHeader {.importc: "QPluginMetaData__ElfNoteHeader_new".}
proc fcQPluginMetaDataElfNoteHeader_new2(param1: pointer): ptr cQPluginMetaDataElfNoteHeader {.importc: "QPluginMetaData__ElfNoteHeader_new2".}
proc fcQPluginMetaDataElfNoteHeader_delete(self: pointer) {.importc: "QPluginMetaData__ElfNoteHeader_delete".}

proc archRequirements*(_: type gen_qplugin_types.QPluginMetaData, ): uint8 =
  fcQPluginMetaData_archRequirements()

proc delete*(self: gen_qplugin_types.QPluginMetaData) =
  fcQPluginMetaData_delete(self.h)
proc metaData*(self: gen_qplugin_types.QStaticPlugin, ): gen_qjsonobject_types.QJsonObject =
  gen_qjsonobject_types.QJsonObject(h: fcQStaticPlugin_metaData(self.h))

proc delete*(self: gen_qplugin_types.QStaticPlugin) =
  fcQStaticPlugin_delete(self.h)
proc create*(T: type gen_qplugin_types.QPluginMetaDataHeader,
    param1: gen_qplugin_types.QPluginMetaDataHeader): gen_qplugin_types.QPluginMetaDataHeader =
  gen_qplugin_types.QPluginMetaDataHeader(h: fcQPluginMetaDataHeader_new(param1.h))

proc delete*(self: gen_qplugin_types.QPluginMetaDataHeader) =
  fcQPluginMetaDataHeader_delete(self.h)
proc create*(T: type gen_qplugin_types.QPluginMetaDataMagicHeader): gen_qplugin_types.QPluginMetaDataMagicHeader =
  gen_qplugin_types.QPluginMetaDataMagicHeader(h: fcQPluginMetaDataMagicHeader_new())

proc delete*(self: gen_qplugin_types.QPluginMetaDataMagicHeader) =
  fcQPluginMetaDataMagicHeader_delete(self.h)
proc create*(T: type gen_qplugin_types.QPluginMetaDataElfNoteHeader,
    payloadSize: cuint): gen_qplugin_types.QPluginMetaDataElfNoteHeader =
  gen_qplugin_types.QPluginMetaDataElfNoteHeader(h: fcQPluginMetaDataElfNoteHeader_new(payloadSize))

proc create*(T: type gen_qplugin_types.QPluginMetaDataElfNoteHeader,
    param1: gen_qplugin_types.QPluginMetaDataElfNoteHeader): gen_qplugin_types.QPluginMetaDataElfNoteHeader =
  gen_qplugin_types.QPluginMetaDataElfNoteHeader(h: fcQPluginMetaDataElfNoteHeader_new2(param1.h))

proc delete*(self: gen_qplugin_types.QPluginMetaDataElfNoteHeader) =
  fcQPluginMetaDataElfNoteHeader_delete(self.h)
