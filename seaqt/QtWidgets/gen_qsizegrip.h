#pragma once
#ifndef SEAQT_QTWIDGETS_GEN_QSIZEGRIP_H
#define SEAQT_QTWIDGETS_GEN_QSIZEGRIP_H

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
class QSizeGrip;
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
typedef struct QSizeGrip QSizeGrip;
typedef struct QTabletEvent QTabletEvent;
typedef struct QTimerEvent QTimerEvent;
typedef struct QVariant QVariant;
typedef struct QWheelEvent QWheelEvent;
typedef struct QWidget QWidget;
#endif

typedef struct VirtualQSizeGrip VirtualQSizeGrip;
typedef struct QSizeGrip_VTable{
	void (*destructor)(VirtualQSizeGrip* self);
	QMetaObject* (*metaObject)(const VirtualQSizeGrip* self);
	void* (*metacast)(VirtualQSizeGrip* self, const char* param1);
	int (*metacall)(VirtualQSizeGrip* self, int param1, int param2, void** param3);
	QSize* (*sizeHint)(const VirtualQSizeGrip* self);
	void (*setVisible)(VirtualQSizeGrip* self, bool visible);
	void (*paintEvent)(VirtualQSizeGrip* self, QPaintEvent* param1);
	void (*mousePressEvent)(VirtualQSizeGrip* self, QMouseEvent* param1);
	void (*mouseMoveEvent)(VirtualQSizeGrip* self, QMouseEvent* param1);
	void (*mouseReleaseEvent)(VirtualQSizeGrip* self, QMouseEvent* mouseEvent);
	void (*moveEvent)(VirtualQSizeGrip* self, QMoveEvent* moveEvent);
	void (*showEvent)(VirtualQSizeGrip* self, QShowEvent* showEvent);
	void (*hideEvent)(VirtualQSizeGrip* self, QHideEvent* hideEvent);
	bool (*eventFilter)(VirtualQSizeGrip* self, QObject* param1, QEvent* param2);
	bool (*event)(VirtualQSizeGrip* self, QEvent* param1);
	int (*devType)(const VirtualQSizeGrip* self);
	QSize* (*minimumSizeHint)(const VirtualQSizeGrip* self);
	int (*heightForWidth)(const VirtualQSizeGrip* self, int param1);
	bool (*hasHeightForWidth)(const VirtualQSizeGrip* self);
	QPaintEngine* (*paintEngine)(const VirtualQSizeGrip* self);
	void (*mouseDoubleClickEvent)(VirtualQSizeGrip* self, QMouseEvent* event);
	void (*wheelEvent)(VirtualQSizeGrip* self, QWheelEvent* event);
	void (*keyPressEvent)(VirtualQSizeGrip* self, QKeyEvent* event);
	void (*keyReleaseEvent)(VirtualQSizeGrip* self, QKeyEvent* event);
	void (*focusInEvent)(VirtualQSizeGrip* self, QFocusEvent* event);
	void (*focusOutEvent)(VirtualQSizeGrip* self, QFocusEvent* event);
	void (*enterEvent)(VirtualQSizeGrip* self, QEnterEvent* event);
	void (*leaveEvent)(VirtualQSizeGrip* self, QEvent* event);
	void (*resizeEvent)(VirtualQSizeGrip* self, QResizeEvent* event);
	void (*closeEvent)(VirtualQSizeGrip* self, QCloseEvent* event);
	void (*contextMenuEvent)(VirtualQSizeGrip* self, QContextMenuEvent* event);
	void (*tabletEvent)(VirtualQSizeGrip* self, QTabletEvent* event);
	void (*actionEvent)(VirtualQSizeGrip* self, QActionEvent* event);
	void (*dragEnterEvent)(VirtualQSizeGrip* self, QDragEnterEvent* event);
	void (*dragMoveEvent)(VirtualQSizeGrip* self, QDragMoveEvent* event);
	void (*dragLeaveEvent)(VirtualQSizeGrip* self, QDragLeaveEvent* event);
	void (*dropEvent)(VirtualQSizeGrip* self, QDropEvent* event);
	bool (*nativeEvent)(VirtualQSizeGrip* self, struct miqt_string eventType, void* message, intptr_t* result);
	void (*changeEvent)(VirtualQSizeGrip* self, QEvent* param1);
	int (*metric)(const VirtualQSizeGrip* self, int param1);
	void (*initPainter)(const VirtualQSizeGrip* self, QPainter* painter);
	QPaintDevice* (*redirected)(const VirtualQSizeGrip* self, QPoint* offset);
	QPainter* (*sharedPainter)(const VirtualQSizeGrip* self);
	void (*inputMethodEvent)(VirtualQSizeGrip* self, QInputMethodEvent* param1);
	QVariant* (*inputMethodQuery)(const VirtualQSizeGrip* self, int param1);
	bool (*focusNextPrevChild)(VirtualQSizeGrip* self, bool next);
	void (*timerEvent)(VirtualQSizeGrip* self, QTimerEvent* event);
	void (*childEvent)(VirtualQSizeGrip* self, QChildEvent* event);
	void (*customEvent)(VirtualQSizeGrip* self, QEvent* event);
	void (*connectNotify)(VirtualQSizeGrip* self, QMetaMethod* signal);
	void (*disconnectNotify)(VirtualQSizeGrip* self, QMetaMethod* signal);
}QSizeGrip_VTable;

