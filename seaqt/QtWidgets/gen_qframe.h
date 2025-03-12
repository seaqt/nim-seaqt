#pragma once
#ifndef SEAQT_QTWIDGETS_GEN_QFRAME_H
#define SEAQT_QTWIDGETS_GEN_QFRAME_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt/libseaqt.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
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
class QFrame;
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
class QRect;
class QResizeEvent;
class QShowEvent;
class QSize;
class QStyleOptionFrame;
class QTabletEvent;
class QTimerEvent;
class QVariant;
class QWheelEvent;
class QWidget;
#else
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
typedef struct QFrame QFrame;
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
typedef struct QRect QRect;
typedef struct QResizeEvent QResizeEvent;
typedef struct QShowEvent QShowEvent;
typedef struct QSize QSize;
typedef struct QStyleOptionFrame QStyleOptionFrame;
typedef struct QTabletEvent QTabletEvent;
typedef struct QTimerEvent QTimerEvent;
typedef struct QVariant QVariant;
typedef struct QWheelEvent QWheelEvent;
typedef struct QWidget QWidget;
#endif

typedef struct VirtualQFrame VirtualQFrame;
typedef struct QFrame_VTable{
	void (*destructor)(VirtualQFrame* self);
	QMetaObject* (*metaObject)(const VirtualQFrame* self);
	void* (*metacast)(VirtualQFrame* self, const char* param1);
	int (*metacall)(VirtualQFrame* self, int param1, int param2, void** param3);
	QSize* (*sizeHint)(const VirtualQFrame* self);
	bool (*event)(VirtualQFrame* self, QEvent* e);
	void (*paintEvent)(VirtualQFrame* self, QPaintEvent* param1);
	void (*changeEvent)(VirtualQFrame* self, QEvent* param1);
	void (*initStyleOption)(const VirtualQFrame* self, QStyleOptionFrame* option);
	int (*devType)(const VirtualQFrame* self);
	void (*setVisible)(VirtualQFrame* self, bool visible);
	QSize* (*minimumSizeHint)(const VirtualQFrame* self);
	int (*heightForWidth)(const VirtualQFrame* self, int param1);
	bool (*hasHeightForWidth)(const VirtualQFrame* self);
	QPaintEngine* (*paintEngine)(const VirtualQFrame* self);
	void (*mousePressEvent)(VirtualQFrame* self, QMouseEvent* event);
	void (*mouseReleaseEvent)(VirtualQFrame* self, QMouseEvent* event);
	void (*mouseDoubleClickEvent)(VirtualQFrame* self, QMouseEvent* event);
	void (*mouseMoveEvent)(VirtualQFrame* self, QMouseEvent* event);
	void (*wheelEvent)(VirtualQFrame* self, QWheelEvent* event);
	void (*keyPressEvent)(VirtualQFrame* self, QKeyEvent* event);
	void (*keyReleaseEvent)(VirtualQFrame* self, QKeyEvent* event);
	void (*focusInEvent)(VirtualQFrame* self, QFocusEvent* event);
	void (*focusOutEvent)(VirtualQFrame* self, QFocusEvent* event);
	void (*enterEvent)(VirtualQFrame* self, QEnterEvent* event);
	void (*leaveEvent)(VirtualQFrame* self, QEvent* event);
	void (*moveEvent)(VirtualQFrame* self, QMoveEvent* event);
	void (*resizeEvent)(VirtualQFrame* self, QResizeEvent* event);
	void (*closeEvent)(VirtualQFrame* self, QCloseEvent* event);
	void (*contextMenuEvent)(VirtualQFrame* self, QContextMenuEvent* event);
	void (*tabletEvent)(VirtualQFrame* self, QTabletEvent* event);
	void (*actionEvent)(VirtualQFrame* self, QActionEvent* event);
	void (*dragEnterEvent)(VirtualQFrame* self, QDragEnterEvent* event);
	void (*dragMoveEvent)(VirtualQFrame* self, QDragMoveEvent* event);
	void (*dragLeaveEvent)(VirtualQFrame* self, QDragLeaveEvent* event);
	void (*dropEvent)(VirtualQFrame* self, QDropEvent* event);
	void (*showEvent)(VirtualQFrame* self, QShowEvent* event);
	void (*hideEvent)(VirtualQFrame* self, QHideEvent* event);
	bool (*nativeEvent)(VirtualQFrame* self, struct miqt_string eventType, void* message, intptr_t* result);
	int (*metric)(const VirtualQFrame* self, int param1);
	void (*initPainter)(const VirtualQFrame* self, QPainter* painter);
	QPaintDevice* (*redirected)(const VirtualQFrame* self, QPoint* offset);
	QPainter* (*sharedPainter)(const VirtualQFrame* self);
	void (*inputMethodEvent)(VirtualQFrame* self, QInputMethodEvent* param1);
	QVariant* (*inputMethodQuery)(const VirtualQFrame* self, int param1);
	bool (*focusNextPrevChild)(VirtualQFrame* self, bool next);
	bool (*eventFilter)(VirtualQFrame* self, QObject* watched, QEvent* event);
	void (*timerEvent)(VirtualQFrame* self, QTimerEvent* event);
	void (*childEvent)(VirtualQFrame* self, QChildEvent* event);
	void (*customEvent)(VirtualQFrame* self, QEvent* event);
	void (*connectNotify)(VirtualQFrame* self, QMetaMethod* signal);
	void (*disconnectNotify)(VirtualQFrame* self, QMetaMethod* signal);
}QFrame_VTable;

