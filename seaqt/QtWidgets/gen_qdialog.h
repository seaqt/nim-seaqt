#pragma once
#ifndef SEAQT_QTWIDGETS_GEN_QDIALOG_H
#define SEAQT_QTWIDGETS_GEN_QDIALOG_H

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
typedef struct QResizeEvent QResizeEvent;
typedef struct QShowEvent QShowEvent;
typedef struct QSize QSize;
typedef struct QTabletEvent QTabletEvent;
typedef struct QTimerEvent QTimerEvent;
typedef struct QVariant QVariant;
typedef struct QWheelEvent QWheelEvent;
typedef struct QWidget QWidget;
#endif

struct QDialog_VTable {
	void (*destructor)(struct QDialog_VTable* vtbl, QDialog* self);
	QMetaObject* (*metaObject)(struct QDialog_VTable* vtbl, const QDialog* self);
	void* (*metacast)(struct QDialog_VTable* vtbl, QDialog* self, const char* param1);
	int (*metacall)(struct QDialog_VTable* vtbl, QDialog* self, int param1, int param2, void** param3);
	void (*setVisible)(struct QDialog_VTable* vtbl, QDialog* self, bool visible);
	QSize* (*sizeHint)(struct QDialog_VTable* vtbl, const QDialog* self);
	QSize* (*minimumSizeHint)(struct QDialog_VTable* vtbl, const QDialog* self);
	void (*open)(struct QDialog_VTable* vtbl, QDialog* self);
	int (*exec)(struct QDialog_VTable* vtbl, QDialog* self);
	void (*done)(struct QDialog_VTable* vtbl, QDialog* self, int param1);
	void (*accept)(struct QDialog_VTable* vtbl, QDialog* self);
	void (*reject)(struct QDialog_VTable* vtbl, QDialog* self);
	void (*keyPressEvent)(struct QDialog_VTable* vtbl, QDialog* self, QKeyEvent* param1);
	void (*closeEvent)(struct QDialog_VTable* vtbl, QDialog* self, QCloseEvent* param1);
	void (*showEvent)(struct QDialog_VTable* vtbl, QDialog* self, QShowEvent* param1);
	void (*resizeEvent)(struct QDialog_VTable* vtbl, QDialog* self, QResizeEvent* param1);
	void (*contextMenuEvent)(struct QDialog_VTable* vtbl, QDialog* self, QContextMenuEvent* param1);
	bool (*eventFilter)(struct QDialog_VTable* vtbl, QDialog* self, QObject* param1, QEvent* param2);
	int (*devType)(struct QDialog_VTable* vtbl, const QDialog* self);
	int (*heightForWidth)(struct QDialog_VTable* vtbl, const QDialog* self, int param1);
	bool (*hasHeightForWidth)(struct QDialog_VTable* vtbl, const QDialog* self);
	QPaintEngine* (*paintEngine)(struct QDialog_VTable* vtbl, const QDialog* self);
	bool (*event)(struct QDialog_VTable* vtbl, QDialog* self, QEvent* event);
	void (*mousePressEvent)(struct QDialog_VTable* vtbl, QDialog* self, QMouseEvent* event);
	void (*mouseReleaseEvent)(struct QDialog_VTable* vtbl, QDialog* self, QMouseEvent* event);
	void (*mouseDoubleClickEvent)(struct QDialog_VTable* vtbl, QDialog* self, QMouseEvent* event);
	void (*mouseMoveEvent)(struct QDialog_VTable* vtbl, QDialog* self, QMouseEvent* event);
	void (*wheelEvent)(struct QDialog_VTable* vtbl, QDialog* self, QWheelEvent* event);
	void (*keyReleaseEvent)(struct QDialog_VTable* vtbl, QDialog* self, QKeyEvent* event);
	void (*focusInEvent)(struct QDialog_VTable* vtbl, QDialog* self, QFocusEvent* event);
	void (*focusOutEvent)(struct QDialog_VTable* vtbl, QDialog* self, QFocusEvent* event);
	void (*enterEvent)(struct QDialog_VTable* vtbl, QDialog* self, QEnterEvent* event);
	void (*leaveEvent)(struct QDialog_VTable* vtbl, QDialog* self, QEvent* event);
	void (*paintEvent)(struct QDialog_VTable* vtbl, QDialog* self, QPaintEvent* event);
	void (*moveEvent)(struct QDialog_VTable* vtbl, QDialog* self, QMoveEvent* event);
	void (*tabletEvent)(struct QDialog_VTable* vtbl, QDialog* self, QTabletEvent* event);
	void (*actionEvent)(struct QDialog_VTable* vtbl, QDialog* self, QActionEvent* event);
	void (*dragEnterEvent)(struct QDialog_VTable* vtbl, QDialog* self, QDragEnterEvent* event);
	void (*dragMoveEvent)(struct QDialog_VTable* vtbl, QDialog* self, QDragMoveEvent* event);
	void (*dragLeaveEvent)(struct QDialog_VTable* vtbl, QDialog* self, QDragLeaveEvent* event);
	void (*dropEvent)(struct QDialog_VTable* vtbl, QDialog* self, QDropEvent* event);
	void (*hideEvent)(struct QDialog_VTable* vtbl, QDialog* self, QHideEvent* event);
	bool (*nativeEvent)(struct QDialog_VTable* vtbl, QDialog* self, struct miqt_string eventType, void* message, intptr_t* result);
	void (*changeEvent)(struct QDialog_VTable* vtbl, QDialog* self, QEvent* param1);
	int (*metric)(struct QDialog_VTable* vtbl, const QDialog* self, int param1);
	void (*initPainter)(struct QDialog_VTable* vtbl, const QDialog* self, QPainter* painter);
	QPaintDevice* (*redirected)(struct QDialog_VTable* vtbl, const QDialog* self, QPoint* offset);
	QPainter* (*sharedPainter)(struct QDialog_VTable* vtbl, const QDialog* self);
	void (*inputMethodEvent)(struct QDialog_VTable* vtbl, QDialog* self, QInputMethodEvent* param1);
	QVariant* (*inputMethodQuery)(struct QDialog_VTable* vtbl, const QDialog* self, int param1);
	bool (*focusNextPrevChild)(struct QDialog_VTable* vtbl, QDialog* self, bool next);
	void (*timerEvent)(struct QDialog_VTable* vtbl, QDialog* self, QTimerEvent* event);
	void (*childEvent)(struct QDialog_VTable* vtbl, QDialog* self, QChildEvent* event);
	void (*customEvent)(struct QDialog_VTable* vtbl, QDialog* self, QEvent* event);
	void (*connectNotify)(struct QDialog_VTable* vtbl, QDialog* self, QMetaMethod* signal);
	void (*disconnectNotify)(struct QDialog_VTable* vtbl, QDialog* self, QMetaMethod* signal);
};
QDialog* QDialog_new(struct QDialog_VTable* vtbl, QWidget* parent);
QDialog* QDialog_new2(struct QDialog_VTable* vtbl);
QDialog* QDialog_new3(struct QDialog_VTable* vtbl, QWidget* parent, int f);
void QDialog_virtbase(QDialog* src, QWidget** outptr_QWidget);
QMetaObject* QDialog_metaObject(const QDialog* self);
void* QDialog_metacast(QDialog* self, const char* param1);
int QDialog_metacall(QDialog* self, int param1, int param2, void** param3);
struct miqt_string QDialog_tr(const char* s);
int QDialog_result(const QDialog* self);
void QDialog_setVisible(QDialog* self, bool visible);
QSize* QDialog_sizeHint(const QDialog* self);
QSize* QDialog_minimumSizeHint(const QDialog* self);
void QDialog_setSizeGripEnabled(QDialog* self, bool sizeGripEnabled);
bool QDialog_isSizeGripEnabled(const QDialog* self);
void QDialog_setModal(QDialog* self, bool modal);
void QDialog_setResult(QDialog* self, int r);
void QDialog_finished(QDialog* self, int result);
void QDialog_connect_finished(QDialog* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t));
void QDialog_accepted(QDialog* self);
void QDialog_connect_accepted(QDialog* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
void QDialog_rejected(QDialog* self);
void QDialog_connect_rejected(QDialog* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
void QDialog_open(QDialog* self);
int QDialog_exec(QDialog* self);
void QDialog_done(QDialog* self, int param1);
void QDialog_accept(QDialog* self);
void QDialog_reject(QDialog* self);
void QDialog_keyPressEvent(QDialog* self, QKeyEvent* param1);
void QDialog_closeEvent(QDialog* self, QCloseEvent* param1);
void QDialog_showEvent(QDialog* self, QShowEvent* param1);
void QDialog_resizeEvent(QDialog* self, QResizeEvent* param1);
void QDialog_contextMenuEvent(QDialog* self, QContextMenuEvent* param1);
bool QDialog_eventFilter(QDialog* self, QObject* param1, QEvent* param2);
struct miqt_string QDialog_tr2(const char* s, const char* c);
struct miqt_string QDialog_tr3(const char* s, const char* c, int n);
QMetaObject* QDialog_virtualbase_metaObject(const void* self);
void* QDialog_virtualbase_metacast(void* self, const char* param1);
int QDialog_virtualbase_metacall(void* self, int param1, int param2, void** param3);
void QDialog_virtualbase_setVisible(void* self, bool visible);
QSize* QDialog_virtualbase_sizeHint(const void* self);
QSize* QDialog_virtualbase_minimumSizeHint(const void* self);
void QDialog_virtualbase_open(void* self);
int QDialog_virtualbase_exec(void* self);
void QDialog_virtualbase_done(void* self, int param1);
void QDialog_virtualbase_accept(void* self);
void QDialog_virtualbase_reject(void* self);
void QDialog_virtualbase_keyPressEvent(void* self, QKeyEvent* param1);
void QDialog_virtualbase_closeEvent(void* self, QCloseEvent* param1);
void QDialog_virtualbase_showEvent(void* self, QShowEvent* param1);
void QDialog_virtualbase_resizeEvent(void* self, QResizeEvent* param1);
void QDialog_virtualbase_contextMenuEvent(void* self, QContextMenuEvent* param1);
bool QDialog_virtualbase_eventFilter(void* self, QObject* param1, QEvent* param2);
int QDialog_virtualbase_devType(const void* self);
int QDialog_virtualbase_heightForWidth(const void* self, int param1);
bool QDialog_virtualbase_hasHeightForWidth(const void* self);
QPaintEngine* QDialog_virtualbase_paintEngine(const void* self);
bool QDialog_virtualbase_event(void* self, QEvent* event);
void QDialog_virtualbase_mousePressEvent(void* self, QMouseEvent* event);
void QDialog_virtualbase_mouseReleaseEvent(void* self, QMouseEvent* event);
void QDialog_virtualbase_mouseDoubleClickEvent(void* self, QMouseEvent* event);
void QDialog_virtualbase_mouseMoveEvent(void* self, QMouseEvent* event);
void QDialog_virtualbase_wheelEvent(void* self, QWheelEvent* event);
void QDialog_virtualbase_keyReleaseEvent(void* self, QKeyEvent* event);
void QDialog_virtualbase_focusInEvent(void* self, QFocusEvent* event);
void QDialog_virtualbase_focusOutEvent(void* self, QFocusEvent* event);
void QDialog_virtualbase_enterEvent(void* self, QEnterEvent* event);
void QDialog_virtualbase_leaveEvent(void* self, QEvent* event);
void QDialog_virtualbase_paintEvent(void* self, QPaintEvent* event);
void QDialog_virtualbase_moveEvent(void* self, QMoveEvent* event);
void QDialog_virtualbase_tabletEvent(void* self, QTabletEvent* event);
void QDialog_virtualbase_actionEvent(void* self, QActionEvent* event);
void QDialog_virtualbase_dragEnterEvent(void* self, QDragEnterEvent* event);
void QDialog_virtualbase_dragMoveEvent(void* self, QDragMoveEvent* event);
void QDialog_virtualbase_dragLeaveEvent(void* self, QDragLeaveEvent* event);
void QDialog_virtualbase_dropEvent(void* self, QDropEvent* event);
void QDialog_virtualbase_hideEvent(void* self, QHideEvent* event);
bool QDialog_virtualbase_nativeEvent(void* self, struct miqt_string eventType, void* message, intptr_t* result);
void QDialog_virtualbase_changeEvent(void* self, QEvent* param1);
int QDialog_virtualbase_metric(const void* self, int param1);
void QDialog_virtualbase_initPainter(const void* self, QPainter* painter);
QPaintDevice* QDialog_virtualbase_redirected(const void* self, QPoint* offset);
QPainter* QDialog_virtualbase_sharedPainter(const void* self);
void QDialog_virtualbase_inputMethodEvent(void* self, QInputMethodEvent* param1);
QVariant* QDialog_virtualbase_inputMethodQuery(const void* self, int param1);
bool QDialog_virtualbase_focusNextPrevChild(void* self, bool next);
void QDialog_virtualbase_timerEvent(void* self, QTimerEvent* event);
void QDialog_virtualbase_childEvent(void* self, QChildEvent* event);
void QDialog_virtualbase_customEvent(void* self, QEvent* event);
void QDialog_virtualbase_connectNotify(void* self, QMetaMethod* signal);
void QDialog_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);
void QDialog_protectedbase_adjustPosition(bool* _dynamic_cast_ok, void* self, QWidget* param1);
void QDialog_protectedbase_updateMicroFocus(bool* _dynamic_cast_ok, void* self);
void QDialog_protectedbase_create(bool* _dynamic_cast_ok, void* self);
void QDialog_protectedbase_destroy(bool* _dynamic_cast_ok, void* self);
bool QDialog_protectedbase_focusNextChild(bool* _dynamic_cast_ok, void* self);
bool QDialog_protectedbase_focusPreviousChild(bool* _dynamic_cast_ok, void* self);
QObject* QDialog_protectedbase_sender(bool* _dynamic_cast_ok, const void* self);
int QDialog_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self);
int QDialog_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal);
bool QDialog_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal);
const QMetaObject* QDialog_staticMetaObject();
void QDialog_delete(QDialog* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