const QSizeGrip_VTable* QSizeGrip_vtbl(const VirtualQSizeGrip* self);
void* QSizeGrip_vdata(const VirtualQSizeGrip* self);
void QSizeGrip_setVdata(VirtualQSizeGrip* self, void* vdata);

VirtualQSizeGrip* QSizeGrip_new(const QSizeGrip_VTable* vtbl, void* vdata, QWidget* parent);

void QSizeGrip_virtbase(QSizeGrip* src, QWidget** outptr_QWidget);
QMetaObject* QSizeGrip_metaObject(const QSizeGrip* self);
void* QSizeGrip_metacast(QSizeGrip* self, const char* param1);
int QSizeGrip_metacall(QSizeGrip* self, int param1, int param2, void** param3);
struct miqt_string QSizeGrip_tr(const char* s);
QSize* QSizeGrip_sizeHint(const QSizeGrip* self);
void QSizeGrip_setVisible(QSizeGrip* self, bool visible);
void QSizeGrip_paintEvent(QSizeGrip* self, QPaintEvent* param1);
void QSizeGrip_mousePressEvent(QSizeGrip* self, QMouseEvent* param1);
void QSizeGrip_mouseMoveEvent(QSizeGrip* self, QMouseEvent* param1);
void QSizeGrip_mouseReleaseEvent(QSizeGrip* self, QMouseEvent* mouseEvent);
void QSizeGrip_moveEvent(QSizeGrip* self, QMoveEvent* moveEvent);
void QSizeGrip_showEvent(QSizeGrip* self, QShowEvent* showEvent);
void QSizeGrip_hideEvent(QSizeGrip* self, QHideEvent* hideEvent);
bool QSizeGrip_eventFilter(QSizeGrip* self, QObject* param1, QEvent* param2);
bool QSizeGrip_event(QSizeGrip* self, QEvent* param1);
struct miqt_string QSizeGrip_tr2(const char* s, const char* c);
struct miqt_string QSizeGrip_tr3(const char* s, const char* c, int n);

