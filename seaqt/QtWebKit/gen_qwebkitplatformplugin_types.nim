type QWebSelectData* {.inheritable, pure.} = object
  h*: pointer
import ../QtCore/gen_qobject_types
export gen_qobject_types

type QWebSelectMethod* = object of gen_qobject_types.QObject
type QWebNotificationData* {.inheritable, pure.} = object
  h*: pointer
type QWebNotificationPresenter* = object of gen_qobject_types.QObject
type QWebHapticFeedbackPlayer* = object of gen_qobject_types.QObject
type QWebTouchModifier* = object of gen_qobject_types.QObject
type QWebSpellChecker* = object of gen_qobject_types.QObject
type QWebKitPlatformPlugin* {.inheritable, pure.} = object
  h*: pointer
type QWebSpellCheckerGrammarDetail* {.inheritable, pure.} = object
  h*: pointer
