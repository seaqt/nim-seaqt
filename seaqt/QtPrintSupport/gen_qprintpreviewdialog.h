#pragma once
#ifndef SEAQT_QTPRINTSUPPORT_GEN_QPRINTPREVIEWDIALOG_H
#define SEAQT_QTPRINTSUPPORT_GEN_QPRINTPREVIEWDIALOG_H

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
class QPaintDevice;
class QPaintEngine;
class QPaintEvent;
class QPainter;
class QPoint;
class QPrintPreviewDialog;
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
typedef struct QPaintDevice QPaintDevice;
typedef struct QPaintEngine QPaintEngine;
typedef struct QPaintEvent QPaintEvent;
typedef struct QPainter QPainter;
typedef struct QPoint QPoint;
typedef struct QPrintPreviewDialog QPrintPreviewDialog;
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

typedef struct VirtualQPrintPreviewDialog VirtualQPrintPreviewDialog;
typedef struct QPrintPreviewDialog_VTable{
	void (*destructor)(VirtualQPrintPreviewDialog* self);
	QMetaObject* (*metaObject)(const VirtualQPrintPreviewDialog* self);
	void* (*metacast)(VirtualQPrintPreviewDialog* self, const char* param1);
	int (*metacall)(VirtualQPrintPreviewDialog* self, int param1, int param2, void** param3);
	void (*setVisible)(VirtualQPrintPreviewDialog* self, bool visible);
	void (*done)(VirtualQPrintPreviewDialog* self, int result);
	QSize* (*sizeHint)(const VirtualQPrintPreviewDialog* self);
	QSize* (*minimumSizeHint)(const VirtualQPrintPreviewDialog* self);
	void (*open)(VirtualQPrintPreviewDialog* self);
	int (*exec)(VirtualQPrintPreviewDialog* self);
	void (*accept)(VirtualQPrintPreviewDialog* self);
	void (*reject)(VirtualQPrintPreviewDialog* self);
	void (*keyPressEvent)(VirtualQPrintPreviewDialog* self, QKeyEvent* param1);
	void (*closeEvent)(VirtualQPrintPreviewDialog* self, QCloseEvent* param1);
	void (*showEvent)(VirtualQPrintPreviewDialog* self, QShowEvent* param1);
	void (*resizeEvent)(VirtualQPrintPreviewDialog* self, QResizeEvent* param1);
	void (*contextMenuEvent)(VirtualQPrintPreviewDialog* self, QContextMenuEvent* param1);
	bool (*eventFilter)(VirtualQPrintPreviewDialog* self, QObject* param1, QEvent* param2);
	int (*devType)(const VirtualQPrintPreviewDialog* self);
	int (*heightForWidth)(const VirtualQPrintPreviewDialog* self, int param1);
	bool (*hasHeightForWidth)(const VirtualQPrintPreviewDialog* self);
	QPaintEngine* (*paintEngine)(const VirtualQPrintPreviewDialog* self);
	bool (*event)(VirtualQPrintPreviewDialog* self, QEvent* event);
	void (*mousePressEvent)(VirtualQPrintPreviewDialog* self, QMouseEvent* event);
	void (*mouseReleaseEvent)(VirtualQPrintPreviewDialog* self, QMouseEvent* event);
	void (*mouseDoubleClickEvent)(VirtualQPrintPreviewDialog* self, QMouseEvent* event);
	void (*mouseMoveEvent)(VirtualQPrintPreviewDialog* self, QMouseEvent* event);
	void (*wheelEvent)(VirtualQPrintPreviewDialog* self, QWheelEvent* event);
	void (*keyReleaseEvent)(VirtualQPrintPreviewDialog* self, QKeyEvent* event);
	void (*focusInEvent)(VirtualQPrintPreviewDialog* self, QFocusEvent* event);
	void (*focusOutEvent)(VirtualQPrintPreviewDialog* self, QFocusEvent* event);
	void (*enterEvent)(VirtualQPrintPreviewDialog* self, QEnterEvent* event);
	void (*leaveEvent)(VirtualQPrintPreviewDialog* self, QEvent* event);
	void (*paintEvent)(VirtualQPrintPreviewDialog* self, QPaintEvent* event);
	void (*moveEvent)(VirtualQPrintPreviewDialog* self, QMoveEvent* event);
	void (*tabletEvent)(VirtualQPrintPreviewDialog* self, QTabletEvent* event);
	void (*actionEvent)(VirtualQPrintPreviewDialog* self, QActionEvent* event);
	void (*dragEnterEvent)(VirtualQPrintPreviewDialog* self, QDragEnterEvent* event);
	void (*dragMoveEvent)(VirtualQPrintPreviewDialog* self, QDragMoveEvent* event);
	void (*dragLeaveEvent)(VirtualQPrintPreviewDialog* self, QDragLeaveEvent* event);
	void (*dropEvent)(VirtualQPrintPreviewDialog* self, QDropEvent* event);
	void (*hideEvent)(VirtualQPrintPreviewDialog* self, QHideEvent* event);
	bool (*nativeEvent)(VirtualQPrintPreviewDialog* self, struct miqt_string eventType, void* message, intptr_t* result);
	void (*changeEvent)(VirtualQPrintPreviewDialog* self, QEvent* param1);
	int (*metric)(const VirtualQPrintPreviewDialog* self, int param1);
	void (*initPainter)(const VirtualQPrintPreviewDialog* self, QPainter* painter);
	QPaintDevice* (*redirected)(const VirtualQPrintPreviewDialog* self, QPoint* offset);
	QPainter* (*sharedPainter)(const VirtualQPrintPreviewDialog* self);
	void (*inputMethodEvent)(VirtualQPrintPreviewDialog* self, QInputMethodEvent* param1);
	QVariant* (*inputMethodQuery)(const VirtualQPrintPreviewDialog* self, int param1);
	bool (*focusNextPrevChild)(VirtualQPrintPreviewDialog* self, bool next);
	void (*timerEvent)(VirtualQPrintPreviewDialog* self, QTimerEvent* event);
	void (*childEvent)(VirtualQPrintPreviewDialog* self, QChildEvent* event);
	void (*customEvent)(VirtualQPrintPreviewDialog* self, QEvent* event);
	void (*connectNotify)(VirtualQPrintPreviewDialog* self, QMetaMethod* signal);
	void (*disconnectNotify)(VirtualQPrintPreviewDialog* self, QMetaMethod* signal);
}QPrintPreviewDialog_VTable;

