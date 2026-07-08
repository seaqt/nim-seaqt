#pragma once
#ifndef SEAQT_QTGUI_GEN_QEVENT_H
#define SEAQT_QTGUI_GEN_QEVENT_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt-runtime.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QActionEvent;
class QApplicationStateChangeEvent;
class QCloseEvent;
class QContextMenuEvent;
class QDragEnterEvent;
class QDragLeaveEvent;
class QDragMoveEvent;
class QDropEvent;
class QEnterEvent;
class QEvent;
class QEventPoint;
class QExposeEvent;
class QFile;
class QFileOpenEvent;
class QFocusEvent;
class QHelpEvent;
class QHideEvent;
class QHoverEvent;
class QIconDragEvent;
class QInputDevice;
class QInputEvent;
class QInputMethodEvent;
#if defined(WORKAROUND_INNER_CLASS_DEFINITION_QInputMethodEvent__Attribute)
typedef QInputMethodEvent::Attribute QInputMethodEvent__Attribute;
#else
class QInputMethodEvent__Attribute;
#endif
class QInputMethodQueryEvent;
class QKeyCombination;
class QKeyEvent;
class QKeySequence;
class QMetaObject;
class QMimeData;
class QMouseEvent;
class QMoveEvent;
class QNativeGestureEvent;
class QObject;
class QPaintEvent;
class QPlatformSurfaceEvent;
class QPoint;
class QPointF;
class QPointerEvent;
class QPointingDevice;
class QRect;
class QRectF;
class QRegion;
class QResizeEvent;
class QScreen;
class QScreenOrientationChangeEvent;
class QScrollEvent;
class QScrollPrepareEvent;
class QShortcut;
class QShortcutEvent;
class QShowEvent;
class QSinglePointEvent;
class QSize;
class QSizeF;
class QStatusTipEvent;
class QTabletEvent;
class QToolBarChangeEvent;
class QTouchEvent;
class QUrl;
class QVariant;
class QWhatsThisClickedEvent;
class QWheelEvent;
class QWindowStateChangeEvent;
#else
typedef struct QActionEvent QActionEvent;
typedef struct QApplicationStateChangeEvent QApplicationStateChangeEvent;
typedef struct QCloseEvent QCloseEvent;
typedef struct QContextMenuEvent QContextMenuEvent;
typedef struct QDragEnterEvent QDragEnterEvent;
typedef struct QDragLeaveEvent QDragLeaveEvent;
typedef struct QDragMoveEvent QDragMoveEvent;
typedef struct QDropEvent QDropEvent;
typedef struct QEnterEvent QEnterEvent;
typedef struct QEvent QEvent;
typedef struct QEventPoint QEventPoint;
typedef struct QExposeEvent QExposeEvent;
typedef struct QFile QFile;
typedef struct QFileOpenEvent QFileOpenEvent;
typedef struct QFocusEvent QFocusEvent;
typedef struct QHelpEvent QHelpEvent;
typedef struct QHideEvent QHideEvent;
typedef struct QHoverEvent QHoverEvent;
typedef struct QIconDragEvent QIconDragEvent;
typedef struct QInputDevice QInputDevice;
typedef struct QInputEvent QInputEvent;
typedef struct QInputMethodEvent QInputMethodEvent;
typedef struct QInputMethodEvent__Attribute QInputMethodEvent__Attribute;
typedef struct QInputMethodQueryEvent QInputMethodQueryEvent;
typedef struct QKeyCombination QKeyCombination;
typedef struct QKeyEvent QKeyEvent;
typedef struct QKeySequence QKeySequence;
typedef struct QMetaObject QMetaObject;
typedef struct QMimeData QMimeData;
typedef struct QMouseEvent QMouseEvent;
typedef struct QMoveEvent QMoveEvent;
typedef struct QNativeGestureEvent QNativeGestureEvent;
typedef struct QObject QObject;
typedef struct QPaintEvent QPaintEvent;
typedef struct QPlatformSurfaceEvent QPlatformSurfaceEvent;
typedef struct QPoint QPoint;
typedef struct QPointF QPointF;
typedef struct QPointerEvent QPointerEvent;
typedef struct QPointingDevice QPointingDevice;
typedef struct QRect QRect;
typedef struct QRectF QRectF;
typedef struct QRegion QRegion;
typedef struct QResizeEvent QResizeEvent;
typedef struct QScreen QScreen;
typedef struct QScreenOrientationChangeEvent QScreenOrientationChangeEvent;
typedef struct QScrollEvent QScrollEvent;
typedef struct QScrollPrepareEvent QScrollPrepareEvent;
typedef struct QShortcut QShortcut;
typedef struct QShortcutEvent QShortcutEvent;
typedef struct QShowEvent QShowEvent;
typedef struct QSinglePointEvent QSinglePointEvent;
typedef struct QSize QSize;
typedef struct QSizeF QSizeF;
typedef struct QStatusTipEvent QStatusTipEvent;
typedef struct QTabletEvent QTabletEvent;
typedef struct QToolBarChangeEvent QToolBarChangeEvent;
typedef struct QTouchEvent QTouchEvent;
typedef struct QUrl QUrl;
typedef struct QVariant QVariant;
typedef struct QWhatsThisClickedEvent QWhatsThisClickedEvent;
typedef struct QWheelEvent QWheelEvent;
typedef struct QWindowStateChangeEvent QWindowStateChangeEvent;
#endif

typedef struct VirtualQInputEvent VirtualQInputEvent;
typedef struct QInputEvent_VTable{
	void (*destructor)(VirtualQInputEvent* self);
	QInputEvent* (*clone)(const VirtualQInputEvent* self);
	void (*setTimestamp)(VirtualQInputEvent* self, unsigned long long timestamp);
	void (*setAccepted)(VirtualQInputEvent* self, bool accepted);
}QInputEvent_VTable;

void* QInputEvent_vdata(VirtualQInputEvent* self);
VirtualQInputEvent* vdata_QInputEvent(void* vdata);

VirtualQInputEvent* QInputEvent_new_type_m_dev(const QInputEvent_VTable* vtbl, size_t vdata, int type, QInputDevice* m_dev);
VirtualQInputEvent* QInputEvent_new_type_m_dev_modifiers(const QInputEvent_VTable* vtbl, size_t vdata, int type, QInputDevice* m_dev, int modifiers);

void QInputEvent_virtbase(QInputEvent* src, QEvent** outptr_QEvent);
QInputEvent* QInputEvent_clone(const QInputEvent* self);
QInputDevice* QInputEvent_device(const QInputEvent* self);
int QInputEvent_deviceType(const QInputEvent* self);
int QInputEvent_modifiers(const QInputEvent* self);
void QInputEvent_setModifiers(QInputEvent* self, int modifiers);
unsigned long long QInputEvent_timestamp(const QInputEvent* self);
void QInputEvent_setTimestamp(QInputEvent* self, unsigned long long timestamp);

QInputEvent* QInputEvent_virtualbase_clone(const VirtualQInputEvent* self);
void QInputEvent_virtualbase_setTimestamp(VirtualQInputEvent* self, unsigned long long timestamp);
void QInputEvent_virtualbase_setAccepted(VirtualQInputEvent* self, bool accepted);

void QInputEvent_delete(QInputEvent* self);

typedef struct VirtualQPointerEvent VirtualQPointerEvent;
typedef struct QPointerEvent_VTable{
	void (*destructor)(VirtualQPointerEvent* self);
	QPointerEvent* (*clone)(const VirtualQPointerEvent* self);
	void (*setTimestamp)(VirtualQPointerEvent* self, unsigned long long timestamp);
	bool (*isBeginEvent)(const VirtualQPointerEvent* self);
	bool (*isUpdateEvent)(const VirtualQPointerEvent* self);
	bool (*isEndEvent)(const VirtualQPointerEvent* self);
	void (*setAccepted)(VirtualQPointerEvent* self, bool accepted);
}QPointerEvent_VTable;

void* QPointerEvent_vdata(VirtualQPointerEvent* self);
VirtualQPointerEvent* vdata_QPointerEvent(void* vdata);

VirtualQPointerEvent* QPointerEvent_new_type_dev(const QPointerEvent_VTable* vtbl, size_t vdata, int type, QPointingDevice* dev);
VirtualQPointerEvent* QPointerEvent_new_type_dev_modifiers(const QPointerEvent_VTable* vtbl, size_t vdata, int type, QPointingDevice* dev, int modifiers);
VirtualQPointerEvent* QPointerEvent_new_type_dev_modifiers_points(const QPointerEvent_VTable* vtbl, size_t vdata, int type, QPointingDevice* dev, int modifiers, struct seaqt_array /* of QEventPoint* */  points);

void QPointerEvent_virtbase(QPointerEvent* src, QInputEvent** outptr_QInputEvent);
QPointerEvent* QPointerEvent_clone(const QPointerEvent* self);
QPointingDevice* QPointerEvent_pointingDevice(const QPointerEvent* self);
int QPointerEvent_pointerType(const QPointerEvent* self);
void QPointerEvent_setTimestamp(QPointerEvent* self, unsigned long long timestamp);
ptrdiff_t QPointerEvent_pointCount(const QPointerEvent* self);
QEventPoint* QPointerEvent_point(QPointerEvent* self, ptrdiff_t i);
struct seaqt_array /* of QEventPoint* */  QPointerEvent_points(const QPointerEvent* self);
QEventPoint* QPointerEvent_pointById(QPointerEvent* self, int id);
bool QPointerEvent_allPointsGrabbed(const QPointerEvent* self);
bool QPointerEvent_isBeginEvent(const QPointerEvent* self);
bool QPointerEvent_isUpdateEvent(const QPointerEvent* self);
bool QPointerEvent_isEndEvent(const QPointerEvent* self);
bool QPointerEvent_allPointsAccepted(const QPointerEvent* self);
void QPointerEvent_setAccepted(QPointerEvent* self, bool accepted);
QObject* QPointerEvent_exclusiveGrabber(const QPointerEvent* self, QEventPoint* point);
void QPointerEvent_setExclusiveGrabber(QPointerEvent* self, QEventPoint* point, QObject* exclusiveGrabber);
void QPointerEvent_clearPassiveGrabbers(QPointerEvent* self, QEventPoint* point);
bool QPointerEvent_addPassiveGrabber(QPointerEvent* self, QEventPoint* point, QObject* grabber);
bool QPointerEvent_removePassiveGrabber(QPointerEvent* self, QEventPoint* point, QObject* grabber);

QPointerEvent* QPointerEvent_virtualbase_clone(const VirtualQPointerEvent* self);
void QPointerEvent_virtualbase_setTimestamp(VirtualQPointerEvent* self, unsigned long long timestamp);
bool QPointerEvent_virtualbase_isBeginEvent(const VirtualQPointerEvent* self);
bool QPointerEvent_virtualbase_isUpdateEvent(const VirtualQPointerEvent* self);
bool QPointerEvent_virtualbase_isEndEvent(const VirtualQPointerEvent* self);
void QPointerEvent_virtualbase_setAccepted(VirtualQPointerEvent* self, bool accepted);

