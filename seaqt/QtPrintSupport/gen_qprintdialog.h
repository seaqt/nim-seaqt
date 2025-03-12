#pragma once
#ifndef SEAQT_QTPRINTSUPPORT_GEN_QPRINTDIALOG_H
#define SEAQT_QTPRINTSUPPORT_GEN_QPRINTDIALOG_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt/libseaqt.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QAbstractPrintDialog;
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
class QPrintDialog;
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
typedef struct QAbstractPrintDialog QAbstractPrintDialog;
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
typedef struct QPrintDialog QPrintDialog;
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

typedef struct VirtualQPrintDialog VirtualQPrintDialog;
typedef struct QPrintDialog_VTable{
	void (*destructor)(VirtualQPrintDialog* self);
	QMetaObject* (*metaObject)(const VirtualQPrintDialog* self);
	void* (*metacast)(VirtualQPrintDialog* self, const char* param1);
	int (*metacall)(VirtualQPrintDialog* self, int param1, int param2, void** param3);
	int (*exec)(VirtualQPrintDialog* self);
	void (*accept)(VirtualQPrintDialog* self);
	void (*done)(VirtualQPrintDialog* self, int result);
	void (*setVisible)(VirtualQPrintDialog* self, bool visible);
	QSize* (*sizeHint)(const VirtualQPrintDialog* self);
	QSize* (*minimumSizeHint)(const VirtualQPrintDialog* self);
	void (*open)(VirtualQPrintDialog* self);
	void (*reject)(VirtualQPrintDialog* self);
	void (*keyPressEvent)(VirtualQPrintDialog* self, QKeyEvent* param1);
	void (*closeEvent)(VirtualQPrintDialog* self, QCloseEvent* param1);
	void (*showEvent)(VirtualQPrintDialog* self, QShowEvent* param1);
	void (*resizeEvent)(VirtualQPrintDialog* self, QResizeEvent* param1);
	void (*contextMenuEvent)(VirtualQPrintDialog* self, QContextMenuEvent* param1);
	bool (*eventFilter)(VirtualQPrintDialog* self, QObject* param1, QEvent* param2);
	int (*devType)(const VirtualQPrintDialog* self);
	int (*heightForWidth)(const VirtualQPrintDialog* self, int param1);
	bool (*hasHeightForWidth)(const VirtualQPrintDialog* self);
	QPaintEngine* (*paintEngine)(const VirtualQPrintDialog* self);
	bool (*event)(VirtualQPrintDialog* self, QEvent* event);
	void (*mousePressEvent)(VirtualQPrintDialog* self, QMouseEvent* event);
	void (*mouseReleaseEvent)(VirtualQPrintDialog* self, QMouseEvent* event);
	void (*mouseDoubleClickEvent)(VirtualQPrintDialog* self, QMouseEvent* event);
	void (*mouseMoveEvent)(VirtualQPrintDialog* self, QMouseEvent* event);
	void (*wheelEvent)(VirtualQPrintDialog* self, QWheelEvent* event);
	void (*keyReleaseEvent)(VirtualQPrintDialog* self, QKeyEvent* event);
	void (*focusInEvent)(VirtualQPrintDialog* self, QFocusEvent* event);
	void (*focusOutEvent)(VirtualQPrintDialog* self, QFocusEvent* event);
	void (*enterEvent)(VirtualQPrintDialog* self, QEnterEvent* event);
	void (*leaveEvent)(VirtualQPrintDialog* self, QEvent* event);
	void (*paintEvent)(VirtualQPrintDialog* self, QPaintEvent* event);
	void (*moveEvent)(VirtualQPrintDialog* self, QMoveEvent* event);
	void (*tabletEvent)(VirtualQPrintDialog* self, QTabletEvent* event);
	void (*actionEvent)(VirtualQPrintDialog* self, QActionEvent* event);
	void (*dragEnterEvent)(VirtualQPrintDialog* self, QDragEnterEvent* event);
	void (*dragMoveEvent)(VirtualQPrintDialog* self, QDragMoveEvent* event);
	void (*dragLeaveEvent)(VirtualQPrintDialog* self, QDragLeaveEvent* event);
	void (*dropEvent)(VirtualQPrintDialog* self, QDropEvent* event);
	void (*hideEvent)(VirtualQPrintDialog* self, QHideEvent* event);
	bool (*nativeEvent)(VirtualQPrintDialog* self, struct miqt_string eventType, void* message, intptr_t* result);
	void (*changeEvent)(VirtualQPrintDialog* self, QEvent* param1);
	int (*metric)(const VirtualQPrintDialog* self, int param1);
	void (*initPainter)(const VirtualQPrintDialog* self, QPainter* painter);
	QPaintDevice* (*redirected)(const VirtualQPrintDialog* self, QPoint* offset);
	QPainter* (*sharedPainter)(const VirtualQPrintDialog* self);
	void (*inputMethodEvent)(VirtualQPrintDialog* self, QInputMethodEvent* param1);
	QVariant* (*inputMethodQuery)(const VirtualQPrintDialog* self, int param1);
	bool (*focusNextPrevChild)(VirtualQPrintDialog* self, bool next);
	void (*timerEvent)(VirtualQPrintDialog* self, QTimerEvent* event);
	void (*childEvent)(VirtualQPrintDialog* self, QChildEvent* event);
	void (*customEvent)(VirtualQPrintDialog* self, QEvent* event);
	void (*connectNotify)(VirtualQPrintDialog* self, QMetaMethod* signal);
	void (*disconnectNotify)(VirtualQPrintDialog* self, QMetaMethod* signal);
}QPrintDialog_VTable;

