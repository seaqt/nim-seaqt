type QPropertyBindingSourceLocation* {.inheritable, pure.} = object
  h*: pointer
type QPropertyBindingError* {.inheritable, pure.} = object
  h*: pointer
type QUntypedPropertyBinding* {.inheritable, pure.} = object
  h*: pointer
type QPropertyObserverBase* {.inheritable, pure.} = object
  h*: pointer
type QPropertyObserver* = object of QPropertyObserverBase
type QPropertyNotifier* = object of QPropertyObserver
type QUntypedBindable* {.inheritable, pure.} = object
  h*: pointer