void QPointerEvent_delete(QPointerEvent* self);

void QSinglePointEvent_virtbase(QSinglePointEvent* src, QPointerEvent** outptr_QPointerEvent);
QSinglePointEvent* QSinglePointEvent_clone(const QSinglePointEvent* self);
int QSinglePointEvent_button(const QSinglePointEvent* self);
int QSinglePointEvent_buttons(const QSinglePointEvent* self);
QPointF* QSinglePointEvent_position(const QSinglePointEvent* self);
QPointF* QSinglePointEvent_scenePosition(const QSinglePointEvent* self);
QPointF* QSinglePointEvent_globalPosition(const QSinglePointEvent* self);
bool QSinglePointEvent_isBeginEvent(const QSinglePointEvent* self);
bool QSinglePointEvent_isUpdateEvent(const QSinglePointEvent* self);
bool QSinglePointEvent_isEndEvent(const QSinglePointEvent* self);
QObject* QSinglePointEvent_exclusivePointGrabber(const QSinglePointEvent* self);
void QSinglePointEvent_setExclusivePointGrabber(QSinglePointEvent* self, QObject* exclusiveGrabber);

const QMetaObject* QSinglePointEvent_staticMetaObject();
void QSinglePointEvent_delete(QSinglePointEvent* self);

typedef struct VirtualQEnterEvent VirtualQEnterEvent;
typedef struct QEnterEvent_VTable{
	void (*destructor)(VirtualQEnterEvent* self);
	QEnterEvent* (*clone)(const VirtualQEnterEvent* self);
	bool (*isBeginEvent)(const VirtualQEnterEvent* self);
	bool (*isUpdateEvent)(const VirtualQEnterEvent* self);
	bool (*isEndEvent)(const VirtualQEnterEvent* self);
	void (*setTimestamp)(VirtualQEnterEvent* self, unsigned long long timestamp);
	void (*setAccepted)(VirtualQEnterEvent* self, bool accepted);
}QEnterEvent_VTable;

void* QEnterEvent_vdata(VirtualQEnterEvent* self);
VirtualQEnterEvent* vdata_QEnterEvent(void* vdata);

VirtualQEnterEvent* QEnterEvent_new_localPos_scenePos_globalPos(const QEnterEvent_VTable* vtbl, size_t vdata, QPointF* localPos, QPointF* scenePos, QPointF* globalPos);
VirtualQEnterEvent* QEnterEvent_new_localPos_scenePos_globalPos_device(const QEnterEvent_VTable* vtbl, size_t vdata, QPointF* localPos, QPointF* scenePos, QPointF* globalPos, QPointingDevice* device);

void QEnterEvent_virtbase(QEnterEvent* src, QSinglePointEvent** outptr_QSinglePointEvent);
QEnterEvent* QEnterEvent_clone(const QEnterEvent* self);
QPoint* QEnterEvent_pos(const QEnterEvent* self);
QPoint* QEnterEvent_globalPos(const QEnterEvent* self);
int QEnterEvent_x(const QEnterEvent* self);
int QEnterEvent_y(const QEnterEvent* self);
int QEnterEvent_globalX(const QEnterEvent* self);
int QEnterEvent_globalY(const QEnterEvent* self);
QPointF* QEnterEvent_localPos(const QEnterEvent* self);
QPointF* QEnterEvent_windowPos(const QEnterEvent* self);
QPointF* QEnterEvent_screenPos(const QEnterEvent* self);

QEnterEvent* QEnterEvent_virtualbase_clone(const VirtualQEnterEvent* self);
bool QEnterEvent_virtualbase_isBeginEvent(const VirtualQEnterEvent* self);
bool QEnterEvent_virtualbase_isUpdateEvent(const VirtualQEnterEvent* self);
bool QEnterEvent_virtualbase_isEndEvent(const VirtualQEnterEvent* self);
void QEnterEvent_virtualbase_setTimestamp(VirtualQEnterEvent* self, unsigned long long timestamp);
void QEnterEvent_virtualbase_setAccepted(VirtualQEnterEvent* self, bool accepted);

void QEnterEvent_delete(QEnterEvent* self);

typedef struct VirtualQMouseEvent VirtualQMouseEvent;
typedef struct QMouseEvent_VTable{
	void (*destructor)(VirtualQMouseEvent* self);
	QMouseEvent* (*clone)(const VirtualQMouseEvent* self);
	bool (*isBeginEvent)(const VirtualQMouseEvent* self);
	bool (*isUpdateEvent)(const VirtualQMouseEvent* self);
	bool (*isEndEvent)(const VirtualQMouseEvent* self);
	void (*setTimestamp)(VirtualQMouseEvent* self, unsigned long long timestamp);
	void (*setAccepted)(VirtualQMouseEvent* self, bool accepted);
}QMouseEvent_VTable;

void* QMouseEvent_vdata(VirtualQMouseEvent* self);
VirtualQMouseEvent* vdata_QMouseEvent(void* vdata);

VirtualQMouseEvent* QMouseEvent_new_type_localPos_button_buttons_modifiers(const QMouseEvent_VTable* vtbl, size_t vdata, int type, QPointF* localPos, int button, int buttons, int modifiers);
VirtualQMouseEvent* QMouseEvent_new_type_localPos_globalPos_button_buttons_modifiers(const QMouseEvent_VTable* vtbl, size_t vdata, int type, QPointF* localPos, QPointF* globalPos, int button, int buttons, int modifiers);
VirtualQMouseEvent* QMouseEvent_new_type_localPos_scenePos_globalPos_button_buttons_modifiers(const QMouseEvent_VTable* vtbl, size_t vdata, int type, QPointF* localPos, QPointF* scenePos, QPointF* globalPos, int button, int buttons, int modifiers);
VirtualQMouseEvent* QMouseEvent_new_type_localPos_scenePos_globalPos_button_buttons_modifiers_source(const QMouseEvent_VTable* vtbl, size_t vdata, int type, QPointF* localPos, QPointF* scenePos, QPointF* globalPos, int button, int buttons, int modifiers, int source);
VirtualQMouseEvent* QMouseEvent_new_type_localPos_button_buttons_modifiers_device(const QMouseEvent_VTable* vtbl, size_t vdata, int type, QPointF* localPos, int button, int buttons, int modifiers, QPointingDevice* device);
VirtualQMouseEvent* QMouseEvent_new_type_localPos_globalPos_button_buttons_modifiers_device(const QMouseEvent_VTable* vtbl, size_t vdata, int type, QPointF* localPos, QPointF* globalPos, int button, int buttons, int modifiers, QPointingDevice* device);
VirtualQMouseEvent* QMouseEvent_new_type_localPos_scenePos_globalPos_button_buttons_modifiers_device(const QMouseEvent_VTable* vtbl, size_t vdata, int type, QPointF* localPos, QPointF* scenePos, QPointF* globalPos, int button, int buttons, int modifiers, QPointingDevice* device);
VirtualQMouseEvent* QMouseEvent_new_type_localPos_scenePos_globalPos_button_buttons_modifiers_source_device(const QMouseEvent_VTable* vtbl, size_t vdata, int type, QPointF* localPos, QPointF* scenePos, QPointF* globalPos, int button, int buttons, int modifiers, int source, QPointingDevice* device);

void QMouseEvent_virtbase(QMouseEvent* src, QSinglePointEvent** outptr_QSinglePointEvent);
QMouseEvent* QMouseEvent_clone(const QMouseEvent* self);
QPoint* QMouseEvent_pos(const QMouseEvent* self);
QPoint* QMouseEvent_globalPos(const QMouseEvent* self);
int QMouseEvent_x(const QMouseEvent* self);
int QMouseEvent_y(const QMouseEvent* self);
int QMouseEvent_globalX(const QMouseEvent* self);
int QMouseEvent_globalY(const QMouseEvent* self);
QPointF* QMouseEvent_localPos(const QMouseEvent* self);
QPointF* QMouseEvent_windowPos(const QMouseEvent* self);
QPointF* QMouseEvent_screenPos(const QMouseEvent* self);
int QMouseEvent_source(const QMouseEvent* self);
int QMouseEvent_flags(const QMouseEvent* self);

QMouseEvent* QMouseEvent_virtualbase_clone(const VirtualQMouseEvent* self);
bool QMouseEvent_virtualbase_isBeginEvent(const VirtualQMouseEvent* self);
bool QMouseEvent_virtualbase_isUpdateEvent(const VirtualQMouseEvent* self);
bool QMouseEvent_virtualbase_isEndEvent(const VirtualQMouseEvent* self);
void QMouseEvent_virtualbase_setTimestamp(VirtualQMouseEvent* self, unsigned long long timestamp);
void QMouseEvent_virtualbase_setAccepted(VirtualQMouseEvent* self, bool accepted);

void QMouseEvent_delete(QMouseEvent* self);

typedef struct VirtualQHoverEvent VirtualQHoverEvent;
typedef struct QHoverEvent_VTable{
	void (*destructor)(VirtualQHoverEvent* self);
	QHoverEvent* (*clone)(const VirtualQHoverEvent* self);
	bool (*isUpdateEvent)(const VirtualQHoverEvent* self);
	bool (*isBeginEvent)(const VirtualQHoverEvent* self);
	bool (*isEndEvent)(const VirtualQHoverEvent* self);
	void (*setTimestamp)(VirtualQHoverEvent* self, unsigned long long timestamp);
	void (*setAccepted)(VirtualQHoverEvent* self, bool accepted);
}QHoverEvent_VTable;

void* QHoverEvent_vdata(VirtualQHoverEvent* self);
VirtualQHoverEvent* vdata_QHoverEvent(void* vdata);

VirtualQHoverEvent* QHoverEvent_new_type_scenePos_globalPos_oldPos(const QHoverEvent_VTable* vtbl, size_t vdata, int type, QPointF* scenePos, QPointF* globalPos, QPointF* oldPos);
VirtualQHoverEvent* QHoverEvent_new_type_pos_oldPos(const QHoverEvent_VTable* vtbl, size_t vdata, int type, QPointF* pos, QPointF* oldPos);
VirtualQHoverEvent* QHoverEvent_new_type_scenePos_globalPos_oldPos_modifiers(const QHoverEvent_VTable* vtbl, size_t vdata, int type, QPointF* scenePos, QPointF* globalPos, QPointF* oldPos, int modifiers);
VirtualQHoverEvent* QHoverEvent_new_type_scenePos_globalPos_oldPos_modifiers_device(const QHoverEvent_VTable* vtbl, size_t vdata, int type, QPointF* scenePos, QPointF* globalPos, QPointF* oldPos, int modifiers, QPointingDevice* device);
VirtualQHoverEvent* QHoverEvent_new_type_pos_oldPos_modifiers(const QHoverEvent_VTable* vtbl, size_t vdata, int type, QPointF* pos, QPointF* oldPos, int modifiers);
VirtualQHoverEvent* QHoverEvent_new_type_pos_oldPos_modifiers_device(const QHoverEvent_VTable* vtbl, size_t vdata, int type, QPointF* pos, QPointF* oldPos, int modifiers, QPointingDevice* device);