const QPrintDialog_VTable* QPrintDialog_vtbl(const VirtualQPrintDialog* self);
void* QPrintDialog_vdata(const VirtualQPrintDialog* self);
void QPrintDialog_setVdata(VirtualQPrintDialog* self, void* vdata);

VirtualQPrintDialog* QPrintDialog_new(const QPrintDialog_VTable* vtbl, void* vdata, QWidget* parent);
VirtualQPrintDialog* QPrintDialog_new2(const QPrintDialog_VTable* vtbl, void* vdata, QPrinter* printer);
VirtualQPrintDialog* QPrintDialog_new3(const QPrintDialog_VTable* vtbl, void* vdata);
VirtualQPrintDialog* QPrintDialog_new4(const QPrintDialog_VTable* vtbl, void* vdata, QPrinter* printer, QWidget* parent);

void QPrintDialog_virtbase(QPrintDialog* src, QAbstractPrintDialog** outptr_QAbstractPrintDialog);
QMetaObject* QPrintDialog_metaObject(const QPrintDialog* self);
void* QPrintDialog_metacast(QPrintDialog* self, const char* param1);
int QPrintDialog_metacall(QPrintDialog* self, int param1, int param2, void** param3);
struct miqt_string QPrintDialog_tr(const char* s);
int QPrintDialog_exec(QPrintDialog* self);
void QPrintDialog_accept(QPrintDialog* self);
void QPrintDialog_done(QPrintDialog* self, int result);
void QPrintDialog_setOption(QPrintDialog* self, int option);
bool QPrintDialog_testOption(const QPrintDialog* self, int option);
void QPrintDialog_setOptions(QPrintDialog* self, int options);
int QPrintDialog_options(const QPrintDialog* self);
void QPrintDialog_setVisible(QPrintDialog* self, bool visible);
void QPrintDialog_accepted(QPrintDialog* self, QPrinter* printer);
void QPrintDialog_connect_accepted(VirtualQPrintDialog* self, intptr_t slot, void (*callback)(intptr_t, QPrinter*), void (*release)(intptr_t));
struct miqt_string QPrintDialog_tr2(const char* s, const char* c);
struct miqt_string QPrintDialog_tr3(const char* s, const char* c, int n);
void QPrintDialog_setOption2(QPrintDialog* self, int option, bool on);

