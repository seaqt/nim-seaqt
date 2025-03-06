type QPluginMetaData* {.inheritable.} = object
  h*: pointer
  owned*: bool

const cflags = gorge("pkg-config --cflags Qt6Core") & " -fPIC"
{.compile("gen_qplugin.cpp", cflags).}

proc fcQPluginMetaData_delete(self: pointer) {.importc: "QPluginMetaData_delete".}
proc `=destroy`(self: var QPluginMetaData) =
  if self.owned: fcQPluginMetaData_delete(self.h)

proc `=sink`(dest: var QPluginMetaData, source: QPluginMetaData) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QPluginMetaData, source: QPluginMetaData) {.error.}
proc delete*(self: sink QPluginMetaData) =
  let h = self.h
  wasMoved(self)
  fcQPluginMetaData_delete(h)

type QStaticPlugin* {.inheritable.} = object
  h*: pointer
  owned*: bool

proc fcQStaticPlugin_delete(self: pointer) {.importc: "QStaticPlugin_delete".}
proc `=destroy`(self: var QStaticPlugin) =
  if self.owned: fcQStaticPlugin_delete(self.h)

proc `=sink`(dest: var QStaticPlugin, source: QStaticPlugin) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QStaticPlugin, source: QStaticPlugin) {.error.}
proc delete*(self: sink QStaticPlugin) =
  let h = self.h
  wasMoved(self)
  fcQStaticPlugin_delete(h)

type QPluginMetaDataHeader* {.inheritable.} = object
  h*: pointer
  owned*: bool

proc fcQPluginMetaDataHeader_delete(self: pointer) {.importc: "QPluginMetaData__Header_delete".}
proc `=destroy`(self: var QPluginMetaDataHeader) =
  if self.owned: fcQPluginMetaDataHeader_delete(self.h)

proc `=sink`(dest: var QPluginMetaDataHeader, source: QPluginMetaDataHeader) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QPluginMetaDataHeader, source: QPluginMetaDataHeader) {.error.}
proc delete*(self: sink QPluginMetaDataHeader) =
  let h = self.h
  wasMoved(self)
  fcQPluginMetaDataHeader_delete(h)

type QPluginMetaDataMagicHeader* {.inheritable.} = object
  h*: pointer
  owned*: bool

proc fcQPluginMetaDataMagicHeader_delete(self: pointer) {.importc: "QPluginMetaData__MagicHeader_delete".}
proc `=destroy`(self: var QPluginMetaDataMagicHeader) =
  if self.owned: fcQPluginMetaDataMagicHeader_delete(self.h)

proc `=sink`(dest: var QPluginMetaDataMagicHeader, source: QPluginMetaDataMagicHeader) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QPluginMetaDataMagicHeader, source: QPluginMetaDataMagicHeader) {.error.}
proc delete*(self: sink QPluginMetaDataMagicHeader) =
  let h = self.h
  wasMoved(self)
  fcQPluginMetaDataMagicHeader_delete(h)

type QPluginMetaDataElfNoteHeader* {.inheritable.} = object
  h*: pointer
  owned*: bool

proc fcQPluginMetaDataElfNoteHeader_delete(self: pointer) {.importc: "QPluginMetaData__ElfNoteHeader_delete".}
proc `=destroy`(self: var QPluginMetaDataElfNoteHeader) =
  if self.owned: fcQPluginMetaDataElfNoteHeader_delete(self.h)

proc `=sink`(dest: var QPluginMetaDataElfNoteHeader, source: QPluginMetaDataElfNoteHeader) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QPluginMetaDataElfNoteHeader, source: QPluginMetaDataElfNoteHeader) {.error.}
proc delete*(self: sink QPluginMetaDataElfNoteHeader) =
  let h = self.h
  wasMoved(self)
  fcQPluginMetaDataElfNoteHeader_delete(h)

