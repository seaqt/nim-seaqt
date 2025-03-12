#pragma once
#ifndef SEAQT_QTPRINTSUPPORT_GEN_QABSTRACTPRINTDIALOG_H
#define SEAQT_QTPRINTSUPPORT_GEN_QABSTRACTPRINTDIALOG_H

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

typedef struct VirtualQAbstractPrintDialog VirtualQAbstractPrintDialog;
typedef struct QAbstractPrintDialog_VTable{
	void (*destructor)(VirtualQAbstractPrintDialog* self);
	QMetaObject* (*metaObject)(const VirtualQAbstractPrintDialog* self);
	void* (*metacast)(VirtualQAbstractPrintDialog* self, const char* param1);
	int (*metacall)(VirtualQAbstractPrintDialog* self, int param1, int param2, void** param3);
	void (*setVisible)(VirtualQAbstractPrintDialog* self, bool visible);
	QSize* (*sizeHint)(const VirtualQAbstractPrintDialog* self);
	QSize* (*minimumSizeHint)(const VirtualQAbstractPrintDialog* self);
	void (*open)(VirtualQAbstractPrintDialog* self);
	int (*exec)(VirtualQAbstractPrintDialog* self);
	void (*done)(VirtualQAbstractPrintDialog* self, int param1);
	void (*accept)(VirtualQAbstractPrintDialog* self);
	void (*reject)(VirtualQAbstractPrintDialog* self);
	void (*keyPressEvent)(VirtualQAbstractPrintDialog* self, QKeyEvent* param1);
	void (*closeEvent)(VirtualQAbstractPrintDialog* self, QCloseEvent* param1);
	void (*showEvent)(VirtualQAbstractPrintDialog* self, QShowEvent* param1);
	void (*resizeEvent)(VirtualQAbstractPrintDialog* self, QResizeEvent* param1);
	void (*contextMenuEvent)(VirtualQAbstractPrintDialog* self, QContextMenuEvent* param1);
	bool (*eventFilter)(VirtualQAbstractPrintDialog* self, QObject* param1, QEvent* param2);
	int (*devType)(const VirtualQAbstractPrintDialog* self);
	int (*heightForWidth)(const VirtualQAbstractPrintDialog* self, int param1);
	bool (*hasHeightForWidth)(const VirtualQAbstractPrintDialog* self);
	QPaintEngine* (*paintEngine)(const VirtualQAbstractPrintDialog* self);
	bool (*event)(VirtualQAbstractPrintDialog* self, QEvent* event);
	void (*mousePressEvent)(VirtualQAbstractPrintDialog* self, QMouseEvent* event);
	void (*mouseReleaseEvent)(VirtualQAbstractPrintDialog* self, QMouseEvent* event);
	void (*mouseDoubleClickEvent)(VirtualQAbstractPrintDialog* self, QMouseEvent* event);
	void (*mouseMoveEvent)(VirtualQAbstractPrintDialog* self, QMouseEvent* event);
	void (*wheelEvent)(VirtualQAbstractPrintDialog* self, QWheelEvent* event);
	void (*keyReleaseEvent)(VirtualQAbstractPrintDialog* self, QKeyEvent* event);
	void (*focusInEvent)(VirtualQAbstractPrintDialog* self, QFocusEvent* event);
	void (*focusOutEvent)(VirtualQAbstractPrintDialog* self, QFocusEvent* event);
	void (*enterEvent)(VirtualQAbstractPrintDialog* self, QEnterEvent* event);
	void (*leaveEvent)(VirtualQAbstractPrintDialog* self, QEvent* event);
	void (*paintEvent)(VirtualQAbstractPrintDialog* self, QPaintEvent* event);
	void (*moveEvent)(VirtualQAbstractPrintDialog* self, QMoveEvent* event);
	void (*tabletEvent)(VirtualQAbstractPrintDialog* self, QTabletEvent* event);
	void (*actionEvent)(VirtualQAbstractPrintDialog* self, QActionEvent* event);
	void (*dragEnterEvent)(VirtualQAbstractPrintDialog* self, QDragEnterEvent* event);
	void (*dragMoveEvent)(VirtualQAbstractPrintDialog* self, QDragMoveEvent* event);
	void (*dragLeaveEvent)(VirtualQAbstractPrintDialog* self, QDragLeaveEvent* event);
	void (*dropEvent)(VirtualQAbstractPrintDialog* self, QDropEvent* event);
	void (*hideEvent)(VirtualQAbstractPrintDialog* self, QHideEvent* event);
	bool (*nativeEvent)(VirtualQAbstractPrintDialog* self, struct miqt_string eventType, void* message, intptr_t* result);
	void (*changeEvent)(VirtualQAbstractPrintDialog* self, QEvent* param1);
	int (*metric)(const VirtualQAbstractPrintDialog* self, int param1);
	void (*initPainter)(const VirtualQAbstractPrintDialog* self, QPainter* painter);
	QPaintDevice* (*redirected)(const VirtualQAbstractPrintDialog* self, QPoint* offset);
	QPainter* (*sharedPainter)(const VirtualQAbstractPrintDialog* self);
	void (*inputMethodEvent)(VirtualQAbstractPrintDialog* self, QInputMethodEvent* param1);
	QVariant* (*inputMethodQuery)(const VirtualQAbstractPrintDialog* self, int param1);
	bool (*focusNextPrevChild)(VirtualQAbstractPrintDialog* self, bool next);
	void (*timerEvent)(VirtualQAbstractPrintDialog* self, QTimerEvent* event);
	void (*childEvent)(VirtualQAbstractPrintDialog* self, QChildEvent* event);
	void (*customEvent)(VirtualQAbstractPrintDialog* self, QEvent* event);
	void (*connectNotify)(VirtualQAbstractPrintDialog* self, QMetaMethod* signal);
	void (*disconnectNotify)(VirtualQAbstractPrintDialog* self, QMetaMethod* signal);
}QAbstractPrintDialog_VTable;

