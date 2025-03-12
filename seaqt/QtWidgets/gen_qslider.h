#pragma once
#ifndef SEAQT_QTWIDGETS_GEN_QSLIDER_H
#define SEAQT_QTWIDGETS_GEN_QSLIDER_H

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
class QSlider;
class QStyleOptionSlider;
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
typedef struct QSlider QSlider;
typedef struct QStyleOptionSlider QStyleOptionSlider;
typedef struct QTabletEvent QTabletEvent;
typedef struct QTimerEvent QTimerEvent;
typedef struct QVariant QVariant;
typedef struct QWheelEvent QWheelEvent;
typedef struct QWidget QWidget;
#endif

typedef struct VirtualQSlider VirtualQSlider;
typedef struct QSlider_VTable{
	void (*destructor)(VirtualQSlider* self);
	QMetaObject* (*metaObject)(const VirtualQSlider* self);
	void* (*metacast)(VirtualQSlider* self, const char* param1);
	int (*metacall)(VirtualQSlider* self, int param1, int param2, void** param3);
	QSize* (*sizeHint)(const VirtualQSlider* self);
	QSize* (*minimumSizeHint)(const VirtualQSlider* self);
	bool (*event)(VirtualQSlider* self, QEvent* event);
	void (*paintEvent)(VirtualQSlider* self, QPaintEvent* ev);
	void (*mousePressEvent)(VirtualQSlider* self, QMouseEvent* ev);
	void (*mouseReleaseEvent)(VirtualQSlider* self, QMouseEvent* ev);
	void (*mouseMoveEvent)(VirtualQSlider* self, QMouseEvent* ev);
	void (*initStyleOption)(const VirtualQSlider* self, QStyleOptionSlider* option);
	void (*sliderChange)(VirtualQSlider* self, int change);
	void (*keyPressEvent)(VirtualQSlider* self, QKeyEvent* ev);
	void (*timerEvent)(VirtualQSlider* self, QTimerEvent* param1);
	void (*wheelEvent)(VirtualQSlider* self, QWheelEvent* e);
	void (*changeEvent)(VirtualQSlider* self, QEvent* e);
	int (*devType)(const VirtualQSlider* self);
	void (*setVisible)(VirtualQSlider* self, bool visible);
	int (*heightForWidth)(const VirtualQSlider* self, int param1);
	bool (*hasHeightForWidth)(const VirtualQSlider* self);
	QPaintEngine* (*paintEngine)(const VirtualQSlider* self);
	void (*mouseDoubleClickEvent)(VirtualQSlider* self, QMouseEvent* event);
	void (*keyReleaseEvent)(VirtualQSlider* self, QKeyEvent* event);
	void (*focusInEvent)(VirtualQSlider* self, QFocusEvent* event);
	void (*focusOutEvent)(VirtualQSlider* self, QFocusEvent* event);
	void (*enterEvent)(VirtualQSlider* self, QEnterEvent* event);
	void (*leaveEvent)(VirtualQSlider* self, QEvent* event);
	void (*moveEvent)(VirtualQSlider* self, QMoveEvent* event);
	void (*resizeEvent)(VirtualQSlider* self, QResizeEvent* event);
	void (*closeEvent)(VirtualQSlider* self, QCloseEvent* event);
	void (*contextMenuEvent)(VirtualQSlider* self, QContextMenuEvent* event);
	void (*tabletEvent)(VirtualQSlider* self, QTabletEvent* event);
	void (*actionEvent)(VirtualQSlider* self, QActionEvent* event);
	void (*dragEnterEvent)(VirtualQSlider* self, QDragEnterEvent* event);
	void (*dragMoveEvent)(VirtualQSlider* self, QDragMoveEvent* event);
	void (*dragLeaveEvent)(VirtualQSlider* self, QDragLeaveEvent* event);
	void (*dropEvent)(VirtualQSlider* self, QDropEvent* event);
	void (*showEvent)(VirtualQSlider* self, QShowEvent* event);
	void (*hideEvent)(VirtualQSlider* self, QHideEvent* event);
	bool (*nativeEvent)(VirtualQSlider* self, struct miqt_string eventType, void* message, intptr_t* result);
	int (*metric)(const VirtualQSlider* self, int param1);
	void (*initPainter)(const VirtualQSlider* self, QPainter* painter);
	QPaintDevice* (*redirected)(const VirtualQSlider* self, QPoint* offset);
	QPainter* (*sharedPainter)(const VirtualQSlider* self);
	void (*inputMethodEvent)(VirtualQSlider* self, QInputMethodEvent* param1);
	QVariant* (*inputMethodQuery)(const VirtualQSlider* self, int param1);
	bool (*focusNextPrevChild)(VirtualQSlider* self, bool next);
	bool (*eventFilter)(VirtualQSlider* self, QObject* watched, QEvent* event);
	void (*childEvent)(VirtualQSlider* self, QChildEvent* event);
	void (*customEvent)(VirtualQSlider* self, QEvent* event);
	void (*connectNotify)(VirtualQSlider* self, QMetaMethod* signal);
	void (*disconnectNotify)(VirtualQSlider* self, QMetaMethod* signal);
}QSlider_VTable;

