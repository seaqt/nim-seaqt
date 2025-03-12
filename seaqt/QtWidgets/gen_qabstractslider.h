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

typedef struct VirtualQAbstractSlider VirtualQAbstractSlider;
typedef struct QAbstractSlider_VTable{
	void (*destructor)(VirtualQAbstractSlider* self);
	QMetaObject* (*metaObject)(const VirtualQAbstractSlider* self);
	void* (*metacast)(VirtualQAbstractSlider* self, const char* param1);
	int (*metacall)(VirtualQAbstractSlider* self, int param1, int param2, void** param3);
	bool (*event)(VirtualQAbstractSlider* self, QEvent* e);
	void (*sliderChange)(VirtualQAbstractSlider* self, int change);
	void (*keyPressEvent)(VirtualQAbstractSlider* self, QKeyEvent* ev);
	void (*timerEvent)(VirtualQAbstractSlider* self, QTimerEvent* param1);
	void (*wheelEvent)(VirtualQAbstractSlider* self, QWheelEvent* e);
	void (*changeEvent)(VirtualQAbstractSlider* self, QEvent* e);
	int (*devType)(const VirtualQAbstractSlider* self);
	void (*setVisible)(VirtualQAbstractSlider* self, bool visible);
	QSize* (*sizeHint)(const VirtualQAbstractSlider* self);
	QSize* (*minimumSizeHint)(const VirtualQAbstractSlider* self);
	int (*heightForWidth)(const VirtualQAbstractSlider* self, int param1);
	bool (*hasHeightForWidth)(const VirtualQAbstractSlider* self);
	QPaintEngine* (*paintEngine)(const VirtualQAbstractSlider* self);
	void (*mousePressEvent)(VirtualQAbstractSlider* self, QMouseEvent* event);
	void (*mouseReleaseEvent)(VirtualQAbstractSlider* self, QMouseEvent* event);
	void (*mouseDoubleClickEvent)(VirtualQAbstractSlider* self, QMouseEvent* event);
	void (*mouseMoveEvent)(VirtualQAbstractSlider* self, QMouseEvent* event);
	void (*keyReleaseEvent)(VirtualQAbstractSlider* self, QKeyEvent* event);
	void (*focusInEvent)(VirtualQAbstractSlider* self, QFocusEvent* event);
	void (*focusOutEvent)(VirtualQAbstractSlider* self, QFocusEvent* event);
	void (*enterEvent)(VirtualQAbstractSlider* self, QEnterEvent* event);
	void (*leaveEvent)(VirtualQAbstractSlider* self, QEvent* event);
	void (*paintEvent)(VirtualQAbstractSlider* self, QPaintEvent* event);
	void (*moveEvent)(VirtualQAbstractSlider* self, QMoveEvent* event);
	void (*resizeEvent)(VirtualQAbstractSlider* self, QResizeEvent* event);
	void (*closeEvent)(VirtualQAbstractSlider* self, QCloseEvent* event);
	void (*contextMenuEvent)(VirtualQAbstractSlider* self, QContextMenuEvent* event);
	void (*tabletEvent)(VirtualQAbstractSlider* self, QTabletEvent* event);
	void (*actionEvent)(VirtualQAbstractSlider* self, QActionEvent* event);
	void (*dragEnterEvent)(VirtualQAbstractSlider* self, QDragEnterEvent* event);
	void (*dragMoveEvent)(VirtualQAbstractSlider* self, QDragMoveEvent* event);
	void (*dragLeaveEvent)(VirtualQAbstractSlider* self, QDragLeaveEvent* event);
	void (*dropEvent)(VirtualQAbstractSlider* self, QDropEvent* event);
	void (*showEvent)(VirtualQAbstractSlider* self, QShowEvent* event);
	void (*hideEvent)(VirtualQAbstractSlider* self, QHideEvent* event);
	bool (*nativeEvent)(VirtualQAbstractSlider* self, struct miqt_string eventType, void* message, intptr_t* result);
	int (*metric)(const VirtualQAbstractSlider* self, int param1);
	void (*initPainter)(const VirtualQAbstractSlider* self, QPainter* painter);
	QPaintDevice* (*redirected)(const VirtualQAbstractSlider* self, QPoint* offset);
	QPainter* (*sharedPainter)(const VirtualQAbstractSlider* self);
	void (*inputMethodEvent)(VirtualQAbstractSlider* self, QInputMethodEvent* param1);
	QVariant* (*inputMethodQuery)(const VirtualQAbstractSlider* self, int param1);
	bool (*focusNextPrevChild)(VirtualQAbstractSlider* self, bool next);
	bool (*eventFilter)(VirtualQAbstractSlider* self, QObject* watched, QEvent* event);
	void (*childEvent)(VirtualQAbstractSlider* self, QChildEvent* event);
	void (*customEvent)(VirtualQAbstractSlider* self, QEvent* event);
	void (*connectNotify)(VirtualQAbstractSlider* self, QMetaMethod* signal);
	void (*disconnectNotify)(VirtualQAbstractSlider* self, QMetaMethod* signal);
}QAbstractSlider_VTable;