void QHoverEvent_virtbase(QHoverEvent* src, QSinglePointEvent** outptr_QSinglePointEvent);
QHoverEvent* QHoverEvent_clone(const QHoverEvent* self);
QPoint* QHoverEvent_pos(const QHoverEvent* self);
QPointF* QHoverEvent_posF(const QHoverEvent* self);
bool QHoverEvent_isUpdateEvent(const QHoverEvent* self);
QPoint* QHoverEvent_oldPos(const QHoverEvent* self);
QPointF* QHoverEvent_oldPosF(const QHoverEvent* self);

QHoverEvent* QHoverEvent_virtualbase_clone(const VirtualQHoverEvent* self);
bool QHoverEvent_virtualbase_isUpdateEvent(const VirtualQHoverEvent* self);
bool QHoverEvent_virtualbase_isBeginEvent(const VirtualQHoverEvent* self);
bool QHoverEvent_virtualbase_isEndEvent(const VirtualQHoverEvent* self);
void QHoverEvent_virtualbase_setTimestamp(VirtualQHoverEvent* self, unsigned long long timestamp);
void QHoverEvent_virtualbase_setAccepted(VirtualQHoverEvent* self, bool accepted);

void QHoverEvent_delete(QHoverEvent* self);

typedef struct VirtualQWheelEvent VirtualQWheelEvent;
typedef struct QWheelEvent_VTable{
	void (*destructor)(VirtualQWheelEvent* self);
	QWheelEvent* (*clone)(const VirtualQWheelEvent* self);
	bool (*isBeginEvent)(const VirtualQWheelEvent* self);
	bool (*isUpdateEvent)(const VirtualQWheelEvent* self);
	bool (*isEndEvent)(const VirtualQWheelEvent* self);
	void (*setTimestamp)(VirtualQWheelEvent* self, unsigned long long timestamp);
	void (*setAccepted)(VirtualQWheelEvent* self, bool accepted);
}QWheelEvent_VTable;

void* QWheelEvent_vdata(VirtualQWheelEvent* self);
VirtualQWheelEvent* vdata_QWheelEvent(void* vdata);

VirtualQWheelEvent* QWheelEvent_new_pos_globalPos_pixelDelta_angleDelta_buttons_modifiers_phase_inverted(const QWheelEvent_VTable* vtbl, size_t vdata, QPointF* pos, QPointF* globalPos, QPoint* pixelDelta, QPoint* angleDelta, int buttons, int modifiers, int phase, bool inverted);
VirtualQWheelEvent* QWheelEvent_new_pos_globalPos_pixelDelta_angleDelta_buttons_modifiers_phase_inverted_source(const QWheelEvent_VTable* vtbl, size_t vdata, QPointF* pos, QPointF* globalPos, QPoint* pixelDelta, QPoint* angleDelta, int buttons, int modifiers, int phase, bool inverted, int source);
VirtualQWheelEvent* QWheelEvent_new_pos_globalPos_pixelDelta_angleDelta_buttons_modifiers_phase_inverted_source_device(const QWheelEvent_VTable* vtbl, size_t vdata, QPointF* pos, QPointF* globalPos, QPoint* pixelDelta, QPoint* angleDelta, int buttons, int modifiers, int phase, bool inverted, int source, QPointingDevice* device);

void QWheelEvent_virtbase(QWheelEvent* src, QSinglePointEvent** outptr_QSinglePointEvent);
QWheelEvent* QWheelEvent_clone(const QWheelEvent* self);
QPoint* QWheelEvent_pixelDelta(const QWheelEvent* self);
QPoint* QWheelEvent_angleDelta(const QWheelEvent* self);
int QWheelEvent_phase(const QWheelEvent* self);
bool QWheelEvent_inverted(const QWheelEvent* self);
bool QWheelEvent_isInverted(const QWheelEvent* self);
bool QWheelEvent_hasPixelDelta(const QWheelEvent* self);
bool QWheelEvent_isBeginEvent(const QWheelEvent* self);
bool QWheelEvent_isUpdateEvent(const QWheelEvent* self);
bool QWheelEvent_isEndEvent(const QWheelEvent* self);
int QWheelEvent_source(const QWheelEvent* self);

QWheelEvent* QWheelEvent_virtualbase_clone(const VirtualQWheelEvent* self);
bool QWheelEvent_virtualbase_isBeginEvent(const VirtualQWheelEvent* self);
bool QWheelEvent_virtualbase_isUpdateEvent(const VirtualQWheelEvent* self);
bool QWheelEvent_virtualbase_isEndEvent(const VirtualQWheelEvent* self);
void QWheelEvent_virtualbase_setTimestamp(VirtualQWheelEvent* self, unsigned long long timestamp);
void QWheelEvent_virtualbase_setAccepted(VirtualQWheelEvent* self, bool accepted);

const QMetaObject* QWheelEvent_staticMetaObject();
void QWheelEvent_delete(QWheelEvent* self);

typedef struct VirtualQTabletEvent VirtualQTabletEvent;
typedef struct QTabletEvent_VTable{
	void (*destructor)(VirtualQTabletEvent* self);
	QTabletEvent* (*clone)(const VirtualQTabletEvent* self);
	bool (*isBeginEvent)(const VirtualQTabletEvent* self);
	bool (*isUpdateEvent)(const VirtualQTabletEvent* self);
	bool (*isEndEvent)(const VirtualQTabletEvent* self);
	void (*setTimestamp)(VirtualQTabletEvent* self, unsigned long long timestamp);
	void (*setAccepted)(VirtualQTabletEvent* self, bool accepted);
}QTabletEvent_VTable;

void* QTabletEvent_vdata(VirtualQTabletEvent* self);
VirtualQTabletEvent* vdata_QTabletEvent(void* vdata);

VirtualQTabletEvent* QTabletEvent_new(const QTabletEvent_VTable* vtbl, size_t vdata, int t, QPointingDevice* device, QPointF* pos, QPointF* globalPos, double pressure, float xTilt, float yTilt, float tangentialPressure, double rotation, float z, int keyState, int button, int buttons);

void QTabletEvent_virtbase(QTabletEvent* src, QSinglePointEvent** outptr_QSinglePointEvent);
QTabletEvent* QTabletEvent_clone(const QTabletEvent* self);
QPoint* QTabletEvent_pos(const QTabletEvent* self);
QPoint* QTabletEvent_globalPos(const QTabletEvent* self);
QPointF* QTabletEvent_posF(const QTabletEvent* self);
QPointF* QTabletEvent_globalPosF(const QTabletEvent* self);
int QTabletEvent_x(const QTabletEvent* self);
int QTabletEvent_y(const QTabletEvent* self);
int QTabletEvent_globalX(const QTabletEvent* self);
int QTabletEvent_globalY(const QTabletEvent* self);
double QTabletEvent_hiResGlobalX(const QTabletEvent* self);
double QTabletEvent_hiResGlobalY(const QTabletEvent* self);
long long QTabletEvent_uniqueId(const QTabletEvent* self);
double QTabletEvent_pressure(const QTabletEvent* self);
double QTabletEvent_rotation(const QTabletEvent* self);
double QTabletEvent_z(const QTabletEvent* self);
double QTabletEvent_tangentialPressure(const QTabletEvent* self);
double QTabletEvent_xTilt(const QTabletEvent* self);
double QTabletEvent_yTilt(const QTabletEvent* self);

QTabletEvent* QTabletEvent_virtualbase_clone(const VirtualQTabletEvent* self);
bool QTabletEvent_virtualbase_isBeginEvent(const VirtualQTabletEvent* self);
bool QTabletEvent_virtualbase_isUpdateEvent(const VirtualQTabletEvent* self);
bool QTabletEvent_virtualbase_isEndEvent(const VirtualQTabletEvent* self);
void QTabletEvent_virtualbase_setTimestamp(VirtualQTabletEvent* self, unsigned long long timestamp);
void QTabletEvent_virtualbase_setAccepted(VirtualQTabletEvent* self, bool accepted);

void QTabletEvent_delete(QTabletEvent* self);

typedef struct VirtualQNativeGestureEvent VirtualQNativeGestureEvent;
typedef struct QNativeGestureEvent_VTable{
	void (*destructor)(VirtualQNativeGestureEvent* self);
	QNativeGestureEvent* (*clone)(const VirtualQNativeGestureEvent* self);
	bool (*isBeginEvent)(const VirtualQNativeGestureEvent* self);
	bool (*isUpdateEvent)(const VirtualQNativeGestureEvent* self);
	bool (*isEndEvent)(const VirtualQNativeGestureEvent* self);
	void (*setTimestamp)(VirtualQNativeGestureEvent* self, unsigned long long timestamp);
	void (*setAccepted)(VirtualQNativeGestureEvent* self, bool accepted);
}QNativeGestureEvent_VTable;

void* QNativeGestureEvent_vdata(VirtualQNativeGestureEvent* self);
VirtualQNativeGestureEvent* vdata_QNativeGestureEvent(void* vdata);

VirtualQNativeGestureEvent* QNativeGestureEvent_new_type_dev_localPos_scenePos_globalPos_value_sequenceId_intArgument(const QNativeGestureEvent_VTable* vtbl, size_t vdata, int type, QPointingDevice* dev, QPointF* localPos, QPointF* scenePos, QPointF* globalPos, double value, unsigned long long sequenceId, unsigned long long intArgument);
VirtualQNativeGestureEvent* QNativeGestureEvent_new_type_dev_fingerCount_localPos_scenePos_globalPos_value_delta(const QNativeGestureEvent_VTable* vtbl, size_t vdata, int type, QPointingDevice* dev, int fingerCount, QPointF* localPos, QPointF* scenePos, QPointF* globalPos, double value, QPointF* delta);
VirtualQNativeGestureEvent* QNativeGestureEvent_new_type_dev_fingerCount_localPos_scenePos_globalPos_value_delta_sequenceId(const QNativeGestureEvent_VTable* vtbl, size_t vdata, int type, QPointingDevice* dev, int fingerCount, QPointF* localPos, QPointF* scenePos, QPointF* globalPos, double value, QPointF* delta, unsigned long long sequenceId);

void QNativeGestureEvent_virtbase(QNativeGestureEvent* src, QSinglePointEvent** outptr_QSinglePointEvent);
QNativeGestureEvent* QNativeGestureEvent_clone(const QNativeGestureEvent* self);
int QNativeGestureEvent_gestureType(const QNativeGestureEvent* self);
int QNativeGestureEvent_fingerCount(const QNativeGestureEvent* self);
double QNativeGestureEvent_value(const QNativeGestureEvent* self);
QPointF* QNativeGestureEvent_delta(const QNativeGestureEvent* self);
QPoint* QNativeGestureEvent_pos(const QNativeGestureEvent* self);
QPoint* QNativeGestureEvent_globalPos(const QNativeGestureEvent* self);
QPointF* QNativeGestureEvent_localPos(const QNativeGestureEvent* self);
QPointF* QNativeGestureEvent_windowPos(const QNativeGestureEvent* self);
QPointF* QNativeGestureEvent_screenPos(const QNativeGestureEvent* self);

