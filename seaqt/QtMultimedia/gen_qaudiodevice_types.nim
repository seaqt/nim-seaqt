type QAudioDevice* {.inheritable.} = object
  h*: pointer
  owned*: bool

const cflags = gorge("pkg-config --cflags Qt6Multimedia") & " -fPIC"
{.compile("gen_qaudiodevice.cpp", cflags).}

proc fcQAudioDevice_delete(self: pointer) {.importc: "QAudioDevice_delete".}
proc `=destroy`(self: var QAudioDevice) =
  if self.owned: fcQAudioDevice_delete(self.h)

proc `=sink`(dest: var QAudioDevice, source: QAudioDevice) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QAudioDevice, source: QAudioDevice) {.error.}
proc delete*(self: sink QAudioDevice) =
  let h = self.h
  wasMoved(self)
  fcQAudioDevice_delete(h)