QMetaObject* QPrintDialog_virtualbase_metaObject(const VirtualQPrintDialog* self);
void* QPrintDialog_virtualbase_metacast(VirtualQPrintDialog* self, const char* param1);
int QPrintDialog_virtualbase_metacall(VirtualQPrintDialog* self, int param1, int param2, void** param3);
int QPrintDialog_virtualbase_exec(VirtualQPrintDialog* self);
void QPrintDialog_virtualbase_accept(VirtualQPrintDialog* self);
void QPrintDialog_virtualbase_done(VirtualQPrintDialog* self, int result);
void QPrintDialog_virtualbase_setVisible(VirtualQPrintDialog* self, bool visible);
QSize* QPrintDialog_virtualbase_sizeHint(const VirtualQPrintDialog* self);
QSize* QPrintDialog_virtualbase_minimumSizeHint(const VirtualQPrintDialog* self);
void QPrintDialog_virtualbase_open(VirtualQPrintDialog* self);
void QPrintDialog_virtualbase_reject(VirtualQPrintDialog* self);
void QPrintDialog_virtualbase_keyPressEvent(VirtualQPrintDialog* self, QKeyEvent* param1);
void QPrintDialog_virtualbase_closeEvent(VirtualQPrintDialog* self, QCloseEvent* param1);
void QPrintDialog_virtualbase_showEvent(VirtualQPrintDialog* self, QShowEvent* param1);
void QPrintDialog_virtualbase_resizeEvent(VirtualQPrintDialog* self, QResizeEvent* param1);
void QPrintDialog_virtualbase_contextMenuEvent(VirtualQPrintDialog* self, QContextMenuEvent* param1);
bool QPrintDialog_virtualbase_eventFilter(VirtualQPrintDialog* self, QObject* param1, QEvent* param2);
int QPrintDialog_virtualbase_devType(const VirtualQPrintDialog* self);
int QPrintDialog_virtualbase_heightForWidth(const VirtualQPrintDialog* self, int param1);
bool QPrintDialog_virtualbase_hasHeightForWidth(const VirtualQPrintDialog* self);
QPaintEngine* QPrintDialog_virtualbase_paintEngine(const VirtualQPrintDialog* self);
bool QPrintDialog_virtualbase_event(VirtualQPrintDialog* self, QEvent* event);
void QPrintDialog_virtualbase_mousePressEvent(VirtualQPrintDialog* self, QMouseEvent* event);
void QPrintDialog_virtualbase_mouseReleaseEvent(VirtualQPrintDialog* self, QMouseEvent* event);
void QPrintDialog_virtualbase_mouseDoubleClickEvent(VirtualQPrintDialog* self, QMouseEvent* event);
void QPrintDialog_virtualbase_mouseMoveEvent(VirtualQPrintDialog* self, QMouseEvent* event);
void QPrintDialog_virtualbase_wheelEvent(VirtualQPrintDialog* self, QWheelEvent* event);
void QPrintDialog_virtualbase_keyReleaseEvent(VirtualQPrintDialog* self, QKeyEvent* event);
void QPrintDialog_virtualbase_focusInEvent(VirtualQPrintDialog* self, QFocusEvent* event);
void QPrintDialog_virtualbase_focusOutEvent(VirtualQPrintDialog* self, QFocusEvent* event);
void QPrintDialog_virtualbase_enterEvent(VirtualQPrintDialog* self, QEnterEvent* event);
void QPrintDialog_virtualbase_leaveEvent(VirtualQPrintDialog* self, QEvent* event);
void QPrintDialog_virtualbase_paintEvent(VirtualQPrintDialog* self, QPaintEvent* event);
void QPrintDialog_virtualbase_moveEvent(VirtualQPrintDialog* self, QMoveEvent* event);
void QPrintDialog_virtualbase_tabletEvent(VirtualQPrintDialog* self, QTabletEvent* event);
void QPrintDialog_virtualbase_actionEvent(VirtualQPrintDialog* self, QActionEvent* event);
void QPrintDialog_virtualbase_dragEnterEvent(VirtualQPrintDialog* self, QDragEnterEvent* event);
void QPrintDialog_virtualbase_dragMoveEvent(VirtualQPrintDialog* self, QDragMoveEvent* event);
void QPrintDialog_virtualbase_dragLeaveEvent(VirtualQPrintDialog* self, QDragLeaveEvent* event);
void QPrintDialog_virtualbase_dropEvent(VirtualQPrintDialog* self, QDropEvent* event);
void QPrintDialog_virtualbase_hideEvent(VirtualQPrintDialog* self, QHideEvent* event);
bool QPrintDialog_virtualbase_nativeEvent(VirtualQPrintDialog* self, struct miqt_string eventType, void* message, intptr_t* result);
void QPrintDialog_virtualbase_changeEvent(VirtualQPrintDialog* self, QEvent* param1);
int QPrintDialog_virtualbase_metric(const VirtualQPrintDialog* self, int param1);
void QPrintDialog_virtualbase_initPainter(const VirtualQPrintDialog* self, QPainter* painter);
QPaintDevice* QPrintDialog_virtualbase_redirected(const VirtualQPrintDialog* self, QPoint* offset);
QPainter* QPrintDialog_virtualbase_sharedPainter(const VirtualQPrintDialog* self);
void QPrintDialog_virtualbase_inputMethodEvent(VirtualQPrintDialog* self, QInputMethodEvent* param1);
QVariant* QPrintDialog_virtualbase_inputMethodQuery(const VirtualQPrintDialog* self, int param1);
bool QPrintDialog_virtualbase_focusNextPrevChild(VirtualQPrintDialog* self, bool next);
void QPrintDialog_virtualbase_timerEvent(VirtualQPrintDialog* self, QTimerEvent* event);
void QPrintDialog_virtualbase_childEvent(VirtualQPrintDialog* self, QChildEvent* event);
void QPrintDialog_virtualbase_customEvent(VirtualQPrintDialog* self, QEvent* event);
void QPrintDialog_virtualbase_connectNotify(VirtualQPrintDialog* self, QMetaMethod* signal);
void QPrintDialog_virtualbase_disconnectNotify(VirtualQPrintDialog* self, QMetaMethod* signal);

void QPrintDialog_protectedbase_adjustPosition(VirtualQPrintDialog* self, QWidget* param1);
void QPrintDialog_protectedbase_updateMicroFocus(VirtualQPrintDialog* self);
void QPrintDialog_protectedbase_create(VirtualQPrintDialog* self);
void QPrintDialog_protectedbase_destroy(VirtualQPrintDialog* self);
bool QPrintDialog_protectedbase_focusNextChild(VirtualQPrintDialog* self);
bool QPrintDialog_protectedbase_focusPreviousChild(VirtualQPrintDialog* self);
QObject* QPrintDialog_protectedbase_sender(const VirtualQPrintDialog* self);
int QPrintDialog_protectedbase_senderSignalIndex(const VirtualQPrintDialog* self);
int QPrintDialog_protectedbase_receivers(const VirtualQPrintDialog* self, const char* signal);
bool QPrintDialog_protectedbase_isSignalConnected(const VirtualQPrintDialog* self, QMetaMethod* signal);

const QMetaObject* QPrintDialog_staticMetaObject();
void QPrintDialog_delete(QPrintDialog* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
