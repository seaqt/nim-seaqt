type QAudioSystemFactoryInterface* {.inheritable, pure.} = object
  h*: pointer
import ../QtCore/gen_qobject_types
export gen_qobject_types

# TODO Multiple inheritance from QAudioSystemFactoryInterface
type QAudioSystemPlugin* = object of gen_qobject_types.QObject
