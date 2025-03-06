#pragma once
#ifndef SEAQT_QTGUI_GEN_QEVENT_H
#define SEAQT_QTGUI_GEN_QEVENT_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt/libseaqt.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QAction;
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
typedef struct QAction QAction;
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

struct QInputEvent_VTable {
	void (*destructor)(struct QInputEvent_VTable* vtbl, QInputEvent* self);
	QInputEvent* (*clone)(struct QInputEvent_VTable* vtbl, const QInputEvent* self);
	void (*setTimestamp)(struct QInputEvent_VTable* vtbl, QInputEvent* self, unsigned long long timestamp);
	void (*setAccepted)(struct QInputEvent_VTable* vtbl, QInputEvent* self, bool accepted);
};
QInputEvent* QInputEvent_new(struct QInputEvent_VTable* vtbl, int type, QInputDevice* m_dev);
QInputEvent* QInputEvent_new2(struct QInputEvent_VTable* vtbl, int type, QInputDevice* m_dev, int modifiers);
void QInputEvent_virtbase(QInputEvent* src, QEvent** outptr_QEvent);
QInputEvent* QInputEvent_clone(const QInputEvent* self);
QInputDevice* QInputEvent_device(const QInputEvent* self);
int QInputEvent_deviceType(const QInputEvent* self);
int QInputEvent_modifiers(const QInputEvent* self);
void QInputEvent_setModifiers(QInputEvent* self, int modifiers);
unsigned long long QInputEvent_timestamp(const QInputEvent* self);
void QInputEvent_setTimestamp(QInputEvent* self, unsigned long long timestamp);
QInputEvent* QInputEvent_virtualbase_clone(const void* self);
void QInputEvent_virtualbase_setTimestamp(void* self, unsigned long long timestamp);
void QInputEvent_virtualbase_setAccepted(void* self, bool accepted);
void QInputEvent_delete(QInputEvent* self);

struct QPointerEvent_VTable {
	void (*destructor)(struct QPointerEvent_VTable* vtbl, QPointerEvent* self);
	QPointerEvent* (*clone)(struct QPointerEvent_VTable* vtbl, const QPointerEvent* self);
	void (*setTimestamp)(struct QPointerEvent_VTable* vtbl, QPointerEvent* self, unsigned long long timestamp);
	bool (*isBeginEvent)(struct QPointerEvent_VTable* vtbl, const QPointerEvent* self);
	bool (*isUpdateEvent)(struct QPointerEvent_VTable* vtbl, const QPointerEvent* self);
	bool (*isEndEvent)(struct QPointerEvent_VTable* vtbl, const QPointerEvent* self);
	void (*setAccepted)(struct QPointerEvent_VTable* vtbl, QPointerEvent* self, bool accepted);
};
QPointerEvent* QPointerEvent_new(struct QPointerEvent_VTable* vtbl, int type, QPointingDevice* dev);
QPointerEvent* QPointerEvent_new2(struct QPointerEvent_VTable* vtbl, int type, QPointingDevice* dev, int modifiers);
QPointerEvent* QPointerEvent_new3(struct QPointerEvent_VTable* vtbl, int type, QPointingDevice* dev, int modifiers, struct miqt_array /* of QEventPoint* */  points);
void QPointerEvent_virtbase(QPointerEvent* src, QInputEvent** outptr_QInputEvent);
QPointerEvent* QPointerEvent_clone(const QPointerEvent* self);
QPointingDevice* QPointerEvent_pointingDevice(const QPointerEvent* self);
int QPointerEvent_pointerType(const QPointerEvent* self);
void QPointerEvent_setTimestamp(QPointerEvent* self, unsigned long long timestamp);
ptrdiff_t QPointerEvent_pointCount(const QPointerEvent* self);
QEventPoint* QPointerEvent_point(QPointerEvent* self, ptrdiff_t i);
struct miqt_array /* of QEventPoint* */  QPointerEvent_points(const QPointerEvent* self);
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
QPointerEvent* QPointerEvent_virtualbase_clone(const void* self);
void QPointerEvent_virtualbase_setTimestamp(void* self, unsigned long long timestamp);
bool QPointerEvent_virtualbase_isBeginEvent(const void* self);
bool QPointerEvent_virtualbase_isUpdateEvent(const void* self);
bool QPointerEvent_virtualbase_isEndEvent(const void* self);
void QPointerEvent_virtualbase_setAccepted(void* self, bool accepted);
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

struct QEnterEvent_VTable {
	void (*destructor)(struct QEnterEvent_VTable* vtbl, QEnterEvent* self);
	QEnterEvent* (*clone)(struct QEnterEvent_VTable* vtbl, const QEnterEvent* self);
	bool (*isBeginEvent)(struct QEnterEvent_VTable* vtbl, const QEnterEvent* self);
	bool (*isUpdateEvent)(struct QEnterEvent_VTable* vtbl, const QEnterEvent* self);
	bool (*isEndEvent)(struct QEnterEvent_VTable* vtbl, const QEnterEvent* self);
	void (*setTimestamp)(struct QEnterEvent_VTable* vtbl, QEnterEvent* self, unsigned long long timestamp);
	void (*setAccepted)(struct QEnterEvent_VTable* vtbl, QEnterEvent* self, bool accepted);
};
QEnterEvent* QEnterEvent_new(struct QEnterEvent_VTable* vtbl, QPointF* localPos, QPointF* scenePos, QPointF* globalPos);
QEnterEvent* QEnterEvent_new2(struct QEnterEvent_VTable* vtbl, QPointF* localPos, QPointF* scenePos, QPointF* globalPos, QPointingDevice* device);
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
QEnterEvent* QEnterEvent_virtualbase_clone(const void* self);
bool QEnterEvent_virtualbase_isBeginEvent(const void* self);
bool QEnterEvent_virtualbase_isUpdateEvent(const void* self);
bool QEnterEvent_virtualbase_isEndEvent(const void* self);
void QEnterEvent_virtualbase_setTimestamp(void* self, unsigned long long timestamp);
void QEnterEvent_virtualbase_setAccepted(void* self, bool accepted);
void QEnterEvent_delete(QEnterEvent* self);

struct QMouseEvent_VTable {
	void (*destructor)(struct QMouseEvent_VTable* vtbl, QMouseEvent* self);
	QMouseEvent* (*clone)(struct QMouseEvent_VTable* vtbl, const QMouseEvent* self);
	bool (*isBeginEvent)(struct QMouseEvent_VTable* vtbl, const QMouseEvent* self);
	bool (*isUpdateEvent)(struct QMouseEvent_VTable* vtbl, const QMouseEvent* self);
	bool (*isEndEvent)(struct QMouseEvent_VTable* vtbl, const QMouseEvent* self);
	void (*setTimestamp)(struct QMouseEvent_VTable* vtbl, QMouseEvent* self, unsigned long long timestamp);
	void (*setAccepted)(struct QMouseEvent_VTable* vtbl, QMouseEvent* self, bool accepted);
};
QMouseEvent* QMouseEvent_new(struct QMouseEvent_VTable* vtbl, int type, QPointF* localPos, int button, int buttons, int modifiers);
QMouseEvent* QMouseEvent_new2(struct QMouseEvent_VTable* vtbl, int type, QPointF* localPos, QPointF* globalPos, int button, int buttons, int modifiers);
QMouseEvent* QMouseEvent_new3(struct QMouseEvent_VTable* vtbl, int type, QPointF* localPos, QPointF* scenePos, QPointF* globalPos, int button, int buttons, int modifiers);
QMouseEvent* QMouseEvent_new4(struct QMouseEvent_VTable* vtbl, int type, QPointF* localPos, QPointF* scenePos, QPointF* globalPos, int button, int buttons, int modifiers, int source);
QMouseEvent* QMouseEvent_new5(struct QMouseEvent_VTable* vtbl, int type, QPointF* localPos, int button, int buttons, int modifiers, QPointingDevice* device);
QMouseEvent* QMouseEvent_new6(struct QMouseEvent_VTable* vtbl, int type, QPointF* localPos, QPointF* globalPos, int button, int buttons, int modifiers, QPointingDevice* device);
QMouseEvent* QMouseEvent_new7(struct QMouseEvent_VTable* vtbl, int type, QPointF* localPos, QPointF* scenePos, QPointF* globalPos, int button, int buttons, int modifiers, QPointingDevice* device);
QMouseEvent* QMouseEvent_new8(struct QMouseEvent_VTable* vtbl, int type, QPointF* localPos, QPointF* scenePos, QPointF* globalPos, int button, int buttons, int modifiers, int source, QPointingDevice* device);
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
QMouseEvent* QMouseEvent_virtualbase_clone(const void* self);
bool QMouseEvent_virtualbase_isBeginEvent(const void* self);
bool QMouseEvent_virtualbase_isUpdateEvent(const void* self);
bool QMouseEvent_virtualbase_isEndEvent(const void* self);
void QMouseEvent_virtualbase_setTimestamp(void* self, unsigned long long timestamp);
void QMouseEvent_virtualbase_setAccepted(void* self, bool accepted);
void QMouseEvent_delete(QMouseEvent* self);