const QFrame_VTable* QFrame_vtbl(const VirtualQFrame* self);
void* QFrame_vdata(const VirtualQFrame* self);
void QFrame_setVdata(VirtualQFrame* self, void* vdata);

VirtualQFrame* QFrame_new(const QFrame_VTable* vtbl, void* vdata, QWidget* parent);
VirtualQFrame* QFrame_new2(const QFrame_VTable* vtbl, void* vdata);
VirtualQFrame* QFrame_new3(const QFrame_VTable* vtbl, void* vdata, QWidget* parent, int f);

void QFrame_virtbase(QFrame* src, QWidget** outptr_QWidget);
QMetaObject* QFrame_metaObject(const QFrame* self);
void* QFrame_metacast(QFrame* self, const char* param1);
int QFrame_metacall(QFrame* self, int param1, int param2, void** param3);
struct miqt_string QFrame_tr(const char* s);
int QFrame_frameStyle(const QFrame* self);
void QFrame_setFrameStyle(QFrame* self, int frameStyle);
int QFrame_frameWidth(const QFrame* self);
QSize* QFrame_sizeHint(const QFrame* self);
int QFrame_frameShape(const QFrame* self);
void QFrame_setFrameShape(QFrame* self, int frameShape);
int QFrame_frameShadow(const QFrame* self);
void QFrame_setFrameShadow(QFrame* self, int frameShadow);
int QFrame_lineWidth(const QFrame* self);
void QFrame_setLineWidth(QFrame* self, int lineWidth);
int QFrame_midLineWidth(const QFrame* self);
void QFrame_setMidLineWidth(QFrame* self, int midLineWidth);
QRect* QFrame_frameRect(const QFrame* self);
void QFrame_setFrameRect(QFrame* self, QRect* frameRect);
bool QFrame_event(QFrame* self, QEvent* e);
void QFrame_paintEvent(QFrame* self, QPaintEvent* param1);
void QFrame_changeEvent(QFrame* self, QEvent* param1);
void QFrame_initStyleOption(const QFrame* self, QStyleOptionFrame* option);
struct miqt_string QFrame_tr2(const char* s, const char* c);
struct miqt_string QFrame_tr3(const char* s, const char* c, int n);