QNativeGestureEvent* QNativeGestureEvent_virtualbase_clone(const VirtualQNativeGestureEvent* self);
bool QNativeGestureEvent_virtualbase_isBeginEvent(const VirtualQNativeGestureEvent* self);
bool QNativeGestureEvent_virtualbase_isUpdateEvent(const VirtualQNativeGestureEvent* self);
bool QNativeGestureEvent_virtualbase_isEndEvent(const VirtualQNativeGestureEvent* self);
void QNativeGestureEvent_virtualbase_setTimestamp(VirtualQNativeGestureEvent* self, unsigned long long timestamp);
void QNativeGestureEvent_virtualbase_setAccepted(VirtualQNativeGestureEvent* self, bool accepted);

void QNativeGestureEvent_delete(QNativeGestureEvent* self);

typedef struct VirtualQKeyEvent VirtualQKeyEvent;
typedef struct QKeyEvent_VTable{
	void (*destructor)(VirtualQKeyEvent* self);
	QKeyEvent* (*clone)(const VirtualQKeyEvent* self);
	void (*setTimestamp)(VirtualQKeyEvent* self, unsigned long long timestamp);
	void (*setAccepted)(VirtualQKeyEvent* self, bool accepted);
}QKeyEvent_VTable;

void* QKeyEvent_vdata(VirtualQKeyEvent* self);
VirtualQKeyEvent* vdata_QKeyEvent(void* vdata);

VirtualQKeyEvent* QKeyEvent_new_type_key_modifiers(const QKeyEvent_VTable* vtbl, size_t vdata, int type, int key, int modifiers);
VirtualQKeyEvent* QKeyEvent_new_type_key_modifiers_nativeScanCode_nativeVirtualKey_nativeModifiers(const QKeyEvent_VTable* vtbl, size_t vdata, int type, int key, int modifiers, unsigned int nativeScanCode, unsigned int nativeVirtualKey, unsigned int nativeModifiers);
VirtualQKeyEvent* QKeyEvent_new_type_key_modifiers_text(const QKeyEvent_VTable* vtbl, size_t vdata, int type, int key, int modifiers, struct seaqt_string text);
VirtualQKeyEvent* QKeyEvent_new_type_key_modifiers_text_autorep(const QKeyEvent_VTable* vtbl, size_t vdata, int type, int key, int modifiers, struct seaqt_string text, bool autorep);
VirtualQKeyEvent* QKeyEvent_new_type_key_modifiers_text_autorep_count(const QKeyEvent_VTable* vtbl, size_t vdata, int type, int key, int modifiers, struct seaqt_string text, bool autorep, unsigned short count);
VirtualQKeyEvent* QKeyEvent_new_type_key_modifiers_nativeScanCode_nativeVirtualKey_nativeModifiers_text(const QKeyEvent_VTable* vtbl, size_t vdata, int type, int key, int modifiers, unsigned int nativeScanCode, unsigned int nativeVirtualKey, unsigned int nativeModifiers, struct seaqt_string text);
VirtualQKeyEvent* QKeyEvent_new_type_key_modifiers_nativeScanCode_nativeVirtualKey_nativeModifiers_text_autorep(const QKeyEvent_VTable* vtbl, size_t vdata, int type, int key, int modifiers, unsigned int nativeScanCode, unsigned int nativeVirtualKey, unsigned int nativeModifiers, struct seaqt_string text, bool autorep);
VirtualQKeyEvent* QKeyEvent_new_type_key_modifiers_nativeScanCode_nativeVirtualKey_nativeModifiers_text_autorep_count(const QKeyEvent_VTable* vtbl, size_t vdata, int type, int key, int modifiers, unsigned int nativeScanCode, unsigned int nativeVirtualKey, unsigned int nativeModifiers, struct seaqt_string text, bool autorep, unsigned short count);
VirtualQKeyEvent* QKeyEvent_new_type_key_modifiers_nativeScanCode_nativeVirtualKey_nativeModifiers_text_autorep_count_device(const QKeyEvent_VTable* vtbl, size_t vdata, int type, int key, int modifiers, unsigned int nativeScanCode, unsigned int nativeVirtualKey, unsigned int nativeModifiers, struct seaqt_string text, bool autorep, unsigned short count, QInputDevice* device);

void QKeyEvent_virtbase(QKeyEvent* src, QInputEvent** outptr_QInputEvent);
QKeyEvent* QKeyEvent_clone(const QKeyEvent* self);
int QKeyEvent_key(const QKeyEvent* self);
bool QKeyEvent_matches(const QKeyEvent* self, int key);
int QKeyEvent_modifiers(const QKeyEvent* self);
QKeyCombination* QKeyEvent_keyCombination(const QKeyEvent* self);
struct seaqt_string QKeyEvent_text(const QKeyEvent* self);
bool QKeyEvent_isAutoRepeat(const QKeyEvent* self);
int QKeyEvent_count(const QKeyEvent* self);
unsigned int QKeyEvent_nativeScanCode(const QKeyEvent* self);
unsigned int QKeyEvent_nativeVirtualKey(const QKeyEvent* self);
unsigned int QKeyEvent_nativeModifiers(const QKeyEvent* self);

QKeyEvent* QKeyEvent_virtualbase_clone(const VirtualQKeyEvent* self);
void QKeyEvent_virtualbase_setTimestamp(VirtualQKeyEvent* self, unsigned long long timestamp);
void QKeyEvent_virtualbase_setAccepted(VirtualQKeyEvent* self, bool accepted);

void QKeyEvent_delete(QKeyEvent* self);

typedef struct VirtualQFocusEvent VirtualQFocusEvent;
typedef struct QFocusEvent_VTable{
	void (*destructor)(VirtualQFocusEvent* self);
	QFocusEvent* (*clone)(const VirtualQFocusEvent* self);
	void (*setAccepted)(VirtualQFocusEvent* self, bool accepted);
}QFocusEvent_VTable;

void* QFocusEvent_vdata(VirtualQFocusEvent* self);
VirtualQFocusEvent* vdata_QFocusEvent(void* vdata);

VirtualQFocusEvent* QFocusEvent_new_type(const QFocusEvent_VTable* vtbl, size_t vdata, int type);
VirtualQFocusEvent* QFocusEvent_new_type_reason(const QFocusEvent_VTable* vtbl, size_t vdata, int type, int reason);

void QFocusEvent_virtbase(QFocusEvent* src, QEvent** outptr_QEvent);
QFocusEvent* QFocusEvent_clone(const QFocusEvent* self);
bool QFocusEvent_gotFocus(const QFocusEvent* self);
bool QFocusEvent_lostFocus(const QFocusEvent* self);
int QFocusEvent_reason(const QFocusEvent* self);

QFocusEvent* QFocusEvent_virtualbase_clone(const VirtualQFocusEvent* self);
void QFocusEvent_virtualbase_setAccepted(VirtualQFocusEvent* self, bool accepted);

void QFocusEvent_delete(QFocusEvent* self);

typedef struct VirtualQPaintEvent VirtualQPaintEvent;
typedef struct QPaintEvent_VTable{
	void (*destructor)(VirtualQPaintEvent* self);
	QPaintEvent* (*clone)(const VirtualQPaintEvent* self);
	void (*setAccepted)(VirtualQPaintEvent* self, bool accepted);
}QPaintEvent_VTable;

void* QPaintEvent_vdata(VirtualQPaintEvent* self);
VirtualQPaintEvent* vdata_QPaintEvent(void* vdata);

VirtualQPaintEvent* QPaintEvent_new_paintRegion(const QPaintEvent_VTable* vtbl, size_t vdata, QRegion* paintRegion);
VirtualQPaintEvent* QPaintEvent_new_paintRect(const QPaintEvent_VTable* vtbl, size_t vdata, QRect* paintRect);

void QPaintEvent_virtbase(QPaintEvent* src, QEvent** outptr_QEvent);
QPaintEvent* QPaintEvent_clone(const QPaintEvent* self);
QRect* QPaintEvent_rect(const QPaintEvent* self);
QRegion* QPaintEvent_region(const QPaintEvent* self);

QPaintEvent* QPaintEvent_virtualbase_clone(const VirtualQPaintEvent* self);
void QPaintEvent_virtualbase_setAccepted(VirtualQPaintEvent* self, bool accepted);

void QPaintEvent_delete(QPaintEvent* self);

typedef struct VirtualQMoveEvent VirtualQMoveEvent;
typedef struct QMoveEvent_VTable{
	void (*destructor)(VirtualQMoveEvent* self);
	QMoveEvent* (*clone)(const VirtualQMoveEvent* self);
	void (*setAccepted)(VirtualQMoveEvent* self, bool accepted);
}QMoveEvent_VTable;

void* QMoveEvent_vdata(VirtualQMoveEvent* self);
VirtualQMoveEvent* vdata_QMoveEvent(void* vdata);

VirtualQMoveEvent* QMoveEvent_new(const QMoveEvent_VTable* vtbl, size_t vdata, QPoint* pos, QPoint* oldPos);

void QMoveEvent_virtbase(QMoveEvent* src, QEvent** outptr_QEvent);
QMoveEvent* QMoveEvent_clone(const QMoveEvent* self);
QPoint* QMoveEvent_pos(const QMoveEvent* self);
QPoint* QMoveEvent_oldPos(const QMoveEvent* self);

QMoveEvent* QMoveEvent_virtualbase_clone(const VirtualQMoveEvent* self);
void QMoveEvent_virtualbase_setAccepted(VirtualQMoveEvent* self, bool accepted);

void QMoveEvent_delete(QMoveEvent* self);

typedef struct VirtualQExposeEvent VirtualQExposeEvent;
typedef struct QExposeEvent_VTable{
	void (*destructor)(VirtualQExposeEvent* self);
	QExposeEvent* (*clone)(const VirtualQExposeEvent* self);
	void (*setAccepted)(VirtualQExposeEvent* self, bool accepted);
}QExposeEvent_VTable;

void* QExposeEvent_vdata(VirtualQExposeEvent* self);
VirtualQExposeEvent* vdata_QExposeEvent(void* vdata);

VirtualQExposeEvent* QExposeEvent_new(const QExposeEvent_VTable* vtbl, size_t vdata, QRegion* m_region);

void QExposeEvent_virtbase(QExposeEvent* src, QEvent** outptr_QEvent);
QExposeEvent* QExposeEvent_clone(const QExposeEvent* self);
QRegion* QExposeEvent_region(const QExposeEvent* self);

QExposeEvent* QExposeEvent_virtualbase_clone(const VirtualQExposeEvent* self);
void QExposeEvent_virtualbase_setAccepted(VirtualQExposeEvent* self, bool accepted);