const QAbstractPrintDialog_VTable* QAbstractPrintDialog_vtbl(const VirtualQAbstractPrintDialog* self);
void* QAbstractPrintDialog_vdata(const VirtualQAbstractPrintDialog* self);
void QAbstractPrintDialog_setVdata(VirtualQAbstractPrintDialog* self, void* vdata);

VirtualQAbstractPrintDialog* QAbstractPrintDialog_new(const QAbstractPrintDialog_VTable* vtbl, void* vdata, QPrinter* printer);
VirtualQAbstractPrintDialog* QAbstractPrintDialog_new2(const QAbstractPrintDialog_VTable* vtbl, void* vdata, QPrinter* printer, QWidget* parent);

void QAbstractPrintDialog_virtbase(QAbstractPrintDialog* src, QDialog** outptr_QDialog);
QMetaObject* QAbstractPrintDialog_metaObject(const QAbstractPrintDialog* self);
void* QAbstractPrintDialog_metacast(QAbstractPrintDialog* self, const char* param1);
int QAbstractPrintDialog_metacall(QAbstractPrintDialog* self, int param1, int param2, void** param3);
struct miqt_string QAbstractPrintDialog_tr(const char* s);
void QAbstractPrintDialog_setOptionTabs(QAbstractPrintDialog* self, struct miqt_array /* of QWidget* */  tabs);
void QAbstractPrintDialog_setPrintRange(QAbstractPrintDialog* self, int range);
int QAbstractPrintDialog_printRange(const QAbstractPrintDialog* self);
void QAbstractPrintDialog_setMinMax(QAbstractPrintDialog* self, int min, int max);
int QAbstractPrintDialog_minPage(const QAbstractPrintDialog* self);
int QAbstractPrintDialog_maxPage(const QAbstractPrintDialog* self);
void QAbstractPrintDialog_setFromTo(QAbstractPrintDialog* self, int fromPage, int toPage);
int QAbstractPrintDialog_fromPage(const QAbstractPrintDialog* self);
int QAbstractPrintDialog_toPage(const QAbstractPrintDialog* self);
QPrinter* QAbstractPrintDialog_printer(const QAbstractPrintDialog* self);
struct miqt_string QAbstractPrintDialog_tr2(const char* s, const char* c);
struct miqt_string QAbstractPrintDialog_tr3(const char* s, const char* c, int n);

