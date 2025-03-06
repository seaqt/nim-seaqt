#pragma once
#ifndef SEAQT_QTWIDGETS_GEN_QABSTRACTSLIDER_H
#define SEAQT_QTWIDGETS_GEN_QABSTRACTSLIDER_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt/libseaqt.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QAbstractSlider;
class QActionEvent;
class QChildEvent;
class QCloseEvent;
class QContextMenuEvent;
class QDragEnterEvent;
class QDragLeaveEvent;
class QDragMoveEvent;
class QDropEvent;
class QEnterEvent;
class QEvent;
class QFocusEvent;
class QHideEvent;
class QInputMethodEvent;
class QKeyEvent;
class QMetaMethod;
class QMetaObject;
class QMouseEvent;
class QMoveEvent;
class QObject;
class QPaintDevice;
class QPaintEngine;
class QPaintEvent;
class QPainter;
class QPoint;
class QResizeEvent;
class QShowEvent;
class QSize;
class QTabletEvent;
class QTimerEvent;
class QVariant;
class QWheelEvent;
class QWidget;
#else
typedef struct QAbstractSlider QAbstractSlider;
typedef struct QActionEvent QActionEvent;
typedef struct QChildEvent QChildEvent;
typedef struct QCloseEvent QCloseEvent;
typedef struct QContextMenuEvent QContextMenuEvent;
typedef struct QDragEnterEvent QDragEnterEvent;
typedef struct QDragLeaveEvent QDragLeaveEvent;
typedef struct QDragMoveEvent QDragMoveEvent;
typedef struct QDropEvent QDropEvent;
typedef struct QEnterEvent QEnterEvent;
typedef struct QEvent QEvent;
typedef struct QFocusEvent QFocusEvent;
typedef struct QHideEvent QHideEvent;
typedef struct QInputMethodEvent QInputMethodEvent;
typedef struct QKeyEvent QKeyEvent;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QMouseEvent QMouseEvent;
typedef struct QMoveEvent QMoveEvent;
typedef struct QObject QObject;
typedef struct QPaintDevice QPaintDevice;
typedef struct QPaintEngine QPaintEngine;
typedef struct QPaintEvent QPaintEvent;
typedef struct QPainter QPainter;
typedef struct QPoint QPoint;
typedef struct QResizeEvent QResizeEvent;
typedef struct QShowEvent QShowEvent;
typedef struct QSize QSize;
typedef struct QTabletEvent QTabletEvent;
typedef struct QTimerEvent QTimerEvent;
typedef struct QVariant QVariant;
typedef struct QWheelEvent QWheelEvent;
typedef struct QWidget QWidget;
#endif

