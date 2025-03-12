#pragma once
#ifndef SEAQT_QTPRINTSUPPORT_GEN_QPAGESETUPDIALOG_H
#define SEAQT_QTPRINTSUPPORT_GEN_QPAGESETUPDIALOG_H

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
class QPageSetupDialog;
class QPaintDevice;
class QPaintEngine;
class QPaintEvent;
class QPainter;
class QPoint;
class QPrinter;
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
typedef struct QPageSetupDialog QPageSetupDialog;
typedef struct QPaintDevice QPaintDevice;
typedef struct QPaintEngine QPaintEngine;
typedef struct QPaintEvent QPaintEvent;
typedef struct QPainter QPainter;
typedef struct QPoint QPoint;
typedef struct QPrinter QPrinter;
typedef struct QResizeEvent QResizeEvent;
typedef struct QShowEvent QShowEvent;
typedef struct QSize QSize;
typedef struct QTabletEvent QTabletEvent;
typedef struct QTimerEvent QTimerEvent;
typedef struct QVariant QVariant;
typedef struct QWheelEvent QWheelEvent;
typedef struct QWidget QWidget;
#endif

typedef struct VirtualQPageSetupDialog VirtualQPageSetupDialog;
typedef struct QPageSetupDialog_VTable{
	void (*destructor)(VirtualQPageSetupDialog* self);
	QMetaObject* (*metaObject)(const VirtualQPageSetupDialog* self);
	void* (*metacast)(VirtualQPageSetupDialog* self, const char* param1);
	int (*metacall)(VirtualQPageSetupDialog* self, int param1, int param2, void** param3);
	int (*exec)(VirtualQPageSetupDialog* self);
	void (*done)(VirtualQPageSetupDialog* self, int result);
	void (*setVisible)(VirtualQPageSetupDialog* self, bool visible);
	QSize* (*sizeHint)(const VirtualQPageSetupDialog* self);
	QSize* (*minimumSizeHint)(const VirtualQPageSetupDialog* self);
	void (*open)(VirtualQPageSetupDialog* self);
	void (*accept)(VirtualQPageSetupDialog* self);
	void (*reject)(VirtualQPageSetupDialog* self);
	void (*keyPressEvent)(VirtualQPageSetupDialog* self, QKeyEvent* param1);
	void (*closeEvent)(VirtualQPageSetupDialog* self, QCloseEvent* param1);
	void (*showEvent)(VirtualQPageSetupDialog* self, QShowEvent* param1);
	void (*resizeEvent)(VirtualQPageSetupDialog* self, QResizeEvent* param1);
	void (*contextMenuEvent)(VirtualQPageSetupDialog* self, QContextMenuEvent* param1);
	bool (*eventFilter)(VirtualQPageSetupDialog* self, QObject* param1, QEvent* param2);
	int (*devType)(const VirtualQPageSetupDialog* self);
	int (*heightForWidth)(const VirtualQPageSetupDialog* self, int param1);
	bool (*hasHeightForWidth)(const VirtualQPageSetupDialog* self);
	QPaintEngine* (*paintEngine)(const VirtualQPageSetupDialog* self);
	bool (*event)(VirtualQPageSetupDialog* self, QEvent* event);
	void (*mousePressEvent)(VirtualQPageSetupDialog* self, QMouseEvent* event);
	void (*mouseReleaseEvent)(VirtualQPageSetupDialog* self, QMouseEvent* event);
	void (*mouseDoubleClickEvent)(VirtualQPageSetupDialog* self, QMouseEvent* event);
	void (*mouseMoveEvent)(VirtualQPageSetupDialog* self, QMouseEvent* event);
	void (*wheelEvent)(VirtualQPageSetupDialog* self, QWheelEvent* event);
	void (*keyReleaseEvent)(VirtualQPageSetupDialog* self, QKeyEvent* event);
	void (*focusInEvent)(VirtualQPageSetupDialog* self, QFocusEvent* event);
	void (*focusOutEvent)(VirtualQPageSetupDialog* self, QFocusEvent* event);
	void (*enterEvent)(VirtualQPageSetupDialog* self, QEnterEvent* event);
	void (*leaveEvent)(VirtualQPageSetupDialog* self, QEvent* event);
	void (*paintEvent)(VirtualQPageSetupDialog* self, QPaintEvent* event);
	void (*moveEvent)(VirtualQPageSetupDialog* self, QMoveEvent* event);
	void (*tabletEvent)(VirtualQPageSetupDialog* self, QTabletEvent* event);
	void (*actionEvent)(VirtualQPageSetupDialog* self, QActionEvent* event);
	void (*dragEnterEvent)(VirtualQPageSetupDialog* self, QDragEnterEvent* event);
	void (*dragMoveEvent)(VirtualQPageSetupDialog* self, QDragMoveEvent* event);
	void (*dragLeaveEvent)(VirtualQPageSetupDialog* self, QDragLeaveEvent* event);
	void (*dropEvent)(VirtualQPageSetupDialog* self, QDropEvent* event);
	void (*hideEvent)(VirtualQPageSetupDialog* self, QHideEvent* event);
	bool (*nativeEvent)(VirtualQPageSetupDialog* self, struct miqt_string eventType, void* message, intptr_t* result);
	void (*changeEvent)(VirtualQPageSetupDialog* self, QEvent* param1);
	int (*metric)(const VirtualQPageSetupDialog* self, int param1);
	void (*initPainter)(const VirtualQPageSetupDialog* self, QPainter* painter);
	QPaintDevice* (*redirected)(const VirtualQPageSetupDialog* self, QPoint* offset);
	QPainter* (*sharedPainter)(const VirtualQPageSetupDialog* self);
	void (*inputMethodEvent)(VirtualQPageSetupDialog* self, QInputMethodEvent* param1);
	QVariant* (*inputMethodQuery)(const VirtualQPageSetupDialog* self, int param1);
	bool (*focusNextPrevChild)(VirtualQPageSetupDialog* self, bool next);
	void (*timerEvent)(VirtualQPageSetupDialog* self, QTimerEvent* event);
	void (*childEvent)(VirtualQPageSetupDialog* self, QChildEvent* event);
	void (*customEvent)(VirtualQPageSetupDialog* self, QEvent* event);
	void (*connectNotify)(VirtualQPageSetupDialog* self, QMetaMethod* signal);
	void (*disconnectNotify)(VirtualQPageSetupDialog* self, QMetaMethod* signal);
}QPageSetupDialog_VTable;

