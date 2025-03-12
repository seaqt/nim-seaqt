#pragma once
#ifndef SEAQT_QTWIDGETS_GEN_QERRORMESSAGE_H
#define SEAQT_QTWIDGETS_GEN_QERRORMESSAGE_H

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
class QDialog;
class QDragEnterEvent;
class QDragLeaveEvent;
class QDragMoveEvent;
class QDropEvent;
class QErrorMessage;
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
typedef struct QActionEvent QActionEvent;
typedef struct QChildEvent QChildEvent;
typedef struct QCloseEvent QCloseEvent;
typedef struct QContextMenuEvent QContextMenuEvent;
typedef struct QDialog QDialog;
typedef struct QDragEnterEvent QDragEnterEvent;
typedef struct QDragLeaveEvent QDragLeaveEvent;
typedef struct QDragMoveEvent QDragMoveEvent;
typedef struct QDropEvent QDropEvent;
typedef struct QErrorMessage QErrorMessage;
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

typedef struct VirtualQErrorMessage VirtualQErrorMessage;
typedef struct QErrorMessage_VTable{
	void (*destructor)(VirtualQErrorMessage* self);
	QMetaObject* (*metaObject)(const VirtualQErrorMessage* self);
	void* (*metacast)(VirtualQErrorMessage* self, const char* param1);
	int (*metacall)(VirtualQErrorMessage* self, int param1, int param2, void** param3);
	void (*done)(VirtualQErrorMessage* self, int param1);
	void (*changeEvent)(VirtualQErrorMessage* self, QEvent* e);
	void (*setVisible)(VirtualQErrorMessage* self, bool visible);
	QSize* (*sizeHint)(const VirtualQErrorMessage* self);
	QSize* (*minimumSizeHint)(const VirtualQErrorMessage* self);
	void (*open)(VirtualQErrorMessage* self);
	int (*exec)(VirtualQErrorMessage* self);
	void (*accept)(VirtualQErrorMessage* self);
	void (*reject)(VirtualQErrorMessage* self);
	void (*keyPressEvent)(VirtualQErrorMessage* self, QKeyEvent* param1);
	void (*closeEvent)(VirtualQErrorMessage* self, QCloseEvent* param1);
	void (*showEvent)(VirtualQErrorMessage* self, QShowEvent* param1);
	void (*resizeEvent)(VirtualQErrorMessage* self, QResizeEvent* param1);
	void (*contextMenuEvent)(VirtualQErrorMessage* self, QContextMenuEvent* param1);
	bool (*eventFilter)(VirtualQErrorMessage* self, QObject* param1, QEvent* param2);
	int (*devType)(const VirtualQErrorMessage* self);
	int (*heightForWidth)(const VirtualQErrorMessage* self, int param1);
	bool (*hasHeightForWidth)(const VirtualQErrorMessage* self);
	QPaintEngine* (*paintEngine)(const VirtualQErrorMessage* self);
	bool (*event)(VirtualQErrorMessage* self, QEvent* event);
	void (*mousePressEvent)(VirtualQErrorMessage* self, QMouseEvent* event);
	void (*mouseReleaseEvent)(VirtualQErrorMessage* self, QMouseEvent* event);
	void (*mouseDoubleClickEvent)(VirtualQErrorMessage* self, QMouseEvent* event);
	void (*mouseMoveEvent)(VirtualQErrorMessage* self, QMouseEvent* event);
	void (*wheelEvent)(VirtualQErrorMessage* self, QWheelEvent* event);
	void (*keyReleaseEvent)(VirtualQErrorMessage* self, QKeyEvent* event);
	void (*focusInEvent)(VirtualQErrorMessage* self, QFocusEvent* event);
	void (*focusOutEvent)(VirtualQErrorMessage* self, QFocusEvent* event);
	void (*enterEvent)(VirtualQErrorMessage* self, QEvent* event);
	void (*leaveEvent)(VirtualQErrorMessage* self, QEvent* event);
	void (*paintEvent)(VirtualQErrorMessage* self, QPaintEvent* event);
	void (*moveEvent)(VirtualQErrorMessage* self, QMoveEvent* event);
	void (*tabletEvent)(VirtualQErrorMessage* self, QTabletEvent* event);
	void (*actionEvent)(VirtualQErrorMessage* self, QActionEvent* event);
	void (*dragEnterEvent)(VirtualQErrorMessage* self, QDragEnterEvent* event);
	void (*dragMoveEvent)(VirtualQErrorMessage* self, QDragMoveEvent* event);
	void (*dragLeaveEvent)(VirtualQErrorMessage* self, QDragLeaveEvent* event);
	void (*dropEvent)(VirtualQErrorMessage* self, QDropEvent* event);
	void (*hideEvent)(VirtualQErrorMessage* self, QHideEvent* event);
	bool (*nativeEvent)(VirtualQErrorMessage* self, struct miqt_string eventType, void* message, long* result);
	int (*metric)(const VirtualQErrorMessage* self, int param1);
	void (*initPainter)(const VirtualQErrorMessage* self, QPainter* painter);
	QPaintDevice* (*redirected)(const VirtualQErrorMessage* self, QPoint* offset);
	QPainter* (*sharedPainter)(const VirtualQErrorMessage* self);
	void (*inputMethodEvent)(VirtualQErrorMessage* self, QInputMethodEvent* param1);
	QVariant* (*inputMethodQuery)(const VirtualQErrorMessage* self, int param1);
	bool (*focusNextPrevChild)(VirtualQErrorMessage* self, bool next);
	void (*timerEvent)(VirtualQErrorMessage* self, QTimerEvent* event);
	void (*childEvent)(VirtualQErrorMessage* self, QChildEvent* event);
	void (*customEvent)(VirtualQErrorMessage* self, QEvent* event);
	void (*connectNotify)(VirtualQErrorMessage* self, QMetaMethod* signal);
	void (*disconnectNotify)(VirtualQErrorMessage* self, QMetaMethod* signal);
}QErrorMessage_VTable;