const QSlider_VTable* QSlider_vtbl(const VirtualQSlider* self);
void* QSlider_vdata(const VirtualQSlider* self);
void QSlider_setVdata(VirtualQSlider* self, void* vdata);

VirtualQSlider* QSlider_new(const QSlider_VTable* vtbl, void* vdata, QWidget* parent);
VirtualQSlider* QSlider_new2(const QSlider_VTable* vtbl, void* vdata);
VirtualQSlider* QSlider_new3(const QSlider_VTable* vtbl, void* vdata, int orientation);
VirtualQSlider* QSlider_new4(const QSlider_VTable* vtbl, void* vdata, int orientation, QWidget* parent);

void QSlider_virtbase(QSlider* src, QAbstractSlider** outptr_QAbstractSlider);
QMetaObject* QSlider_metaObject(const QSlider* self);
void* QSlider_metacast(QSlider* self, const char* param1);
int QSlider_metacall(QSlider* self, int param1, int param2, void** param3);
struct miqt_string QSlider_tr(const char* s);
QSize* QSlider_sizeHint(const QSlider* self);
QSize* QSlider_minimumSizeHint(const QSlider* self);
void QSlider_setTickPosition(QSlider* self, int position);
int QSlider_tickPosition(const QSlider* self);
void QSlider_setTickInterval(QSlider* self, int ti);
int QSlider_tickInterval(const QSlider* self);
bool QSlider_event(QSlider* self, QEvent* event);
void QSlider_paintEvent(QSlider* self, QPaintEvent* ev);
void QSlider_mousePressEvent(QSlider* self, QMouseEvent* ev);
void QSlider_mouseReleaseEvent(QSlider* self, QMouseEvent* ev);
void QSlider_mouseMoveEvent(QSlider* self, QMouseEvent* ev);
void QSlider_initStyleOption(const QSlider* self, QStyleOptionSlider* option);
struct miqt_string QSlider_tr2(const char* s, const char* c);
struct miqt_string QSlider_tr3(const char* s, const char* c, int n);