struct QHoverEvent_VTable {
	void (*destructor)(struct QHoverEvent_VTable* vtbl, QHoverEvent* self);
	QHoverEvent* (*clone)(struct QHoverEvent_VTable* vtbl, const QHoverEvent* self);
	bool (*isUpdateEvent)(struct QHoverEvent_VTable* vtbl, const QHoverEvent* self);
	bool (*isBeginEvent)(struct QHoverEvent_VTable* vtbl, const QHoverEvent* self);
	bool (*isEndEvent)(struct QHoverEvent_VTable* vtbl, const QHoverEvent* self);
	void (*setTimestamp)(struct QHoverEvent_VTable* vtbl, QHoverEvent* self, unsigned long long timestamp);
	void (*setAccepted)(struct QHoverEvent_VTable* vtbl, QHoverEvent* self, bool accepted);
};
QHoverEvent* QHoverEvent_new(struct QHoverEvent_VTable* vtbl, int type, QPointF* scenePos, QPointF* globalPos, QPointF* oldPos);
QHoverEvent* QHoverEvent_new2(struct QHoverEvent_VTable* vtbl, int type, QPointF* pos, QPointF* oldPos);
QHoverEvent* QHoverEvent_new3(struct QHoverEvent_VTable* vtbl, int type, QPointF* scenePos, QPointF* globalPos, QPointF* oldPos, int modifiers);
QHoverEvent* QHoverEvent_new4(struct QHoverEvent_VTable* vtbl, int type, QPointF* scenePos, QPointF* globalPos, QPointF* oldPos, int modifiers, QPointingDevice* device);
QHoverEvent* QHoverEvent_new5(struct QHoverEvent_VTable* vtbl, int type, QPointF* pos, QPointF* oldPos, int modifiers);
QHoverEvent* QHoverEvent_new6(struct QHoverEvent_VTable* vtbl, int type, QPointF* pos, QPointF* oldPos, int modifiers, QPointingDevice* device);
void QHoverEvent_virtbase(QHoverEvent* src, QSinglePointEvent** outptr_QSinglePointEvent);
QHoverEvent* QHoverEvent_clone(const QHoverEvent* self);
QPoint* QHoverEvent_pos(const QHoverEvent* self);
QPointF* QHoverEvent_posF(const QHoverEvent* self);
bool QHoverEvent_isUpdateEvent(const QHoverEvent* self);
QPoint* QHoverEvent_oldPos(const QHoverEvent* self);
QPointF* QHoverEvent_oldPosF(const QHoverEvent* self);
QHoverEvent* QHoverEvent_virtualbase_clone(const void* self);
bool QHoverEvent_virtualbase_isUpdateEvent(const void* self);
bool QHoverEvent_virtualbase_isBeginEvent(const void* self);
bool QHoverEvent_virtualbase_isEndEvent(const void* self);
void QHoverEvent_virtualbase_setTimestamp(void* self, unsigned long long timestamp);
void QHoverEvent_virtualbase_setAccepted(void* self, bool accepted);
void QHoverEvent_delete(QHoverEvent* self);

struct QWheelEvent_VTable {
	void (*destructor)(struct QWheelEvent_VTable* vtbl, QWheelEvent* self);
	QWheelEvent* (*clone)(struct QWheelEvent_VTable* vtbl, const QWheelEvent* self);
	bool (*isBeginEvent)(struct QWheelEvent_VTable* vtbl, const QWheelEvent* self);
	bool (*isUpdateEvent)(struct QWheelEvent_VTable* vtbl, const QWheelEvent* self);
	bool (*isEndEvent)(struct QWheelEvent_VTable* vtbl, const QWheelEvent* self);
	void (*setTimestamp)(struct QWheelEvent_VTable* vtbl, QWheelEvent* self, unsigned long long timestamp);
	void (*setAccepted)(struct QWheelEvent_VTable* vtbl, QWheelEvent* self, bool accepted);
};
QWheelEvent* QWheelEvent_new(struct QWheelEvent_VTable* vtbl, QPointF* pos, QPointF* globalPos, QPoint* pixelDelta, QPoint* angleDelta, int buttons, int modifiers, int phase, bool inverted);
QWheelEvent* QWheelEvent_new2(struct QWheelEvent_VTable* vtbl, QPointF* pos, QPointF* globalPos, QPoint* pixelDelta, QPoint* angleDelta, int buttons, int modifiers, int phase, bool inverted, int source);
QWheelEvent* QWheelEvent_new3(struct QWheelEvent_VTable* vtbl, QPointF* pos, QPointF* globalPos, QPoint* pixelDelta, QPoint* angleDelta, int buttons, int modifiers, int phase, bool inverted, int source, QPointingDevice* device);
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
QWheelEvent* QWheelEvent_virtualbase_clone(const void* self);
bool QWheelEvent_virtualbase_isBeginEvent(const void* self);
bool QWheelEvent_virtualbase_isUpdateEvent(const void* self);
bool QWheelEvent_virtualbase_isEndEvent(const void* self);
void QWheelEvent_virtualbase_setTimestamp(void* self, unsigned long long timestamp);
void QWheelEvent_virtualbase_setAccepted(void* self, bool accepted);
const QMetaObject* QWheelEvent_staticMetaObject();
void QWheelEvent_delete(QWheelEvent* self);

struct QTabletEvent_VTable {
	void (*destructor)(struct QTabletEvent_VTable* vtbl, QTabletEvent* self);
	QTabletEvent* (*clone)(struct QTabletEvent_VTable* vtbl, const QTabletEvent* self);
	bool (*isBeginEvent)(struct QTabletEvent_VTable* vtbl, const QTabletEvent* self);
	bool (*isUpdateEvent)(struct QTabletEvent_VTable* vtbl, const QTabletEvent* self);
	bool (*isEndEvent)(struct QTabletEvent_VTable* vtbl, const QTabletEvent* self);
	void (*setTimestamp)(struct QTabletEvent_VTable* vtbl, QTabletEvent* self, unsigned long long timestamp);
	void (*setAccepted)(struct QTabletEvent_VTable* vtbl, QTabletEvent* self, bool accepted);
};
QTabletEvent* QTabletEvent_new(struct QTabletEvent_VTable* vtbl, int t, QPointingDevice* device, QPointF* pos, QPointF* globalPos, double pressure, float xTilt, float yTilt, float tangentialPressure, double rotation, float z, int keyState, int button, int buttons);
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
QTabletEvent* QTabletEvent_virtualbase_clone(const void* self);
bool QTabletEvent_virtualbase_isBeginEvent(const void* self);
bool QTabletEvent_virtualbase_isUpdateEvent(const void* self);
bool QTabletEvent_virtualbase_isEndEvent(const void* self);
void QTabletEvent_virtualbase_setTimestamp(void* self, unsigned long long timestamp);
void QTabletEvent_virtualbase_setAccepted(void* self, bool accepted);
void QTabletEvent_delete(QTabletEvent* self);