QMetaObject* QAbstractPrintDialog_virtualbase_metaObject(const VirtualQAbstractPrintDialog* self);
void* QAbstractPrintDialog_virtualbase_metacast(VirtualQAbstractPrintDialog* self, const char* param1);
int QAbstractPrintDialog_virtualbase_metacall(VirtualQAbstractPrintDialog* self, int param1, int param2, void** param3);
void QAbstractPrintDialog_virtualbase_setVisible(VirtualQAbstractPrintDialog* self, bool visible);
QSize* QAbstractPrintDialog_virtualbase_sizeHint(const VirtualQAbstractPrintDialog* self);
QSize* QAbstractPrintDialog_virtualbase_minimumSizeHint(const VirtualQAbstractPrintDialog* self);
void QAbstractPrintDialog_virtualbase_open(VirtualQAbstractPrintDialog* self);
int QAbstractPrintDialog_virtualbase_exec(VirtualQAbstractPrintDialog* self);
void QAbstractPrintDialog_virtualbase_done(VirtualQAbstractPrintDialog* self, int param1);
void QAbstractPrintDialog_virtualbase_accept(VirtualQAbstractPrintDialog* self);
void QAbstractPrintDialog_virtualbase_reject(VirtualQAbstractPrintDialog* self);
void QAbstractPrintDialog_virtualbase_keyPressEvent(VirtualQAbstractPrintDialog* self, QKeyEvent* param1);
void QAbstractPrintDialog_virtualbase_closeEvent(VirtualQAbstractPrintDialog* self, QCloseEvent* param1);
void QAbstractPrintDialog_virtualbase_showEvent(VirtualQAbstractPrintDialog* self, QShowEvent* param1);
void QAbstractPrintDialog_virtualbase_resizeEvent(VirtualQAbstractPrintDialog* self, QResizeEvent* param1);
void QAbstractPrintDialog_virtualbase_contextMenuEvent(VirtualQAbstractPrintDialog* self, QContextMenuEvent* param1);
bool QAbstractPrintDialog_virtualbase_eventFilter(VirtualQAbstractPrintDialog* self, QObject* param1, QEvent* param2);
int QAbstractPrintDialog_virtualbase_devType(const VirtualQAbstractPrintDialog* self);
int QAbstractPrintDialog_virtualbase_heightForWidth(const VirtualQAbstractPrintDialog* self, int param1);
bool QAbstractPrintDialog_virtualbase_hasHeightForWidth(const VirtualQAbstractPrintDialog* self);
QPaintEngine* QAbstractPrintDialog_virtualbase_paintEngine(const VirtualQAbstractPrintDialog* self);
bool QAbstractPrintDialog_virtualbase_event(VirtualQAbstractPrintDialog* self, QEvent* event);
void QAbstractPrintDialog_virtualbase_mousePressEvent(VirtualQAbstractPrintDialog* self, QMouseEvent* event);
void QAbstractPrintDialog_virtualbase_mouseReleaseEvent(VirtualQAbstractPrintDialog* self, QMouseEvent* event);
void QAbstractPrintDialog_virtualbase_mouseDoubleClickEvent(VirtualQAbstractPrintDialog* self, QMouseEvent* event);
void QAbstractPrintDialog_virtualbase_mouseMoveEvent(VirtualQAbstractPrintDialog* self, QMouseEvent* event);
void QAbstractPrintDialog_virtualbase_wheelEvent(VirtualQAbstractPrintDialog* self, QWheelEvent* event);
void QAbstractPrintDialog_virtualbase_keyReleaseEvent(VirtualQAbstractPrintDialog* self, QKeyEvent* event);
void QAbstractPrintDialog_virtualbase_focusInEvent(VirtualQAbstractPrintDialog* self, QFocusEvent* event);
void QAbstractPrintDialog_virtualbase_focusOutEvent(VirtualQAbstractPrintDialog* self, QFocusEvent* event);
void QAbstractPrintDialog_virtualbase_enterEvent(VirtualQAbstractPrintDialog* self, QEnterEvent* event);
void QAbstractPrintDialog_virtualbase_leaveEvent(VirtualQAbstractPrintDialog* self, QEvent* event);
void QAbstractPrintDialog_virtualbase_paintEvent(VirtualQAbstractPrintDialog* self, QPaintEvent* event);
void QAbstractPrintDialog_virtualbase_moveEvent(VirtualQAbstractPrintDialog* self, QMoveEvent* event);
void QAbstractPrintDialog_virtualbase_tabletEvent(VirtualQAbstractPrintDialog* self, QTabletEvent* event);
void QAbstractPrintDialog_virtualbase_actionEvent(VirtualQAbstractPrintDialog* self, QActionEvent* event);
void QAbstractPrintDialog_virtualbase_dragEnterEvent(VirtualQAbstractPrintDialog* self, QDragEnterEvent* event);
void QAbstractPrintDialog_virtualbase_dragMoveEvent(VirtualQAbstractPrintDialog* self, QDragMoveEvent* event);
void QAbstractPrintDialog_virtualbase_dragLeaveEvent(VirtualQAbstractPrintDialog* self, QDragLeaveEvent* event);
void QAbstractPrintDialog_virtualbase_dropEvent(VirtualQAbstractPrintDialog* self, QDropEvent* event);
void QAbstractPrintDialog_virtualbase_hideEvent(VirtualQAbstractPrintDialog* self, QHideEvent* event);
bool QAbstractPrintDialog_virtualbase_nativeEvent(VirtualQAbstractPrintDialog* self, struct miqt_string eventType, void* message, intptr_t* result);
void QAbstractPrintDialog_virtualbase_changeEvent(VirtualQAbstractPrintDialog* self, QEvent* param1);
int QAbstractPrintDialog_virtualbase_metric(const VirtualQAbstractPrintDialog* self, int param1);
void QAbstractPrintDialog_virtualbase_initPainter(const VirtualQAbstractPrintDialog* self, QPainter* painter);
QPaintDevice* QAbstractPrintDialog_virtualbase_redirected(const VirtualQAbstractPrintDialog* self, QPoint* offset);
QPainter* QAbstractPrintDialog_virtualbase_sharedPainter(const VirtualQAbstractPrintDialog* self);
void QAbstractPrintDialog_virtualbase_inputMethodEvent(VirtualQAbstractPrintDialog* self, QInputMethodEvent* param1);
QVariant* QAbstractPrintDialog_virtualbase_inputMethodQuery(const VirtualQAbstractPrintDialog* self, int param1);
bool QAbstractPrintDialog_virtualbase_focusNextPrevChild(VirtualQAbstractPrintDialog* self, bool next);
void QAbstractPrintDialog_virtualbase_timerEvent(VirtualQAbstractPrintDialog* self, QTimerEvent* event);
void QAbstractPrintDialog_virtualbase_childEvent(VirtualQAbstractPrintDialog* self, QChildEvent* event);
void QAbstractPrintDialog_virtualbase_customEvent(VirtualQAbstractPrintDialog* self, QEvent* event);
void QAbstractPrintDialog_virtualbase_connectNotify(VirtualQAbstractPrintDialog* self, QMetaMethod* signal);
void QAbstractPrintDialog_virtualbase_disconnectNotify(VirtualQAbstractPrintDialog* self, QMetaMethod* signal);