QMetaObject* QSlider_virtualbase_metaObject(const VirtualQSlider* self);
void* QSlider_virtualbase_metacast(VirtualQSlider* self, const char* param1);
int QSlider_virtualbase_metacall(VirtualQSlider* self, int param1, int param2, void** param3);
QSize* QSlider_virtualbase_sizeHint(const VirtualQSlider* self);
QSize* QSlider_virtualbase_minimumSizeHint(const VirtualQSlider* self);
bool QSlider_virtualbase_event(VirtualQSlider* self, QEvent* event);
void QSlider_virtualbase_paintEvent(VirtualQSlider* self, QPaintEvent* ev);
void QSlider_virtualbase_mousePressEvent(VirtualQSlider* self, QMouseEvent* ev);
void QSlider_virtualbase_mouseReleaseEvent(VirtualQSlider* self, QMouseEvent* ev);
void QSlider_virtualbase_mouseMoveEvent(VirtualQSlider* self, QMouseEvent* ev);
void QSlider_virtualbase_initStyleOption(const VirtualQSlider* self, QStyleOptionSlider* option);
void QSlider_virtualbase_sliderChange(VirtualQSlider* self, int change);
void QSlider_virtualbase_keyPressEvent(VirtualQSlider* self, QKeyEvent* ev);
void QSlider_virtualbase_timerEvent(VirtualQSlider* self, QTimerEvent* param1);
void QSlider_virtualbase_wheelEvent(VirtualQSlider* self, QWheelEvent* e);
void QSlider_virtualbase_changeEvent(VirtualQSlider* self, QEvent* e);
int QSlider_virtualbase_devType(const VirtualQSlider* self);
void QSlider_virtualbase_setVisible(VirtualQSlider* self, bool visible);
int QSlider_virtualbase_heightForWidth(const VirtualQSlider* self, int param1);
bool QSlider_virtualbase_hasHeightForWidth(const VirtualQSlider* self);
QPaintEngine* QSlider_virtualbase_paintEngine(const VirtualQSlider* self);
void QSlider_virtualbase_mouseDoubleClickEvent(VirtualQSlider* self, QMouseEvent* event);
void QSlider_virtualbase_keyReleaseEvent(VirtualQSlider* self, QKeyEvent* event);
void QSlider_virtualbase_focusInEvent(VirtualQSlider* self, QFocusEvent* event);
void QSlider_virtualbase_focusOutEvent(VirtualQSlider* self, QFocusEvent* event);
void QSlider_virtualbase_enterEvent(VirtualQSlider* self, QEnterEvent* event);
void QSlider_virtualbase_leaveEvent(VirtualQSlider* self, QEvent* event);
void QSlider_virtualbase_moveEvent(VirtualQSlider* self, QMoveEvent* event);
void QSlider_virtualbase_resizeEvent(VirtualQSlider* self, QResizeEvent* event);
void QSlider_virtualbase_closeEvent(VirtualQSlider* self, QCloseEvent* event);
void QSlider_virtualbase_contextMenuEvent(VirtualQSlider* self, QContextMenuEvent* event);
void QSlider_virtualbase_tabletEvent(VirtualQSlider* self, QTabletEvent* event);
void QSlider_virtualbase_actionEvent(VirtualQSlider* self, QActionEvent* event);
void QSlider_virtualbase_dragEnterEvent(VirtualQSlider* self, QDragEnterEvent* event);
void QSlider_virtualbase_dragMoveEvent(VirtualQSlider* self, QDragMoveEvent* event);
void QSlider_virtualbase_dragLeaveEvent(VirtualQSlider* self, QDragLeaveEvent* event);
void QSlider_virtualbase_dropEvent(VirtualQSlider* self, QDropEvent* event);
void QSlider_virtualbase_showEvent(VirtualQSlider* self, QShowEvent* event);
void QSlider_virtualbase_hideEvent(VirtualQSlider* self, QHideEvent* event);
bool QSlider_virtualbase_nativeEvent(VirtualQSlider* self, struct miqt_string eventType, void* message, intptr_t* result);
int QSlider_virtualbase_metric(const VirtualQSlider* self, int param1);
void QSlider_virtualbase_initPainter(const VirtualQSlider* self, QPainter* painter);
QPaintDevice* QSlider_virtualbase_redirected(const VirtualQSlider* self, QPoint* offset);
QPainter* QSlider_virtualbase_sharedPainter(const VirtualQSlider* self);
void QSlider_virtualbase_inputMethodEvent(VirtualQSlider* self, QInputMethodEvent* param1);
QVariant* QSlider_virtualbase_inputMethodQuery(const VirtualQSlider* self, int param1);
bool QSlider_virtualbase_focusNextPrevChild(VirtualQSlider* self, bool next);
bool QSlider_virtualbase_eventFilter(VirtualQSlider* self, QObject* watched, QEvent* event);
void QSlider_virtualbase_childEvent(VirtualQSlider* self, QChildEvent* event);
void QSlider_virtualbase_customEvent(VirtualQSlider* self, QEvent* event);
void QSlider_virtualbase_connectNotify(VirtualQSlider* self, QMetaMethod* signal);
void QSlider_virtualbase_disconnectNotify(VirtualQSlider* self, QMetaMethod* signal);

void QSlider_protectedbase_setRepeatAction(VirtualQSlider* self, int action);
int QSlider_protectedbase_repeatAction(const VirtualQSlider* self);
void QSlider_protectedbase_updateMicroFocus(VirtualQSlider* self);
void QSlider_protectedbase_create(VirtualQSlider* self);
void QSlider_protectedbase_destroy(VirtualQSlider* self);
bool QSlider_protectedbase_focusNextChild(VirtualQSlider* self);
bool QSlider_protectedbase_focusPreviousChild(VirtualQSlider* self);
QObject* QSlider_protectedbase_sender(const VirtualQSlider* self);
int QSlider_protectedbase_senderSignalIndex(const VirtualQSlider* self);
int QSlider_protectedbase_receivers(const VirtualQSlider* self, const char* signal);
bool QSlider_protectedbase_isSignalConnected(const VirtualQSlider* self, QMetaMethod* signal);

const QMetaObject* QSlider_staticMetaObject();
void QSlider_delete(QSlider* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