struct QNativeGestureEvent_VTable {
	void (*destructor)(struct QNativeGestureEvent_VTable* vtbl, QNativeGestureEvent* self);
	QNativeGestureEvent* (*clone)(struct QNativeGestureEvent_VTable* vtbl, const QNativeGestureEvent* self);
	bool (*isBeginEvent)(struct QNativeGestureEvent_VTable* vtbl, const QNativeGestureEvent* self);
	bool (*isUpdateEvent)(struct QNativeGestureEvent_VTable* vtbl, const QNativeGestureEvent* self);
	bool (*isEndEvent)(struct QNativeGestureEvent_VTable* vtbl, const QNativeGestureEvent* self);
	void (*setTimestamp)(struct QNativeGestureEvent_VTable* vtbl, QNativeGestureEvent* self, unsigned long long timestamp);
	void (*setAccepted)(struct QNativeGestureEvent_VTable* vtbl, QNativeGestureEvent* self, bool accepted);
};
QNativeGestureEvent* QNativeGestureEvent_new(struct QNativeGestureEvent_VTable* vtbl, int type, QPointingDevice* dev, QPointF* localPos, QPointF* scenePos, QPointF* globalPos, double value, unsigned long long sequenceId, unsigned long long intArgument);
QNativeGestureEvent* QNativeGestureEvent_new2(struct QNativeGestureEvent_VTable* vtbl, int type, QPointingDevice* dev, int fingerCount, QPointF* localPos, QPointF* scenePos, QPointF* globalPos, double value, QPointF* delta);
QNativeGestureEvent* QNativeGestureEvent_new3(struct QNativeGestureEvent_VTable* vtbl, int type, QPointingDevice* dev, int fingerCount, QPointF* localPos, QPointF* scenePos, QPointF* globalPos, double value, QPointF* delta, unsigned long long sequenceId);
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
QNativeGestureEvent* QNativeGestureEvent_virtualbase_clone(const void* self);
bool QNativeGestureEvent_virtualbase_isBeginEvent(const void* self);
bool QNativeGestureEvent_virtualbase_isUpdateEvent(const void* self);
bool QNativeGestureEvent_virtualbase_isEndEvent(const void* self);
void QNativeGestureEvent_virtualbase_setTimestamp(void* self, unsigned long long timestamp);
void QNativeGestureEvent_virtualbase_setAccepted(void* self, bool accepted);
void QNativeGestureEvent_delete(QNativeGestureEvent* self);

struct QKeyEvent_VTable {
	void (*destructor)(struct QKeyEvent_VTable* vtbl, QKeyEvent* self);
	QKeyEvent* (*clone)(struct QKeyEvent_VTable* vtbl, const QKeyEvent* self);
	void (*setTimestamp)(struct QKeyEvent_VTable* vtbl, QKeyEvent* self, unsigned long long timestamp);
	void (*setAccepted)(struct QKeyEvent_VTable* vtbl, QKeyEvent* self, bool accepted);
};
QKeyEvent* QKeyEvent_new(struct QKeyEvent_VTable* vtbl, int type, int key, int modifiers);
QKeyEvent* QKeyEvent_new2(struct QKeyEvent_VTable* vtbl, int type, int key, int modifiers, unsigned int nativeScanCode, unsigned int nativeVirtualKey, unsigned int nativeModifiers);
QKeyEvent* QKeyEvent_new3(struct QKeyEvent_VTable* vtbl, int type, int key, int modifiers, struct miqt_string text);
QKeyEvent* QKeyEvent_new4(struct QKeyEvent_VTable* vtbl, int type, int key, int modifiers, struct miqt_string text, bool autorep);
QKeyEvent* QKeyEvent_new5(struct QKeyEvent_VTable* vtbl, int type, int key, int modifiers, struct miqt_string text, bool autorep, uint16_t count);
QKeyEvent* QKeyEvent_new6(struct QKeyEvent_VTable* vtbl, int type, int key, int modifiers, unsigned int nativeScanCode, unsigned int nativeVirtualKey, unsigned int nativeModifiers, struct miqt_string text);
QKeyEvent* QKeyEvent_new7(struct QKeyEvent_VTable* vtbl, int type, int key, int modifiers, unsigned int nativeScanCode, unsigned int nativeVirtualKey, unsigned int nativeModifiers, struct miqt_string text, bool autorep);
QKeyEvent* QKeyEvent_new8(struct QKeyEvent_VTable* vtbl, int type, int key, int modifiers, unsigned int nativeScanCode, unsigned int nativeVirtualKey, unsigned int nativeModifiers, struct miqt_string text, bool autorep, uint16_t count);
QKeyEvent* QKeyEvent_new9(struct QKeyEvent_VTable* vtbl, int type, int key, int modifiers, unsigned int nativeScanCode, unsigned int nativeVirtualKey, unsigned int nativeModifiers, struct miqt_string text, bool autorep, uint16_t count, QInputDevice* device);
void QKeyEvent_virtbase(QKeyEvent* src, QInputEvent** outptr_QInputEvent);
QKeyEvent* QKeyEvent_clone(const QKeyEvent* self);
int QKeyEvent_key(const QKeyEvent* self);
bool QKeyEvent_matches(const QKeyEvent* self, int key);
int QKeyEvent_modifiers(const QKeyEvent* self);
QKeyCombination* QKeyEvent_keyCombination(const QKeyEvent* self);
struct miqt_string QKeyEvent_text(const QKeyEvent* self);
bool QKeyEvent_isAutoRepeat(const QKeyEvent* self);
int QKeyEvent_count(const QKeyEvent* self);
unsigned int QKeyEvent_nativeScanCode(const QKeyEvent* self);
unsigned int QKeyEvent_nativeVirtualKey(const QKeyEvent* self);
unsigned int QKeyEvent_nativeModifiers(const QKeyEvent* self);
QKeyEvent* QKeyEvent_virtualbase_clone(const void* self);
void QKeyEvent_virtualbase_setTimestamp(void* self, unsigned long long timestamp);
void QKeyEvent_virtualbase_setAccepted(void* self, bool accepted);
void QKeyEvent_delete(QKeyEvent* self);

struct QFocusEvent_VTable {
	void (*destructor)(struct QFocusEvent_VTable* vtbl, QFocusEvent* self);
	QFocusEvent* (*clone)(struct QFocusEvent_VTable* vtbl, const QFocusEvent* self);
	void (*setAccepted)(struct QFocusEvent_VTable* vtbl, QFocusEvent* self, bool accepted);
};
QFocusEvent* QFocusEvent_new(struct QFocusEvent_VTable* vtbl, int type);
QFocusEvent* QFocusEvent_new2(struct QFocusEvent_VTable* vtbl, int type, int reason);
void QFocusEvent_virtbase(QFocusEvent* src, QEvent** outptr_QEvent);
QFocusEvent* QFocusEvent_clone(const QFocusEvent* self);
bool QFocusEvent_gotFocus(const QFocusEvent* self);
bool QFocusEvent_lostFocus(const QFocusEvent* self);
int QFocusEvent_reason(const QFocusEvent* self);
QFocusEvent* QFocusEvent_virtualbase_clone(const void* self);
void QFocusEvent_virtualbase_setAccepted(void* self, bool accepted);
void QFocusEvent_delete(QFocusEvent* self);