const QPrintPreviewDialog_VTable* QPrintPreviewDialog_vtbl(const VirtualQPrintPreviewDialog* self);
void* QPrintPreviewDialog_vdata(const VirtualQPrintPreviewDialog* self);
void QPrintPreviewDialog_setVdata(VirtualQPrintPreviewDialog* self, void* vdata);

VirtualQPrintPreviewDialog* QPrintPreviewDialog_new(const QPrintPreviewDialog_VTable* vtbl, void* vdata, QWidget* parent);
VirtualQPrintPreviewDialog* QPrintPreviewDialog_new2(const QPrintPreviewDialog_VTable* vtbl, void* vdata);
VirtualQPrintPreviewDialog* QPrintPreviewDialog_new3(const QPrintPreviewDialog_VTable* vtbl, void* vdata, QPrinter* printer);
VirtualQPrintPreviewDialog* QPrintPreviewDialog_new4(const QPrintPreviewDialog_VTable* vtbl, void* vdata, QWidget* parent, int flags);
VirtualQPrintPreviewDialog* QPrintPreviewDialog_new5(const QPrintPreviewDialog_VTable* vtbl, void* vdata, QPrinter* printer, QWidget* parent);
VirtualQPrintPreviewDialog* QPrintPreviewDialog_new6(const QPrintPreviewDialog_VTable* vtbl, void* vdata, QPrinter* printer, QWidget* parent, int flags);

void QPrintPreviewDialog_virtbase(QPrintPreviewDialog* src, QDialog** outptr_QDialog);
QMetaObject* QPrintPreviewDialog_metaObject(const QPrintPreviewDialog* self);
void* QPrintPreviewDialog_metacast(QPrintPreviewDialog* self, const char* param1);
int QPrintPreviewDialog_metacall(QPrintPreviewDialog* self, int param1, int param2, void** param3);
struct miqt_string QPrintPreviewDialog_tr(const char* s);
QPrinter* QPrintPreviewDialog_printer(QPrintPreviewDialog* self);
void QPrintPreviewDialog_setVisible(QPrintPreviewDialog* self, bool visible);
void QPrintPreviewDialog_done(QPrintPreviewDialog* self, int result);
void QPrintPreviewDialog_paintRequested(QPrintPreviewDialog* self, QPrinter* printer);
void QPrintPreviewDialog_connect_paintRequested(VirtualQPrintPreviewDialog* self, intptr_t slot, void (*callback)(intptr_t, QPrinter*), void (*release)(intptr_t));
struct miqt_string QPrintPreviewDialog_tr2(const char* s, const char* c);
struct miqt_string QPrintPreviewDialog_tr3(const char* s, const char* c, int n);

