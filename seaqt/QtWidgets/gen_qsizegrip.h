#pragma once
#ifndef SEAQT_QTWIDGETS_GEN_QSIZEGRIP_H
#define SEAQT_QTWIDGETS_GEN_QSIZEGRIP_H

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
class QResizeEvent;
class QShowEvent;
class QSize;
class QSizeGrip;
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
typedef struct QResizeEvent QResizeEvent;
typedef struct QShowEvent QShowEvent;
typedef struct QSize QSize;
typedef struct QSizeGrip QSizeGrip;
typedef struct QTabletEvent QTabletEvent;
typedef struct QTimerEvent QTimerEvent;
typedef struct QVariant QVariant;
typedef struct QWheelEvent QWheelEvent;
typedef struct QWidget QWidget;
#endif

struct QSizeGrip_VTable {
	void (*destructor)(struct QSizeGrip_VTable* vtbl, QSizeGrip* self);
	QMetaObject* (*metaObject)(struct QSizeGrip_VTable* vtbl, const QSizeGrip* self);
	void* (*metacast)(struct QSizeGrip_VTable* vtbl, QSizeGrip* self, const char* param1);
	int (*metacall)(struct QSizeGrip_VTable* vtbl, QSizeGrip* self, int param1, int param2, void** param3);
	QSize* (*sizeHint)(struct QSizeGrip_VTable* vtbl, const QSizeGrip* self);
	void (*setVisible)(struct QSizeGrip_VTable* vtbl, QSizeGrip* self, bool visible);
	void (*paintEvent)(struct QSizeGrip_VTable* vtbl, QSizeGrip* self, QPaintEvent* param1);
	void (*mousePressEvent)(struct QSizeGrip_VTable* vtbl, QSizeGrip* self, QMouseEvent* param1);
	void (*mouseMoveEvent)(struct QSizeGrip_VTable* vtbl, QSizeGrip* self, QMouseEvent* param1);
	void (*mouseReleaseEvent)(struct QSizeGrip_VTable* vtbl, QSizeGrip* self, QMouseEvent* mouseEvent);
	void (*moveEvent)(struct QSizeGrip_VTable* vtbl, QSizeGrip* self, QMoveEvent* moveEvent);
	void (*showEvent)(struct QSizeGrip_VTable* vtbl, QSizeGrip* self, QShowEvent* showEvent);
	void (*hideEvent)(struct QSizeGrip_VTable* vtbl, QSizeGrip* self, QHideEvent* hideEvent);
	bool (*eventFilter)(struct QSizeGrip_VTable* vtbl, QSizeGrip* self, QObject* param1, QEvent* param2);
	bool (*event)(struct QSizeGrip_VTable* vtbl, QSizeGrip* self, QEvent* param1);
	int (*devType)(struct QSizeGrip_VTable* vtbl, const QSizeGrip* self);
	QSize* (*minimumSizeHint)(struct QSizeGrip_VTable* vtbl, const QSizeGrip* self);
	int (*heightForWidth)(struct QSizeGrip_VTable* vtbl, const QSizeGrip* self, int param1);
	bool (*hasHeightForWidth)(struct QSizeGrip_VTable* vtbl, const QSizeGrip* self);
	QPaintEngine* (*paintEngine)(struct QSizeGrip_VTable* vtbl, const QSizeGrip* self);
	void (*mouseDoubleClickEvent)(struct QSizeGrip_VTable* vtbl, QSizeGrip* self, QMouseEvent* event);
	void (*wheelEvent)(struct QSizeGrip_VTable* vtbl, QSizeGrip* self, QWheelEvent* event);
	void (*keyPressEvent)(struct QSizeGrip_VTable* vtbl, QSizeGrip* self, QKeyEvent* event);
	void (*keyReleaseEvent)(struct QSizeGrip_VTable* vtbl, QSizeGrip* self, QKeyEvent* event);
	void (*focusInEvent)(struct QSizeGrip_VTable* vtbl, QSizeGrip* self, QFocusEvent* event);
	void (*focusOutEvent)(struct QSizeGrip_VTable* vtbl, QSizeGrip* self, QFocusEvent* event);
	void (*enterEvent)(struct QSizeGrip_VTable* vtbl, QSizeGrip* self, QEvent* event);
	void (*leaveEvent)(struct QSizeGrip_VTable* vtbl, QSizeGrip* self, QEvent* event);
	void (*resizeEvent)(struct QSizeGrip_VTable* vtbl, QSizeGrip* self, QResizeEvent* event);
	void (*closeEvent)(struct QSizeGrip_VTable* vtbl, QSizeGrip* self, QCloseEvent* event);
	void (*contextMenuEvent)(struct QSizeGrip_VTable* vtbl, QSizeGrip* self, QContextMenuEvent* event);
	void (*tabletEvent)(struct QSizeGrip_VTable* vtbl, QSizeGrip* self, QTabletEvent* event);
	void (*actionEvent)(struct QSizeGrip_VTable* vtbl, QSizeGrip* self, QActionEvent* event);
	void (*dragEnterEvent)(struct QSizeGrip_VTable* vtbl, QSizeGrip* self, QDragEnterEvent* event);
	void (*dragMoveEvent)(struct QSizeGrip_VTable* vtbl, QSizeGrip* self, QDragMoveEvent* event);
	void (*dragLeaveEvent)(struct QSizeGrip_VTable* vtbl, QSizeGrip* self, QDragLeaveEvent* event);
	void (*dropEvent)(struct QSizeGrip_VTable* vtbl, QSizeGrip* self, QDropEvent* event);
	bool (*nativeEvent)(struct QSizeGrip_VTable* vtbl, QSizeGrip* self, struct miqt_string eventType, void* message, long* result);
	void (*changeEvent)(struct QSizeGrip_VTable* vtbl, QSizeGrip* self, QEvent* param1);
	int (*metric)(struct QSizeGrip_VTable* vtbl, const QSizeGrip* self, int param1);
	void (*initPainter)(struct QSizeGrip_VTable* vtbl, const QSizeGrip* self, QPainter* painter);
	QPaintDevice* (*redirected)(struct QSizeGrip_VTable* vtbl, const QSizeGrip* self, QPoint* offset);
	QPainter* (*sharedPainter)(struct QSizeGrip_VTable* vtbl, const QSizeGrip* self);
	void (*inputMethodEvent)(struct QSizeGrip_VTable* vtbl, QSizeGrip* self, QInputMethodEvent* param1);
	QVariant* (*inputMethodQuery)(struct QSizeGrip_VTable* vtbl, const QSizeGrip* self, int param1);
	bool (*focusNextPrevChild)(struct QSizeGrip_VTable* vtbl, QSizeGrip* self, bool next);
	void (*timerEvent)(struct QSizeGrip_VTable* vtbl, QSizeGrip* self, QTimerEvent* event);
	void (*childEvent)(struct QSizeGrip_VTable* vtbl, QSizeGrip* self, QChildEvent* event);
	void (*customEvent)(struct QSizeGrip_VTable* vtbl, QSizeGrip* self, QEvent* event);
	void (*connectNotify)(struct QSizeGrip_VTable* vtbl, QSizeGrip* self, QMetaMethod* signal);
	void (*disconnectNotify)(struct QSizeGrip_VTable* vtbl, QSizeGrip* self, QMetaMethod* signal);
};
QSizeGrip* QSizeGrip_new(struct QSizeGrip_VTable* vtbl, QWidget* parent);
void QSizeGrip_virtbase(QSizeGrip* src, QWidget** outptr_QWidget);
QMetaObject* QSizeGrip_metaObject(const QSizeGrip* self);
void* QSizeGrip_metacast(QSizeGrip* self, const char* param1);
int QSizeGrip_metacall(QSizeGrip* self, int param1, int param2, void** param3);
struct miqt_string QSizeGrip_tr(const char* s);
struct miqt_string QSizeGrip_trUtf8(const char* s);
QSize* QSizeGrip_sizeHint(const QSizeGrip* self);
void QSizeGrip_setVisible(QSizeGrip* self, bool visible);
void QSizeGrip_paintEvent(QSizeGrip* self, QPaintEvent* param1);
void QSizeGrip_mousePressEvent(QSizeGrip* self, QMouseEvent* param1);
void QSizeGrip_mouseMoveEvent(QSizeGrip* self, QMouseEvent* param1);
void QSizeGrip_mouseReleaseEvent(QSizeGrip* self, QMouseEvent* mouseEvent);
void QSizeGrip_moveEvent(QSizeGrip* self, QMoveEvent* moveEvent);
void QSizeGrip_showEvent(QSizeGrip* self, QShowEvent* showEvent);
void QSizeGrip_hideEvent(QSizeGrip* self, QHideEvent* hideEvent);
bool QSizeGrip_eventFilter(QSizeGrip* self, QObject* param1, QEvent* param2);
bool QSizeGrip_event(QSizeGrip* self, QEvent* param1);
struct miqt_string QSizeGrip_tr2(const char* s, const char* c);
struct miqt_string QSizeGrip_tr3(const char* s, const char* c, int n);
struct miqt_string QSizeGrip_trUtf82(const char* s, const char* c);
struct miqt_string QSizeGrip_trUtf83(const char* s, const char* c, int n);
QMetaObject* QSizeGrip_virtualbase_metaObject(const void* self);
void* QSizeGrip_virtualbase_metacast(void* self, const char* param1);
int QSizeGrip_virtualbase_metacall(void* self, int param1, int param2, void** param3);
QSize* QSizeGrip_virtualbase_sizeHint(const void* self);
void QSizeGrip_virtualbase_setVisible(void* self, bool visible);
void QSizeGrip_virtualbase_paintEvent(void* self, QPaintEvent* param1);
void QSizeGrip_virtualbase_mousePressEvent(void* self, QMouseEvent* param1);
void QSizeGrip_virtualbase_mouseMoveEvent(void* self, QMouseEvent* param1);
void QSizeGrip_virtualbase_mouseReleaseEvent(void* self, QMouseEvent* mouseEvent);
void QSizeGrip_virtualbase_moveEvent(void* self, QMoveEvent* moveEvent);
void QSizeGrip_virtualbase_showEvent(void* self, QShowEvent* showEvent);
void QSizeGrip_virtualbase_hideEvent(void* self, QHideEvent* hideEvent);
bool QSizeGrip_virtualbase_eventFilter(void* self, QObject* param1, QEvent* param2);
bool QSizeGrip_virtualbase_event(void* self, QEvent* param1);
int QSizeGrip_virtualbase_devType(const void* self);
QSize* QSizeGrip_virtualbase_minimumSizeHint(const void* self);
int QSizeGrip_virtualbase_heightForWidth(const void* self, int param1);
bool QSizeGrip_virtualbase_hasHeightForWidth(const void* self);
QPaintEngine* QSizeGrip_virtualbase_paintEngine(const void* self);
void QSizeGrip_virtualbase_mouseDoubleClickEvent(void* self, QMouseEvent* event);
void QSizeGrip_virtualbase_wheelEvent(void* self, QWheelEvent* event);
void QSizeGrip_virtualbase_keyPressEvent(void* self, QKeyEvent* event);
void QSizeGrip_virtualbase_keyReleaseEvent(void* self, QKeyEvent* event);
void QSizeGrip_virtualbase_focusInEvent(void* self, QFocusEvent* event);
void QSizeGrip_virtualbase_focusOutEvent(void* self, QFocusEvent* event);
void QSizeGrip_virtualbase_enterEvent(void* self, QEvent* event);
void QSizeGrip_virtualbase_leaveEvent(void* self, QEvent* event);
void QSizeGrip_virtualbase_resizeEvent(void* self, QResizeEvent* event);
void QSizeGrip_virtualbase_closeEvent(void* self, QCloseEvent* event);
void QSizeGrip_virtualbase_contextMenuEvent(void* self, QContextMenuEvent* event);
void QSizeGrip_virtualbase_tabletEvent(void* self, QTabletEvent* event);
void QSizeGrip_virtualbase_actionEvent(void* self, QActionEvent* event);
void QSizeGrip_virtualbase_dragEnterEvent(void* self, QDragEnterEvent* event);
void QSizeGrip_virtualbase_dragMoveEvent(void* self, QDragMoveEvent* event);
void QSizeGrip_virtualbase_dragLeaveEvent(void* self, QDragLeaveEvent* event);
void QSizeGrip_virtualbase_dropEvent(void* self, QDropEvent* event);
bool QSizeGrip_virtualbase_nativeEvent(void* self, struct miqt_string eventType, void* message, long* result);
void QSizeGrip_virtualbase_changeEvent(void* self, QEvent* param1);
int QSizeGrip_virtualbase_metric(const void* self, int param1);
void QSizeGrip_virtualbase_initPainter(const void* self, QPainter* painter);
QPaintDevice* QSizeGrip_virtualbase_redirected(const void* self, QPoint* offset);
QPainter* QSizeGrip_virtualbase_sharedPainter(const void* self);
void QSizeGrip_virtualbase_inputMethodEvent(void* self, QInputMethodEvent* param1);
QVariant* QSizeGrip_virtualbase_inputMethodQuery(const void* self, int param1);
bool QSizeGrip_virtualbase_focusNextPrevChild(void* self, bool next);
void QSizeGrip_virtualbase_timerEvent(void* self, QTimerEvent* event);
void QSizeGrip_virtualbase_childEvent(void* self, QChildEvent* event);
void QSizeGrip_virtualbase_customEvent(void* self, QEvent* event);
void QSizeGrip_virtualbase_connectNotify(void* self, QMetaMethod* signal);
void QSizeGrip_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);
void QSizeGrip_protectedbase_updateMicroFocus(void* self);
void QSizeGrip_protectedbase_create(void* self);
void QSizeGrip_protectedbase_destroy(void* self);
bool QSizeGrip_protectedbase_focusNextChild(void* self);
bool QSizeGrip_protectedbase_focusPreviousChild(void* self);
QObject* QSizeGrip_protectedbase_sender(const void* self);
int QSizeGrip_protectedbase_senderSignalIndex(const void* self);
int QSizeGrip_protectedbase_receivers(const void* self, const char* signal);
bool QSizeGrip_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal);
const QMetaObject* QSizeGrip_staticMetaObject();
void QSizeGrip_delete(QSizeGrip* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