struct QPaintEvent_VTable {
	void (*destructor)(struct QPaintEvent_VTable* vtbl, QPaintEvent* self);
	QPaintEvent* (*clone)(struct QPaintEvent_VTable* vtbl, const QPaintEvent* self);
	void (*setAccepted)(struct QPaintEvent_VTable* vtbl, QPaintEvent* self, bool accepted);
};
QPaintEvent* QPaintEvent_new(struct QPaintEvent_VTable* vtbl, QRegion* paintRegion);
QPaintEvent* QPaintEvent_new2(struct QPaintEvent_VTable* vtbl, QRect* paintRect);
void QPaintEvent_virtbase(QPaintEvent* src, QEvent** outptr_QEvent);
QPaintEvent* QPaintEvent_clone(const QPaintEvent* self);
QRect* QPaintEvent_rect(const QPaintEvent* self);
QRegion* QPaintEvent_region(const QPaintEvent* self);
QPaintEvent* QPaintEvent_virtualbase_clone(const void* self);
void QPaintEvent_virtualbase_setAccepted(void* self, bool accepted);
void QPaintEvent_delete(QPaintEvent* self);

struct QMoveEvent_VTable {
	void (*destructor)(struct QMoveEvent_VTable* vtbl, QMoveEvent* self);
	QMoveEvent* (*clone)(struct QMoveEvent_VTable* vtbl, const QMoveEvent* self);
	void (*setAccepted)(struct QMoveEvent_VTable* vtbl, QMoveEvent* self, bool accepted);
};
QMoveEvent* QMoveEvent_new(struct QMoveEvent_VTable* vtbl, QPoint* pos, QPoint* oldPos);
void QMoveEvent_virtbase(QMoveEvent* src, QEvent** outptr_QEvent);
QMoveEvent* QMoveEvent_clone(const QMoveEvent* self);
QPoint* QMoveEvent_pos(const QMoveEvent* self);
QPoint* QMoveEvent_oldPos(const QMoveEvent* self);
QMoveEvent* QMoveEvent_virtualbase_clone(const void* self);
void QMoveEvent_virtualbase_setAccepted(void* self, bool accepted);
void QMoveEvent_delete(QMoveEvent* self);

struct QExposeEvent_VTable {
	void (*destructor)(struct QExposeEvent_VTable* vtbl, QExposeEvent* self);
	QExposeEvent* (*clone)(struct QExposeEvent_VTable* vtbl, const QExposeEvent* self);
	void (*setAccepted)(struct QExposeEvent_VTable* vtbl, QExposeEvent* self, bool accepted);
};
QExposeEvent* QExposeEvent_new(struct QExposeEvent_VTable* vtbl, QRegion* m_region);
void QExposeEvent_virtbase(QExposeEvent* src, QEvent** outptr_QEvent);
QExposeEvent* QExposeEvent_clone(const QExposeEvent* self);
QRegion* QExposeEvent_region(const QExposeEvent* self);
QExposeEvent* QExposeEvent_virtualbase_clone(const void* self);
void QExposeEvent_virtualbase_setAccepted(void* self, bool accepted);
void QExposeEvent_delete(QExposeEvent* self);

struct QPlatformSurfaceEvent_VTable {
	void (*destructor)(struct QPlatformSurfaceEvent_VTable* vtbl, QPlatformSurfaceEvent* self);
	QPlatformSurfaceEvent* (*clone)(struct QPlatformSurfaceEvent_VTable* vtbl, const QPlatformSurfaceEvent* self);
	void (*setAccepted)(struct QPlatformSurfaceEvent_VTable* vtbl, QPlatformSurfaceEvent* self, bool accepted);
};
QPlatformSurfaceEvent* QPlatformSurfaceEvent_new(struct QPlatformSurfaceEvent_VTable* vtbl, int surfaceEventType);
void QPlatformSurfaceEvent_virtbase(QPlatformSurfaceEvent* src, QEvent** outptr_QEvent);
QPlatformSurfaceEvent* QPlatformSurfaceEvent_clone(const QPlatformSurfaceEvent* self);
int QPlatformSurfaceEvent_surfaceEventType(const QPlatformSurfaceEvent* self);
QPlatformSurfaceEvent* QPlatformSurfaceEvent_virtualbase_clone(const void* self);
void QPlatformSurfaceEvent_virtualbase_setAccepted(void* self, bool accepted);
void QPlatformSurfaceEvent_delete(QPlatformSurfaceEvent* self);

struct QResizeEvent_VTable {
	void (*destructor)(struct QResizeEvent_VTable* vtbl, QResizeEvent* self);
	QResizeEvent* (*clone)(struct QResizeEvent_VTable* vtbl, const QResizeEvent* self);
	void (*setAccepted)(struct QResizeEvent_VTable* vtbl, QResizeEvent* self, bool accepted);
};
QResizeEvent* QResizeEvent_new(struct QResizeEvent_VTable* vtbl, QSize* size, QSize* oldSize);
void QResizeEvent_virtbase(QResizeEvent* src, QEvent** outptr_QEvent);
QResizeEvent* QResizeEvent_clone(const QResizeEvent* self);
QSize* QResizeEvent_size(const QResizeEvent* self);
QSize* QResizeEvent_oldSize(const QResizeEvent* self);
QResizeEvent* QResizeEvent_virtualbase_clone(const void* self);
void QResizeEvent_virtualbase_setAccepted(void* self, bool accepted);
void QResizeEvent_delete(QResizeEvent* self);

struct QCloseEvent_VTable {
	void (*destructor)(struct QCloseEvent_VTable* vtbl, QCloseEvent* self);
	QCloseEvent* (*clone)(struct QCloseEvent_VTable* vtbl, const QCloseEvent* self);
	void (*setAccepted)(struct QCloseEvent_VTable* vtbl, QCloseEvent* self, bool accepted);
};
QCloseEvent* QCloseEvent_new(struct QCloseEvent_VTable* vtbl);
void QCloseEvent_virtbase(QCloseEvent* src, QEvent** outptr_QEvent);
QCloseEvent* QCloseEvent_clone(const QCloseEvent* self);
QCloseEvent* QCloseEvent_virtualbase_clone(const void* self);
void QCloseEvent_virtualbase_setAccepted(void* self, bool accepted);
void QCloseEvent_delete(QCloseEvent* self);

struct QIconDragEvent_VTable {
	void (*destructor)(struct QIconDragEvent_VTable* vtbl, QIconDragEvent* self);
	QIconDragEvent* (*clone)(struct QIconDragEvent_VTable* vtbl, const QIconDragEvent* self);
	void (*setAccepted)(struct QIconDragEvent_VTable* vtbl, QIconDragEvent* self, bool accepted);
};
QIconDragEvent* QIconDragEvent_new(struct QIconDragEvent_VTable* vtbl);
void QIconDragEvent_virtbase(QIconDragEvent* src, QEvent** outptr_QEvent);
QIconDragEvent* QIconDragEvent_clone(const QIconDragEvent* self);
QIconDragEvent* QIconDragEvent_virtualbase_clone(const void* self);
void QIconDragEvent_virtualbase_setAccepted(void* self, bool accepted);
void QIconDragEvent_delete(QIconDragEvent* self);