void QExposeEvent_delete(QExposeEvent* self);

typedef struct VirtualQPlatformSurfaceEvent VirtualQPlatformSurfaceEvent;
typedef struct QPlatformSurfaceEvent_VTable{
	void (*destructor)(VirtualQPlatformSurfaceEvent* self);
	QPlatformSurfaceEvent* (*clone)(const VirtualQPlatformSurfaceEvent* self);
	void (*setAccepted)(VirtualQPlatformSurfaceEvent* self, bool accepted);
}QPlatformSurfaceEvent_VTable;

void* QPlatformSurfaceEvent_vdata(VirtualQPlatformSurfaceEvent* self);
VirtualQPlatformSurfaceEvent* vdata_QPlatformSurfaceEvent(void* vdata);

VirtualQPlatformSurfaceEvent* QPlatformSurfaceEvent_new(const QPlatformSurfaceEvent_VTable* vtbl, size_t vdata, int surfaceEventType);

void QPlatformSurfaceEvent_virtbase(QPlatformSurfaceEvent* src, QEvent** outptr_QEvent);
QPlatformSurfaceEvent* QPlatformSurfaceEvent_clone(const QPlatformSurfaceEvent* self);
int QPlatformSurfaceEvent_surfaceEventType(const QPlatformSurfaceEvent* self);

QPlatformSurfaceEvent* QPlatformSurfaceEvent_virtualbase_clone(const VirtualQPlatformSurfaceEvent* self);
void QPlatformSurfaceEvent_virtualbase_setAccepted(VirtualQPlatformSurfaceEvent* self, bool accepted);

void QPlatformSurfaceEvent_delete(QPlatformSurfaceEvent* self);

typedef struct VirtualQResizeEvent VirtualQResizeEvent;
typedef struct QResizeEvent_VTable{
	void (*destructor)(VirtualQResizeEvent* self);
	QResizeEvent* (*clone)(const VirtualQResizeEvent* self);
	void (*setAccepted)(VirtualQResizeEvent* self, bool accepted);
}QResizeEvent_VTable;

void* QResizeEvent_vdata(VirtualQResizeEvent* self);
VirtualQResizeEvent* vdata_QResizeEvent(void* vdata);

VirtualQResizeEvent* QResizeEvent_new(const QResizeEvent_VTable* vtbl, size_t vdata, QSize* size, QSize* oldSize);

void QResizeEvent_virtbase(QResizeEvent* src, QEvent** outptr_QEvent);
QResizeEvent* QResizeEvent_clone(const QResizeEvent* self);
QSize* QResizeEvent_size(const QResizeEvent* self);
QSize* QResizeEvent_oldSize(const QResizeEvent* self);

QResizeEvent* QResizeEvent_virtualbase_clone(const VirtualQResizeEvent* self);
void QResizeEvent_virtualbase_setAccepted(VirtualQResizeEvent* self, bool accepted);

void QResizeEvent_delete(QResizeEvent* self);

typedef struct VirtualQCloseEvent VirtualQCloseEvent;
typedef struct QCloseEvent_VTable{
	void (*destructor)(VirtualQCloseEvent* self);
	QCloseEvent* (*clone)(const VirtualQCloseEvent* self);
	void (*setAccepted)(VirtualQCloseEvent* self, bool accepted);
}QCloseEvent_VTable;

void* QCloseEvent_vdata(VirtualQCloseEvent* self);
VirtualQCloseEvent* vdata_QCloseEvent(void* vdata);

VirtualQCloseEvent* QCloseEvent_new(const QCloseEvent_VTable* vtbl, size_t vdata);

void QCloseEvent_virtbase(QCloseEvent* src, QEvent** outptr_QEvent);
QCloseEvent* QCloseEvent_clone(const QCloseEvent* self);

QCloseEvent* QCloseEvent_virtualbase_clone(const VirtualQCloseEvent* self);
void QCloseEvent_virtualbase_setAccepted(VirtualQCloseEvent* self, bool accepted);

void QCloseEvent_delete(QCloseEvent* self);

typedef struct VirtualQIconDragEvent VirtualQIconDragEvent;
typedef struct QIconDragEvent_VTable{
	void (*destructor)(VirtualQIconDragEvent* self);
	QIconDragEvent* (*clone)(const VirtualQIconDragEvent* self);
	void (*setAccepted)(VirtualQIconDragEvent* self, bool accepted);
}QIconDragEvent_VTable;

void* QIconDragEvent_vdata(VirtualQIconDragEvent* self);
VirtualQIconDragEvent* vdata_QIconDragEvent(void* vdata);

VirtualQIconDragEvent* QIconDragEvent_new(const QIconDragEvent_VTable* vtbl, size_t vdata);

void QIconDragEvent_virtbase(QIconDragEvent* src, QEvent** outptr_QEvent);
QIconDragEvent* QIconDragEvent_clone(const QIconDragEvent* self);

QIconDragEvent* QIconDragEvent_virtualbase_clone(const VirtualQIconDragEvent* self);
void QIconDragEvent_virtualbase_setAccepted(VirtualQIconDragEvent* self, bool accepted);

void QIconDragEvent_delete(QIconDragEvent* self);

typedef struct VirtualQShowEvent VirtualQShowEvent;
typedef struct QShowEvent_VTable{
	void (*destructor)(VirtualQShowEvent* self);
	QShowEvent* (*clone)(const VirtualQShowEvent* self);
	void (*setAccepted)(VirtualQShowEvent* self, bool accepted);
}QShowEvent_VTable;

void* QShowEvent_vdata(VirtualQShowEvent* self);
VirtualQShowEvent* vdata_QShowEvent(void* vdata);

VirtualQShowEvent* QShowEvent_new(const QShowEvent_VTable* vtbl, size_t vdata);

void QShowEvent_virtbase(QShowEvent* src, QEvent** outptr_QEvent);
QShowEvent* QShowEvent_clone(const QShowEvent* self);

QShowEvent* QShowEvent_virtualbase_clone(const VirtualQShowEvent* self);
void QShowEvent_virtualbase_setAccepted(VirtualQShowEvent* self, bool accepted);

void QShowEvent_delete(QShowEvent* self);

typedef struct VirtualQHideEvent VirtualQHideEvent;
typedef struct QHideEvent_VTable{
	void (*destructor)(VirtualQHideEvent* self);
	QHideEvent* (*clone)(const VirtualQHideEvent* self);
	void (*setAccepted)(VirtualQHideEvent* self, bool accepted);
}QHideEvent_VTable;

void* QHideEvent_vdata(VirtualQHideEvent* self);
VirtualQHideEvent* vdata_QHideEvent(void* vdata);

VirtualQHideEvent* QHideEvent_new(const QHideEvent_VTable* vtbl, size_t vdata);

void QHideEvent_virtbase(QHideEvent* src, QEvent** outptr_QEvent);
QHideEvent* QHideEvent_clone(const QHideEvent* self);

QHideEvent* QHideEvent_virtualbase_clone(const VirtualQHideEvent* self);
void QHideEvent_virtualbase_setAccepted(VirtualQHideEvent* self, bool accepted);

void QHideEvent_delete(QHideEvent* self);

typedef struct VirtualQContextMenuEvent VirtualQContextMenuEvent;
typedef struct QContextMenuEvent_VTable{
	void (*destructor)(VirtualQContextMenuEvent* self);
	QContextMenuEvent* (*clone)(const VirtualQContextMenuEvent* self);
	void (*setTimestamp)(VirtualQContextMenuEvent* self, unsigned long long timestamp);
	void (*setAccepted)(VirtualQContextMenuEvent* self, bool accepted);
}QContextMenuEvent_VTable;

void* QContextMenuEvent_vdata(VirtualQContextMenuEvent* self);
VirtualQContextMenuEvent* vdata_QContextMenuEvent(void* vdata);

VirtualQContextMenuEvent* QContextMenuEvent_new_reason_pos_globalPos(const QContextMenuEvent_VTable* vtbl, size_t vdata, int reason, QPoint* pos, QPoint* globalPos);
VirtualQContextMenuEvent* QContextMenuEvent_new_reason_pos(const QContextMenuEvent_VTable* vtbl, size_t vdata, int reason, QPoint* pos);
VirtualQContextMenuEvent* QContextMenuEvent_new_reason_pos_globalPos_modifiers(const QContextMenuEvent_VTable* vtbl, size_t vdata, int reason, QPoint* pos, QPoint* globalPos, int modifiers);

void QContextMenuEvent_virtbase(QContextMenuEvent* src, QInputEvent** outptr_QInputEvent);
QContextMenuEvent* QContextMenuEvent_clone(const QContextMenuEvent* self);
int QContextMenuEvent_x(const QContextMenuEvent* self);
int QContextMenuEvent_y(const QContextMenuEvent* self);
int QContextMenuEvent_globalX(const QContextMenuEvent* self);
int QContextMenuEvent_globalY(const QContextMenuEvent* self);
QPoint* QContextMenuEvent_pos(const QContextMenuEvent* self);
QPoint* QContextMenuEvent_globalPos(const QContextMenuEvent* self);
int QContextMenuEvent_reason(const QContextMenuEvent* self);

QContextMenuEvent* QContextMenuEvent_virtualbase_clone(const VirtualQContextMenuEvent* self);
void QContextMenuEvent_virtualbase_setTimestamp(VirtualQContextMenuEvent* self, unsigned long long timestamp);
void QContextMenuEvent_virtualbase_setAccepted(VirtualQContextMenuEvent* self, bool accepted);

void QContextMenuEvent_delete(QContextMenuEvent* self);

typedef struct VirtualQInputMethodEvent VirtualQInputMethodEvent;
typedef struct QInputMethodEvent_VTable{
	void (*destructor)(VirtualQInputMethodEvent* self);
	QInputMethodEvent* (*clone)(const VirtualQInputMethodEvent* self);
	void (*setAccepted)(VirtualQInputMethodEvent* self, bool accepted);
}QInputMethodEvent_VTable;

void* QInputMethodEvent_vdata(VirtualQInputMethodEvent* self);
VirtualQInputMethodEvent* vdata_QInputMethodEvent(void* vdata);

VirtualQInputMethodEvent* QInputMethodEvent_new(const QInputMethodEvent_VTable* vtbl, size_t vdata);
VirtualQInputMethodEvent* QInputMethodEvent_new_preeditText_attributes(const QInputMethodEvent_VTable* vtbl, size_t vdata, struct seaqt_string preeditText, struct seaqt_array /* of QInputMethodEvent__Attribute* */  attributes);

