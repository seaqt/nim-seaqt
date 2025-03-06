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

struct QPrintPreviewDialog_VTable {
	void (*destructor)(struct QPrintPreviewDialog_VTable* vtbl, QPrintPreviewDialog* self);
	QMetaObject* (*metaObject)(struct QPrintPreviewDialog_VTable* vtbl, const QPrintPreviewDialog* self);
	void* (*metacast)(struct QPrintPreviewDialog_VTable* vtbl, QPrintPreviewDialog* self, const char* param1);
	int (*metacall)(struct QPrintPreviewDialog_VTable* vtbl, QPrintPreviewDialog* self, int param1, int param2, void** param3);
	void (*setVisible)(struct QPrintPreviewDialog_VTable* vtbl, QPrintPreviewDialog* self, bool visible);
	void (*done)(struct QPrintPreviewDialog_VTable* vtbl, QPrintPreviewDialog* self, int result);
	QSize* (*sizeHint)(struct QPrintPreviewDialog_VTable* vtbl, const QPrintPreviewDialog* self);
	QSize* (*minimumSizeHint)(struct QPrintPreviewDialog_VTable* vtbl, const QPrintPreviewDialog* self);
	void (*open)(struct QPrintPreviewDialog_VTable* vtbl, QPrintPreviewDialog* self);
	int (*exec)(struct QPrintPreviewDialog_VTable* vtbl, QPrintPreviewDialog* self);
	void (*accept)(struct QPrintPreviewDialog_VTable* vtbl, QPrintPreviewDialog* self);
	void (*reject)(struct QPrintPreviewDialog_VTable* vtbl, QPrintPreviewDialog* self);
	void (*keyPressEvent)(struct QPrintPreviewDialog_VTable* vtbl, QPrintPreviewDialog* self, QKeyEvent* param1);
	void (*closeEvent)(struct QPrintPreviewDialog_VTable* vtbl, QPrintPreviewDialog* self, QCloseEvent* param1);
	void (*showEvent)(struct QPrintPreviewDialog_VTable* vtbl, QPrintPreviewDialog* self, QShowEvent* param1);
	void (*resizeEvent)(struct QPrintPreviewDialog_VTable* vtbl, QPrintPreviewDialog* self, QResizeEvent* param1);
	void (*contextMenuEvent)(struct QPrintPreviewDialog_VTable* vtbl, QPrintPreviewDialog* self, QContextMenuEvent* param1);
	bool (*eventFilter)(struct QPrintPreviewDialog_VTable* vtbl, QPrintPreviewDialog* self, QObject* param1, QEvent* param2);
	int (*devType)(struct QPrintPreviewDialog_VTable* vtbl, const QPrintPreviewDialog* self);
	int (*heightForWidth)(struct QPrintPreviewDialog_VTable* vtbl, const QPrintPreviewDialog* self, int param1);
	bool (*hasHeightForWidth)(struct QPrintPreviewDialog_VTable* vtbl, const QPrintPreviewDialog* self);
	QPaintEngine* (*paintEngine)(struct QPrintPreviewDialog_VTable* vtbl, const QPrintPreviewDialog* self);
	bool (*event)(struct QPrintPreviewDialog_VTable* vtbl, QPrintPreviewDialog* self, QEvent* event);
	void (*mousePressEvent)(struct QPrintPreviewDialog_VTable* vtbl, QPrintPreviewDialog* self, QMouseEvent* event);
	void (*mouseReleaseEvent)(struct QPrintPreviewDialog_VTable* vtbl, QPrintPreviewDialog* self, QMouseEvent* event);
	void (*mouseDoubleClickEvent)(struct QPrintPreviewDialog_VTable* vtbl, QPrintPreviewDialog* self, QMouseEvent* event);
	void (*mouseMoveEvent)(struct QPrintPreviewDialog_VTable* vtbl, QPrintPreviewDialog* self, QMouseEvent* event);
	void (*wheelEvent)(struct QPrintPreviewDialog_VTable* vtbl, QPrintPreviewDialog* self, QWheelEvent* event);
	void (*keyReleaseEvent)(struct QPrintPreviewDialog_VTable* vtbl, QPrintPreviewDialog* self, QKeyEvent* event);
	void (*focusInEvent)(struct QPrintPreviewDialog_VTable* vtbl, QPrintPreviewDialog* self, QFocusEvent* event);
	void (*focusOutEvent)(struct QPrintPreviewDialog_VTable* vtbl, QPrintPreviewDialog* self, QFocusEvent* event);
	void (*enterEvent)(struct QPrintPreviewDialog_VTable* vtbl, QPrintPreviewDialog* self, QEvent* event);
	void (*leaveEvent)(struct QPrintPreviewDialog_VTable* vtbl, QPrintPreviewDialog* self, QEvent* event);
	void (*paintEvent)(struct QPrintPreviewDialog_VTable* vtbl, QPrintPreviewDialog* self, QPaintEvent* event);
	void (*moveEvent)(struct QPrintPreviewDialog_VTable* vtbl, QPrintPreviewDialog* self, QMoveEvent* event);
	void (*tabletEvent)(struct QPrintPreviewDialog_VTable* vtbl, QPrintPreviewDialog* self, QTabletEvent* event);
	void (*actionEvent)(struct QPrintPreviewDialog_VTable* vtbl, QPrintPreviewDialog* self, QActionEvent* event);
	void (*dragEnterEvent)(struct QPrintPreviewDialog_VTable* vtbl, QPrintPreviewDialog* self, QDragEnterEvent* event);
	void (*dragMoveEvent)(struct QPrintPreviewDialog_VTable* vtbl, QPrintPreviewDialog* self, QDragMoveEvent* event);
	void (*dragLeaveEvent)(struct QPrintPreviewDialog_VTable* vtbl, QPrintPreviewDialog* self, QDragLeaveEvent* event);
	void (*dropEvent)(struct QPrintPreviewDialog_VTable* vtbl, QPrintPreviewDialog* self, QDropEvent* event);
	void (*hideEvent)(struct QPrintPreviewDialog_VTable* vtbl, QPrintPreviewDialog* self, QHideEvent* event);
	bool (*nativeEvent)(struct QPrintPreviewDialog_VTable* vtbl, QPrintPreviewDialog* self, struct miqt_string eventType, void* message, long* result);
	void (*changeEvent)(struct QPrintPreviewDialog_VTable* vtbl, QPrintPreviewDialog* self, QEvent* param1);
	int (*metric)(struct QPrintPreviewDialog_VTable* vtbl, const QPrintPreviewDialog* self, int param1);
	void (*initPainter)(struct QPrintPreviewDialog_VTable* vtbl, const QPrintPreviewDialog* self, QPainter* painter);
	QPaintDevice* (*redirected)(struct QPrintPreviewDialog_VTable* vtbl, const QPrintPreviewDialog* self, QPoint* offset);
	QPainter* (*sharedPainter)(struct QPrintPreviewDialog_VTable* vtbl, const QPrintPreviewDialog* self);
	void (*inputMethodEvent)(struct QPrintPreviewDialog_VTable* vtbl, QPrintPreviewDialog* self, QInputMethodEvent* param1);
	QVariant* (*inputMethodQuery)(struct QPrintPreviewDialog_VTable* vtbl, const QPrintPreviewDialog* self, int param1);
	bool (*focusNextPrevChild)(struct QPrintPreviewDialog_VTable* vtbl, QPrintPreviewDialog* self, bool next);
	void (*timerEvent)(struct QPrintPreviewDialog_VTable* vtbl, QPrintPreviewDialog* self, QTimerEvent* event);
	void (*childEvent)(struct QPrintPreviewDialog_VTable* vtbl, QPrintPreviewDialog* self, QChildEvent* event);
	void (*customEvent)(struct QPrintPreviewDialog_VTable* vtbl, QPrintPreviewDialog* self, QEvent* event);
	void (*connectNotify)(struct QPrintPreviewDialog_VTable* vtbl, QPrintPreviewDialog* self, QMetaMethod* signal);
	void (*disconnectNotify)(struct QPrintPreviewDialog_VTable* vtbl, QPrintPreviewDialog* self, QMetaMethod* signal);
};
QPrintPreviewDialog* QPrintPreviewDialog_new(struct QPrintPreviewDialog_VTable* vtbl, QWidget* parent);
QPrintPreviewDialog* QPrintPreviewDialog_new2(struct QPrintPreviewDialog_VTable* vtbl);
QPrintPreviewDialog* QPrintPreviewDialog_new3(struct QPrintPreviewDialog_VTable* vtbl, QPrinter* printer);
QPrintPreviewDialog* QPrintPreviewDialog_new4(struct QPrintPreviewDialog_VTable* vtbl, QWidget* parent, int flags);
QPrintPreviewDialog* QPrintPreviewDialog_new5(struct QPrintPreviewDialog_VTable* vtbl, QPrinter* printer, QWidget* parent);
QPrintPreviewDialog* QPrintPreviewDialog_new6(struct QPrintPreviewDialog_VTable* vtbl, QPrinter* printer, QWidget* parent, int flags);
void QPrintPreviewDialog_virtbase(QPrintPreviewDialog* src, QDialog** outptr_QDialog);
QMetaObject* QPrintPreviewDialog_metaObject(const QPrintPreviewDialog* self);
void* QPrintPreviewDialog_metacast(QPrintPreviewDialog* self, const char* param1);
int QPrintPreviewDialog_metacall(QPrintPreviewDialog* self, int param1, int param2, void** param3);
struct miqt_string QPrintPreviewDialog_tr(const char* s);
struct miqt_string QPrintPreviewDialog_trUtf8(const char* s);
QPrinter* QPrintPreviewDialog_printer(QPrintPreviewDialog* self);
void QPrintPreviewDialog_setVisible(QPrintPreviewDialog* self, bool visible);
void QPrintPreviewDialog_done(QPrintPreviewDialog* self, int result);
void QPrintPreviewDialog_paintRequested(QPrintPreviewDialog* self, QPrinter* printer);
void QPrintPreviewDialog_connect_paintRequested(QPrintPreviewDialog* self, intptr_t slot);
struct miqt_string QPrintPreviewDialog_tr2(const char* s, const char* c);
struct miqt_string QPrintPreviewDialog_tr3(const char* s, const char* c, int n);
struct miqt_string QPrintPreviewDialog_trUtf82(const char* s, const char* c);
struct miqt_string QPrintPreviewDialog_trUtf83(const char* s, const char* c, int n);
QMetaObject* QPrintPreviewDialog_virtualbase_metaObject(const void* self);
void* QPrintPreviewDialog_virtualbase_metacast(void* self, const char* param1);
int QPrintPreviewDialog_virtualbase_metacall(void* self, int param1, int param2, void** param3);
void QPrintPreviewDialog_virtualbase_setVisible(void* self, bool visible);
void QPrintPreviewDialog_virtualbase_done(void* self, int result);
QSize* QPrintPreviewDialog_virtualbase_sizeHint(const void* self);
QSize* QPrintPreviewDialog_virtualbase_minimumSizeHint(const void* self);
void QPrintPreviewDialog_virtualbase_open(void* self);
int QPrintPreviewDialog_virtualbase_exec(void* self);
void QPrintPreviewDialog_virtualbase_accept(void* self);
void QPrintPreviewDialog_virtualbase_reject(void* self);
void QPrintPreviewDialog_virtualbase_keyPressEvent(void* self, QKeyEvent* param1);
void QPrintPreviewDialog_virtualbase_closeEvent(void* self, QCloseEvent* param1);
void QPrintPreviewDialog_virtualbase_showEvent(void* self, QShowEvent* param1);
void QPrintPreviewDialog_virtualbase_resizeEvent(void* self, QResizeEvent* param1);
void QPrintPreviewDialog_virtualbase_contextMenuEvent(void* self, QContextMenuEvent* param1);
bool QPrintPreviewDialog_virtualbase_eventFilter(void* self, QObject* param1, QEvent* param2);
int QPrintPreviewDialog_virtualbase_devType(const void* self);
int QPrintPreviewDialog_virtualbase_heightForWidth(const void* self, int param1);
bool QPrintPreviewDialog_virtualbase_hasHeightForWidth(const void* self);
QPaintEngine* QPrintPreviewDialog_virtualbase_paintEngine(const void* self);
bool QPrintPreviewDialog_virtualbase_event(void* self, QEvent* event);
void QPrintPreviewDialog_virtualbase_mousePressEvent(void* self, QMouseEvent* event);
void QPrintPreviewDialog_virtualbase_mouseReleaseEvent(void* self, QMouseEvent* event);
void QPrintPreviewDialog_virtualbase_mouseDoubleClickEvent(void* self, QMouseEvent* event);
void QPrintPreviewDialog_virtualbase_mouseMoveEvent(void* self, QMouseEvent* event);
void QPrintPreviewDialog_virtualbase_wheelEvent(void* self, QWheelEvent* event);
void QPrintPreviewDialog_virtualbase_keyReleaseEvent(void* self, QKeyEvent* event);
void QPrintPreviewDialog_virtualbase_focusInEvent(void* self, QFocusEvent* event);
void QPrintPreviewDialog_virtualbase_focusOutEvent(void* self, QFocusEvent* event);
void QPrintPreviewDialog_virtualbase_enterEvent(void* self, QEvent* event);
void QPrintPreviewDialog_virtualbase_leaveEvent(void* self, QEvent* event);
void QPrintPreviewDialog_virtualbase_paintEvent(void* self, QPaintEvent* event);
void QPrintPreviewDialog_virtualbase_moveEvent(void* self, QMoveEvent* event);
void QPrintPreviewDialog_virtualbase_tabletEvent(void* self, QTabletEvent* event);
void QPrintPreviewDialog_virtualbase_actionEvent(void* self, QActionEvent* event);
void QPrintPreviewDialog_virtualbase_dragEnterEvent(void* self, QDragEnterEvent* event);
void QPrintPreviewDialog_virtualbase_dragMoveEvent(void* self, QDragMoveEvent* event);
void QPrintPreviewDialog_virtualbase_dragLeaveEvent(void* self, QDragLeaveEvent* event);
void QPrintPreviewDialog_virtualbase_dropEvent(void* self, QDropEvent* event);
void QPrintPreviewDialog_virtualbase_hideEvent(void* self, QHideEvent* event);
bool QPrintPreviewDialog_virtualbase_nativeEvent(void* self, struct miqt_string eventType, void* message, long* result);
void QPrintPreviewDialog_virtualbase_changeEvent(void* self, QEvent* param1);
int QPrintPreviewDialog_virtualbase_metric(const void* self, int param1);
void QPrintPreviewDialog_virtualbase_initPainter(const void* self, QPainter* painter);
QPaintDevice* QPrintPreviewDialog_virtualbase_redirected(const void* self, QPoint* offset);
QPainter* QPrintPreviewDialog_virtualbase_sharedPainter(const void* self);
void QPrintPreviewDialog_virtualbase_inputMethodEvent(void* self, QInputMethodEvent* param1);
QVariant* QPrintPreviewDialog_virtualbase_inputMethodQuery(const void* self, int param1);
bool QPrintPreviewDialog_virtualbase_focusNextPrevChild(void* self, bool next);
void QPrintPreviewDialog_virtualbase_timerEvent(void* self, QTimerEvent* event);
void QPrintPreviewDialog_virtualbase_childEvent(void* self, QChildEvent* event);
void QPrintPreviewDialog_virtualbase_customEvent(void* self, QEvent* event);
void QPrintPreviewDialog_virtualbase_connectNotify(void* self, QMetaMethod* signal);
void QPrintPreviewDialog_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);
void QPrintPreviewDialog_protectedbase_adjustPosition(bool* _dynamic_cast_ok, void* self, QWidget* param1);
void QPrintPreviewDialog_protectedbase_updateMicroFocus(bool* _dynamic_cast_ok, void* self);
void QPrintPreviewDialog_protectedbase_create(bool* _dynamic_cast_ok, void* self);
void QPrintPreviewDialog_protectedbase_destroy(bool* _dynamic_cast_ok, void* self);
bool QPrintPreviewDialog_protectedbase_focusNextChild(bool* _dynamic_cast_ok, void* self);
bool QPrintPreviewDialog_protectedbase_focusPreviousChild(bool* _dynamic_cast_ok, void* self);
QObject* QPrintPreviewDialog_protectedbase_sender(bool* _dynamic_cast_ok, const void* self);
int QPrintPreviewDialog_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self);
int QPrintPreviewDialog_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal);
bool QPrintPreviewDialog_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal);
const QMetaObject* QPrintPreviewDialog_staticMetaObject();
void QPrintPreviewDialog_delete(QPrintPreviewDialog* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