struct QAbstractSlider_VTable {
	void (*destructor)(struct QAbstractSlider_VTable* vtbl, QAbstractSlider* self);
	QMetaObject* (*metaObject)(struct QAbstractSlider_VTable* vtbl, const QAbstractSlider* self);
	void* (*metacast)(struct QAbstractSlider_VTable* vtbl, QAbstractSlider* self, const char* param1);
	int (*metacall)(struct QAbstractSlider_VTable* vtbl, QAbstractSlider* self, int param1, int param2, void** param3);
	bool (*event)(struct QAbstractSlider_VTable* vtbl, QAbstractSlider* self, QEvent* e);
	void (*sliderChange)(struct QAbstractSlider_VTable* vtbl, QAbstractSlider* self, int change);
	void (*keyPressEvent)(struct QAbstractSlider_VTable* vtbl, QAbstractSlider* self, QKeyEvent* ev);
	void (*timerEvent)(struct QAbstractSlider_VTable* vtbl, QAbstractSlider* self, QTimerEvent* param1);
	void (*wheelEvent)(struct QAbstractSlider_VTable* vtbl, QAbstractSlider* self, QWheelEvent* e);
	void (*changeEvent)(struct QAbstractSlider_VTable* vtbl, QAbstractSlider* self, QEvent* e);
	int (*devType)(struct QAbstractSlider_VTable* vtbl, const QAbstractSlider* self);
	void (*setVisible)(struct QAbstractSlider_VTable* vtbl, QAbstractSlider* self, bool visible);
	QSize* (*sizeHint)(struct QAbstractSlider_VTable* vtbl, const QAbstractSlider* self);
	QSize* (*minimumSizeHint)(struct QAbstractSlider_VTable* vtbl, const QAbstractSlider* self);
	int (*heightForWidth)(struct QAbstractSlider_VTable* vtbl, const QAbstractSlider* self, int param1);
	bool (*hasHeightForWidth)(struct QAbstractSlider_VTable* vtbl, const QAbstractSlider* self);
	QPaintEngine* (*paintEngine)(struct QAbstractSlider_VTable* vtbl, const QAbstractSlider* self);
	void (*mousePressEvent)(struct QAbstractSlider_VTable* vtbl, QAbstractSlider* self, QMouseEvent* event);
	void (*mouseReleaseEvent)(struct QAbstractSlider_VTable* vtbl, QAbstractSlider* self, QMouseEvent* event);
	void (*mouseDoubleClickEvent)(struct QAbstractSlider_VTable* vtbl, QAbstractSlider* self, QMouseEvent* event);
	void (*mouseMoveEvent)(struct QAbstractSlider_VTable* vtbl, QAbstractSlider* self, QMouseEvent* event);
	void (*keyReleaseEvent)(struct QAbstractSlider_VTable* vtbl, QAbstractSlider* self, QKeyEvent* event);
	void (*focusInEvent)(struct QAbstractSlider_VTable* vtbl, QAbstractSlider* self, QFocusEvent* event);
	void (*focusOutEvent)(struct QAbstractSlider_VTable* vtbl, QAbstractSlider* self, QFocusEvent* event);
	void (*enterEvent)(struct QAbstractSlider_VTable* vtbl, QAbstractSlider* self, QEnterEvent* event);
	void (*leaveEvent)(struct QAbstractSlider_VTable* vtbl, QAbstractSlider* self, QEvent* event);
	void (*paintEvent)(struct QAbstractSlider_VTable* vtbl, QAbstractSlider* self, QPaintEvent* event);
	void (*moveEvent)(struct QAbstractSlider_VTable* vtbl, QAbstractSlider* self, QMoveEvent* event);
	void (*resizeEvent)(struct QAbstractSlider_VTable* vtbl, QAbstractSlider* self, QResizeEvent* event);
	void (*closeEvent)(struct QAbstractSlider_VTable* vtbl, QAbstractSlider* self, QCloseEvent* event);
	void (*contextMenuEvent)(struct QAbstractSlider_VTable* vtbl, QAbstractSlider* self, QContextMenuEvent* event);
	void (*tabletEvent)(struct QAbstractSlider_VTable* vtbl, QAbstractSlider* self, QTabletEvent* event);
	void (*actionEvent)(struct QAbstractSlider_VTable* vtbl, QAbstractSlider* self, QActionEvent* event);
	void (*dragEnterEvent)(struct QAbstractSlider_VTable* vtbl, QAbstractSlider* self, QDragEnterEvent* event);
	void (*dragMoveEvent)(struct QAbstractSlider_VTable* vtbl, QAbstractSlider* self, QDragMoveEvent* event);
	void (*dragLeaveEvent)(struct QAbstractSlider_VTable* vtbl, QAbstractSlider* self, QDragLeaveEvent* event);
	void (*dropEvent)(struct QAbstractSlider_VTable* vtbl, QAbstractSlider* self, QDropEvent* event);
	void (*showEvent)(struct QAbstractSlider_VTable* vtbl, QAbstractSlider* self, QShowEvent* event);
	void (*hideEvent)(struct QAbstractSlider_VTable* vtbl, QAbstractSlider* self, QHideEvent* event);
	bool (*nativeEvent)(struct QAbstractSlider_VTable* vtbl, QAbstractSlider* self, struct miqt_string eventType, void* message, intptr_t* result);
	int (*metric)(struct QAbstractSlider_VTable* vtbl, const QAbstractSlider* self, int param1);
	void (*initPainter)(struct QAbstractSlider_VTable* vtbl, const QAbstractSlider* self, QPainter* painter);
	QPaintDevice* (*redirected)(struct QAbstractSlider_VTable* vtbl, const QAbstractSlider* self, QPoint* offset);
	QPainter* (*sharedPainter)(struct QAbstractSlider_VTable* vtbl, const QAbstractSlider* self);
	void (*inputMethodEvent)(struct QAbstractSlider_VTable* vtbl, QAbstractSlider* self, QInputMethodEvent* param1);
	QVariant* (*inputMethodQuery)(struct QAbstractSlider_VTable* vtbl, const QAbstractSlider* self, int param1);
	bool (*focusNextPrevChild)(struct QAbstractSlider_VTable* vtbl, QAbstractSlider* self, bool next);
	bool (*eventFilter)(struct QAbstractSlider_VTable* vtbl, QAbstractSlider* self, QObject* watched, QEvent* event);
	void (*childEvent)(struct QAbstractSlider_VTable* vtbl, QAbstractSlider* self, QChildEvent* event);
	void (*customEvent)(struct QAbstractSlider_VTable* vtbl, QAbstractSlider* self, QEvent* event);
	void (*connectNotify)(struct QAbstractSlider_VTable* vtbl, QAbstractSlider* self, QMetaMethod* signal);
	void (*disconnectNotify)(struct QAbstractSlider_VTable* vtbl, QAbstractSlider* self, QMetaMethod* signal);
};
QAbstractSlider* QAbstractSlider_new(struct QAbstractSlider_VTable* vtbl, QWidget* parent);
QAbstractSlider* QAbstractSlider_new2(struct QAbstractSlider_VTable* vtbl);
void QAbstractSlider_virtbase(QAbstractSlider* src, QWidget** outptr_QWidget);
QMetaObject* QAbstractSlider_metaObject(const QAbstractSlider* self);
void* QAbstractSlider_metacast(QAbstractSlider* self, const char* param1);
int QAbstractSlider_metacall(QAbstractSlider* self, int param1, int param2, void** param3);
struct miqt_string QAbstractSlider_tr(const char* s);
int QAbstractSlider_orientation(const QAbstractSlider* self);
void QAbstractSlider_setMinimum(QAbstractSlider* self, int minimum);
int QAbstractSlider_minimum(const QAbstractSlider* self);
void QAbstractSlider_setMaximum(QAbstractSlider* self, int maximum);
int QAbstractSlider_maximum(const QAbstractSlider* self);
void QAbstractSlider_setSingleStep(QAbstractSlider* self, int singleStep);
int QAbstractSlider_singleStep(const QAbstractSlider* self);
void QAbstractSlider_setPageStep(QAbstractSlider* self, int pageStep);
int QAbstractSlider_pageStep(const QAbstractSlider* self);
void QAbstractSlider_setTracking(QAbstractSlider* self, bool enable);
bool QAbstractSlider_hasTracking(const QAbstractSlider* self);
void QAbstractSlider_setSliderDown(QAbstractSlider* self, bool sliderDown);
bool QAbstractSlider_isSliderDown(const QAbstractSlider* self);
void QAbstractSlider_setSliderPosition(QAbstractSlider* self, int sliderPosition);
int QAbstractSlider_sliderPosition(const QAbstractSlider* self);
void QAbstractSlider_setInvertedAppearance(QAbstractSlider* self, bool invertedAppearance);
bool QAbstractSlider_invertedAppearance(const QAbstractSlider* self);
void QAbstractSlider_setInvertedControls(QAbstractSlider* self, bool invertedControls);
bool QAbstractSlider_invertedControls(const QAbstractSlider* self);
int QAbstractSlider_value(const QAbstractSlider* self);
void QAbstractSlider_triggerAction(QAbstractSlider* self, int action);
void QAbstractSlider_setValue(QAbstractSlider* self, int value);
void QAbstractSlider_setOrientation(QAbstractSlider* self, int orientation);
void QAbstractSlider_setRange(QAbstractSlider* self, int min, int max);
void QAbstractSlider_valueChanged(QAbstractSlider* self, int value);
void QAbstractSlider_connect_valueChanged(QAbstractSlider* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t));
void QAbstractSlider_sliderPressed(QAbstractSlider* self);
void QAbstractSlider_connect_sliderPressed(QAbstractSlider* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
void QAbstractSlider_sliderMoved(QAbstractSlider* self, int position);
void QAbstractSlider_connect_sliderMoved(QAbstractSlider* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t));
void QAbstractSlider_sliderReleased(QAbstractSlider* self);
void QAbstractSlider_connect_sliderReleased(QAbstractSlider* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
void QAbstractSlider_rangeChanged(QAbstractSlider* self, int min, int max);
void QAbstractSlider_connect_rangeChanged(QAbstractSlider* self, intptr_t slot, void (*callback)(intptr_t, int, int), void (*release)(intptr_t));
void QAbstractSlider_actionTriggered(QAbstractSlider* self, int action);
void QAbstractSlider_connect_actionTriggered(QAbstractSlider* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t));
bool QAbstractSlider_event(QAbstractSlider* self, QEvent* e);
void QAbstractSlider_sliderChange(QAbstractSlider* self, int change);
void QAbstractSlider_keyPressEvent(QAbstractSlider* self, QKeyEvent* ev);
void QAbstractSlider_timerEvent(QAbstractSlider* self, QTimerEvent* param1);
void QAbstractSlider_wheelEvent(QAbstractSlider* self, QWheelEvent* e);
void QAbstractSlider_changeEvent(QAbstractSlider* self, QEvent* e);
struct miqt_string QAbstractSlider_tr2(const char* s, const char* c);
struct miqt_string QAbstractSlider_tr3(const char* s, const char* c, int n);
QMetaObject* QAbstractSlider_virtualbase_metaObject(const void* self);
void* QAbstractSlider_virtualbase_metacast(void* self, const char* param1);
int QAbstractSlider_virtualbase_metacall(void* self, int param1, int param2, void** param3);
bool QAbstractSlider_virtualbase_event(void* self, QEvent* e);
void QAbstractSlider_virtualbase_sliderChange(void* self, int change);
void QAbstractSlider_virtualbase_keyPressEvent(void* self, QKeyEvent* ev);
void QAbstractSlider_virtualbase_timerEvent(void* self, QTimerEvent* param1);
void QAbstractSlider_virtualbase_wheelEvent(void* self, QWheelEvent* e);
void QAbstractSlider_virtualbase_changeEvent(void* self, QEvent* e);
int QAbstractSlider_virtualbase_devType(const void* self);
void QAbstractSlider_virtualbase_setVisible(void* self, bool visible);
QSize* QAbstractSlider_virtualbase_sizeHint(const void* self);
QSize* QAbstractSlider_virtualbase_minimumSizeHint(const void* self);
int QAbstractSlider_virtualbase_heightForWidth(const void* self, int param1);
bool QAbstractSlider_virtualbase_hasHeightForWidth(const void* self);
QPaintEngine* QAbstractSlider_virtualbase_paintEngine(const void* self);
void QAbstractSlider_virtualbase_mousePressEvent(void* self, QMouseEvent* event);
void QAbstractSlider_virtualbase_mouseReleaseEvent(void* self, QMouseEvent* event);
void QAbstractSlider_virtualbase_mouseDoubleClickEvent(void* self, QMouseEvent* event);
void QAbstractSlider_virtualbase_mouseMoveEvent(void* self, QMouseEvent* event);
void QAbstractSlider_virtualbase_keyReleaseEvent(void* self, QKeyEvent* event);
void QAbstractSlider_virtualbase_focusInEvent(void* self, QFocusEvent* event);
void QAbstractSlider_virtualbase_focusOutEvent(void* self, QFocusEvent* event);
void QAbstractSlider_virtualbase_enterEvent(void* self, QEnterEvent* event);
void QAbstractSlider_virtualbase_leaveEvent(void* self, QEvent* event);
void QAbstractSlider_virtualbase_paintEvent(void* self, QPaintEvent* event);
void QAbstractSlider_virtualbase_moveEvent(void* self, QMoveEvent* event);
void QAbstractSlider_virtualbase_resizeEvent(void* self, QResizeEvent* event);
void QAbstractSlider_virtualbase_closeEvent(void* self, QCloseEvent* event);
void QAbstractSlider_virtualbase_contextMenuEvent(void* self, QContextMenuEvent* event);
void QAbstractSlider_virtualbase_tabletEvent(void* self, QTabletEvent* event);
void QAbstractSlider_virtualbase_actionEvent(void* self, QActionEvent* event);
void QAbstractSlider_virtualbase_dragEnterEvent(void* self, QDragEnterEvent* event);
void QAbstractSlider_virtualbase_dragMoveEvent(void* self, QDragMoveEvent* event);
void QAbstractSlider_virtualbase_dragLeaveEvent(void* self, QDragLeaveEvent* event);
void QAbstractSlider_virtualbase_dropEvent(void* self, QDropEvent* event);
void QAbstractSlider_virtualbase_showEvent(void* self, QShowEvent* event);
void QAbstractSlider_virtualbase_hideEvent(void* self, QHideEvent* event);
bool QAbstractSlider_virtualbase_nativeEvent(void* self, struct miqt_string eventType, void* message, intptr_t* result);
int QAbstractSlider_virtualbase_metric(const void* self, int param1);
void QAbstractSlider_virtualbase_initPainter(const void* self, QPainter* painter);
QPaintDevice* QAbstractSlider_virtualbase_redirected(const void* self, QPoint* offset);
QPainter* QAbstractSlider_virtualbase_sharedPainter(const void* self);
void QAbstractSlider_virtualbase_inputMethodEvent(void* self, QInputMethodEvent* param1);
QVariant* QAbstractSlider_virtualbase_inputMethodQuery(const void* self, int param1);
bool QAbstractSlider_virtualbase_focusNextPrevChild(void* self, bool next);
bool QAbstractSlider_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);
void QAbstractSlider_virtualbase_childEvent(void* self, QChildEvent* event);
void QAbstractSlider_virtualbase_customEvent(void* self, QEvent* event);
void QAbstractSlider_virtualbase_connectNotify(void* self, QMetaMethod* signal);
void QAbstractSlider_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);
void QAbstractSlider_protectedbase_setRepeatAction(void* self, int action);
int QAbstractSlider_protectedbase_repeatAction(const void* self);
void QAbstractSlider_protectedbase_setRepeatAction2(void* self, int action, int thresholdTime);
void QAbstractSlider_protectedbase_setRepeatAction3(void* self, int action, int thresholdTime, int repeatTime);
void QAbstractSlider_protectedbase_updateMicroFocus(void* self);
void QAbstractSlider_protectedbase_create(void* self);
void QAbstractSlider_protectedbase_destroy(void* self);
bool QAbstractSlider_protectedbase_focusNextChild(void* self);
bool QAbstractSlider_protectedbase_focusPreviousChild(void* self);
QObject* QAbstractSlider_protectedbase_sender(const void* self);
int QAbstractSlider_protectedbase_senderSignalIndex(const void* self);
int QAbstractSlider_protectedbase_receivers(const void* self, const char* signal);
bool QAbstractSlider_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal);
const QMetaObject* QAbstractSlider_staticMetaObject();
void QAbstractSlider_delete(QAbstractSlider* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