struct QShowEvent_VTable {
	void (*destructor)(struct QShowEvent_VTable* vtbl, QShowEvent* self);
	QShowEvent* (*clone)(struct QShowEvent_VTable* vtbl, const QShowEvent* self);
	void (*setAccepted)(struct QShowEvent_VTable* vtbl, QShowEvent* self, bool accepted);
};
QShowEvent* QShowEvent_new(struct QShowEvent_VTable* vtbl);
void QShowEvent_virtbase(QShowEvent* src, QEvent** outptr_QEvent);
QShowEvent* QShowEvent_clone(const QShowEvent* self);
QShowEvent* QShowEvent_virtualbase_clone(const void* self);
void QShowEvent_virtualbase_setAccepted(void* self, bool accepted);
void QShowEvent_delete(QShowEvent* self);

struct QHideEvent_VTable {
	void (*destructor)(struct QHideEvent_VTable* vtbl, QHideEvent* self);
	QHideEvent* (*clone)(struct QHideEvent_VTable* vtbl, const QHideEvent* self);
	void (*setAccepted)(struct QHideEvent_VTable* vtbl, QHideEvent* self, bool accepted);
};
QHideEvent* QHideEvent_new(struct QHideEvent_VTable* vtbl);
void QHideEvent_virtbase(QHideEvent* src, QEvent** outptr_QEvent);
QHideEvent* QHideEvent_clone(const QHideEvent* self);
QHideEvent* QHideEvent_virtualbase_clone(const void* self);
void QHideEvent_virtualbase_setAccepted(void* self, bool accepted);
void QHideEvent_delete(QHideEvent* self);

struct QContextMenuEvent_VTable {
	void (*destructor)(struct QContextMenuEvent_VTable* vtbl, QContextMenuEvent* self);
	QContextMenuEvent* (*clone)(struct QContextMenuEvent_VTable* vtbl, const QContextMenuEvent* self);
	void (*setTimestamp)(struct QContextMenuEvent_VTable* vtbl, QContextMenuEvent* self, unsigned long long timestamp);
	void (*setAccepted)(struct QContextMenuEvent_VTable* vtbl, QContextMenuEvent* self, bool accepted);
};
QContextMenuEvent* QContextMenuEvent_new(struct QContextMenuEvent_VTable* vtbl, int reason, QPoint* pos, QPoint* globalPos);
QContextMenuEvent* QContextMenuEvent_new2(struct QContextMenuEvent_VTable* vtbl, int reason, QPoint* pos);
QContextMenuEvent* QContextMenuEvent_new3(struct QContextMenuEvent_VTable* vtbl, int reason, QPoint* pos, QPoint* globalPos, int modifiers);
void QContextMenuEvent_virtbase(QContextMenuEvent* src, QInputEvent** outptr_QInputEvent);
QContextMenuEvent* QContextMenuEvent_clone(const QContextMenuEvent* self);
int QContextMenuEvent_x(const QContextMenuEvent* self);
int QContextMenuEvent_y(const QContextMenuEvent* self);
int QContextMenuEvent_globalX(const QContextMenuEvent* self);
int QContextMenuEvent_globalY(const QContextMenuEvent* self);
QPoint* QContextMenuEvent_pos(const QContextMenuEvent* self);
QPoint* QContextMenuEvent_globalPos(const QContextMenuEvent* self);
int QContextMenuEvent_reason(const QContextMenuEvent* self);
QContextMenuEvent* QContextMenuEvent_virtualbase_clone(const void* self);
void QContextMenuEvent_virtualbase_setTimestamp(void* self, unsigned long long timestamp);
void QContextMenuEvent_virtualbase_setAccepted(void* self, bool accepted);
void QContextMenuEvent_delete(QContextMenuEvent* self);

struct QInputMethodEvent_VTable {
	void (*destructor)(struct QInputMethodEvent_VTable* vtbl, QInputMethodEvent* self);
	QInputMethodEvent* (*clone)(struct QInputMethodEvent_VTable* vtbl, const QInputMethodEvent* self);
	void (*setAccepted)(struct QInputMethodEvent_VTable* vtbl, QInputMethodEvent* self, bool accepted);
};
QInputMethodEvent* QInputMethodEvent_new(struct QInputMethodEvent_VTable* vtbl);
QInputMethodEvent* QInputMethodEvent_new2(struct QInputMethodEvent_VTable* vtbl, struct miqt_string preeditText, struct miqt_array /* of QInputMethodEvent__Attribute* */  attributes);
void QInputMethodEvent_virtbase(QInputMethodEvent* src, QEvent** outptr_QEvent);
QInputMethodEvent* QInputMethodEvent_clone(const QInputMethodEvent* self);
void QInputMethodEvent_setCommitString(QInputMethodEvent* self, struct miqt_string commitString);
struct miqt_array /* of QInputMethodEvent__Attribute* */  QInputMethodEvent_attributes(const QInputMethodEvent* self);
struct miqt_string QInputMethodEvent_preeditString(const QInputMethodEvent* self);
struct miqt_string QInputMethodEvent_commitString(const QInputMethodEvent* self);
int QInputMethodEvent_replacementStart(const QInputMethodEvent* self);
int QInputMethodEvent_replacementLength(const QInputMethodEvent* self);
void QInputMethodEvent_setCommitString2(QInputMethodEvent* self, struct miqt_string commitString, int replaceFrom);
void QInputMethodEvent_setCommitString3(QInputMethodEvent* self, struct miqt_string commitString, int replaceFrom, int replaceLength);
QInputMethodEvent* QInputMethodEvent_virtualbase_clone(const void* self);
void QInputMethodEvent_virtualbase_setAccepted(void* self, bool accepted);
void QInputMethodEvent_delete(QInputMethodEvent* self);

struct QInputMethodQueryEvent_VTable {
	void (*destructor)(struct QInputMethodQueryEvent_VTable* vtbl, QInputMethodQueryEvent* self);
	QInputMethodQueryEvent* (*clone)(struct QInputMethodQueryEvent_VTable* vtbl, const QInputMethodQueryEvent* self);
	void (*setAccepted)(struct QInputMethodQueryEvent_VTable* vtbl, QInputMethodQueryEvent* self, bool accepted);
};
QInputMethodQueryEvent* QInputMethodQueryEvent_new(struct QInputMethodQueryEvent_VTable* vtbl, int queries);
void QInputMethodQueryEvent_virtbase(QInputMethodQueryEvent* src, QEvent** outptr_QEvent);
QInputMethodQueryEvent* QInputMethodQueryEvent_clone(const QInputMethodQueryEvent* self);
int QInputMethodQueryEvent_queries(const QInputMethodQueryEvent* self);
void QInputMethodQueryEvent_setValue(QInputMethodQueryEvent* self, int query, QVariant* value);
QVariant* QInputMethodQueryEvent_value(const QInputMethodQueryEvent* self, int query);
QInputMethodQueryEvent* QInputMethodQueryEvent_virtualbase_clone(const void* self);
void QInputMethodQueryEvent_virtualbase_setAccepted(void* self, bool accepted);
void QInputMethodQueryEvent_delete(QInputMethodQueryEvent* self);

struct QDropEvent_VTable {
	void (*destructor)(struct QDropEvent_VTable* vtbl, QDropEvent* self);
	QDropEvent* (*clone)(struct QDropEvent_VTable* vtbl, const QDropEvent* self);
	void (*setAccepted)(struct QDropEvent_VTable* vtbl, QDropEvent* self, bool accepted);
};
QDropEvent* QDropEvent_new(struct QDropEvent_VTable* vtbl, QPointF* pos, int actions, QMimeData* data, int buttons, int modifiers);
QDropEvent* QDropEvent_new2(struct QDropEvent_VTable* vtbl, QPointF* pos, int actions, QMimeData* data, int buttons, int modifiers, int type);
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
QDropEvent* QDropEvent_virtualbase_clone(const void* self);
void QDropEvent_virtualbase_setAccepted(void* self, bool accepted);
void QDropEvent_delete(QDropEvent* self);