QMetaObject* QSizeGrip_virtualbase_metaObject(const VirtualQSizeGrip* self);
void* QSizeGrip_virtualbase_metacast(VirtualQSizeGrip* self, const char* param1);
int QSizeGrip_virtualbase_metacall(VirtualQSizeGrip* self, int param1, int param2, void** param3);
QSize* QSizeGrip_virtualbase_sizeHint(const VirtualQSizeGrip* self);
void QSizeGrip_virtualbase_setVisible(VirtualQSizeGrip* self, bool visible);
void QSizeGrip_virtualbase_paintEvent(VirtualQSizeGrip* self, QPaintEvent* param1);
void QSizeGrip_virtualbase_mousePressEvent(VirtualQSizeGrip* self, QMouseEvent* param1);
void QSizeGrip_virtualbase_mouseMoveEvent(VirtualQSizeGrip* self, QMouseEvent* param1);
void QSizeGrip_virtualbase_mouseReleaseEvent(VirtualQSizeGrip* self, QMouseEvent* mouseEvent);
void QSizeGrip_virtualbase_moveEvent(VirtualQSizeGrip* self, QMoveEvent* moveEvent);
void QSizeGrip_virtualbase_showEvent(VirtualQSizeGrip* self, QShowEvent* showEvent);
void QSizeGrip_virtualbase_hideEvent(VirtualQSizeGrip* self, QHideEvent* hideEvent);
bool QSizeGrip_virtualbase_eventFilter(VirtualQSizeGrip* self, QObject* param1, QEvent* param2);
bool QSizeGrip_virtualbase_event(VirtualQSizeGrip* self, QEvent* param1);
int QSizeGrip_virtualbase_devType(const VirtualQSizeGrip* self);
QSize* QSizeGrip_virtualbase_minimumSizeHint(const VirtualQSizeGrip* self);
int QSizeGrip_virtualbase_heightForWidth(const VirtualQSizeGrip* self, int param1);
bool QSizeGrip_virtualbase_hasHeightForWidth(const VirtualQSizeGrip* self);
QPaintEngine* QSizeGrip_virtualbase_paintEngine(const VirtualQSizeGrip* self);
void QSizeGrip_virtualbase_mouseDoubleClickEvent(VirtualQSizeGrip* self, QMouseEvent* event);
void QSizeGrip_virtualbase_wheelEvent(VirtualQSizeGrip* self, QWheelEvent* event);
void QSizeGrip_virtualbase_keyPressEvent(VirtualQSizeGrip* self, QKeyEvent* event);
void QSizeGrip_virtualbase_keyReleaseEvent(VirtualQSizeGrip* self, QKeyEvent* event);
void QSizeGrip_virtualbase_focusInEvent(VirtualQSizeGrip* self, QFocusEvent* event);
void QSizeGrip_virtualbase_focusOutEvent(VirtualQSizeGrip* self, QFocusEvent* event);
void QSizeGrip_virtualbase_enterEvent(VirtualQSizeGrip* self, QEnterEvent* event);
void QSizeGrip_virtualbase_leaveEvent(VirtualQSizeGrip* self, QEvent* event);
void QSizeGrip_virtualbase_resizeEvent(VirtualQSizeGrip* self, QResizeEvent* event);
void QSizeGrip_virtualbase_closeEvent(VirtualQSizeGrip* self, QCloseEvent* event);
void QSizeGrip_virtualbase_contextMenuEvent(VirtualQSizeGrip* self, QContextMenuEvent* event);
void QSizeGrip_virtualbase_tabletEvent(VirtualQSizeGrip* self, QTabletEvent* event);
void QSizeGrip_virtualbase_actionEvent(VirtualQSizeGrip* self, QActionEvent* event);
void QSizeGrip_virtualbase_dragEnterEvent(VirtualQSizeGrip* self, QDragEnterEvent* event);
void QSizeGrip_virtualbase_dragMoveEvent(VirtualQSizeGrip* self, QDragMoveEvent* event);
void QSizeGrip_virtualbase_dragLeaveEvent(VirtualQSizeGrip* self, QDragLeaveEvent* event);
void QSizeGrip_virtualbase_dropEvent(VirtualQSizeGrip* self, QDropEvent* event);
bool QSizeGrip_virtualbase_nativeEvent(VirtualQSizeGrip* self, struct miqt_string eventType, void* message, intptr_t* result);
void QSizeGrip_virtualbase_changeEvent(VirtualQSizeGrip* self, QEvent* param1);
int QSizeGrip_virtualbase_metric(const VirtualQSizeGrip* self, int param1);
void QSizeGrip_virtualbase_initPainter(const VirtualQSizeGrip* self, QPainter* painter);
QPaintDevice* QSizeGrip_virtualbase_redirected(const VirtualQSizeGrip* self, QPoint* offset);
QPainter* QSizeGrip_virtualbase_sharedPainter(const VirtualQSizeGrip* self);
void QSizeGrip_virtualbase_inputMethodEvent(VirtualQSizeGrip* self, QInputMethodEvent* param1);
QVariant* QSizeGrip_virtualbase_inputMethodQuery(const VirtualQSizeGrip* self, int param1);
bool QSizeGrip_virtualbase_focusNextPrevChild(VirtualQSizeGrip* self, bool next);
void QSizeGrip_virtualbase_timerEvent(VirtualQSizeGrip* self, QTimerEvent* event);
void QSizeGrip_virtualbase_childEvent(VirtualQSizeGrip* self, QChildEvent* event);
void QSizeGrip_virtualbase_customEvent(VirtualQSizeGrip* self, QEvent* event);
void QSizeGrip_virtualbase_connectNotify(VirtualQSizeGrip* self, QMetaMethod* signal);
void QSizeGrip_virtualbase_disconnectNotify(VirtualQSizeGrip* self, QMetaMethod* signal);

void QSizeGrip_protectedbase_updateMicroFocus(VirtualQSizeGrip* self);
void QSizeGrip_protectedbase_create(VirtualQSizeGrip* self);
void QSizeGrip_protectedbase_destroy(VirtualQSizeGrip* self);
bool QSizeGrip_protectedbase_focusNextChild(VirtualQSizeGrip* self);
bool QSizeGrip_protectedbase_focusPreviousChild(VirtualQSizeGrip* self);
QObject* QSizeGrip_protectedbase_sender(const VirtualQSizeGrip* self);
int QSizeGrip_protectedbase_senderSignalIndex(const VirtualQSizeGrip* self);
int QSizeGrip_protectedbase_receivers(const VirtualQSizeGrip* self, const char* signal);
bool QSizeGrip_protectedbase_isSignalConnected(const VirtualQSizeGrip* self, QMetaMethod* signal);

const QMetaObject* QSizeGrip_staticMetaObject();
void QSizeGrip_delete(QSizeGrip* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
