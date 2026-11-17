type QAudioDeviceInfo* {.inheritable.} = object
  h*: pointer
  owned*: bool

import ./qtmultimedia_pkg

{.compile("gen_qaudiodeviceinfo.cpp", QtMultimediaCFlags).}

proc fcQAudioDeviceInfo_delete(self: pointer) {.importc: "QAudioDeviceInfo_delete".}
proc `=destroy`(self: var QAudioDeviceInfo) =
  if self.owned: fcQAudioDeviceInfo_delete(self.h)

proc `=sink`(dest: var QAudioDeviceInfo, source: QAudioDeviceInfo) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QAudioDeviceInfo, source: QAudioDeviceInfo) {.error.}
proc delete*(self: sink QAudioDeviceInfo) =
  let h = self.h
  wasMoved(self)
  fcQAudioDeviceInfo_delete(h)