const QAbstractSlider_VTable* QAbstractSlider_vtbl(const VirtualQAbstractSlider* self);
void* QAbstractSlider_vdata(const VirtualQAbstractSlider* self);
void QAbstractSlider_setVdata(VirtualQAbstractSlider* self, void* vdata);

VirtualQAbstractSlider* QAbstractSlider_new(const QAbstractSlider_VTable* vtbl, void* vdata, QWidget* parent);
VirtualQAbstractSlider* QAbstractSlider_new2(const QAbstractSlider_VTable* vtbl, void* vdata);

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
void QAbstractSlider_connect_valueChanged(VirtualQAbstractSlider* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t));
void QAbstractSlider_sliderPressed(QAbstractSlider* self);
void QAbstractSlider_connect_sliderPressed(VirtualQAbstractSlider* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
void QAbstractSlider_sliderMoved(QAbstractSlider* self, int position);
void QAbstractSlider_connect_sliderMoved(VirtualQAbstractSlider* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t));
void QAbstractSlider_sliderReleased(QAbstractSlider* self);
void QAbstractSlider_connect_sliderReleased(VirtualQAbstractSlider* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
void QAbstractSlider_rangeChanged(QAbstractSlider* self, int min, int max);
void QAbstractSlider_connect_rangeChanged(VirtualQAbstractSlider* self, intptr_t slot, void (*callback)(intptr_t, int, int), void (*release)(intptr_t));
void QAbstractSlider_actionTriggered(QAbstractSlider* self, int action);
void QAbstractSlider_connect_actionTriggered(VirtualQAbstractSlider* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t));
bool QAbstractSlider_event(QAbstractSlider* self, QEvent* e);
void QAbstractSlider_sliderChange(QAbstractSlider* self, int change);
void QAbstractSlider_keyPressEvent(QAbstractSlider* self, QKeyEvent* ev);
void QAbstractSlider_timerEvent(QAbstractSlider* self, QTimerEvent* param1);
void QAbstractSlider_wheelEvent(QAbstractSlider* self, QWheelEvent* e);
void QAbstractSlider_changeEvent(QAbstractSlider* self, QEvent* e);
struct miqt_string QAbstractSlider_tr2(const char* s, const char* c);
struct miqt_string QAbstractSlider_tr3(const char* s, const char* c, int n);