const QErrorMessage_VTable* QErrorMessage_vtbl(const VirtualQErrorMessage* self);
void* QErrorMessage_vdata(const VirtualQErrorMessage* self);
void QErrorMessage_setVdata(VirtualQErrorMessage* self, void* vdata);

VirtualQErrorMessage* QErrorMessage_new(const QErrorMessage_VTable* vtbl, void* vdata, QWidget* parent);
VirtualQErrorMessage* QErrorMessage_new2(const QErrorMessage_VTable* vtbl, void* vdata);

void QErrorMessage_virtbase(QErrorMessage* src, QDialog** outptr_QDialog);
QMetaObject* QErrorMessage_metaObject(const QErrorMessage* self);
void* QErrorMessage_metacast(QErrorMessage* self, const char* param1);
int QErrorMessage_metacall(QErrorMessage* self, int param1, int param2, void** param3);
struct miqt_string QErrorMessage_tr(const char* s);
struct miqt_string QErrorMessage_trUtf8(const char* s);
QErrorMessage* QErrorMessage_qtHandler();
void QErrorMessage_showMessage(QErrorMessage* self, struct miqt_string message);
void QErrorMessage_showMessage2(QErrorMessage* self, struct miqt_string message, struct miqt_string type);
void QErrorMessage_done(QErrorMessage* self, int param1);
void QErrorMessage_changeEvent(QErrorMessage* self, QEvent* e);
struct miqt_string QErrorMessage_tr2(const char* s, const char* c);
struct miqt_string QErrorMessage_tr3(const char* s, const char* c, int n);
struct miqt_string QErrorMessage_trUtf82(const char* s, const char* c);
struct miqt_string QErrorMessage_trUtf83(const char* s, const char* c, int n);