QMetaObject* QPrintPreviewDialog_virtualbase_metaObject(const VirtualQPrintPreviewDialog* self);
void* QPrintPreviewDialog_virtualbase_metacast(VirtualQPrintPreviewDialog* self, const char* param1);
int QPrintPreviewDialog_virtualbase_metacall(VirtualQPrintPreviewDialog* self, int param1, int param2, void** param3);
void QPrintPreviewDialog_virtualbase_setVisible(VirtualQPrintPreviewDialog* self, bool visible);
void QPrintPreviewDialog_virtualbase_done(VirtualQPrintPreviewDialog* self, int result);
QSize* QPrintPreviewDialog_virtualbase_sizeHint(const VirtualQPrintPreviewDialog* self);
QSize* QPrintPreviewDialog_virtualbase_minimumSizeHint(const VirtualQPrintPreviewDialog* self);
void QPrintPreviewDialog_virtualbase_open(VirtualQPrintPreviewDialog* self);
int QPrintPreviewDialog_virtualbase_exec(VirtualQPrintPreviewDialog* self);
void QPrintPreviewDialog_virtualbase_accept(VirtualQPrintPreviewDialog* self);
void QPrintPreviewDialog_virtualbase_reject(VirtualQPrintPreviewDialog* self);
void QPrintPreviewDialog_virtualbase_keyPressEvent(VirtualQPrintPreviewDialog* self, QKeyEvent* param1);
void QPrintPreviewDialog_virtualbase_closeEvent(VirtualQPrintPreviewDialog* self, QCloseEvent* param1);
void QPrintPreviewDialog_virtualbase_showEvent(VirtualQPrintPreviewDialog* self, QShowEvent* param1);
void QPrintPreviewDialog_virtualbase_resizeEvent(VirtualQPrintPreviewDialog* self, QResizeEvent* param1);
void QPrintPreviewDialog_virtualbase_contextMenuEvent(VirtualQPrintPreviewDialog* self, QContextMenuEvent* param1);
bool QPrintPreviewDialog_virtualbase_eventFilter(VirtualQPrintPreviewDialog* self, QObject* param1, QEvent* param2);
int QPrintPreviewDialog_virtualbase_devType(const VirtualQPrintPreviewDialog* self);
int QPrintPreviewDialog_virtualbase_heightForWidth(const VirtualQPrintPreviewDialog* self, int param1);
bool QPrintPreviewDialog_virtualbase_hasHeightForWidth(const VirtualQPrintPreviewDialog* self);
QPaintEngine* QPrintPreviewDialog_virtualbase_paintEngine(const VirtualQPrintPreviewDialog* self);
bool QPrintPreviewDialog_virtualbase_event(VirtualQPrintPreviewDialog* self, QEvent* event);
void QPrintPreviewDialog_virtualbase_mousePressEvent(VirtualQPrintPreviewDialog* self, QMouseEvent* event);
void QPrintPreviewDialog_virtualbase_mouseReleaseEvent(VirtualQPrintPreviewDialog* self, QMouseEvent* event);
void QPrintPreviewDialog_virtualbase_mouseDoubleClickEvent(VirtualQPrintPreviewDialog* self, QMouseEvent* event);
void QPrintPreviewDialog_virtualbase_mouseMoveEvent(VirtualQPrintPreviewDialog* self, QMouseEvent* event);
void QPrintPreviewDialog_virtualbase_wheelEvent(VirtualQPrintPreviewDialog* self, QWheelEvent* event);
void QPrintPreviewDialog_virtualbase_keyReleaseEvent(VirtualQPrintPreviewDialog* self, QKeyEvent* event);
void QPrintPreviewDialog_virtualbase_focusInEvent(VirtualQPrintPreviewDialog* self, QFocusEvent* event);
void QPrintPreviewDialog_virtualbase_focusOutEvent(VirtualQPrintPreviewDialog* self, QFocusEvent* event);
void QPrintPreviewDialog_virtualbase_enterEvent(VirtualQPrintPreviewDialog* self, QEnterEvent* event);
void QPrintPreviewDialog_virtualbase_leaveEvent(VirtualQPrintPreviewDialog* self, QEvent* event);
void QPrintPreviewDialog_virtualbase_paintEvent(VirtualQPrintPreviewDialog* self, QPaintEvent* event);
void QPrintPreviewDialog_virtualbase_moveEvent(VirtualQPrintPreviewDialog* self, QMoveEvent* event);
void QPrintPreviewDialog_virtualbase_tabletEvent(VirtualQPrintPreviewDialog* self, QTabletEvent* event);
void QPrintPreviewDialog_virtualbase_actionEvent(VirtualQPrintPreviewDialog* self, QActionEvent* event);
void QPrintPreviewDialog_virtualbase_dragEnterEvent(VirtualQPrintPreviewDialog* self, QDragEnterEvent* event);
void QPrintPreviewDialog_virtualbase_dragMoveEvent(VirtualQPrintPreviewDialog* self, QDragMoveEvent* event);
void QPrintPreviewDialog_virtualbase_dragLeaveEvent(VirtualQPrintPreviewDialog* self, QDragLeaveEvent* event);
void QPrintPreviewDialog_virtualbase_dropEvent(VirtualQPrintPreviewDialog* self, QDropEvent* event);
void QPrintPreviewDialog_virtualbase_hideEvent(VirtualQPrintPreviewDialog* self, QHideEvent* event);
bool QPrintPreviewDialog_virtualbase_nativeEvent(VirtualQPrintPreviewDialog* self, struct miqt_string eventType, void* message, intptr_t* result);
void QPrintPreviewDialog_virtualbase_changeEvent(VirtualQPrintPreviewDialog* self, QEvent* param1);
int QPrintPreviewDialog_virtualbase_metric(const VirtualQPrintPreviewDialog* self, int param1);
void QPrintPreviewDialog_virtualbase_initPainter(const VirtualQPrintPreviewDialog* self, QPainter* painter);
QPaintDevice* QPrintPreviewDialog_virtualbase_redirected(const VirtualQPrintPreviewDialog* self, QPoint* offset);
QPainter* QPrintPreviewDialog_virtualbase_sharedPainter(const VirtualQPrintPreviewDialog* self);
void QPrintPreviewDialog_virtualbase_inputMethodEvent(VirtualQPrintPreviewDialog* self, QInputMethodEvent* param1);
QVariant* QPrintPreviewDialog_virtualbase_inputMethodQuery(const VirtualQPrintPreviewDialog* self, int param1);
bool QPrintPreviewDialog_virtualbase_focusNextPrevChild(VirtualQPrintPreviewDialog* self, bool next);
void QPrintPreviewDialog_virtualbase_timerEvent(VirtualQPrintPreviewDialog* self, QTimerEvent* event);
void QPrintPreviewDialog_virtualbase_childEvent(VirtualQPrintPreviewDialog* self, QChildEvent* event);
void QPrintPreviewDialog_virtualbase_customEvent(VirtualQPrintPreviewDialog* self, QEvent* event);
void QPrintPreviewDialog_virtualbase_connectNotify(VirtualQPrintPreviewDialog* self, QMetaMethod* signal);
void QPrintPreviewDialog_virtualbase_disconnectNotify(VirtualQPrintPreviewDialog* self, QMetaMethod* signal);