QMetaObject* QFrame_virtualbase_metaObject(const VirtualQFrame* self);
void* QFrame_virtualbase_metacast(VirtualQFrame* self, const char* param1);
int QFrame_virtualbase_metacall(VirtualQFrame* self, int param1, int param2, void** param3);
QSize* QFrame_virtualbase_sizeHint(const VirtualQFrame* self);
bool QFrame_virtualbase_event(VirtualQFrame* self, QEvent* e);
void QFrame_virtualbase_paintEvent(VirtualQFrame* self, QPaintEvent* param1);
void QFrame_virtualbase_changeEvent(VirtualQFrame* self, QEvent* param1);
void QFrame_virtualbase_initStyleOption(const VirtualQFrame* self, QStyleOptionFrame* option);
int QFrame_virtualbase_devType(const VirtualQFrame* self);
void QFrame_virtualbase_setVisible(VirtualQFrame* self, bool visible);
QSize* QFrame_virtualbase_minimumSizeHint(const VirtualQFrame* self);
int QFrame_virtualbase_heightForWidth(const VirtualQFrame* self, int param1);
bool QFrame_virtualbase_hasHeightForWidth(const VirtualQFrame* self);
QPaintEngine* QFrame_virtualbase_paintEngine(const VirtualQFrame* self);
void QFrame_virtualbase_mousePressEvent(VirtualQFrame* self, QMouseEvent* event);
void QFrame_virtualbase_mouseReleaseEvent(VirtualQFrame* self, QMouseEvent* event);
void QFrame_virtualbase_mouseDoubleClickEvent(VirtualQFrame* self, QMouseEvent* event);
void QFrame_virtualbase_mouseMoveEvent(VirtualQFrame* self, QMouseEvent* event);
void QFrame_virtualbase_wheelEvent(VirtualQFrame* self, QWheelEvent* event);
void QFrame_virtualbase_keyPressEvent(VirtualQFrame* self, QKeyEvent* event);
void QFrame_virtualbase_keyReleaseEvent(VirtualQFrame* self, QKeyEvent* event);
void QFrame_virtualbase_focusInEvent(VirtualQFrame* self, QFocusEvent* event);
void QFrame_virtualbase_focusOutEvent(VirtualQFrame* self, QFocusEvent* event);
void QFrame_virtualbase_enterEvent(VirtualQFrame* self, QEnterEvent* event);
void QFrame_virtualbase_leaveEvent(VirtualQFrame* self, QEvent* event);
void QFrame_virtualbase_moveEvent(VirtualQFrame* self, QMoveEvent* event);
void QFrame_virtualbase_resizeEvent(VirtualQFrame* self, QResizeEvent* event);
void QFrame_virtualbase_closeEvent(VirtualQFrame* self, QCloseEvent* event);
void QFrame_virtualbase_contextMenuEvent(VirtualQFrame* self, QContextMenuEvent* event);
void QFrame_virtualbase_tabletEvent(VirtualQFrame* self, QTabletEvent* event);
void QFrame_virtualbase_actionEvent(VirtualQFrame* self, QActionEvent* event);
void QFrame_virtualbase_dragEnterEvent(VirtualQFrame* self, QDragEnterEvent* event);
void QFrame_virtualbase_dragMoveEvent(VirtualQFrame* self, QDragMoveEvent* event);
void QFrame_virtualbase_dragLeaveEvent(VirtualQFrame* self, QDragLeaveEvent* event);
void QFrame_virtualbase_dropEvent(VirtualQFrame* self, QDropEvent* event);
void QFrame_virtualbase_showEvent(VirtualQFrame* self, QShowEvent* event);
void QFrame_virtualbase_hideEvent(VirtualQFrame* self, QHideEvent* event);
bool QFrame_virtualbase_nativeEvent(VirtualQFrame* self, struct miqt_string eventType, void* message, intptr_t* result);
int QFrame_virtualbase_metric(const VirtualQFrame* self, int param1);
void QFrame_virtualbase_initPainter(const VirtualQFrame* self, QPainter* painter);
QPaintDevice* QFrame_virtualbase_redirected(const VirtualQFrame* self, QPoint* offset);
QPainter* QFrame_virtualbase_sharedPainter(const VirtualQFrame* self);
void QFrame_virtualbase_inputMethodEvent(VirtualQFrame* self, QInputMethodEvent* param1);
QVariant* QFrame_virtualbase_inputMethodQuery(const VirtualQFrame* self, int param1);
bool QFrame_virtualbase_focusNextPrevChild(VirtualQFrame* self, bool next);
bool QFrame_virtualbase_eventFilter(VirtualQFrame* self, QObject* watched, QEvent* event);
void QFrame_virtualbase_timerEvent(VirtualQFrame* self, QTimerEvent* event);
void QFrame_virtualbase_childEvent(VirtualQFrame* self, QChildEvent* event);
void QFrame_virtualbase_customEvent(VirtualQFrame* self, QEvent* event);
void QFrame_virtualbase_connectNotify(VirtualQFrame* self, QMetaMethod* signal);
void QFrame_virtualbase_disconnectNotify(VirtualQFrame* self, QMetaMethod* signal);

void QFrame_protectedbase_drawFrame(VirtualQFrame* self, QPainter* param1);
void QFrame_protectedbase_updateMicroFocus(VirtualQFrame* self);
void QFrame_protectedbase_create(VirtualQFrame* self);
void QFrame_protectedbase_destroy(VirtualQFrame* self);
bool QFrame_protectedbase_focusNextChild(VirtualQFrame* self);
bool QFrame_protectedbase_focusPreviousChild(VirtualQFrame* self);
QObject* QFrame_protectedbase_sender(const VirtualQFrame* self);
int QFrame_protectedbase_senderSignalIndex(const VirtualQFrame* self);
int QFrame_protectedbase_receivers(const VirtualQFrame* self, const char* signal);
bool QFrame_protectedbase_isSignalConnected(const VirtualQFrame* self, QMetaMethod* signal);

const QMetaObject* QFrame_staticMetaObject();
void QFrame_delete(QFrame* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