struct QDragMoveEvent_VTable {
	void (*destructor)(struct QDragMoveEvent_VTable* vtbl, QDragMoveEvent* self);
	QDragMoveEvent* (*clone)(struct QDragMoveEvent_VTable* vtbl, const QDragMoveEvent* self);
	void (*setAccepted)(struct QDragMoveEvent_VTable* vtbl, QDragMoveEvent* self, bool accepted);
};
QDragMoveEvent* QDragMoveEvent_new(struct QDragMoveEvent_VTable* vtbl, QPoint* pos, int actions, QMimeData* data, int buttons, int modifiers);
QDragMoveEvent* QDragMoveEvent_new2(struct QDragMoveEvent_VTable* vtbl, QPoint* pos, int actions, QMimeData* data, int buttons, int modifiers, int type);
void QDragMoveEvent_virtbase(QDragMoveEvent* src, QDropEvent** outptr_QDropEvent);
QDragMoveEvent* QDragMoveEvent_clone(const QDragMoveEvent* self);
QRect* QDragMoveEvent_answerRect(const QDragMoveEvent* self);
void QDragMoveEvent_accept(QDragMoveEvent* self);
void QDragMoveEvent_ignore(QDragMoveEvent* self);
void QDragMoveEvent_acceptWithQRect(QDragMoveEvent* self, QRect* r);
void QDragMoveEvent_ignoreWithQRect(QDragMoveEvent* self, QRect* r);
QDragMoveEvent* QDragMoveEvent_virtualbase_clone(const void* self);
void QDragMoveEvent_virtualbase_setAccepted(void* self, bool accepted);
void QDragMoveEvent_delete(QDragMoveEvent* self);

struct QDragEnterEvent_VTable {
	void (*destructor)(struct QDragEnterEvent_VTable* vtbl, QDragEnterEvent* self);
	QDragEnterEvent* (*clone)(struct QDragEnterEvent_VTable* vtbl, const QDragEnterEvent* self);
	void (*setAccepted)(struct QDragEnterEvent_VTable* vtbl, QDragEnterEvent* self, bool accepted);
};
QDragEnterEvent* QDragEnterEvent_new(struct QDragEnterEvent_VTable* vtbl, QPoint* pos, int actions, QMimeData* data, int buttons, int modifiers);
void QDragEnterEvent_virtbase(QDragEnterEvent* src, QDragMoveEvent** outptr_QDragMoveEvent);
QDragEnterEvent* QDragEnterEvent_clone(const QDragEnterEvent* self);
QDragEnterEvent* QDragEnterEvent_virtualbase_clone(const void* self);
void QDragEnterEvent_virtualbase_setAccepted(void* self, bool accepted);
void QDragEnterEvent_delete(QDragEnterEvent* self);

struct QDragLeaveEvent_VTable {
	void (*destructor)(struct QDragLeaveEvent_VTable* vtbl, QDragLeaveEvent* self);
	QDragLeaveEvent* (*clone)(struct QDragLeaveEvent_VTable* vtbl, const QDragLeaveEvent* self);
	void (*setAccepted)(struct QDragLeaveEvent_VTable* vtbl, QDragLeaveEvent* self, bool accepted);
};
QDragLeaveEvent* QDragLeaveEvent_new(struct QDragLeaveEvent_VTable* vtbl);
void QDragLeaveEvent_virtbase(QDragLeaveEvent* src, QEvent** outptr_QEvent);
QDragLeaveEvent* QDragLeaveEvent_clone(const QDragLeaveEvent* self);
QDragLeaveEvent* QDragLeaveEvent_virtualbase_clone(const void* self);
void QDragLeaveEvent_virtualbase_setAccepted(void* self, bool accepted);
void QDragLeaveEvent_delete(QDragLeaveEvent* self);

struct QHelpEvent_VTable {
	void (*destructor)(struct QHelpEvent_VTable* vtbl, QHelpEvent* self);
	QHelpEvent* (*clone)(struct QHelpEvent_VTable* vtbl, const QHelpEvent* self);
	void (*setAccepted)(struct QHelpEvent_VTable* vtbl, QHelpEvent* self, bool accepted);
};
QHelpEvent* QHelpEvent_new(struct QHelpEvent_VTable* vtbl, int type, QPoint* pos, QPoint* globalPos);
void QHelpEvent_virtbase(QHelpEvent* src, QEvent** outptr_QEvent);
QHelpEvent* QHelpEvent_clone(const QHelpEvent* self);
int QHelpEvent_x(const QHelpEvent* self);
int QHelpEvent_y(const QHelpEvent* self);
int QHelpEvent_globalX(const QHelpEvent* self);
int QHelpEvent_globalY(const QHelpEvent* self);
QPoint* QHelpEvent_pos(const QHelpEvent* self);
QPoint* QHelpEvent_globalPos(const QHelpEvent* self);
QHelpEvent* QHelpEvent_virtualbase_clone(const void* self);
void QHelpEvent_virtualbase_setAccepted(void* self, bool accepted);
void QHelpEvent_delete(QHelpEvent* self);

struct QStatusTipEvent_VTable {
	void (*destructor)(struct QStatusTipEvent_VTable* vtbl, QStatusTipEvent* self);
	QStatusTipEvent* (*clone)(struct QStatusTipEvent_VTable* vtbl, const QStatusTipEvent* self);
	void (*setAccepted)(struct QStatusTipEvent_VTable* vtbl, QStatusTipEvent* self, bool accepted);
};
QStatusTipEvent* QStatusTipEvent_new(struct QStatusTipEvent_VTable* vtbl, struct miqt_string tip);
void QStatusTipEvent_virtbase(QStatusTipEvent* src, QEvent** outptr_QEvent);
QStatusTipEvent* QStatusTipEvent_clone(const QStatusTipEvent* self);
struct miqt_string QStatusTipEvent_tip(const QStatusTipEvent* self);
QStatusTipEvent* QStatusTipEvent_virtualbase_clone(const void* self);
void QStatusTipEvent_virtualbase_setAccepted(void* self, bool accepted);
void QStatusTipEvent_delete(QStatusTipEvent* self);

struct QWhatsThisClickedEvent_VTable {
	void (*destructor)(struct QWhatsThisClickedEvent_VTable* vtbl, QWhatsThisClickedEvent* self);
	QWhatsThisClickedEvent* (*clone)(struct QWhatsThisClickedEvent_VTable* vtbl, const QWhatsThisClickedEvent* self);
	void (*setAccepted)(struct QWhatsThisClickedEvent_VTable* vtbl, QWhatsThisClickedEvent* self, bool accepted);
};
QWhatsThisClickedEvent* QWhatsThisClickedEvent_new(struct QWhatsThisClickedEvent_VTable* vtbl, struct miqt_string href);
void QWhatsThisClickedEvent_virtbase(QWhatsThisClickedEvent* src, QEvent** outptr_QEvent);
QWhatsThisClickedEvent* QWhatsThisClickedEvent_clone(const QWhatsThisClickedEvent* self);
struct miqt_string QWhatsThisClickedEvent_href(const QWhatsThisClickedEvent* self);
QWhatsThisClickedEvent* QWhatsThisClickedEvent_virtualbase_clone(const void* self);
void QWhatsThisClickedEvent_virtualbase_setAccepted(void* self, bool accepted);
void QWhatsThisClickedEvent_delete(QWhatsThisClickedEvent* self);

