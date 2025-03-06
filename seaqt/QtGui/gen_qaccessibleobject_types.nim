import ./gen_qaccessible_types
export gen_qaccessible_types

type QAccessibleObject* = object of gen_qaccessible_types.QAccessibleInterface
type QAccessibleApplication* = object of QAccessibleObject