const QPageSetupDialog_VTable* QPageSetupDialog_vtbl(const VirtualQPageSetupDialog* self);
void* QPageSetupDialog_vdata(const VirtualQPageSetupDialog* self);
void QPageSetupDialog_setVdata(VirtualQPageSetupDialog* self, void* vdata);

VirtualQPageSetupDialog* QPageSetupDialog_new(const QPageSetupDialog_VTable* vtbl, void* vdata, QWidget* parent);
VirtualQPageSetupDialog* QPageSetupDialog_new2(const QPageSetupDialog_VTable* vtbl, void* vdata, QPrinter* printer);
VirtualQPageSetupDialog* QPageSetupDialog_new3(const QPageSetupDialog_VTable* vtbl, void* vdata);
VirtualQPageSetupDialog* QPageSetupDialog_new4(const QPageSetupDialog_VTable* vtbl, void* vdata, QPrinter* printer, QWidget* parent);

void QPageSetupDialog_virtbase(QPageSetupDialog* src, QDialog** outptr_QDialog);
QMetaObject* QPageSetupDialog_metaObject(const QPageSetupDialog* self);
void* QPageSetupDialog_metacast(QPageSetupDialog* self, const char* param1);
int QPageSetupDialog_metacall(QPageSetupDialog* self, int param1, int param2, void** param3);
struct miqt_string QPageSetupDialog_tr(const char* s);
int QPageSetupDialog_exec(QPageSetupDialog* self);
void QPageSetupDialog_done(QPageSetupDialog* self, int result);
QPrinter* QPageSetupDialog_printer(QPageSetupDialog* self);
struct miqt_string QPageSetupDialog_tr2(const char* s, const char* c);
struct miqt_string QPageSetupDialog_tr3(const char* s, const char* c, int n);