struct QActionEvent_VTable {
	void (*destructor)(struct QActionEvent_VTable* vtbl, QActionEvent* self);
	QActionEvent* (*clone)(struct QActionEvent_VTable* vtbl, const QActionEvent* self);
	void (*setAccepted)(struct QActionEvent_VTable* vtbl, QActionEvent* self, bool accepted);
};
QActionEvent* QActionEvent_new(struct QActionEvent_VTable* vtbl, int type, QAction* action);
QActionEvent* QActionEvent_new2(struct QActionEvent_VTable* vtbl, int type, QAction* action, QAction* before);
void QActionEvent_virtbase(QActionEvent* src, QEvent** outptr_QEvent);
QActionEvent* QActionEvent_clone(const QActionEvent* self);
QActionEvent* QActionEvent_virtualbase_clone(const void* self);
void QActionEvent_virtualbase_setAccepted(void* self, bool accepted);
void QActionEvent_delete(QActionEvent* self);

struct QFileOpenEvent_VTable {
	void (*destructor)(struct QFileOpenEvent_VTable* vtbl, QFileOpenEvent* self);
	QFileOpenEvent* (*clone)(struct QFileOpenEvent_VTable* vtbl, const QFileOpenEvent* self);
	void (*setAccepted)(struct QFileOpenEvent_VTable* vtbl, QFileOpenEvent* self, bool accepted);
};
QFileOpenEvent* QFileOpenEvent_new(struct QFileOpenEvent_VTable* vtbl, struct miqt_string file);
QFileOpenEvent* QFileOpenEvent_new2(struct QFileOpenEvent_VTable* vtbl, QUrl* url);
void QFileOpenEvent_virtbase(QFileOpenEvent* src, QEvent** outptr_QEvent);
QFileOpenEvent* QFileOpenEvent_clone(const QFileOpenEvent* self);
struct miqt_string QFileOpenEvent_file(const QFileOpenEvent* self);
QUrl* QFileOpenEvent_url(const QFileOpenEvent* self);
bool QFileOpenEvent_openFile(const QFileOpenEvent* self, QFile* file, int flags);
QFileOpenEvent* QFileOpenEvent_virtualbase_clone(const void* self);
void QFileOpenEvent_virtualbase_setAccepted(void* self, bool accepted);
void QFileOpenEvent_delete(QFileOpenEvent* self);

struct QToolBarChangeEvent_VTable {
	void (*destructor)(struct QToolBarChangeEvent_VTable* vtbl, QToolBarChangeEvent* self);
	QToolBarChangeEvent* (*clone)(struct QToolBarChangeEvent_VTable* vtbl, const QToolBarChangeEvent* self);
	void (*setAccepted)(struct QToolBarChangeEvent_VTable* vtbl, QToolBarChangeEvent* self, bool accepted);
};
QToolBarChangeEvent* QToolBarChangeEvent_new(struct QToolBarChangeEvent_VTable* vtbl, bool t);
void QToolBarChangeEvent_virtbase(QToolBarChangeEvent* src, QEvent** outptr_QEvent);
QToolBarChangeEvent* QToolBarChangeEvent_clone(const QToolBarChangeEvent* self);
bool QToolBarChangeEvent_toggle(const QToolBarChangeEvent* self);
QToolBarChangeEvent* QToolBarChangeEvent_virtualbase_clone(const void* self);
void QToolBarChangeEvent_virtualbase_setAccepted(void* self, bool accepted);
void QToolBarChangeEvent_delete(QToolBarChangeEvent* self);

struct QShortcutEvent_VTable {
	void (*destructor)(struct QShortcutEvent_VTable* vtbl, QShortcutEvent* self);
	QShortcutEvent* (*clone)(struct QShortcutEvent_VTable* vtbl, const QShortcutEvent* self);
	void (*setAccepted)(struct QShortcutEvent_VTable* vtbl, QShortcutEvent* self, bool accepted);
};
QShortcutEvent* QShortcutEvent_new(struct QShortcutEvent_VTable* vtbl, QKeySequence* key, int id);
QShortcutEvent* QShortcutEvent_new2(struct QShortcutEvent_VTable* vtbl, QKeySequence* key, int id, bool ambiguous);
void QShortcutEvent_virtbase(QShortcutEvent* src, QEvent** outptr_QEvent);
QShortcutEvent* QShortcutEvent_clone(const QShortcutEvent* self);
QKeySequence* QShortcutEvent_key(const QShortcutEvent* self);
int QShortcutEvent_shortcutId(const QShortcutEvent* self);
bool QShortcutEvent_isAmbiguous(const QShortcutEvent* self);
QShortcutEvent* QShortcutEvent_virtualbase_clone(const void* self);
void QShortcutEvent_virtualbase_setAccepted(void* self, bool accepted);
void QShortcutEvent_delete(QShortcutEvent* self);

struct QWindowStateChangeEvent_VTable {
	void (*destructor)(struct QWindowStateChangeEvent_VTable* vtbl, QWindowStateChangeEvent* self);
	QWindowStateChangeEvent* (*clone)(struct QWindowStateChangeEvent_VTable* vtbl, const QWindowStateChangeEvent* self);
	void (*setAccepted)(struct QWindowStateChangeEvent_VTable* vtbl, QWindowStateChangeEvent* self, bool accepted);
};
QWindowStateChangeEvent* QWindowStateChangeEvent_new(struct QWindowStateChangeEvent_VTable* vtbl, int oldState);
QWindowStateChangeEvent* QWindowStateChangeEvent_new2(struct QWindowStateChangeEvent_VTable* vtbl, int oldState, bool isOverride);
void QWindowStateChangeEvent_virtbase(QWindowStateChangeEvent* src, QEvent** outptr_QEvent);
QWindowStateChangeEvent* QWindowStateChangeEvent_clone(const QWindowStateChangeEvent* self);
int QWindowStateChangeEvent_oldState(const QWindowStateChangeEvent* self);
bool QWindowStateChangeEvent_isOverride(const QWindowStateChangeEvent* self);
QWindowStateChangeEvent* QWindowStateChangeEvent_virtualbase_clone(const void* self);
void QWindowStateChangeEvent_virtualbase_setAccepted(void* self, bool accepted);
void QWindowStateChangeEvent_delete(QWindowStateChangeEvent* self);

struct QTouchEvent_VTable {
	void (*destructor)(struct QTouchEvent_VTable* vtbl, QTouchEvent* self);
	QTouchEvent* (*clone)(struct QTouchEvent_VTable* vtbl, const QTouchEvent* self);
	bool (*isBeginEvent)(struct QTouchEvent_VTable* vtbl, const QTouchEvent* self);
	bool (*isUpdateEvent)(struct QTouchEvent_VTable* vtbl, const QTouchEvent* self);
	bool (*isEndEvent)(struct QTouchEvent_VTable* vtbl, const QTouchEvent* self);
	void (*setTimestamp)(struct QTouchEvent_VTable* vtbl, QTouchEvent* self, unsigned long long timestamp);
	void (*setAccepted)(struct QTouchEvent_VTable* vtbl, QTouchEvent* self, bool accepted);
};
QTouchEvent* QTouchEvent_new(struct QTouchEvent_VTable* vtbl, int eventType);
QTouchEvent* QTouchEvent_new2(struct QTouchEvent_VTable* vtbl, int eventType, QPointingDevice* device, int modifiers, uint8_t touchPointStates);
QTouchEvent* QTouchEvent_new3(struct QTouchEvent_VTable* vtbl, int eventType, QPointingDevice* device);
QTouchEvent* QTouchEvent_new4(struct QTouchEvent_VTable* vtbl, int eventType, QPointingDevice* device, int modifiers);
QTouchEvent* QTouchEvent_new5(struct QTouchEvent_VTable* vtbl, int eventType, QPointingDevice* device, int modifiers, struct miqt_array /* of QEventPoint* */  touchPoints);
QTouchEvent* QTouchEvent_new6(struct QTouchEvent_VTable* vtbl, int eventType, QPointingDevice* device, int modifiers, uint8_t touchPointStates, struct miqt_array /* of QEventPoint* */  touchPoints);
void QTouchEvent_virtbase(QTouchEvent* src, QPointerEvent** outptr_QPointerEvent);
QTouchEvent* QTouchEvent_clone(const QTouchEvent* self);
QObject* QTouchEvent_target(const QTouchEvent* self);
uint8_t QTouchEvent_touchPointStates(const QTouchEvent* self);
struct miqt_array /* of QEventPoint* */  QTouchEvent_touchPoints(const QTouchEvent* self);
bool QTouchEvent_isBeginEvent(const QTouchEvent* self);
bool QTouchEvent_isUpdateEvent(const QTouchEvent* self);
bool QTouchEvent_isEndEvent(const QTouchEvent* self);
QTouchEvent* QTouchEvent_virtualbase_clone(const void* self);
bool QTouchEvent_virtualbase_isBeginEvent(const void* self);
bool QTouchEvent_virtualbase_isUpdateEvent(const void* self);
bool QTouchEvent_virtualbase_isEndEvent(const void* self);
void QTouchEvent_virtualbase_setTimestamp(void* self, unsigned long long timestamp);
void QTouchEvent_virtualbase_setAccepted(void* self, bool accepted);
void QTouchEvent_delete(QTouchEvent* self);

