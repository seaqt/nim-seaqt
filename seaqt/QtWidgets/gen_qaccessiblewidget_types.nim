import ../QtGui/gen_qaccessibleobject_types
export gen_qaccessibleobject_types

# TODO Multiple inheritance from QAccessibleActionInterface
type QAccessibleWidget* = object of gen_qaccessibleobject_types.QAccessibleObject
