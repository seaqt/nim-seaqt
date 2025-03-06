type QAudioEncoderSettings* {.inheritable.} = object
  h*: pointer
  owned*: bool

const cflags = gorge("pkg-config --cflags Qt5Multimedia") & " -fPIC"
{.compile("gen_qmediaencodersettings.cpp", cflags).}

proc fcQAudioEncoderSettings_delete(self: pointer) {.importc: "QAudioEncoderSettings_delete".}
proc `=destroy`(self: var QAudioEncoderSettings) =
  if self.owned: fcQAudioEncoderSettings_delete(self.h)

proc `=sink`(dest: var QAudioEncoderSettings, source: QAudioEncoderSettings) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QAudioEncoderSettings, source: QAudioEncoderSettings) {.error.}
proc delete*(self: sink QAudioEncoderSettings) =
  let h = self.h
  wasMoved(self)
  fcQAudioEncoderSettings_delete(h)

type QVideoEncoderSettings* {.inheritable.} = object
  h*: pointer
  owned*: bool

proc fcQVideoEncoderSettings_delete(self: pointer) {.importc: "QVideoEncoderSettings_delete".}
proc `=destroy`(self: var QVideoEncoderSettings) =
  if self.owned: fcQVideoEncoderSettings_delete(self.h)

proc `=sink`(dest: var QVideoEncoderSettings, source: QVideoEncoderSettings) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QVideoEncoderSettings, source: QVideoEncoderSettings) {.error.}
proc delete*(self: sink QVideoEncoderSettings) =
  let h = self.h
  wasMoved(self)
  fcQVideoEncoderSettings_delete(h)

type QImageEncoderSettings* {.inheritable.} = object
  h*: pointer
  owned*: bool

proc fcQImageEncoderSettings_delete(self: pointer) {.importc: "QImageEncoderSettings_delete".}
proc `=destroy`(self: var QImageEncoderSettings) =
  if self.owned: fcQImageEncoderSettings_delete(self.h)

proc `=sink`(dest: var QImageEncoderSettings, source: QImageEncoderSettings) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QImageEncoderSettings, source: QImageEncoderSettings) {.error.}
proc delete*(self: sink QImageEncoderSettings) =
  let h = self.h
  wasMoved(self)
  fcQImageEncoderSettings_delete(h)

