#pragma once
#ifndef SEAQT_QTMULTIMEDIAWIDGETS_GEN_QVIDEOWIDGET_H
#define SEAQT_QTMULTIMEDIAWIDGETS_GEN_QVIDEOWIDGET_H

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
class QVideoSink;
class QVideoWidget;
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
typedef struct QVideoSink QVideoSink;
typedef struct QVideoWidget QVideoWidget;
typedef struct QWheelEvent QWheelEvent;
typedef struct QWidget QWidget;
#endif

struct QVideoWidget_VTable {
	void (*destructor)(struct QVideoWidget_VTable* vtbl, QVideoWidget* self);
	QMetaObject* (*metaObject)(struct QVideoWidget_VTable* vtbl, const QVideoWidget* self);
	void* (*metacast)(struct QVideoWidget_VTable* vtbl, QVideoWidget* self, const char* param1);
	int (*metacall)(struct QVideoWidget_VTable* vtbl, QVideoWidget* self, int param1, int param2, void** param3);
	QSize* (*sizeHint)(struct QVideoWidget_VTable* vtbl, const QVideoWidget* self);
	bool (*event)(struct QVideoWidget_VTable* vtbl, QVideoWidget* self, QEvent* event);
	void (*showEvent)(struct QVideoWidget_VTable* vtbl, QVideoWidget* self, QShowEvent* event);
	void (*hideEvent)(struct QVideoWidget_VTable* vtbl, QVideoWidget* self, QHideEvent* event);
	void (*resizeEvent)(struct QVideoWidget_VTable* vtbl, QVideoWidget* self, QResizeEvent* event);
	void (*moveEvent)(struct QVideoWidget_VTable* vtbl, QVideoWidget* self, QMoveEvent* event);
	int (*devType)(struct QVideoWidget_VTable* vtbl, const QVideoWidget* self);
	void (*setVisible)(struct QVideoWidget_VTable* vtbl, QVideoWidget* self, bool visible);
	QSize* (*minimumSizeHint)(struct QVideoWidget_VTable* vtbl, const QVideoWidget* self);
	int (*heightForWidth)(struct QVideoWidget_VTable* vtbl, const QVideoWidget* self, int param1);
	bool (*hasHeightForWidth)(struct QVideoWidget_VTable* vtbl, const QVideoWidget* self);
	QPaintEngine* (*paintEngine)(struct QVideoWidget_VTable* vtbl, const QVideoWidget* self);
	void (*mousePressEvent)(struct QVideoWidget_VTable* vtbl, QVideoWidget* self, QMouseEvent* event);
	void (*mouseReleaseEvent)(struct QVideoWidget_VTable* vtbl, QVideoWidget* self, QMouseEvent* event);
	void (*mouseDoubleClickEvent)(struct QVideoWidget_VTable* vtbl, QVideoWidget* self, QMouseEvent* event);
	void (*mouseMoveEvent)(struct QVideoWidget_VTable* vtbl, QVideoWidget* self, QMouseEvent* event);
	void (*wheelEvent)(struct QVideoWidget_VTable* vtbl, QVideoWidget* self, QWheelEvent* event);
	void (*keyPressEvent)(struct QVideoWidget_VTable* vtbl, QVideoWidget* self, QKeyEvent* event);
	void (*keyReleaseEvent)(struct QVideoWidget_VTable* vtbl, QVideoWidget* self, QKeyEvent* event);
	void (*focusInEvent)(struct QVideoWidget_VTable* vtbl, QVideoWidget* self, QFocusEvent* event);
	void (*focusOutEvent)(struct QVideoWidget_VTable* vtbl, QVideoWidget* self, QFocusEvent* event);
	void (*enterEvent)(struct QVideoWidget_VTable* vtbl, QVideoWidget* self, QEnterEvent* event);
	void (*leaveEvent)(struct QVideoWidget_VTable* vtbl, QVideoWidget* self, QEvent* event);
	void (*paintEvent)(struct QVideoWidget_VTable* vtbl, QVideoWidget* self, QPaintEvent* event);
	void (*closeEvent)(struct QVideoWidget_VTable* vtbl, QVideoWidget* self, QCloseEvent* event);
	void (*contextMenuEvent)(struct QVideoWidget_VTable* vtbl, QVideoWidget* self, QContextMenuEvent* event);
	void (*tabletEvent)(struct QVideoWidget_VTable* vtbl, QVideoWidget* self, QTabletEvent* event);
	void (*actionEvent)(struct QVideoWidget_VTable* vtbl, QVideoWidget* self, QActionEvent* event);
	void (*dragEnterEvent)(struct QVideoWidget_VTable* vtbl, QVideoWidget* self, QDragEnterEvent* event);
	void (*dragMoveEvent)(struct QVideoWidget_VTable* vtbl, QVideoWidget* self, QDragMoveEvent* event);
	void (*dragLeaveEvent)(struct QVideoWidget_VTable* vtbl, QVideoWidget* self, QDragLeaveEvent* event);
	void (*dropEvent)(struct QVideoWidget_VTable* vtbl, QVideoWidget* self, QDropEvent* event);
	bool (*nativeEvent)(struct QVideoWidget_VTable* vtbl, QVideoWidget* self, struct miqt_string eventType, void* message, intptr_t* result);
	void (*changeEvent)(struct QVideoWidget_VTable* vtbl, QVideoWidget* self, QEvent* param1);
	int (*metric)(struct QVideoWidget_VTable* vtbl, const QVideoWidget* self, int param1);
	void (*initPainter)(struct QVideoWidget_VTable* vtbl, const QVideoWidget* self, QPainter* painter);
	QPaintDevice* (*redirected)(struct QVideoWidget_VTable* vtbl, const QVideoWidget* self, QPoint* offset);
	QPainter* (*sharedPainter)(struct QVideoWidget_VTable* vtbl, const QVideoWidget* self);
	void (*inputMethodEvent)(struct QVideoWidget_VTable* vtbl, QVideoWidget* self, QInputMethodEvent* param1);
	QVariant* (*inputMethodQuery)(struct QVideoWidget_VTable* vtbl, const QVideoWidget* self, int param1);
	bool (*focusNextPrevChild)(struct QVideoWidget_VTable* vtbl, QVideoWidget* self, bool next);
	bool (*eventFilter)(struct QVideoWidget_VTable* vtbl, QVideoWidget* self, QObject* watched, QEvent* event);
	void (*timerEvent)(struct QVideoWidget_VTable* vtbl, QVideoWidget* self, QTimerEvent* event);
	void (*childEvent)(struct QVideoWidget_VTable* vtbl, QVideoWidget* self, QChildEvent* event);
	void (*customEvent)(struct QVideoWidget_VTable* vtbl, QVideoWidget* self, QEvent* event);
	void (*connectNotify)(struct QVideoWidget_VTable* vtbl, QVideoWidget* self, QMetaMethod* signal);
	void (*disconnectNotify)(struct QVideoWidget_VTable* vtbl, QVideoWidget* self, QMetaMethod* signal);
};
QVideoWidget* QVideoWidget_new(struct QVideoWidget_VTable* vtbl, QWidget* parent);
QVideoWidget* QVideoWidget_new2(struct QVideoWidget_VTable* vtbl);
void QVideoWidget_virtbase(QVideoWidget* src, QWidget** outptr_QWidget);
QMetaObject* QVideoWidget_metaObject(const QVideoWidget* self);
void* QVideoWidget_metacast(QVideoWidget* self, const char* param1);
int QVideoWidget_metacall(QVideoWidget* self, int param1, int param2, void** param3);
struct miqt_string QVideoWidget_tr(const char* s);
QVideoSink* QVideoWidget_videoSink(const QVideoWidget* self);
int QVideoWidget_aspectRatioMode(const QVideoWidget* self);
QSize* QVideoWidget_sizeHint(const QVideoWidget* self);
void QVideoWidget_setFullScreen(QVideoWidget* self, bool fullScreen);
void QVideoWidget_setAspectRatioMode(QVideoWidget* self, int mode);
void QVideoWidget_fullScreenChanged(QVideoWidget* self, bool fullScreen);
void QVideoWidget_connect_fullScreenChanged(QVideoWidget* self, intptr_t slot, void (*callback)(intptr_t, bool), void (*release)(intptr_t));
void QVideoWidget_aspectRatioModeChanged(QVideoWidget* self, int mode);
void QVideoWidget_connect_aspectRatioModeChanged(QVideoWidget* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t));
bool QVideoWidget_event(QVideoWidget* self, QEvent* event);
void QVideoWidget_showEvent(QVideoWidget* self, QShowEvent* event);
void QVideoWidget_hideEvent(QVideoWidget* self, QHideEvent* event);
void QVideoWidget_resizeEvent(QVideoWidget* self, QResizeEvent* event);
void QVideoWidget_moveEvent(QVideoWidget* self, QMoveEvent* event);
struct miqt_string QVideoWidget_tr2(const char* s, const char* c);
struct miqt_string QVideoWidget_tr3(const char* s, const char* c, int n);
QMetaObject* QVideoWidget_virtualbase_metaObject(const void* self);
void* QVideoWidget_virtualbase_metacast(void* self, const char* param1);
int QVideoWidget_virtualbase_metacall(void* self, int param1, int param2, void** param3);
QSize* QVideoWidget_virtualbase_sizeHint(const void* self);
bool QVideoWidget_virtualbase_event(void* self, QEvent* event);
void QVideoWidget_virtualbase_showEvent(void* self, QShowEvent* event);
void QVideoWidget_virtualbase_hideEvent(void* self, QHideEvent* event);
void QVideoWidget_virtualbase_resizeEvent(void* self, QResizeEvent* event);
void QVideoWidget_virtualbase_moveEvent(void* self, QMoveEvent* event);
int QVideoWidget_virtualbase_devType(const void* self);
void QVideoWidget_virtualbase_setVisible(void* self, bool visible);
QSize* QVideoWidget_virtualbase_minimumSizeHint(const void* self);
int QVideoWidget_virtualbase_heightForWidth(const void* self, int param1);
bool QVideoWidget_virtualbase_hasHeightForWidth(const void* self);
QPaintEngine* QVideoWidget_virtualbase_paintEngine(const void* self);
void QVideoWidget_virtualbase_mousePressEvent(void* self, QMouseEvent* event);
void QVideoWidget_virtualbase_mouseReleaseEvent(void* self, QMouseEvent* event);
void QVideoWidget_virtualbase_mouseDoubleClickEvent(void* self, QMouseEvent* event);
void QVideoWidget_virtualbase_mouseMoveEvent(void* self, QMouseEvent* event);
void QVideoWidget_virtualbase_wheelEvent(void* self, QWheelEvent* event);
void QVideoWidget_virtualbase_keyPressEvent(void* self, QKeyEvent* event);
void QVideoWidget_virtualbase_keyReleaseEvent(void* self, QKeyEvent* event);
void QVideoWidget_virtualbase_focusInEvent(void* self, QFocusEvent* event);
void QVideoWidget_virtualbase_focusOutEvent(void* self, QFocusEvent* event);
void QVideoWidget_virtualbase_enterEvent(void* self, QEnterEvent* event);
void QVideoWidget_virtualbase_leaveEvent(void* self, QEvent* event);
void QVideoWidget_virtualbase_paintEvent(void* self, QPaintEvent* event);
void QVideoWidget_virtualbase_closeEvent(void* self, QCloseEvent* event);
void QVideoWidget_virtualbase_contextMenuEvent(void* self, QContextMenuEvent* event);
void QVideoWidget_virtualbase_tabletEvent(void* self, QTabletEvent* event);
void QVideoWidget_virtualbase_actionEvent(void* self, QActionEvent* event);
void QVideoWidget_virtualbase_dragEnterEvent(void* self, QDragEnterEvent* event);
void QVideoWidget_virtualbase_dragMoveEvent(void* self, QDragMoveEvent* event);
void QVideoWidget_virtualbase_dragLeaveEvent(void* self, QDragLeaveEvent* event);
void QVideoWidget_virtualbase_dropEvent(void* self, QDropEvent* event);
bool QVideoWidget_virtualbase_nativeEvent(void* self, struct miqt_string eventType, void* message, intptr_t* result);
void QVideoWidget_virtualbase_changeEvent(void* self, QEvent* param1);
int QVideoWidget_virtualbase_metric(const void* self, int param1);
void QVideoWidget_virtualbase_initPainter(const void* self, QPainter* painter);
QPaintDevice* QVideoWidget_virtualbase_redirected(const void* self, QPoint* offset);
QPainter* QVideoWidget_virtualbase_sharedPainter(const void* self);
void QVideoWidget_virtualbase_inputMethodEvent(void* self, QInputMethodEvent* param1);
QVariant* QVideoWidget_virtualbase_inputMethodQuery(const void* self, int param1);
bool QVideoWidget_virtualbase_focusNextPrevChild(void* self, bool next);
bool QVideoWidget_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);
void QVideoWidget_virtualbase_timerEvent(void* self, QTimerEvent* event);
void QVideoWidget_virtualbase_childEvent(void* self, QChildEvent* event);
void QVideoWidget_virtualbase_customEvent(void* self, QEvent* event);
void QVideoWidget_virtualbase_connectNotify(void* self, QMetaMethod* signal);
void QVideoWidget_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);
void QVideoWidget_protectedbase_updateMicroFocus(bool* _dynamic_cast_ok, void* self);
void QVideoWidget_protectedbase_create(bool* _dynamic_cast_ok, void* self);
void QVideoWidget_protectedbase_destroy(bool* _dynamic_cast_ok, void* self);
bool QVideoWidget_protectedbase_focusNextChild(bool* _dynamic_cast_ok, void* self);
bool QVideoWidget_protectedbase_focusPreviousChild(bool* _dynamic_cast_ok, void* self);
QObject* QVideoWidget_protectedbase_sender(bool* _dynamic_cast_ok, const void* self);
int QVideoWidget_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self);
int QVideoWidget_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal);
bool QVideoWidget_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal);
const QMetaObject* QVideoWidget_staticMetaObject();
void QVideoWidget_delete(QVideoWidget* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