void QInputMethodEvent_virtbase(QInputMethodEvent* src, QEvent** outptr_QEvent);
QInputMethodEvent* QInputMethodEvent_clone(const QInputMethodEvent* self);
void QInputMethodEvent_setCommitString_commitString(QInputMethodEvent* self, struct seaqt_string commitString);
struct seaqt_array /* of QInputMethodEvent__Attribute* */  QInputMethodEvent_attributes(const QInputMethodEvent* self);
struct seaqt_string QInputMethodEvent_preeditString(const QInputMethodEvent* self);
struct seaqt_string QInputMethodEvent_commitString(const QInputMethodEvent* self);
int QInputMethodEvent_replacementStart(const QInputMethodEvent* self);
int QInputMethodEvent_replacementLength(const QInputMethodEvent* self);
void QInputMethodEvent_setCommitString_commitString_replaceFrom(QInputMethodEvent* self, struct seaqt_string commitString, int replaceFrom);
void QInputMethodEvent_setCommitString_commitString_replaceFrom_replaceLength(QInputMethodEvent* self, struct seaqt_string commitString, int replaceFrom, int replaceLength);

QInputMethodEvent* QInputMethodEvent_virtualbase_clone(const VirtualQInputMethodEvent* self);
void QInputMethodEvent_virtualbase_setAccepted(VirtualQInputMethodEvent* self, bool accepted);

void QInputMethodEvent_delete(QInputMethodEvent* self);

typedef struct VirtualQInputMethodQueryEvent VirtualQInputMethodQueryEvent;
typedef struct QInputMethodQueryEvent_VTable{
	void (*destructor)(VirtualQInputMethodQueryEvent* self);
	QInputMethodQueryEvent* (*clone)(const VirtualQInputMethodQueryEvent* self);
	void (*setAccepted)(VirtualQInputMethodQueryEvent* self, bool accepted);
}QInputMethodQueryEvent_VTable;

void* QInputMethodQueryEvent_vdata(VirtualQInputMethodQueryEvent* self);
VirtualQInputMethodQueryEvent* vdata_QInputMethodQueryEvent(void* vdata);

VirtualQInputMethodQueryEvent* QInputMethodQueryEvent_new(const QInputMethodQueryEvent_VTable* vtbl, size_t vdata, int queries);

void QInputMethodQueryEvent_virtbase(QInputMethodQueryEvent* src, QEvent** outptr_QEvent);
QInputMethodQueryEvent* QInputMethodQueryEvent_clone(const QInputMethodQueryEvent* self);
int QInputMethodQueryEvent_queries(const QInputMethodQueryEvent* self);
void QInputMethodQueryEvent_setValue(QInputMethodQueryEvent* self, int query, QVariant* value);
QVariant* QInputMethodQueryEvent_value(const QInputMethodQueryEvent* self, int query);

QInputMethodQueryEvent* QInputMethodQueryEvent_virtualbase_clone(const VirtualQInputMethodQueryEvent* self);
void QInputMethodQueryEvent_virtualbase_setAccepted(VirtualQInputMethodQueryEvent* self, bool accepted);

void QInputMethodQueryEvent_delete(QInputMethodQueryEvent* self);

typedef struct VirtualQDropEvent VirtualQDropEvent;
typedef struct QDropEvent_VTable{
	void (*destructor)(VirtualQDropEvent* self);
	QDropEvent* (*clone)(const VirtualQDropEvent* self);
	void (*setAccepted)(VirtualQDropEvent* self, bool accepted);
}QDropEvent_VTable;

void* QDropEvent_vdata(VirtualQDropEvent* self);
VirtualQDropEvent* vdata_QDropEvent(void* vdata);

VirtualQDropEvent* QDropEvent_new_pos_actions_data_buttons_modifiers(const QDropEvent_VTable* vtbl, size_t vdata, QPointF* pos, int actions, QMimeData* data, int buttons, int modifiers);
VirtualQDropEvent* QDropEvent_new_pos_actions_data_buttons_modifiers_type(const QDropEvent_VTable* vtbl, size_t vdata, QPointF* pos, int actions, QMimeData* data, int buttons, int modifiers, int type);

void QDropEvent_virtbase(QDropEvent* src, QEvent** outptr_QEvent);
QDropEvent* QDropEvent_clone(const QDropEvent* self);
QPoint* QDropEvent_pos(const QDropEvent* self);
QPointF* QDropEvent_posF(const QDropEvent* self);
int QDropEvent_mouseButtons(const QDropEvent* self);
int QDropEvent_keyboardModifiers(const QDropEvent* self);
QPointF* QDropEvent_position(const QDropEvent* self);
int QDropEvent_buttons(const QDropEvent* self);
int QDropEvent_modifiers(const QDropEvent* self);
int QDropEvent_possibleActions(const QDropEvent* self);
int QDropEvent_proposedAction(const QDropEvent* self);
void QDropEvent_acceptProposedAction(QDropEvent* self);
int QDropEvent_dropAction(const QDropEvent* self);
void QDropEvent_setDropAction(QDropEvent* self, int action);
QObject* QDropEvent_source(const QDropEvent* self);
QMimeData* QDropEvent_mimeData(const QDropEvent* self);

QDropEvent* QDropEvent_virtualbase_clone(const VirtualQDropEvent* self);
void QDropEvent_virtualbase_setAccepted(VirtualQDropEvent* self, bool accepted);

void QDropEvent_delete(QDropEvent* self);

typedef struct VirtualQDragMoveEvent VirtualQDragMoveEvent;
typedef struct QDragMoveEvent_VTable{
	void (*destructor)(VirtualQDragMoveEvent* self);
	QDragMoveEvent* (*clone)(const VirtualQDragMoveEvent* self);
	void (*setAccepted)(VirtualQDragMoveEvent* self, bool accepted);
}QDragMoveEvent_VTable;

void* QDragMoveEvent_vdata(VirtualQDragMoveEvent* self);
VirtualQDragMoveEvent* vdata_QDragMoveEvent(void* vdata);

VirtualQDragMoveEvent* QDragMoveEvent_new_pos_actions_data_buttons_modifiers(const QDragMoveEvent_VTable* vtbl, size_t vdata, QPoint* pos, int actions, QMimeData* data, int buttons, int modifiers);
VirtualQDragMoveEvent* QDragMoveEvent_new_pos_actions_data_buttons_modifiers_type(const QDragMoveEvent_VTable* vtbl, size_t vdata, QPoint* pos, int actions, QMimeData* data, int buttons, int modifiers, int type);

void QDragMoveEvent_virtbase(QDragMoveEvent* src, QDropEvent** outptr_QDropEvent);
QDragMoveEvent* QDragMoveEvent_clone(const QDragMoveEvent* self);
QRect* QDragMoveEvent_answerRect(const QDragMoveEvent* self);
void QDragMoveEvent_accept(QDragMoveEvent* self);
void QDragMoveEvent_ignore(QDragMoveEvent* self);
void QDragMoveEvent_accept_r(QDragMoveEvent* self, QRect* r);
void QDragMoveEvent_ignore_r(QDragMoveEvent* self, QRect* r);

QDragMoveEvent* QDragMoveEvent_virtualbase_clone(const VirtualQDragMoveEvent* self);
void QDragMoveEvent_virtualbase_setAccepted(VirtualQDragMoveEvent* self, bool accepted);

void QDragMoveEvent_delete(QDragMoveEvent* self);

typedef struct VirtualQDragEnterEvent VirtualQDragEnterEvent;
typedef struct QDragEnterEvent_VTable{
	void (*destructor)(VirtualQDragEnterEvent* self);
	QDragEnterEvent* (*clone)(const VirtualQDragEnterEvent* self);
	void (*setAccepted)(VirtualQDragEnterEvent* self, bool accepted);
}QDragEnterEvent_VTable;

void* QDragEnterEvent_vdata(VirtualQDragEnterEvent* self);
VirtualQDragEnterEvent* vdata_QDragEnterEvent(void* vdata);

VirtualQDragEnterEvent* QDragEnterEvent_new(const QDragEnterEvent_VTable* vtbl, size_t vdata, QPoint* pos, int actions, QMimeData* data, int buttons, int modifiers);

void QDragEnterEvent_virtbase(QDragEnterEvent* src, QDragMoveEvent** outptr_QDragMoveEvent);
QDragEnterEvent* QDragEnterEvent_clone(const QDragEnterEvent* self);

QDragEnterEvent* QDragEnterEvent_virtualbase_clone(const VirtualQDragEnterEvent* self);
void QDragEnterEvent_virtualbase_setAccepted(VirtualQDragEnterEvent* self, bool accepted);

void QDragEnterEvent_delete(QDragEnterEvent* self);

typedef struct VirtualQDragLeaveEvent VirtualQDragLeaveEvent;
typedef struct QDragLeaveEvent_VTable{
	void (*destructor)(VirtualQDragLeaveEvent* self);
	QDragLeaveEvent* (*clone)(const VirtualQDragLeaveEvent* self);
	void (*setAccepted)(VirtualQDragLeaveEvent* self, bool accepted);
}QDragLeaveEvent_VTable;

void* QDragLeaveEvent_vdata(VirtualQDragLeaveEvent* self);
VirtualQDragLeaveEvent* vdata_QDragLeaveEvent(void* vdata);

VirtualQDragLeaveEvent* QDragLeaveEvent_new(const QDragLeaveEvent_VTable* vtbl, size_t vdata);

void QDragLeaveEvent_virtbase(QDragLeaveEvent* src, QEvent** outptr_QEvent);
QDragLeaveEvent* QDragLeaveEvent_clone(const QDragLeaveEvent* self);

QDragLeaveEvent* QDragLeaveEvent_virtualbase_clone(const VirtualQDragLeaveEvent* self);
void QDragLeaveEvent_virtualbase_setAccepted(VirtualQDragLeaveEvent* self, bool accepted);

void QDragLeaveEvent_delete(QDragLeaveEvent* self);

typedef struct VirtualQHelpEvent VirtualQHelpEvent;
typedef struct QHelpEvent_VTable{
	void (*destructor)(VirtualQHelpEvent* self);
	QHelpEvent* (*clone)(const VirtualQHelpEvent* self);
	void (*setAccepted)(VirtualQHelpEvent* self, bool accepted);
}QHelpEvent_VTable;

void* QHelpEvent_vdata(VirtualQHelpEvent* self);
VirtualQHelpEvent* vdata_QHelpEvent(void* vdata);

VirtualQHelpEvent* QHelpEvent_new(const QHelpEvent_VTable* vtbl, size_t vdata, int type, QPoint* pos, QPoint* globalPos);

void QHelpEvent_virtbase(QHelpEvent* src, QEvent** outptr_QEvent);
QHelpEvent* QHelpEvent_clone(const QHelpEvent* self);
int QHelpEvent_x(const QHelpEvent* self);
int QHelpEvent_y(const QHelpEvent* self);
int QHelpEvent_globalX(const QHelpEvent* self);
int QHelpEvent_globalY(const QHelpEvent* self);
QPoint* QHelpEvent_pos(const QHelpEvent* self);
QPoint* QHelpEvent_globalPos(const QHelpEvent* self);

QHelpEvent* QHelpEvent_virtualbase_clone(const VirtualQHelpEvent* self);
void QHelpEvent_virtualbase_setAccepted(VirtualQHelpEvent* self, bool accepted);