QMetaObject* QPageSetupDialog_virtualbase_metaObject(const VirtualQPageSetupDialog* self);
void* QPageSetupDialog_virtualbase_metacast(VirtualQPageSetupDialog* self, const char* param1);
int QPageSetupDialog_virtualbase_metacall(VirtualQPageSetupDialog* self, int param1, int param2, void** param3);
int QPageSetupDialog_virtualbase_exec(VirtualQPageSetupDialog* self);
void QPageSetupDialog_virtualbase_done(VirtualQPageSetupDialog* self, int result);
void QPageSetupDialog_virtualbase_setVisible(VirtualQPageSetupDialog* self, bool visible);
QSize* QPageSetupDialog_virtualbase_sizeHint(const VirtualQPageSetupDialog* self);
QSize* QPageSetupDialog_virtualbase_minimumSizeHint(const VirtualQPageSetupDialog* self);
void QPageSetupDialog_virtualbase_open(VirtualQPageSetupDialog* self);
void QPageSetupDialog_virtualbase_accept(VirtualQPageSetupDialog* self);
void QPageSetupDialog_virtualbase_reject(VirtualQPageSetupDialog* self);
void QPageSetupDialog_virtualbase_keyPressEvent(VirtualQPageSetupDialog* self, QKeyEvent* param1);
void QPageSetupDialog_virtualbase_closeEvent(VirtualQPageSetupDialog* self, QCloseEvent* param1);
void QPageSetupDialog_virtualbase_showEvent(VirtualQPageSetupDialog* self, QShowEvent* param1);
void QPageSetupDialog_virtualbase_resizeEvent(VirtualQPageSetupDialog* self, QResizeEvent* param1);
void QPageSetupDialog_virtualbase_contextMenuEvent(VirtualQPageSetupDialog* self, QContextMenuEvent* param1);
bool QPageSetupDialog_virtualbase_eventFilter(VirtualQPageSetupDialog* self, QObject* param1, QEvent* param2);
int QPageSetupDialog_virtualbase_devType(const VirtualQPageSetupDialog* self);
int QPageSetupDialog_virtualbase_heightForWidth(const VirtualQPageSetupDialog* self, int param1);
bool QPageSetupDialog_virtualbase_hasHeightForWidth(const VirtualQPageSetupDialog* self);
QPaintEngine* QPageSetupDialog_virtualbase_paintEngine(const VirtualQPageSetupDialog* self);
bool QPageSetupDialog_virtualbase_event(VirtualQPageSetupDialog* self, QEvent* event);
void QPageSetupDialog_virtualbase_mousePressEvent(VirtualQPageSetupDialog* self, QMouseEvent* event);
void QPageSetupDialog_virtualbase_mouseReleaseEvent(VirtualQPageSetupDialog* self, QMouseEvent* event);
void QPageSetupDialog_virtualbase_mouseDoubleClickEvent(VirtualQPageSetupDialog* self, QMouseEvent* event);
void QPageSetupDialog_virtualbase_mouseMoveEvent(VirtualQPageSetupDialog* self, QMouseEvent* event);
void QPageSetupDialog_virtualbase_wheelEvent(VirtualQPageSetupDialog* self, QWheelEvent* event);
void QPageSetupDialog_virtualbase_keyReleaseEvent(VirtualQPageSetupDialog* self, QKeyEvent* event);
void QPageSetupDialog_virtualbase_focusInEvent(VirtualQPageSetupDialog* self, QFocusEvent* event);
void QPageSetupDialog_virtualbase_focusOutEvent(VirtualQPageSetupDialog* self, QFocusEvent* event);
void QPageSetupDialog_virtualbase_enterEvent(VirtualQPageSetupDialog* self, QEnterEvent* event);
void QPageSetupDialog_virtualbase_leaveEvent(VirtualQPageSetupDialog* self, QEvent* event);
void QPageSetupDialog_virtualbase_paintEvent(VirtualQPageSetupDialog* self, QPaintEvent* event);
void QPageSetupDialog_virtualbase_moveEvent(VirtualQPageSetupDialog* self, QMoveEvent* event);
void QPageSetupDialog_virtualbase_tabletEvent(VirtualQPageSetupDialog* self, QTabletEvent* event);
void QPageSetupDialog_virtualbase_actionEvent(VirtualQPageSetupDialog* self, QActionEvent* event);
void QPageSetupDialog_virtualbase_dragEnterEvent(VirtualQPageSetupDialog* self, QDragEnterEvent* event);
void QPageSetupDialog_virtualbase_dragMoveEvent(VirtualQPageSetupDialog* self, QDragMoveEvent* event);
void QPageSetupDialog_virtualbase_dragLeaveEvent(VirtualQPageSetupDialog* self, QDragLeaveEvent* event);
void QPageSetupDialog_virtualbase_dropEvent(VirtualQPageSetupDialog* self, QDropEvent* event);
void QPageSetupDialog_virtualbase_hideEvent(VirtualQPageSetupDialog* self, QHideEvent* event);
bool QPageSetupDialog_virtualbase_nativeEvent(VirtualQPageSetupDialog* self, struct miqt_string eventType, void* message, intptr_t* result);
void QPageSetupDialog_virtualbase_changeEvent(VirtualQPageSetupDialog* self, QEvent* param1);
int QPageSetupDialog_virtualbase_metric(const VirtualQPageSetupDialog* self, int param1);
void QPageSetupDialog_virtualbase_initPainter(const VirtualQPageSetupDialog* self, QPainter* painter);
QPaintDevice* QPageSetupDialog_virtualbase_redirected(const VirtualQPageSetupDialog* self, QPoint* offset);
QPainter* QPageSetupDialog_virtualbase_sharedPainter(const VirtualQPageSetupDialog* self);
void QPageSetupDialog_virtualbase_inputMethodEvent(VirtualQPageSetupDialog* self, QInputMethodEvent* param1);
QVariant* QPageSetupDialog_virtualbase_inputMethodQuery(const VirtualQPageSetupDialog* self, int param1);
bool QPageSetupDialog_virtualbase_focusNextPrevChild(VirtualQPageSetupDialog* self, bool next);
void QPageSetupDialog_virtualbase_timerEvent(VirtualQPageSetupDialog* self, QTimerEvent* event);
void QPageSetupDialog_virtualbase_childEvent(VirtualQPageSetupDialog* self, QChildEvent* event);
void QPageSetupDialog_virtualbase_customEvent(VirtualQPageSetupDialog* self, QEvent* event);
void QPageSetupDialog_virtualbase_connectNotify(VirtualQPageSetupDialog* self, QMetaMethod* signal);
void QPageSetupDialog_virtualbase_disconnectNotify(VirtualQPageSetupDialog* self, QMetaMethod* signal);

void QPageSetupDialog_protectedbase_adjustPosition(VirtualQPageSetupDialog* self, QWidget* param1);
void QPageSetupDialog_protectedbase_updateMicroFocus(VirtualQPageSetupDialog* self);
void QPageSetupDialog_protectedbase_create(VirtualQPageSetupDialog* self);
void QPageSetupDialog_protectedbase_destroy(VirtualQPageSetupDialog* self);
bool QPageSetupDialog_protectedbase_focusNextChild(VirtualQPageSetupDialog* self);
bool QPageSetupDialog_protectedbase_focusPreviousChild(VirtualQPageSetupDialog* self);
QObject* QPageSetupDialog_protectedbase_sender(const VirtualQPageSetupDialog* self);
int QPageSetupDialog_protectedbase_senderSignalIndex(const VirtualQPageSetupDialog* self);
int QPageSetupDialog_protectedbase_receivers(const VirtualQPageSetupDialog* self, const char* signal);
bool QPageSetupDialog_protectedbase_isSignalConnected(const VirtualQPageSetupDialog* self, QMetaMethod* signal);

const QMetaObject* QPageSetupDialog_staticMetaObject();
void QPageSetupDialog_delete(QPageSetupDialog* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