struct QScrollPrepareEvent_VTable {
	void (*destructor)(struct QScrollPrepareEvent_VTable* vtbl, QScrollPrepareEvent* self);
	QScrollPrepareEvent* (*clone)(struct QScrollPrepareEvent_VTable* vtbl, const QScrollPrepareEvent* self);
	void (*setAccepted)(struct QScrollPrepareEvent_VTable* vtbl, QScrollPrepareEvent* self, bool accepted);
};
QScrollPrepareEvent* QScrollPrepareEvent_new(struct QScrollPrepareEvent_VTable* vtbl, QPointF* startPos);
void QScrollPrepareEvent_virtbase(QScrollPrepareEvent* src, QEvent** outptr_QEvent);
QScrollPrepareEvent* QScrollPrepareEvent_clone(const QScrollPrepareEvent* self);
QPointF* QScrollPrepareEvent_startPos(const QScrollPrepareEvent* self);
QSizeF* QScrollPrepareEvent_viewportSize(const QScrollPrepareEvent* self);
QRectF* QScrollPrepareEvent_contentPosRange(const QScrollPrepareEvent* self);
QPointF* QScrollPrepareEvent_contentPos(const QScrollPrepareEvent* self);
void QScrollPrepareEvent_setViewportSize(QScrollPrepareEvent* self, QSizeF* size);
void QScrollPrepareEvent_setContentPosRange(QScrollPrepareEvent* self, QRectF* rect);
void QScrollPrepareEvent_setContentPos(QScrollPrepareEvent* self, QPointF* pos);
QScrollPrepareEvent* QScrollPrepareEvent_virtualbase_clone(const void* self);
void QScrollPrepareEvent_virtualbase_setAccepted(void* self, bool accepted);
void QScrollPrepareEvent_delete(QScrollPrepareEvent* self);

struct QScrollEvent_VTable {
	void (*destructor)(struct QScrollEvent_VTable* vtbl, QScrollEvent* self);
	QScrollEvent* (*clone)(struct QScrollEvent_VTable* vtbl, const QScrollEvent* self);
	void (*setAccepted)(struct QScrollEvent_VTable* vtbl, QScrollEvent* self, bool accepted);
};
QScrollEvent* QScrollEvent_new(struct QScrollEvent_VTable* vtbl, QPointF* contentPos, QPointF* overshoot, int scrollState);
void QScrollEvent_virtbase(QScrollEvent* src, QEvent** outptr_QEvent);
QScrollEvent* QScrollEvent_clone(const QScrollEvent* self);
QPointF* QScrollEvent_contentPos(const QScrollEvent* self);
QPointF* QScrollEvent_overshootDistance(const QScrollEvent* self);
int QScrollEvent_scrollState(const QScrollEvent* self);
QScrollEvent* QScrollEvent_virtualbase_clone(const void* self);
void QScrollEvent_virtualbase_setAccepted(void* self, bool accepted);
void QScrollEvent_delete(QScrollEvent* self);

struct QScreenOrientationChangeEvent_VTable {
	void (*destructor)(struct QScreenOrientationChangeEvent_VTable* vtbl, QScreenOrientationChangeEvent* self);
	QScreenOrientationChangeEvent* (*clone)(struct QScreenOrientationChangeEvent_VTable* vtbl, const QScreenOrientationChangeEvent* self);
	void (*setAccepted)(struct QScreenOrientationChangeEvent_VTable* vtbl, QScreenOrientationChangeEvent* self, bool accepted);
};
QScreenOrientationChangeEvent* QScreenOrientationChangeEvent_new(struct QScreenOrientationChangeEvent_VTable* vtbl, QScreen* screen, int orientation);
void QScreenOrientationChangeEvent_virtbase(QScreenOrientationChangeEvent* src, QEvent** outptr_QEvent);
QScreenOrientationChangeEvent* QScreenOrientationChangeEvent_clone(const QScreenOrientationChangeEvent* self);
QScreen* QScreenOrientationChangeEvent_screen(const QScreenOrientationChangeEvent* self);
int QScreenOrientationChangeEvent_orientation(const QScreenOrientationChangeEvent* self);
QScreenOrientationChangeEvent* QScreenOrientationChangeEvent_virtualbase_clone(const void* self);
void QScreenOrientationChangeEvent_virtualbase_setAccepted(void* self, bool accepted);
void QScreenOrientationChangeEvent_delete(QScreenOrientationChangeEvent* self);

struct QApplicationStateChangeEvent_VTable {
	void (*destructor)(struct QApplicationStateChangeEvent_VTable* vtbl, QApplicationStateChangeEvent* self);
	QApplicationStateChangeEvent* (*clone)(struct QApplicationStateChangeEvent_VTable* vtbl, const QApplicationStateChangeEvent* self);
	void (*setAccepted)(struct QApplicationStateChangeEvent_VTable* vtbl, QApplicationStateChangeEvent* self, bool accepted);
};
QApplicationStateChangeEvent* QApplicationStateChangeEvent_new(struct QApplicationStateChangeEvent_VTable* vtbl, int state);
void QApplicationStateChangeEvent_virtbase(QApplicationStateChangeEvent* src, QEvent** outptr_QEvent);
QApplicationStateChangeEvent* QApplicationStateChangeEvent_clone(const QApplicationStateChangeEvent* self);
int QApplicationStateChangeEvent_applicationState(const QApplicationStateChangeEvent* self);
QApplicationStateChangeEvent* QApplicationStateChangeEvent_virtualbase_clone(const void* self);
void QApplicationStateChangeEvent_virtualbase_setAccepted(void* self, bool accepted);
void QApplicationStateChangeEvent_delete(QApplicationStateChangeEvent* self);

QInputMethodEvent__Attribute* QInputMethodEvent__Attribute_new(int typ, int s, int l, QVariant* val);
QInputMethodEvent__Attribute* QInputMethodEvent__Attribute_new2(int typ, int s, int l);
QInputMethodEvent__Attribute* QInputMethodEvent__Attribute_new3(QInputMethodEvent__Attribute* param1);
void QInputMethodEvent__Attribute_operatorAssign(QInputMethodEvent__Attribute* self, QInputMethodEvent__Attribute* param1);
void QInputMethodEvent__Attribute_delete(QInputMethodEvent__Attribute* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
