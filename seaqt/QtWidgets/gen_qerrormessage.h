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

struct QErrorMessage_VTable {
	void (*destructor)(struct QErrorMessage_VTable* vtbl, QErrorMessage* self);
	QMetaObject* (*metaObject)(struct QErrorMessage_VTable* vtbl, const QErrorMessage* self);
	void* (*metacast)(struct QErrorMessage_VTable* vtbl, QErrorMessage* self, const char* param1);
	int (*metacall)(struct QErrorMessage_VTable* vtbl, QErrorMessage* self, int param1, int param2, void** param3);
	void (*done)(struct QErrorMessage_VTable* vtbl, QErrorMessage* self, int param1);
	void (*changeEvent)(struct QErrorMessage_VTable* vtbl, QErrorMessage* self, QEvent* e);
	void (*setVisible)(struct QErrorMessage_VTable* vtbl, QErrorMessage* self, bool visible);
	QSize* (*sizeHint)(struct QErrorMessage_VTable* vtbl, const QErrorMessage* self);
	QSize* (*minimumSizeHint)(struct QErrorMessage_VTable* vtbl, const QErrorMessage* self);
	void (*open)(struct QErrorMessage_VTable* vtbl, QErrorMessage* self);
	int (*exec)(struct QErrorMessage_VTable* vtbl, QErrorMessage* self);
	void (*accept)(struct QErrorMessage_VTable* vtbl, QErrorMessage* self);
	void (*reject)(struct QErrorMessage_VTable* vtbl, QErrorMessage* self);
	void (*keyPressEvent)(struct QErrorMessage_VTable* vtbl, QErrorMessage* self, QKeyEvent* param1);
	void (*closeEvent)(struct QErrorMessage_VTable* vtbl, QErrorMessage* self, QCloseEvent* param1);
	void (*showEvent)(struct QErrorMessage_VTable* vtbl, QErrorMessage* self, QShowEvent* param1);
	void (*resizeEvent)(struct QErrorMessage_VTable* vtbl, QErrorMessage* self, QResizeEvent* param1);
	void (*contextMenuEvent)(struct QErrorMessage_VTable* vtbl, QErrorMessage* self, QContextMenuEvent* param1);
	bool (*eventFilter)(struct QErrorMessage_VTable* vtbl, QErrorMessage* self, QObject* param1, QEvent* param2);
	int (*devType)(struct QErrorMessage_VTable* vtbl, const QErrorMessage* self);
	int (*heightForWidth)(struct QErrorMessage_VTable* vtbl, const QErrorMessage* self, int param1);
	bool (*hasHeightForWidth)(struct QErrorMessage_VTable* vtbl, const QErrorMessage* self);
	QPaintEngine* (*paintEngine)(struct QErrorMessage_VTable* vtbl, const QErrorMessage* self);
	bool (*event)(struct QErrorMessage_VTable* vtbl, QErrorMessage* self, QEvent* event);
	void (*mousePressEvent)(struct QErrorMessage_VTable* vtbl, QErrorMessage* self, QMouseEvent* event);
	void (*mouseReleaseEvent)(struct QErrorMessage_VTable* vtbl, QErrorMessage* self, QMouseEvent* event);
	void (*mouseDoubleClickEvent)(struct QErrorMessage_VTable* vtbl, QErrorMessage* self, QMouseEvent* event);
	void (*mouseMoveEvent)(struct QErrorMessage_VTable* vtbl, QErrorMessage* self, QMouseEvent* event);
	void (*wheelEvent)(struct QErrorMessage_VTable* vtbl, QErrorMessage* self, QWheelEvent* event);
	void (*keyReleaseEvent)(struct QErrorMessage_VTable* vtbl, QErrorMessage* self, QKeyEvent* event);
	void (*focusInEvent)(struct QErrorMessage_VTable* vtbl, QErrorMessage* self, QFocusEvent* event);
	void (*focusOutEvent)(struct QErrorMessage_VTable* vtbl, QErrorMessage* self, QFocusEvent* event);
	void (*enterEvent)(struct QErrorMessage_VTable* vtbl, QErrorMessage* self, QEvent* event);
	void (*leaveEvent)(struct QErrorMessage_VTable* vtbl, QErrorMessage* self, QEvent* event);
	void (*paintEvent)(struct QErrorMessage_VTable* vtbl, QErrorMessage* self, QPaintEvent* event);
	void (*moveEvent)(struct QErrorMessage_VTable* vtbl, QErrorMessage* self, QMoveEvent* event);
	void (*tabletEvent)(struct QErrorMessage_VTable* vtbl, QErrorMessage* self, QTabletEvent* event);
	void (*actionEvent)(struct QErrorMessage_VTable* vtbl, QErrorMessage* self, QActionEvent* event);
	void (*dragEnterEvent)(struct QErrorMessage_VTable* vtbl, QErrorMessage* self, QDragEnterEvent* event);
	void (*dragMoveEvent)(struct QErrorMessage_VTable* vtbl, QErrorMessage* self, QDragMoveEvent* event);
	void (*dragLeaveEvent)(struct QErrorMessage_VTable* vtbl, QErrorMessage* self, QDragLeaveEvent* event);
	void (*dropEvent)(struct QErrorMessage_VTable* vtbl, QErrorMessage* self, QDropEvent* event);
	void (*hideEvent)(struct QErrorMessage_VTable* vtbl, QErrorMessage* self, QHideEvent* event);
	bool (*nativeEvent)(struct QErrorMessage_VTable* vtbl, QErrorMessage* self, struct miqt_string eventType, void* message, long* result);
	int (*metric)(struct QErrorMessage_VTable* vtbl, const QErrorMessage* self, int param1);
	void (*initPainter)(struct QErrorMessage_VTable* vtbl, const QErrorMessage* self, QPainter* painter);
	QPaintDevice* (*redirected)(struct QErrorMessage_VTable* vtbl, const QErrorMessage* self, QPoint* offset);
	QPainter* (*sharedPainter)(struct QErrorMessage_VTable* vtbl, const QErrorMessage* self);
	void (*inputMethodEvent)(struct QErrorMessage_VTable* vtbl, QErrorMessage* self, QInputMethodEvent* param1);
	QVariant* (*inputMethodQuery)(struct QErrorMessage_VTable* vtbl, const QErrorMessage* self, int param1);
	bool (*focusNextPrevChild)(struct QErrorMessage_VTable* vtbl, QErrorMessage* self, bool next);
	void (*timerEvent)(struct QErrorMessage_VTable* vtbl, QErrorMessage* self, QTimerEvent* event);
	void (*childEvent)(struct QErrorMessage_VTable* vtbl, QErrorMessage* self, QChildEvent* event);
	void (*customEvent)(struct QErrorMessage_VTable* vtbl, QErrorMessage* self, QEvent* event);
	void (*connectNotify)(struct QErrorMessage_VTable* vtbl, QErrorMessage* self, QMetaMethod* signal);
	void (*disconnectNotify)(struct QErrorMessage_VTable* vtbl, QErrorMessage* self, QMetaMethod* signal);
};
QErrorMessage* QErrorMessage_new(struct QErrorMessage_VTable* vtbl, QWidget* parent);
QErrorMessage* QErrorMessage_new2(struct QErrorMessage_VTable* vtbl);
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
QMetaObject* QErrorMessage_virtualbase_metaObject(const void* self);
void* QErrorMessage_virtualbase_metacast(void* self, const char* param1);
int QErrorMessage_virtualbase_metacall(void* self, int param1, int param2, void** param3);
void QErrorMessage_virtualbase_done(void* self, int param1);
void QErrorMessage_virtualbase_changeEvent(void* self, QEvent* e);
void QErrorMessage_virtualbase_setVisible(void* self, bool visible);
QSize* QErrorMessage_virtualbase_sizeHint(const void* self);
QSize* QErrorMessage_virtualbase_minimumSizeHint(const void* self);
void QErrorMessage_virtualbase_open(void* self);
int QErrorMessage_virtualbase_exec(void* self);
void QErrorMessage_virtualbase_accept(void* self);
void QErrorMessage_virtualbase_reject(void* self);
void QErrorMessage_virtualbase_keyPressEvent(void* self, QKeyEvent* param1);
void QErrorMessage_virtualbase_closeEvent(void* self, QCloseEvent* param1);
void QErrorMessage_virtualbase_showEvent(void* self, QShowEvent* param1);
void QErrorMessage_virtualbase_resizeEvent(void* self, QResizeEvent* param1);
void QErrorMessage_virtualbase_contextMenuEvent(void* self, QContextMenuEvent* param1);
bool QErrorMessage_virtualbase_eventFilter(void* self, QObject* param1, QEvent* param2);
int QErrorMessage_virtualbase_devType(const void* self);
int QErrorMessage_virtualbase_heightForWidth(const void* self, int param1);
bool QErrorMessage_virtualbase_hasHeightForWidth(const void* self);
QPaintEngine* QErrorMessage_virtualbase_paintEngine(const void* self);
bool QErrorMessage_virtualbase_event(void* self, QEvent* event);
void QErrorMessage_virtualbase_mousePressEvent(void* self, QMouseEvent* event);
void QErrorMessage_virtualbase_mouseReleaseEvent(void* self, QMouseEvent* event);
void QErrorMessage_virtualbase_mouseDoubleClickEvent(void* self, QMouseEvent* event);
void QErrorMessage_virtualbase_mouseMoveEvent(void* self, QMouseEvent* event);
void QErrorMessage_virtualbase_wheelEvent(void* self, QWheelEvent* event);
void QErrorMessage_virtualbase_keyReleaseEvent(void* self, QKeyEvent* event);
void QErrorMessage_virtualbase_focusInEvent(void* self, QFocusEvent* event);
void QErrorMessage_virtualbase_focusOutEvent(void* self, QFocusEvent* event);
void QErrorMessage_virtualbase_enterEvent(void* self, QEvent* event);
void QErrorMessage_virtualbase_leaveEvent(void* self, QEvent* event);
void QErrorMessage_virtualbase_paintEvent(void* self, QPaintEvent* event);
void QErrorMessage_virtualbase_moveEvent(void* self, QMoveEvent* event);
void QErrorMessage_virtualbase_tabletEvent(void* self, QTabletEvent* event);
void QErrorMessage_virtualbase_actionEvent(void* self, QActionEvent* event);
void QErrorMessage_virtualbase_dragEnterEvent(void* self, QDragEnterEvent* event);
void QErrorMessage_virtualbase_dragMoveEvent(void* self, QDragMoveEvent* event);
void QErrorMessage_virtualbase_dragLeaveEvent(void* self, QDragLeaveEvent* event);
void QErrorMessage_virtualbase_dropEvent(void* self, QDropEvent* event);
void QErrorMessage_virtualbase_hideEvent(void* self, QHideEvent* event);
bool QErrorMessage_virtualbase_nativeEvent(void* self, struct miqt_string eventType, void* message, long* result);
int QErrorMessage_virtualbase_metric(const void* self, int param1);
void QErrorMessage_virtualbase_initPainter(const void* self, QPainter* painter);
QPaintDevice* QErrorMessage_virtualbase_redirected(const void* self, QPoint* offset);
QPainter* QErrorMessage_virtualbase_sharedPainter(const void* self);
void QErrorMessage_virtualbase_inputMethodEvent(void* self, QInputMethodEvent* param1);
QVariant* QErrorMessage_virtualbase_inputMethodQuery(const void* self, int param1);
bool QErrorMessage_virtualbase_focusNextPrevChild(void* self, bool next);
void QErrorMessage_virtualbase_timerEvent(void* self, QTimerEvent* event);
void QErrorMessage_virtualbase_childEvent(void* self, QChildEvent* event);
void QErrorMessage_virtualbase_customEvent(void* self, QEvent* event);
void QErrorMessage_virtualbase_connectNotify(void* self, QMetaMethod* signal);
void QErrorMessage_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);
void QErrorMessage_protectedbase_adjustPosition(bool* _dynamic_cast_ok, void* self, QWidget* param1);
void QErrorMessage_protectedbase_updateMicroFocus(bool* _dynamic_cast_ok, void* self);
void QErrorMessage_protectedbase_create(bool* _dynamic_cast_ok, void* self);
void QErrorMessage_protectedbase_destroy(bool* _dynamic_cast_ok, void* self);
bool QErrorMessage_protectedbase_focusNextChild(bool* _dynamic_cast_ok, void* self);
bool QErrorMessage_protectedbase_focusPreviousChild(bool* _dynamic_cast_ok, void* self);
QObject* QErrorMessage_protectedbase_sender(bool* _dynamic_cast_ok, const void* self);
int QErrorMessage_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self);
int QErrorMessage_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal);
bool QErrorMessage_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal);
const QMetaObject* QErrorMessage_staticMetaObject();
void QErrorMessage_delete(QErrorMessage* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