QMetaObject* QErrorMessage_virtualbase_metaObject(const VirtualQErrorMessage* self);
void* QErrorMessage_virtualbase_metacast(VirtualQErrorMessage* self, const char* param1);
int QErrorMessage_virtualbase_metacall(VirtualQErrorMessage* self, int param1, int param2, void** param3);
void QErrorMessage_virtualbase_done(VirtualQErrorMessage* self, int param1);
void QErrorMessage_virtualbase_changeEvent(VirtualQErrorMessage* self, QEvent* e);
void QErrorMessage_virtualbase_setVisible(VirtualQErrorMessage* self, bool visible);
QSize* QErrorMessage_virtualbase_sizeHint(const VirtualQErrorMessage* self);
QSize* QErrorMessage_virtualbase_minimumSizeHint(const VirtualQErrorMessage* self);
void QErrorMessage_virtualbase_open(VirtualQErrorMessage* self);
int QErrorMessage_virtualbase_exec(VirtualQErrorMessage* self);
void QErrorMessage_virtualbase_accept(VirtualQErrorMessage* self);
void QErrorMessage_virtualbase_reject(VirtualQErrorMessage* self);
void QErrorMessage_virtualbase_keyPressEvent(VirtualQErrorMessage* self, QKeyEvent* param1);
void QErrorMessage_virtualbase_closeEvent(VirtualQErrorMessage* self, QCloseEvent* param1);
void QErrorMessage_virtualbase_showEvent(VirtualQErrorMessage* self, QShowEvent* param1);
void QErrorMessage_virtualbase_resizeEvent(VirtualQErrorMessage* self, QResizeEvent* param1);
void QErrorMessage_virtualbase_contextMenuEvent(VirtualQErrorMessage* self, QContextMenuEvent* param1);
bool QErrorMessage_virtualbase_eventFilter(VirtualQErrorMessage* self, QObject* param1, QEvent* param2);
int QErrorMessage_virtualbase_devType(const VirtualQErrorMessage* self);
int QErrorMessage_virtualbase_heightForWidth(const VirtualQErrorMessage* self, int param1);
bool QErrorMessage_virtualbase_hasHeightForWidth(const VirtualQErrorMessage* self);
QPaintEngine* QErrorMessage_virtualbase_paintEngine(const VirtualQErrorMessage* self);
bool QErrorMessage_virtualbase_event(VirtualQErrorMessage* self, QEvent* event);
void QErrorMessage_virtualbase_mousePressEvent(VirtualQErrorMessage* self, QMouseEvent* event);
void QErrorMessage_virtualbase_mouseReleaseEvent(VirtualQErrorMessage* self, QMouseEvent* event);
void QErrorMessage_virtualbase_mouseDoubleClickEvent(VirtualQErrorMessage* self, QMouseEvent* event);
void QErrorMessage_virtualbase_mouseMoveEvent(VirtualQErrorMessage* self, QMouseEvent* event);
void QErrorMessage_virtualbase_wheelEvent(VirtualQErrorMessage* self, QWheelEvent* event);
void QErrorMessage_virtualbase_keyReleaseEvent(VirtualQErrorMessage* self, QKeyEvent* event);
void QErrorMessage_virtualbase_focusInEvent(VirtualQErrorMessage* self, QFocusEvent* event);
void QErrorMessage_virtualbase_focusOutEvent(VirtualQErrorMessage* self, QFocusEvent* event);
void QErrorMessage_virtualbase_enterEvent(VirtualQErrorMessage* self, QEvent* event);
void QErrorMessage_virtualbase_leaveEvent(VirtualQErrorMessage* self, QEvent* event);
void QErrorMessage_virtualbase_paintEvent(VirtualQErrorMessage* self, QPaintEvent* event);
void QErrorMessage_virtualbase_moveEvent(VirtualQErrorMessage* self, QMoveEvent* event);
void QErrorMessage_virtualbase_tabletEvent(VirtualQErrorMessage* self, QTabletEvent* event);
void QErrorMessage_virtualbase_actionEvent(VirtualQErrorMessage* self, QActionEvent* event);
void QErrorMessage_virtualbase_dragEnterEvent(VirtualQErrorMessage* self, QDragEnterEvent* event);
void QErrorMessage_virtualbase_dragMoveEvent(VirtualQErrorMessage* self, QDragMoveEvent* event);
void QErrorMessage_virtualbase_dragLeaveEvent(VirtualQErrorMessage* self, QDragLeaveEvent* event);
void QErrorMessage_virtualbase_dropEvent(VirtualQErrorMessage* self, QDropEvent* event);
void QErrorMessage_virtualbase_hideEvent(VirtualQErrorMessage* self, QHideEvent* event);
bool QErrorMessage_virtualbase_nativeEvent(VirtualQErrorMessage* self, struct miqt_string eventType, void* message, long* result);
int QErrorMessage_virtualbase_metric(const VirtualQErrorMessage* self, int param1);
void QErrorMessage_virtualbase_initPainter(const VirtualQErrorMessage* self, QPainter* painter);
QPaintDevice* QErrorMessage_virtualbase_redirected(const VirtualQErrorMessage* self, QPoint* offset);
QPainter* QErrorMessage_virtualbase_sharedPainter(const VirtualQErrorMessage* self);
void QErrorMessage_virtualbase_inputMethodEvent(VirtualQErrorMessage* self, QInputMethodEvent* param1);
QVariant* QErrorMessage_virtualbase_inputMethodQuery(const VirtualQErrorMessage* self, int param1);
bool QErrorMessage_virtualbase_focusNextPrevChild(VirtualQErrorMessage* self, bool next);
void QErrorMessage_virtualbase_timerEvent(VirtualQErrorMessage* self, QTimerEvent* event);
void QErrorMessage_virtualbase_childEvent(VirtualQErrorMessage* self, QChildEvent* event);
void QErrorMessage_virtualbase_customEvent(VirtualQErrorMessage* self, QEvent* event);
void QErrorMessage_virtualbase_connectNotify(VirtualQErrorMessage* self, QMetaMethod* signal);
void QErrorMessage_virtualbase_disconnectNotify(VirtualQErrorMessage* self, QMetaMethod* signal);

void QErrorMessage_protectedbase_adjustPosition(VirtualQErrorMessage* self, QWidget* param1);
void QErrorMessage_protectedbase_updateMicroFocus(VirtualQErrorMessage* self);
void QErrorMessage_protectedbase_create(VirtualQErrorMessage* self);
void QErrorMessage_protectedbase_destroy(VirtualQErrorMessage* self);
bool QErrorMessage_protectedbase_focusNextChild(VirtualQErrorMessage* self);
bool QErrorMessage_protectedbase_focusPreviousChild(VirtualQErrorMessage* self);
QObject* QErrorMessage_protectedbase_sender(const VirtualQErrorMessage* self);
int QErrorMessage_protectedbase_senderSignalIndex(const VirtualQErrorMessage* self);
int QErrorMessage_protectedbase_receivers(const VirtualQErrorMessage* self, const char* signal);
bool QErrorMessage_protectedbase_isSignalConnected(const VirtualQErrorMessage* self, QMetaMethod* signal);

const QMetaObject* QErrorMessage_staticMetaObject();
void QErrorMessage_delete(QErrorMessage* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
