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

struct QPrintDialog_VTable {
	void (*destructor)(struct QPrintDialog_VTable* vtbl, QPrintDialog* self);
	QMetaObject* (*metaObject)(struct QPrintDialog_VTable* vtbl, const QPrintDialog* self);
	void* (*metacast)(struct QPrintDialog_VTable* vtbl, QPrintDialog* self, const char* param1);
	int (*metacall)(struct QPrintDialog_VTable* vtbl, QPrintDialog* self, int param1, int param2, void** param3);
	int (*exec)(struct QPrintDialog_VTable* vtbl, QPrintDialog* self);
	void (*accept)(struct QPrintDialog_VTable* vtbl, QPrintDialog* self);
	void (*done)(struct QPrintDialog_VTable* vtbl, QPrintDialog* self, int result);
	void (*setVisible)(struct QPrintDialog_VTable* vtbl, QPrintDialog* self, bool visible);
	QSize* (*sizeHint)(struct QPrintDialog_VTable* vtbl, const QPrintDialog* self);
	QSize* (*minimumSizeHint)(struct QPrintDialog_VTable* vtbl, const QPrintDialog* self);
	void (*open)(struct QPrintDialog_VTable* vtbl, QPrintDialog* self);
	void (*reject)(struct QPrintDialog_VTable* vtbl, QPrintDialog* self);
	void (*keyPressEvent)(struct QPrintDialog_VTable* vtbl, QPrintDialog* self, QKeyEvent* param1);
	void (*closeEvent)(struct QPrintDialog_VTable* vtbl, QPrintDialog* self, QCloseEvent* param1);
	void (*showEvent)(struct QPrintDialog_VTable* vtbl, QPrintDialog* self, QShowEvent* param1);
	void (*resizeEvent)(struct QPrintDialog_VTable* vtbl, QPrintDialog* self, QResizeEvent* param1);
	void (*contextMenuEvent)(struct QPrintDialog_VTable* vtbl, QPrintDialog* self, QContextMenuEvent* param1);
	bool (*eventFilter)(struct QPrintDialog_VTable* vtbl, QPrintDialog* self, QObject* param1, QEvent* param2);
	int (*devType)(struct QPrintDialog_VTable* vtbl, const QPrintDialog* self);
	int (*heightForWidth)(struct QPrintDialog_VTable* vtbl, const QPrintDialog* self, int param1);
	bool (*hasHeightForWidth)(struct QPrintDialog_VTable* vtbl, const QPrintDialog* self);
	QPaintEngine* (*paintEngine)(struct QPrintDialog_VTable* vtbl, const QPrintDialog* self);
	bool (*event)(struct QPrintDialog_VTable* vtbl, QPrintDialog* self, QEvent* event);
	void (*mousePressEvent)(struct QPrintDialog_VTable* vtbl, QPrintDialog* self, QMouseEvent* event);
	void (*mouseReleaseEvent)(struct QPrintDialog_VTable* vtbl, QPrintDialog* self, QMouseEvent* event);
	void (*mouseDoubleClickEvent)(struct QPrintDialog_VTable* vtbl, QPrintDialog* self, QMouseEvent* event);
	void (*mouseMoveEvent)(struct QPrintDialog_VTable* vtbl, QPrintDialog* self, QMouseEvent* event);
	void (*wheelEvent)(struct QPrintDialog_VTable* vtbl, QPrintDialog* self, QWheelEvent* event);
	void (*keyReleaseEvent)(struct QPrintDialog_VTable* vtbl, QPrintDialog* self, QKeyEvent* event);
	void (*focusInEvent)(struct QPrintDialog_VTable* vtbl, QPrintDialog* self, QFocusEvent* event);
	void (*focusOutEvent)(struct QPrintDialog_VTable* vtbl, QPrintDialog* self, QFocusEvent* event);
	void (*enterEvent)(struct QPrintDialog_VTable* vtbl, QPrintDialog* self, QEvent* event);
	void (*leaveEvent)(struct QPrintDialog_VTable* vtbl, QPrintDialog* self, QEvent* event);
	void (*paintEvent)(struct QPrintDialog_VTable* vtbl, QPrintDialog* self, QPaintEvent* event);
	void (*moveEvent)(struct QPrintDialog_VTable* vtbl, QPrintDialog* self, QMoveEvent* event);
	void (*tabletEvent)(struct QPrintDialog_VTable* vtbl, QPrintDialog* self, QTabletEvent* event);
	void (*actionEvent)(struct QPrintDialog_VTable* vtbl, QPrintDialog* self, QActionEvent* event);
	void (*dragEnterEvent)(struct QPrintDialog_VTable* vtbl, QPrintDialog* self, QDragEnterEvent* event);
	void (*dragMoveEvent)(struct QPrintDialog_VTable* vtbl, QPrintDialog* self, QDragMoveEvent* event);
	void (*dragLeaveEvent)(struct QPrintDialog_VTable* vtbl, QPrintDialog* self, QDragLeaveEvent* event);
	void (*dropEvent)(struct QPrintDialog_VTable* vtbl, QPrintDialog* self, QDropEvent* event);
	void (*hideEvent)(struct QPrintDialog_VTable* vtbl, QPrintDialog* self, QHideEvent* event);
	bool (*nativeEvent)(struct QPrintDialog_VTable* vtbl, QPrintDialog* self, struct miqt_string eventType, void* message, long* result);
	void (*changeEvent)(struct QPrintDialog_VTable* vtbl, QPrintDialog* self, QEvent* param1);
	int (*metric)(struct QPrintDialog_VTable* vtbl, const QPrintDialog* self, int param1);
	void (*initPainter)(struct QPrintDialog_VTable* vtbl, const QPrintDialog* self, QPainter* painter);
	QPaintDevice* (*redirected)(struct QPrintDialog_VTable* vtbl, const QPrintDialog* self, QPoint* offset);
	QPainter* (*sharedPainter)(struct QPrintDialog_VTable* vtbl, const QPrintDialog* self);
	void (*inputMethodEvent)(struct QPrintDialog_VTable* vtbl, QPrintDialog* self, QInputMethodEvent* param1);
	QVariant* (*inputMethodQuery)(struct QPrintDialog_VTable* vtbl, const QPrintDialog* self, int param1);
	bool (*focusNextPrevChild)(struct QPrintDialog_VTable* vtbl, QPrintDialog* self, bool next);
	void (*timerEvent)(struct QPrintDialog_VTable* vtbl, QPrintDialog* self, QTimerEvent* event);
	void (*childEvent)(struct QPrintDialog_VTable* vtbl, QPrintDialog* self, QChildEvent* event);
	void (*customEvent)(struct QPrintDialog_VTable* vtbl, QPrintDialog* self, QEvent* event);
	void (*connectNotify)(struct QPrintDialog_VTable* vtbl, QPrintDialog* self, QMetaMethod* signal);
	void (*disconnectNotify)(struct QPrintDialog_VTable* vtbl, QPrintDialog* self, QMetaMethod* signal);
};
QPrintDialog* QPrintDialog_new(struct QPrintDialog_VTable* vtbl, QWidget* parent);
QPrintDialog* QPrintDialog_new2(struct QPrintDialog_VTable* vtbl, QPrinter* printer);
QPrintDialog* QPrintDialog_new3(struct QPrintDialog_VTable* vtbl);
QPrintDialog* QPrintDialog_new4(struct QPrintDialog_VTable* vtbl, QPrinter* printer, QWidget* parent);
void QPrintDialog_virtbase(QPrintDialog* src, QAbstractPrintDialog** outptr_QAbstractPrintDialog);
QMetaObject* QPrintDialog_metaObject(const QPrintDialog* self);
void* QPrintDialog_metacast(QPrintDialog* self, const char* param1);
int QPrintDialog_metacall(QPrintDialog* self, int param1, int param2, void** param3);
struct miqt_string QPrintDialog_tr(const char* s);
struct miqt_string QPrintDialog_trUtf8(const char* s);
int QPrintDialog_exec(QPrintDialog* self);
void QPrintDialog_accept(QPrintDialog* self);
void QPrintDialog_done(QPrintDialog* self, int result);
void QPrintDialog_setOption(QPrintDialog* self, int option);
bool QPrintDialog_testOption(const QPrintDialog* self, int option);
void QPrintDialog_setOptions(QPrintDialog* self, int options);
int QPrintDialog_options(const QPrintDialog* self);
void QPrintDialog_setVisible(QPrintDialog* self, bool visible);
void QPrintDialog_accepted(QPrintDialog* self, QPrinter* printer);
void QPrintDialog_connect_accepted(QPrintDialog* self, intptr_t slot, void (*callback)(intptr_t, QPrinter*), void (*release)(intptr_t));
struct miqt_string QPrintDialog_tr2(const char* s, const char* c);
struct miqt_string QPrintDialog_tr3(const char* s, const char* c, int n);
struct miqt_string QPrintDialog_trUtf82(const char* s, const char* c);
struct miqt_string QPrintDialog_trUtf83(const char* s, const char* c, int n);
void QPrintDialog_setOption2(QPrintDialog* self, int option, bool on);
QMetaObject* QPrintDialog_virtualbase_metaObject(const void* self);
void* QPrintDialog_virtualbase_metacast(void* self, const char* param1);
int QPrintDialog_virtualbase_metacall(void* self, int param1, int param2, void** param3);
int QPrintDialog_virtualbase_exec(void* self);
void QPrintDialog_virtualbase_accept(void* self);
void QPrintDialog_virtualbase_done(void* self, int result);
void QPrintDialog_virtualbase_setVisible(void* self, bool visible);
QSize* QPrintDialog_virtualbase_sizeHint(const void* self);
QSize* QPrintDialog_virtualbase_minimumSizeHint(const void* self);
void QPrintDialog_virtualbase_open(void* self);
void QPrintDialog_virtualbase_reject(void* self);
void QPrintDialog_virtualbase_keyPressEvent(void* self, QKeyEvent* param1);
void QPrintDialog_virtualbase_closeEvent(void* self, QCloseEvent* param1);
void QPrintDialog_virtualbase_showEvent(void* self, QShowEvent* param1);
void QPrintDialog_virtualbase_resizeEvent(void* self, QResizeEvent* param1);
void QPrintDialog_virtualbase_contextMenuEvent(void* self, QContextMenuEvent* param1);
bool QPrintDialog_virtualbase_eventFilter(void* self, QObject* param1, QEvent* param2);
int QPrintDialog_virtualbase_devType(const void* self);
int QPrintDialog_virtualbase_heightForWidth(const void* self, int param1);
bool QPrintDialog_virtualbase_hasHeightForWidth(const void* self);
QPaintEngine* QPrintDialog_virtualbase_paintEngine(const void* self);
bool QPrintDialog_virtualbase_event(void* self, QEvent* event);
void QPrintDialog_virtualbase_mousePressEvent(void* self, QMouseEvent* event);
void QPrintDialog_virtualbase_mouseReleaseEvent(void* self, QMouseEvent* event);
void QPrintDialog_virtualbase_mouseDoubleClickEvent(void* self, QMouseEvent* event);
void QPrintDialog_virtualbase_mouseMoveEvent(void* self, QMouseEvent* event);
void QPrintDialog_virtualbase_wheelEvent(void* self, QWheelEvent* event);
void QPrintDialog_virtualbase_keyReleaseEvent(void* self, QKeyEvent* event);
void QPrintDialog_virtualbase_focusInEvent(void* self, QFocusEvent* event);
void QPrintDialog_virtualbase_focusOutEvent(void* self, QFocusEvent* event);
void QPrintDialog_virtualbase_enterEvent(void* self, QEvent* event);
void QPrintDialog_virtualbase_leaveEvent(void* self, QEvent* event);
void QPrintDialog_virtualbase_paintEvent(void* self, QPaintEvent* event);
void QPrintDialog_virtualbase_moveEvent(void* self, QMoveEvent* event);
void QPrintDialog_virtualbase_tabletEvent(void* self, QTabletEvent* event);
void QPrintDialog_virtualbase_actionEvent(void* self, QActionEvent* event);
void QPrintDialog_virtualbase_dragEnterEvent(void* self, QDragEnterEvent* event);
void QPrintDialog_virtualbase_dragMoveEvent(void* self, QDragMoveEvent* event);
void QPrintDialog_virtualbase_dragLeaveEvent(void* self, QDragLeaveEvent* event);
void QPrintDialog_virtualbase_dropEvent(void* self, QDropEvent* event);
void QPrintDialog_virtualbase_hideEvent(void* self, QHideEvent* event);
bool QPrintDialog_virtualbase_nativeEvent(void* self, struct miqt_string eventType, void* message, long* result);
void QPrintDialog_virtualbase_changeEvent(void* self, QEvent* param1);
int QPrintDialog_virtualbase_metric(const void* self, int param1);
void QPrintDialog_virtualbase_initPainter(const void* self, QPainter* painter);
QPaintDevice* QPrintDialog_virtualbase_redirected(const void* self, QPoint* offset);
QPainter* QPrintDialog_virtualbase_sharedPainter(const void* self);
void QPrintDialog_virtualbase_inputMethodEvent(void* self, QInputMethodEvent* param1);
QVariant* QPrintDialog_virtualbase_inputMethodQuery(const void* self, int param1);
bool QPrintDialog_virtualbase_focusNextPrevChild(void* self, bool next);
void QPrintDialog_virtualbase_timerEvent(void* self, QTimerEvent* event);
void QPrintDialog_virtualbase_childEvent(void* self, QChildEvent* event);
void QPrintDialog_virtualbase_customEvent(void* self, QEvent* event);
void QPrintDialog_virtualbase_connectNotify(void* self, QMetaMethod* signal);
void QPrintDialog_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);
void QPrintDialog_protectedbase_adjustPosition(bool* _dynamic_cast_ok, void* self, QWidget* param1);
void QPrintDialog_protectedbase_updateMicroFocus(bool* _dynamic_cast_ok, void* self);
void QPrintDialog_protectedbase_create(bool* _dynamic_cast_ok, void* self);
void QPrintDialog_protectedbase_destroy(bool* _dynamic_cast_ok, void* self);
bool QPrintDialog_protectedbase_focusNextChild(bool* _dynamic_cast_ok, void* self);
bool QPrintDialog_protectedbase_focusPreviousChild(bool* _dynamic_cast_ok, void* self);
QObject* QPrintDialog_protectedbase_sender(bool* _dynamic_cast_ok, const void* self);
int QPrintDialog_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self);
int QPrintDialog_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal);
bool QPrintDialog_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal);
const QMetaObject* QPrintDialog_staticMetaObject();
void QPrintDialog_delete(QPrintDialog* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
