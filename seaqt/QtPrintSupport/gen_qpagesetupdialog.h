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

struct QPageSetupDialog_VTable {
	void (*destructor)(struct QPageSetupDialog_VTable* vtbl, QPageSetupDialog* self);
	QMetaObject* (*metaObject)(struct QPageSetupDialog_VTable* vtbl, const QPageSetupDialog* self);
	void* (*metacast)(struct QPageSetupDialog_VTable* vtbl, QPageSetupDialog* self, const char* param1);
	int (*metacall)(struct QPageSetupDialog_VTable* vtbl, QPageSetupDialog* self, int param1, int param2, void** param3);
	int (*exec)(struct QPageSetupDialog_VTable* vtbl, QPageSetupDialog* self);
	void (*done)(struct QPageSetupDialog_VTable* vtbl, QPageSetupDialog* self, int result);
	void (*setVisible)(struct QPageSetupDialog_VTable* vtbl, QPageSetupDialog* self, bool visible);
	QSize* (*sizeHint)(struct QPageSetupDialog_VTable* vtbl, const QPageSetupDialog* self);
	QSize* (*minimumSizeHint)(struct QPageSetupDialog_VTable* vtbl, const QPageSetupDialog* self);
	void (*open)(struct QPageSetupDialog_VTable* vtbl, QPageSetupDialog* self);
	void (*accept)(struct QPageSetupDialog_VTable* vtbl, QPageSetupDialog* self);
	void (*reject)(struct QPageSetupDialog_VTable* vtbl, QPageSetupDialog* self);
	void (*keyPressEvent)(struct QPageSetupDialog_VTable* vtbl, QPageSetupDialog* self, QKeyEvent* param1);
	void (*closeEvent)(struct QPageSetupDialog_VTable* vtbl, QPageSetupDialog* self, QCloseEvent* param1);
	void (*showEvent)(struct QPageSetupDialog_VTable* vtbl, QPageSetupDialog* self, QShowEvent* param1);
	void (*resizeEvent)(struct QPageSetupDialog_VTable* vtbl, QPageSetupDialog* self, QResizeEvent* param1);
	void (*contextMenuEvent)(struct QPageSetupDialog_VTable* vtbl, QPageSetupDialog* self, QContextMenuEvent* param1);
	bool (*eventFilter)(struct QPageSetupDialog_VTable* vtbl, QPageSetupDialog* self, QObject* param1, QEvent* param2);
	int (*devType)(struct QPageSetupDialog_VTable* vtbl, const QPageSetupDialog* self);
	int (*heightForWidth)(struct QPageSetupDialog_VTable* vtbl, const QPageSetupDialog* self, int param1);
	bool (*hasHeightForWidth)(struct QPageSetupDialog_VTable* vtbl, const QPageSetupDialog* self);
	QPaintEngine* (*paintEngine)(struct QPageSetupDialog_VTable* vtbl, const QPageSetupDialog* self);
	bool (*event)(struct QPageSetupDialog_VTable* vtbl, QPageSetupDialog* self, QEvent* event);
	void (*mousePressEvent)(struct QPageSetupDialog_VTable* vtbl, QPageSetupDialog* self, QMouseEvent* event);
	void (*mouseReleaseEvent)(struct QPageSetupDialog_VTable* vtbl, QPageSetupDialog* self, QMouseEvent* event);
	void (*mouseDoubleClickEvent)(struct QPageSetupDialog_VTable* vtbl, QPageSetupDialog* self, QMouseEvent* event);
	void (*mouseMoveEvent)(struct QPageSetupDialog_VTable* vtbl, QPageSetupDialog* self, QMouseEvent* event);
	void (*wheelEvent)(struct QPageSetupDialog_VTable* vtbl, QPageSetupDialog* self, QWheelEvent* event);
	void (*keyReleaseEvent)(struct QPageSetupDialog_VTable* vtbl, QPageSetupDialog* self, QKeyEvent* event);
	void (*focusInEvent)(struct QPageSetupDialog_VTable* vtbl, QPageSetupDialog* self, QFocusEvent* event);
	void (*focusOutEvent)(struct QPageSetupDialog_VTable* vtbl, QPageSetupDialog* self, QFocusEvent* event);
	void (*enterEvent)(struct QPageSetupDialog_VTable* vtbl, QPageSetupDialog* self, QEnterEvent* event);
	void (*leaveEvent)(struct QPageSetupDialog_VTable* vtbl, QPageSetupDialog* self, QEvent* event);
	void (*paintEvent)(struct QPageSetupDialog_VTable* vtbl, QPageSetupDialog* self, QPaintEvent* event);
	void (*moveEvent)(struct QPageSetupDialog_VTable* vtbl, QPageSetupDialog* self, QMoveEvent* event);
	void (*tabletEvent)(struct QPageSetupDialog_VTable* vtbl, QPageSetupDialog* self, QTabletEvent* event);
	void (*actionEvent)(struct QPageSetupDialog_VTable* vtbl, QPageSetupDialog* self, QActionEvent* event);
	void (*dragEnterEvent)(struct QPageSetupDialog_VTable* vtbl, QPageSetupDialog* self, QDragEnterEvent* event);
	void (*dragMoveEvent)(struct QPageSetupDialog_VTable* vtbl, QPageSetupDialog* self, QDragMoveEvent* event);
	void (*dragLeaveEvent)(struct QPageSetupDialog_VTable* vtbl, QPageSetupDialog* self, QDragLeaveEvent* event);
	void (*dropEvent)(struct QPageSetupDialog_VTable* vtbl, QPageSetupDialog* self, QDropEvent* event);
	void (*hideEvent)(struct QPageSetupDialog_VTable* vtbl, QPageSetupDialog* self, QHideEvent* event);
	bool (*nativeEvent)(struct QPageSetupDialog_VTable* vtbl, QPageSetupDialog* self, struct miqt_string eventType, void* message, intptr_t* result);
	void (*changeEvent)(struct QPageSetupDialog_VTable* vtbl, QPageSetupDialog* self, QEvent* param1);
	int (*metric)(struct QPageSetupDialog_VTable* vtbl, const QPageSetupDialog* self, int param1);
	void (*initPainter)(struct QPageSetupDialog_VTable* vtbl, const QPageSetupDialog* self, QPainter* painter);
	QPaintDevice* (*redirected)(struct QPageSetupDialog_VTable* vtbl, const QPageSetupDialog* self, QPoint* offset);
	QPainter* (*sharedPainter)(struct QPageSetupDialog_VTable* vtbl, const QPageSetupDialog* self);
	void (*inputMethodEvent)(struct QPageSetupDialog_VTable* vtbl, QPageSetupDialog* self, QInputMethodEvent* param1);
	QVariant* (*inputMethodQuery)(struct QPageSetupDialog_VTable* vtbl, const QPageSetupDialog* self, int param1);
	bool (*focusNextPrevChild)(struct QPageSetupDialog_VTable* vtbl, QPageSetupDialog* self, bool next);
	void (*timerEvent)(struct QPageSetupDialog_VTable* vtbl, QPageSetupDialog* self, QTimerEvent* event);
	void (*childEvent)(struct QPageSetupDialog_VTable* vtbl, QPageSetupDialog* self, QChildEvent* event);
	void (*customEvent)(struct QPageSetupDialog_VTable* vtbl, QPageSetupDialog* self, QEvent* event);
	void (*connectNotify)(struct QPageSetupDialog_VTable* vtbl, QPageSetupDialog* self, QMetaMethod* signal);
	void (*disconnectNotify)(struct QPageSetupDialog_VTable* vtbl, QPageSetupDialog* self, QMetaMethod* signal);
};
QPageSetupDialog* QPageSetupDialog_new(struct QPageSetupDialog_VTable* vtbl, QWidget* parent);
QPageSetupDialog* QPageSetupDialog_new2(struct QPageSetupDialog_VTable* vtbl, QPrinter* printer);
QPageSetupDialog* QPageSetupDialog_new3(struct QPageSetupDialog_VTable* vtbl);
QPageSetupDialog* QPageSetupDialog_new4(struct QPageSetupDialog_VTable* vtbl, QPrinter* printer, QWidget* parent);
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
QMetaObject* QPageSetupDialog_virtualbase_metaObject(const void* self);
void* QPageSetupDialog_virtualbase_metacast(void* self, const char* param1);
int QPageSetupDialog_virtualbase_metacall(void* self, int param1, int param2, void** param3);
int QPageSetupDialog_virtualbase_exec(void* self);
void QPageSetupDialog_virtualbase_done(void* self, int result);
void QPageSetupDialog_virtualbase_setVisible(void* self, bool visible);
QSize* QPageSetupDialog_virtualbase_sizeHint(const void* self);
QSize* QPageSetupDialog_virtualbase_minimumSizeHint(const void* self);
void QPageSetupDialog_virtualbase_open(void* self);
void QPageSetupDialog_virtualbase_accept(void* self);
void QPageSetupDialog_virtualbase_reject(void* self);
void QPageSetupDialog_virtualbase_keyPressEvent(void* self, QKeyEvent* param1);
void QPageSetupDialog_virtualbase_closeEvent(void* self, QCloseEvent* param1);
void QPageSetupDialog_virtualbase_showEvent(void* self, QShowEvent* param1);
void QPageSetupDialog_virtualbase_resizeEvent(void* self, QResizeEvent* param1);
void QPageSetupDialog_virtualbase_contextMenuEvent(void* self, QContextMenuEvent* param1);
bool QPageSetupDialog_virtualbase_eventFilter(void* self, QObject* param1, QEvent* param2);
int QPageSetupDialog_virtualbase_devType(const void* self);
int QPageSetupDialog_virtualbase_heightForWidth(const void* self, int param1);
bool QPageSetupDialog_virtualbase_hasHeightForWidth(const void* self);
QPaintEngine* QPageSetupDialog_virtualbase_paintEngine(const void* self);
bool QPageSetupDialog_virtualbase_event(void* self, QEvent* event);
void QPageSetupDialog_virtualbase_mousePressEvent(void* self, QMouseEvent* event);
void QPageSetupDialog_virtualbase_mouseReleaseEvent(void* self, QMouseEvent* event);
void QPageSetupDialog_virtualbase_mouseDoubleClickEvent(void* self, QMouseEvent* event);
void QPageSetupDialog_virtualbase_mouseMoveEvent(void* self, QMouseEvent* event);
void QPageSetupDialog_virtualbase_wheelEvent(void* self, QWheelEvent* event);
void QPageSetupDialog_virtualbase_keyReleaseEvent(void* self, QKeyEvent* event);
void QPageSetupDialog_virtualbase_focusInEvent(void* self, QFocusEvent* event);
void QPageSetupDialog_virtualbase_focusOutEvent(void* self, QFocusEvent* event);
void QPageSetupDialog_virtualbase_enterEvent(void* self, QEnterEvent* event);
void QPageSetupDialog_virtualbase_leaveEvent(void* self, QEvent* event);
void QPageSetupDialog_virtualbase_paintEvent(void* self, QPaintEvent* event);
void QPageSetupDialog_virtualbase_moveEvent(void* self, QMoveEvent* event);
void QPageSetupDialog_virtualbase_tabletEvent(void* self, QTabletEvent* event);
void QPageSetupDialog_virtualbase_actionEvent(void* self, QActionEvent* event);
void QPageSetupDialog_virtualbase_dragEnterEvent(void* self, QDragEnterEvent* event);
void QPageSetupDialog_virtualbase_dragMoveEvent(void* self, QDragMoveEvent* event);
void QPageSetupDialog_virtualbase_dragLeaveEvent(void* self, QDragLeaveEvent* event);
void QPageSetupDialog_virtualbase_dropEvent(void* self, QDropEvent* event);
void QPageSetupDialog_virtualbase_hideEvent(void* self, QHideEvent* event);
bool QPageSetupDialog_virtualbase_nativeEvent(void* self, struct miqt_string eventType, void* message, intptr_t* result);
void QPageSetupDialog_virtualbase_changeEvent(void* self, QEvent* param1);
int QPageSetupDialog_virtualbase_metric(const void* self, int param1);
void QPageSetupDialog_virtualbase_initPainter(const void* self, QPainter* painter);
QPaintDevice* QPageSetupDialog_virtualbase_redirected(const void* self, QPoint* offset);
QPainter* QPageSetupDialog_virtualbase_sharedPainter(const void* self);
void QPageSetupDialog_virtualbase_inputMethodEvent(void* self, QInputMethodEvent* param1);
QVariant* QPageSetupDialog_virtualbase_inputMethodQuery(const void* self, int param1);
bool QPageSetupDialog_virtualbase_focusNextPrevChild(void* self, bool next);
void QPageSetupDialog_virtualbase_timerEvent(void* self, QTimerEvent* event);
void QPageSetupDialog_virtualbase_childEvent(void* self, QChildEvent* event);
void QPageSetupDialog_virtualbase_customEvent(void* self, QEvent* event);
void QPageSetupDialog_virtualbase_connectNotify(void* self, QMetaMethod* signal);
void QPageSetupDialog_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);
void QPageSetupDialog_protectedbase_adjustPosition(void* self, QWidget* param1);
void QPageSetupDialog_protectedbase_updateMicroFocus(void* self);
void QPageSetupDialog_protectedbase_create(void* self);
void QPageSetupDialog_protectedbase_destroy(void* self);
bool QPageSetupDialog_protectedbase_focusNextChild(void* self);
bool QPageSetupDialog_protectedbase_focusPreviousChild(void* self);
QObject* QPageSetupDialog_protectedbase_sender(const void* self);
int QPageSetupDialog_protectedbase_senderSignalIndex(const void* self);
int QPageSetupDialog_protectedbase_receivers(const void* self, const char* signal);
bool QPageSetupDialog_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal);
const QMetaObject* QPageSetupDialog_staticMetaObject();
void QPageSetupDialog_delete(QPageSetupDialog* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