QMetaObject* QAbstractSlider_virtualbase_metaObject(const VirtualQAbstractSlider* self);
void* QAbstractSlider_virtualbase_metacast(VirtualQAbstractSlider* self, const char* param1);
int QAbstractSlider_virtualbase_metacall(VirtualQAbstractSlider* self, int param1, int param2, void** param3);
bool QAbstractSlider_virtualbase_event(VirtualQAbstractSlider* self, QEvent* e);
void QAbstractSlider_virtualbase_sliderChange(VirtualQAbstractSlider* self, int change);
void QAbstractSlider_virtualbase_keyPressEvent(VirtualQAbstractSlider* self, QKeyEvent* ev);
void QAbstractSlider_virtualbase_timerEvent(VirtualQAbstractSlider* self, QTimerEvent* param1);
void QAbstractSlider_virtualbase_wheelEvent(VirtualQAbstractSlider* self, QWheelEvent* e);
void QAbstractSlider_virtualbase_changeEvent(VirtualQAbstractSlider* self, QEvent* e);
int QAbstractSlider_virtualbase_devType(const VirtualQAbstractSlider* self);
void QAbstractSlider_virtualbase_setVisible(VirtualQAbstractSlider* self, bool visible);
QSize* QAbstractSlider_virtualbase_sizeHint(const VirtualQAbstractSlider* self);
QSize* QAbstractSlider_virtualbase_minimumSizeHint(const VirtualQAbstractSlider* self);
int QAbstractSlider_virtualbase_heightForWidth(const VirtualQAbstractSlider* self, int param1);
bool QAbstractSlider_virtualbase_hasHeightForWidth(const VirtualQAbstractSlider* self);
QPaintEngine* QAbstractSlider_virtualbase_paintEngine(const VirtualQAbstractSlider* self);
void QAbstractSlider_virtualbase_mousePressEvent(VirtualQAbstractSlider* self, QMouseEvent* event);
void QAbstractSlider_virtualbase_mouseReleaseEvent(VirtualQAbstractSlider* self, QMouseEvent* event);
void QAbstractSlider_virtualbase_mouseDoubleClickEvent(VirtualQAbstractSlider* self, QMouseEvent* event);
void QAbstractSlider_virtualbase_mouseMoveEvent(VirtualQAbstractSlider* self, QMouseEvent* event);
void QAbstractSlider_virtualbase_keyReleaseEvent(VirtualQAbstractSlider* self, QKeyEvent* event);
void QAbstractSlider_virtualbase_focusInEvent(VirtualQAbstractSlider* self, QFocusEvent* event);
void QAbstractSlider_virtualbase_focusOutEvent(VirtualQAbstractSlider* self, QFocusEvent* event);
void QAbstractSlider_virtualbase_enterEvent(VirtualQAbstractSlider* self, QEnterEvent* event);
void QAbstractSlider_virtualbase_leaveEvent(VirtualQAbstractSlider* self, QEvent* event);
void QAbstractSlider_virtualbase_paintEvent(VirtualQAbstractSlider* self, QPaintEvent* event);
void QAbstractSlider_virtualbase_moveEvent(VirtualQAbstractSlider* self, QMoveEvent* event);
void QAbstractSlider_virtualbase_resizeEvent(VirtualQAbstractSlider* self, QResizeEvent* event);
void QAbstractSlider_virtualbase_closeEvent(VirtualQAbstractSlider* self, QCloseEvent* event);
void QAbstractSlider_virtualbase_contextMenuEvent(VirtualQAbstractSlider* self, QContextMenuEvent* event);
void QAbstractSlider_virtualbase_tabletEvent(VirtualQAbstractSlider* self, QTabletEvent* event);
void QAbstractSlider_virtualbase_actionEvent(VirtualQAbstractSlider* self, QActionEvent* event);
void QAbstractSlider_virtualbase_dragEnterEvent(VirtualQAbstractSlider* self, QDragEnterEvent* event);
void QAbstractSlider_virtualbase_dragMoveEvent(VirtualQAbstractSlider* self, QDragMoveEvent* event);
void QAbstractSlider_virtualbase_dragLeaveEvent(VirtualQAbstractSlider* self, QDragLeaveEvent* event);
void QAbstractSlider_virtualbase_dropEvent(VirtualQAbstractSlider* self, QDropEvent* event);
void QAbstractSlider_virtualbase_showEvent(VirtualQAbstractSlider* self, QShowEvent* event);
void QAbstractSlider_virtualbase_hideEvent(VirtualQAbstractSlider* self, QHideEvent* event);
bool QAbstractSlider_virtualbase_nativeEvent(VirtualQAbstractSlider* self, struct miqt_string eventType, void* message, intptr_t* result);
int QAbstractSlider_virtualbase_metric(const VirtualQAbstractSlider* self, int param1);
void QAbstractSlider_virtualbase_initPainter(const VirtualQAbstractSlider* self, QPainter* painter);
QPaintDevice* QAbstractSlider_virtualbase_redirected(const VirtualQAbstractSlider* self, QPoint* offset);
QPainter* QAbstractSlider_virtualbase_sharedPainter(const VirtualQAbstractSlider* self);
void QAbstractSlider_virtualbase_inputMethodEvent(VirtualQAbstractSlider* self, QInputMethodEvent* param1);
QVariant* QAbstractSlider_virtualbase_inputMethodQuery(const VirtualQAbstractSlider* self, int param1);
bool QAbstractSlider_virtualbase_focusNextPrevChild(VirtualQAbstractSlider* self, bool next);
bool QAbstractSlider_virtualbase_eventFilter(VirtualQAbstractSlider* self, QObject* watched, QEvent* event);
void QAbstractSlider_virtualbase_childEvent(VirtualQAbstractSlider* self, QChildEvent* event);
void QAbstractSlider_virtualbase_customEvent(VirtualQAbstractSlider* self, QEvent* event);
void QAbstractSlider_virtualbase_connectNotify(VirtualQAbstractSlider* self, QMetaMethod* signal);
void QAbstractSlider_virtualbase_disconnectNotify(VirtualQAbstractSlider* self, QMetaMethod* signal);

void QAbstractSlider_protectedbase_setRepeatAction(VirtualQAbstractSlider* self, int action);
int QAbstractSlider_protectedbase_repeatAction(const VirtualQAbstractSlider* self);
void QAbstractSlider_protectedbase_setRepeatAction2(VirtualQAbstractSlider* self, int action, int thresholdTime);
void QAbstractSlider_protectedbase_setRepeatAction3(VirtualQAbstractSlider* self, int action, int thresholdTime, int repeatTime);
void QAbstractSlider_protectedbase_updateMicroFocus(VirtualQAbstractSlider* self);
void QAbstractSlider_protectedbase_create(VirtualQAbstractSlider* self);
void QAbstractSlider_protectedbase_destroy(VirtualQAbstractSlider* self);
bool QAbstractSlider_protectedbase_focusNextChild(VirtualQAbstractSlider* self);
bool QAbstractSlider_protectedbase_focusPreviousChild(VirtualQAbstractSlider* self);
QObject* QAbstractSlider_protectedbase_sender(const VirtualQAbstractSlider* self);
int QAbstractSlider_protectedbase_senderSignalIndex(const VirtualQAbstractSlider* self);
int QAbstractSlider_protectedbase_receivers(const VirtualQAbstractSlider* self, const char* signal);
bool QAbstractSlider_protectedbase_isSignalConnected(const VirtualQAbstractSlider* self, QMetaMethod* signal);

const QMetaObject* QAbstractSlider_staticMetaObject();
void QAbstractSlider_delete(QAbstractSlider* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