void QHelpEvent_delete(QHelpEvent* self);

typedef struct VirtualQStatusTipEvent VirtualQStatusTipEvent;
typedef struct QStatusTipEvent_VTable{
	void (*destructor)(VirtualQStatusTipEvent* self);
	QStatusTipEvent* (*clone)(const VirtualQStatusTipEvent* self);
	void (*setAccepted)(VirtualQStatusTipEvent* self, bool accepted);
}QStatusTipEvent_VTable;

void* QStatusTipEvent_vdata(VirtualQStatusTipEvent* self);
VirtualQStatusTipEvent* vdata_QStatusTipEvent(void* vdata);

VirtualQStatusTipEvent* QStatusTipEvent_new(const QStatusTipEvent_VTable* vtbl, size_t vdata, struct seaqt_string tip);

void QStatusTipEvent_virtbase(QStatusTipEvent* src, QEvent** outptr_QEvent);
QStatusTipEvent* QStatusTipEvent_clone(const QStatusTipEvent* self);
struct seaqt_string QStatusTipEvent_tip(const QStatusTipEvent* self);

QStatusTipEvent* QStatusTipEvent_virtualbase_clone(const VirtualQStatusTipEvent* self);
void QStatusTipEvent_virtualbase_setAccepted(VirtualQStatusTipEvent* self, bool accepted);

void QStatusTipEvent_delete(QStatusTipEvent* self);

typedef struct VirtualQWhatsThisClickedEvent VirtualQWhatsThisClickedEvent;
typedef struct QWhatsThisClickedEvent_VTable{
	void (*destructor)(VirtualQWhatsThisClickedEvent* self);
	QWhatsThisClickedEvent* (*clone)(const VirtualQWhatsThisClickedEvent* self);
	void (*setAccepted)(VirtualQWhatsThisClickedEvent* self, bool accepted);
}QWhatsThisClickedEvent_VTable;

void* QWhatsThisClickedEvent_vdata(VirtualQWhatsThisClickedEvent* self);
VirtualQWhatsThisClickedEvent* vdata_QWhatsThisClickedEvent(void* vdata);

VirtualQWhatsThisClickedEvent* QWhatsThisClickedEvent_new(const QWhatsThisClickedEvent_VTable* vtbl, size_t vdata, struct seaqt_string href);

void QWhatsThisClickedEvent_virtbase(QWhatsThisClickedEvent* src, QEvent** outptr_QEvent);
QWhatsThisClickedEvent* QWhatsThisClickedEvent_clone(const QWhatsThisClickedEvent* self);
struct seaqt_string QWhatsThisClickedEvent_href(const QWhatsThisClickedEvent* self);

QWhatsThisClickedEvent* QWhatsThisClickedEvent_virtualbase_clone(const VirtualQWhatsThisClickedEvent* self);
void QWhatsThisClickedEvent_virtualbase_setAccepted(VirtualQWhatsThisClickedEvent* self, bool accepted);

void QWhatsThisClickedEvent_delete(QWhatsThisClickedEvent* self);

void QActionEvent_virtbase(QActionEvent* src, QEvent** outptr_QEvent);
QActionEvent* QActionEvent_clone(const QActionEvent* self);

void QActionEvent_delete(QActionEvent* self);

typedef struct VirtualQFileOpenEvent VirtualQFileOpenEvent;
typedef struct QFileOpenEvent_VTable{
	void (*destructor)(VirtualQFileOpenEvent* self);
	QFileOpenEvent* (*clone)(const VirtualQFileOpenEvent* self);
	void (*setAccepted)(VirtualQFileOpenEvent* self, bool accepted);
}QFileOpenEvent_VTable;

void* QFileOpenEvent_vdata(VirtualQFileOpenEvent* self);
VirtualQFileOpenEvent* vdata_QFileOpenEvent(void* vdata);

VirtualQFileOpenEvent* QFileOpenEvent_new_file(const QFileOpenEvent_VTable* vtbl, size_t vdata, struct seaqt_string file);
VirtualQFileOpenEvent* QFileOpenEvent_new_url(const QFileOpenEvent_VTable* vtbl, size_t vdata, QUrl* url);

void QFileOpenEvent_virtbase(QFileOpenEvent* src, QEvent** outptr_QEvent);
QFileOpenEvent* QFileOpenEvent_clone(const QFileOpenEvent* self);
struct seaqt_string QFileOpenEvent_file(const QFileOpenEvent* self);
QUrl* QFileOpenEvent_url(const QFileOpenEvent* self);
bool QFileOpenEvent_openFile(const QFileOpenEvent* self, QFile* file, int flags);

QFileOpenEvent* QFileOpenEvent_virtualbase_clone(const VirtualQFileOpenEvent* self);
void QFileOpenEvent_virtualbase_setAccepted(VirtualQFileOpenEvent* self, bool accepted);

void QFileOpenEvent_delete(QFileOpenEvent* self);

typedef struct VirtualQToolBarChangeEvent VirtualQToolBarChangeEvent;
typedef struct QToolBarChangeEvent_VTable{
	void (*destructor)(VirtualQToolBarChangeEvent* self);
	QToolBarChangeEvent* (*clone)(const VirtualQToolBarChangeEvent* self);
	void (*setAccepted)(VirtualQToolBarChangeEvent* self, bool accepted);
}QToolBarChangeEvent_VTable;

void* QToolBarChangeEvent_vdata(VirtualQToolBarChangeEvent* self);
VirtualQToolBarChangeEvent* vdata_QToolBarChangeEvent(void* vdata);

VirtualQToolBarChangeEvent* QToolBarChangeEvent_new(const QToolBarChangeEvent_VTable* vtbl, size_t vdata, bool t);

void QToolBarChangeEvent_virtbase(QToolBarChangeEvent* src, QEvent** outptr_QEvent);
QToolBarChangeEvent* QToolBarChangeEvent_clone(const QToolBarChangeEvent* self);
bool QToolBarChangeEvent_toggle(const QToolBarChangeEvent* self);

QToolBarChangeEvent* QToolBarChangeEvent_virtualbase_clone(const VirtualQToolBarChangeEvent* self);
void QToolBarChangeEvent_virtualbase_setAccepted(VirtualQToolBarChangeEvent* self, bool accepted);

void QToolBarChangeEvent_delete(QToolBarChangeEvent* self);

typedef struct VirtualQShortcutEvent VirtualQShortcutEvent;
typedef struct QShortcutEvent_VTable{
	void (*destructor)(VirtualQShortcutEvent* self);
	QShortcutEvent* (*clone)(const VirtualQShortcutEvent* self);
	void (*setAccepted)(VirtualQShortcutEvent* self, bool accepted);
}QShortcutEvent_VTable;

void* QShortcutEvent_vdata(VirtualQShortcutEvent* self);
VirtualQShortcutEvent* vdata_QShortcutEvent(void* vdata);

VirtualQShortcutEvent* QShortcutEvent_new_key_id(const QShortcutEvent_VTable* vtbl, size_t vdata, QKeySequence* key, int id);
VirtualQShortcutEvent* QShortcutEvent_new_key(const QShortcutEvent_VTable* vtbl, size_t vdata, QKeySequence* key);
VirtualQShortcutEvent* QShortcutEvent_new_key_id_ambiguous(const QShortcutEvent_VTable* vtbl, size_t vdata, QKeySequence* key, int id, bool ambiguous);
VirtualQShortcutEvent* QShortcutEvent_new_key_shortcut(const QShortcutEvent_VTable* vtbl, size_t vdata, QKeySequence* key, QShortcut* shortcut);
VirtualQShortcutEvent* QShortcutEvent_new_key_shortcut_ambiguous(const QShortcutEvent_VTable* vtbl, size_t vdata, QKeySequence* key, QShortcut* shortcut, bool ambiguous);

void QShortcutEvent_virtbase(QShortcutEvent* src, QEvent** outptr_QEvent);
QShortcutEvent* QShortcutEvent_clone(const QShortcutEvent* self);
QKeySequence* QShortcutEvent_key(const QShortcutEvent* self);
int QShortcutEvent_shortcutId(const QShortcutEvent* self);
bool QShortcutEvent_isAmbiguous(const QShortcutEvent* self);

QShortcutEvent* QShortcutEvent_virtualbase_clone(const VirtualQShortcutEvent* self);
void QShortcutEvent_virtualbase_setAccepted(VirtualQShortcutEvent* self, bool accepted);

void QShortcutEvent_delete(QShortcutEvent* self);

typedef struct VirtualQWindowStateChangeEvent VirtualQWindowStateChangeEvent;
typedef struct QWindowStateChangeEvent_VTable{
	void (*destructor)(VirtualQWindowStateChangeEvent* self);
	QWindowStateChangeEvent* (*clone)(const VirtualQWindowStateChangeEvent* self);
	void (*setAccepted)(VirtualQWindowStateChangeEvent* self, bool accepted);
}QWindowStateChangeEvent_VTable;

void* QWindowStateChangeEvent_vdata(VirtualQWindowStateChangeEvent* self);
VirtualQWindowStateChangeEvent* vdata_QWindowStateChangeEvent(void* vdata);

VirtualQWindowStateChangeEvent* QWindowStateChangeEvent_new_oldState(const QWindowStateChangeEvent_VTable* vtbl, size_t vdata, int oldState);
VirtualQWindowStateChangeEvent* QWindowStateChangeEvent_new_oldState_isOverride(const QWindowStateChangeEvent_VTable* vtbl, size_t vdata, int oldState, bool isOverride);

void QWindowStateChangeEvent_virtbase(QWindowStateChangeEvent* src, QEvent** outptr_QEvent);
QWindowStateChangeEvent* QWindowStateChangeEvent_clone(const QWindowStateChangeEvent* self);
int QWindowStateChangeEvent_oldState(const QWindowStateChangeEvent* self);
bool QWindowStateChangeEvent_isOverride(const QWindowStateChangeEvent* self);

QWindowStateChangeEvent* QWindowStateChangeEvent_virtualbase_clone(const VirtualQWindowStateChangeEvent* self);
void QWindowStateChangeEvent_virtualbase_setAccepted(VirtualQWindowStateChangeEvent* self, bool accepted);

void QWindowStateChangeEvent_delete(QWindowStateChangeEvent* self);

typedef struct VirtualQTouchEvent VirtualQTouchEvent;
typedef struct QTouchEvent_VTable{
	void (*destructor)(VirtualQTouchEvent* self);
	QTouchEvent* (*clone)(const VirtualQTouchEvent* self);
	bool (*isBeginEvent)(const VirtualQTouchEvent* self);
	bool (*isUpdateEvent)(const VirtualQTouchEvent* self);
	bool (*isEndEvent)(const VirtualQTouchEvent* self);
	void (*setTimestamp)(VirtualQTouchEvent* self, unsigned long long timestamp);
	void (*setAccepted)(VirtualQTouchEvent* self, bool accepted);
}QTouchEvent_VTable;

