type QAudioSystemFactoryInterface* {.inheritable.} = object
  h*: pointer
  owned*: bool

const cflags = gorge("pkg-config --cflags Qt5Multimedia") & " -fPIC"
{.compile("gen_qaudiosystemplugin.cpp", cflags).}

proc fcQAudioSystemFactoryInterface_delete(self: pointer) {.importc: "QAudioSystemFactoryInterface_delete".}
proc `=destroy`(self: var QAudioSystemFactoryInterface) =
  if self.owned: fcQAudioSystemFactoryInterface_delete(self.h)

proc `=sink`(dest: var QAudioSystemFactoryInterface, source: QAudioSystemFactoryInterface) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QAudioSystemFactoryInterface, source: QAudioSystemFactoryInterface) {.error.}
proc delete*(self: sink QAudioSystemFactoryInterface) =
  let h = self.h
  wasMoved(self)
  fcQAudioSystemFactoryInterface_delete(h)

import ../QtCore/gen_qobject_types
export gen_qobject_types

# TODO Multiple inheritance from QAudioSystemFactoryInterface
type QAudioSystemPlugin* = object of gen_qobject_types.QObject