void QPrintPreviewDialog_protectedbase_adjustPosition(VirtualQPrintPreviewDialog* self, QWidget* param1);
void QPrintPreviewDialog_protectedbase_updateMicroFocus(VirtualQPrintPreviewDialog* self);
void QPrintPreviewDialog_protectedbase_create(VirtualQPrintPreviewDialog* self);
void QPrintPreviewDialog_protectedbase_destroy(VirtualQPrintPreviewDialog* self);
bool QPrintPreviewDialog_protectedbase_focusNextChild(VirtualQPrintPreviewDialog* self);
bool QPrintPreviewDialog_protectedbase_focusPreviousChild(VirtualQPrintPreviewDialog* self);
QObject* QPrintPreviewDialog_protectedbase_sender(const VirtualQPrintPreviewDialog* self);
int QPrintPreviewDialog_protectedbase_senderSignalIndex(const VirtualQPrintPreviewDialog* self);
int QPrintPreviewDialog_protectedbase_receivers(const VirtualQPrintPreviewDialog* self, const char* signal);
bool QPrintPreviewDialog_protectedbase_isSignalConnected(const VirtualQPrintPreviewDialog* self, QMetaMethod* signal);

const QMetaObject* QPrintPreviewDialog_staticMetaObject();
void QPrintPreviewDialog_delete(QPrintPreviewDialog* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