void QAbstractPrintDialog_protectedbase_adjustPosition(VirtualQAbstractPrintDialog* self, QWidget* param1);
void QAbstractPrintDialog_protectedbase_updateMicroFocus(VirtualQAbstractPrintDialog* self);
void QAbstractPrintDialog_protectedbase_create(VirtualQAbstractPrintDialog* self);
void QAbstractPrintDialog_protectedbase_destroy(VirtualQAbstractPrintDialog* self);
bool QAbstractPrintDialog_protectedbase_focusNextChild(VirtualQAbstractPrintDialog* self);
bool QAbstractPrintDialog_protectedbase_focusPreviousChild(VirtualQAbstractPrintDialog* self);
QObject* QAbstractPrintDialog_protectedbase_sender(const VirtualQAbstractPrintDialog* self);
int QAbstractPrintDialog_protectedbase_senderSignalIndex(const VirtualQAbstractPrintDialog* self);
int QAbstractPrintDialog_protectedbase_receivers(const VirtualQAbstractPrintDialog* self, const char* signal);
bool QAbstractPrintDialog_protectedbase_isSignalConnected(const VirtualQAbstractPrintDialog* self, QMetaMethod* signal);

const QMetaObject* QAbstractPrintDialog_staticMetaObject();
void QAbstractPrintDialog_delete(QAbstractPrintDialog* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