void* QTouchEvent_vdata(VirtualQTouchEvent* self);
VirtualQTouchEvent* vdata_QTouchEvent(void* vdata);

VirtualQTouchEvent* QTouchEvent_new_eventType(const QTouchEvent_VTable* vtbl, size_t vdata, int eventType);
VirtualQTouchEvent* QTouchEvent_new_eventType_device_modifiers_touchPointStates(const QTouchEvent_VTable* vtbl, size_t vdata, int eventType, QPointingDevice* device, int modifiers, uint8_t touchPointStates);
VirtualQTouchEvent* QTouchEvent_new_eventType_device(const QTouchEvent_VTable* vtbl, size_t vdata, int eventType, QPointingDevice* device);
VirtualQTouchEvent* QTouchEvent_new_eventType_device_modifiers(const QTouchEvent_VTable* vtbl, size_t vdata, int eventType, QPointingDevice* device, int modifiers);
VirtualQTouchEvent* QTouchEvent_new_eventType_device_modifiers_touchPoints(const QTouchEvent_VTable* vtbl, size_t vdata, int eventType, QPointingDevice* device, int modifiers, struct seaqt_array /* of QEventPoint* */  touchPoints);
VirtualQTouchEvent* QTouchEvent_new_eventType_device_modifiers_touchPointStates_touchPoints(const QTouchEvent_VTable* vtbl, size_t vdata, int eventType, QPointingDevice* device, int modifiers, uint8_t touchPointStates, struct seaqt_array /* of QEventPoint* */  touchPoints);

void QTouchEvent_virtbase(QTouchEvent* src, QPointerEvent** outptr_QPointerEvent);
QTouchEvent* QTouchEvent_clone(const QTouchEvent* self);
QObject* QTouchEvent_target(const QTouchEvent* self);
uint8_t QTouchEvent_touchPointStates(const QTouchEvent* self);
struct seaqt_array /* of QEventPoint* */  QTouchEvent_touchPoints(const QTouchEvent* self);
bool QTouchEvent_isBeginEvent(const QTouchEvent* self);
bool QTouchEvent_isUpdateEvent(const QTouchEvent* self);
bool QTouchEvent_isEndEvent(const QTouchEvent* self);

QTouchEvent* QTouchEvent_virtualbase_clone(const VirtualQTouchEvent* self);
bool QTouchEvent_virtualbase_isBeginEvent(const VirtualQTouchEvent* self);
bool QTouchEvent_virtualbase_isUpdateEvent(const VirtualQTouchEvent* self);
bool QTouchEvent_virtualbase_isEndEvent(const VirtualQTouchEvent* self);
void QTouchEvent_virtualbase_setTimestamp(VirtualQTouchEvent* self, unsigned long long timestamp);
void QTouchEvent_virtualbase_setAccepted(VirtualQTouchEvent* self, bool accepted);

void QTouchEvent_delete(QTouchEvent* self);

typedef struct VirtualQScrollPrepareEvent VirtualQScrollPrepareEvent;
typedef struct QScrollPrepareEvent_VTable{
	void (*destructor)(VirtualQScrollPrepareEvent* self);
	QScrollPrepareEvent* (*clone)(const VirtualQScrollPrepareEvent* self);
	void (*setAccepted)(VirtualQScrollPrepareEvent* self, bool accepted);
}QScrollPrepareEvent_VTable;

void* QScrollPrepareEvent_vdata(VirtualQScrollPrepareEvent* self);
VirtualQScrollPrepareEvent* vdata_QScrollPrepareEvent(void* vdata);

VirtualQScrollPrepareEvent* QScrollPrepareEvent_new(const QScrollPrepareEvent_VTable* vtbl, size_t vdata, QPointF* startPos);

void QScrollPrepareEvent_virtbase(QScrollPrepareEvent* src, QEvent** outptr_QEvent);
QScrollPrepareEvent* QScrollPrepareEvent_clone(const QScrollPrepareEvent* self);
QPointF* QScrollPrepareEvent_startPos(const QScrollPrepareEvent* self);
QSizeF* QScrollPrepareEvent_viewportSize(const QScrollPrepareEvent* self);
QRectF* QScrollPrepareEvent_contentPosRange(const QScrollPrepareEvent* self);
QPointF* QScrollPrepareEvent_contentPos(const QScrollPrepareEvent* self);
void QScrollPrepareEvent_setViewportSize(QScrollPrepareEvent* self, QSizeF* size);
void QScrollPrepareEvent_setContentPosRange(QScrollPrepareEvent* self, QRectF* rect);
void QScrollPrepareEvent_setContentPos(QScrollPrepareEvent* self, QPointF* pos);

QScrollPrepareEvent* QScrollPrepareEvent_virtualbase_clone(const VirtualQScrollPrepareEvent* self);
void QScrollPrepareEvent_virtualbase_setAccepted(VirtualQScrollPrepareEvent* self, bool accepted);

void QScrollPrepareEvent_delete(QScrollPrepareEvent* self);

typedef struct VirtualQScrollEvent VirtualQScrollEvent;
typedef struct QScrollEvent_VTable{
	void (*destructor)(VirtualQScrollEvent* self);
	QScrollEvent* (*clone)(const VirtualQScrollEvent* self);
	void (*setAccepted)(VirtualQScrollEvent* self, bool accepted);
}QScrollEvent_VTable;

void* QScrollEvent_vdata(VirtualQScrollEvent* self);
VirtualQScrollEvent* vdata_QScrollEvent(void* vdata);

VirtualQScrollEvent* QScrollEvent_new(const QScrollEvent_VTable* vtbl, size_t vdata, QPointF* contentPos, QPointF* overshoot, int scrollState);

void QScrollEvent_virtbase(QScrollEvent* src, QEvent** outptr_QEvent);
QScrollEvent* QScrollEvent_clone(const QScrollEvent* self);
QPointF* QScrollEvent_contentPos(const QScrollEvent* self);
QPointF* QScrollEvent_overshootDistance(const QScrollEvent* self);
int QScrollEvent_scrollState(const QScrollEvent* self);

QScrollEvent* QScrollEvent_virtualbase_clone(const VirtualQScrollEvent* self);
void QScrollEvent_virtualbase_setAccepted(VirtualQScrollEvent* self, bool accepted);

void QScrollEvent_delete(QScrollEvent* self);

typedef struct VirtualQScreenOrientationChangeEvent VirtualQScreenOrientationChangeEvent;
typedef struct QScreenOrientationChangeEvent_VTable{
	void (*destructor)(VirtualQScreenOrientationChangeEvent* self);
	QScreenOrientationChangeEvent* (*clone)(const VirtualQScreenOrientationChangeEvent* self);
	void (*setAccepted)(VirtualQScreenOrientationChangeEvent* self, bool accepted);
}QScreenOrientationChangeEvent_VTable;

void* QScreenOrientationChangeEvent_vdata(VirtualQScreenOrientationChangeEvent* self);
VirtualQScreenOrientationChangeEvent* vdata_QScreenOrientationChangeEvent(void* vdata);

VirtualQScreenOrientationChangeEvent* QScreenOrientationChangeEvent_new(const QScreenOrientationChangeEvent_VTable* vtbl, size_t vdata, QScreen* screen, int orientation);

void QScreenOrientationChangeEvent_virtbase(QScreenOrientationChangeEvent* src, QEvent** outptr_QEvent);
QScreenOrientationChangeEvent* QScreenOrientationChangeEvent_clone(const QScreenOrientationChangeEvent* self);
QScreen* QScreenOrientationChangeEvent_screen(const QScreenOrientationChangeEvent* self);
int QScreenOrientationChangeEvent_orientation(const QScreenOrientationChangeEvent* self);

QScreenOrientationChangeEvent* QScreenOrientationChangeEvent_virtualbase_clone(const VirtualQScreenOrientationChangeEvent* self);
void QScreenOrientationChangeEvent_virtualbase_setAccepted(VirtualQScreenOrientationChangeEvent* self, bool accepted);

void QScreenOrientationChangeEvent_delete(QScreenOrientationChangeEvent* self);

typedef struct VirtualQApplicationStateChangeEvent VirtualQApplicationStateChangeEvent;
typedef struct QApplicationStateChangeEvent_VTable{
	void (*destructor)(VirtualQApplicationStateChangeEvent* self);
	QApplicationStateChangeEvent* (*clone)(const VirtualQApplicationStateChangeEvent* self);
	void (*setAccepted)(VirtualQApplicationStateChangeEvent* self, bool accepted);
}QApplicationStateChangeEvent_VTable;

void* QApplicationStateChangeEvent_vdata(VirtualQApplicationStateChangeEvent* self);
VirtualQApplicationStateChangeEvent* vdata_QApplicationStateChangeEvent(void* vdata);

VirtualQApplicationStateChangeEvent* QApplicationStateChangeEvent_new(const QApplicationStateChangeEvent_VTable* vtbl, size_t vdata, int state);

void QApplicationStateChangeEvent_virtbase(QApplicationStateChangeEvent* src, QEvent** outptr_QEvent);
QApplicationStateChangeEvent* QApplicationStateChangeEvent_clone(const QApplicationStateChangeEvent* self);
int QApplicationStateChangeEvent_applicationState(const QApplicationStateChangeEvent* self);

QApplicationStateChangeEvent* QApplicationStateChangeEvent_virtualbase_clone(const VirtualQApplicationStateChangeEvent* self);
void QApplicationStateChangeEvent_virtualbase_setAccepted(VirtualQApplicationStateChangeEvent* self, bool accepted);

void QApplicationStateChangeEvent_delete(QApplicationStateChangeEvent* self);

QInputMethodEvent__Attribute* QInputMethodEvent__Attribute_new_typ_s_l_val(int typ, int s, int l, QVariant* val);
QInputMethodEvent__Attribute* QInputMethodEvent__Attribute_new_typ_s_l(int typ, int s, int l);
QInputMethodEvent__Attribute* QInputMethodEvent__Attribute_new_from(QInputMethodEvent__Attribute* from);

int QInputMethodEvent__Attribute_type(const QInputMethodEvent__Attribute* self);
void QInputMethodEvent__Attribute_setType(QInputMethodEvent__Attribute* self, int type);
int QInputMethodEvent__Attribute_start(const QInputMethodEvent__Attribute* self);
void QInputMethodEvent__Attribute_setStart(QInputMethodEvent__Attribute* self, int start);
int QInputMethodEvent__Attribute_length(const QInputMethodEvent__Attribute* self);
void QInputMethodEvent__Attribute_setLength(QInputMethodEvent__Attribute* self, int length);
QVariant* QInputMethodEvent__Attribute_value(const QInputMethodEvent__Attribute* self);
void QInputMethodEvent__Attribute_setValue(QInputMethodEvent__Attribute* self, QVariant* value);
void QInputMethodEvent__Attribute_operatorAssign(QInputMethodEvent__Attribute* self, QInputMethodEvent__Attribute* from);

void QInputMethodEvent__Attribute_delete(QInputMethodEvent__Attribute* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
