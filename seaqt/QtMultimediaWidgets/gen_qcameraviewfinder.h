#pragma once
#ifndef SEAQT_QTMULTIMEDIAWIDGETS_GEN_QCAMERAVIEWFINDER_H
#define SEAQT_QTMULTIMEDIAWIDGETS_GEN_QCAMERAVIEWFINDER_H

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
class QCameraViewfinder;
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
class QMediaBindableInterface;
class QMediaObject;
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
class QVideoWidget;
class QWheelEvent;
class QWidget;
#else
typedef struct QActionEvent QActionEvent;
typedef struct QCameraViewfinder QCameraViewfinder;
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
typedef struct QMediaBindableInterface QMediaBindableInterface;
typedef struct QMediaObject QMediaObject;
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
typedef struct QVideoWidget QVideoWidget;
typedef struct QWheelEvent QWheelEvent;
typedef struct QWidget QWidget;
#endif

struct QCameraViewfinder_VTable {
	void (*destructor)(struct QCameraViewfinder_VTable* vtbl, QCameraViewfinder* self);
	QMetaObject* (*metaObject)(struct QCameraViewfinder_VTable* vtbl, const QCameraViewfinder* self);
	void* (*metacast)(struct QCameraViewfinder_VTable* vtbl, QCameraViewfinder* self, const char* param1);
	int (*metacall)(struct QCameraViewfinder_VTable* vtbl, QCameraViewfinder* self, int param1, int param2, void** param3);
	QMediaObject* (*mediaObject)(struct QCameraViewfinder_VTable* vtbl, const QCameraViewfinder* self);
	bool (*setMediaObject)(struct QCameraViewfinder_VTable* vtbl, QCameraViewfinder* self, QMediaObject* object);
	QSize* (*sizeHint)(struct QCameraViewfinder_VTable* vtbl, const QCameraViewfinder* self);
	bool (*event)(struct QCameraViewfinder_VTable* vtbl, QCameraViewfinder* self, QEvent* event);
	void (*showEvent)(struct QCameraViewfinder_VTable* vtbl, QCameraViewfinder* self, QShowEvent* event);
	void (*hideEvent)(struct QCameraViewfinder_VTable* vtbl, QCameraViewfinder* self, QHideEvent* event);
	void (*resizeEvent)(struct QCameraViewfinder_VTable* vtbl, QCameraViewfinder* self, QResizeEvent* event);
	void (*moveEvent)(struct QCameraViewfinder_VTable* vtbl, QCameraViewfinder* self, QMoveEvent* event);
	void (*paintEvent)(struct QCameraViewfinder_VTable* vtbl, QCameraViewfinder* self, QPaintEvent* event);
	int (*devType)(struct QCameraViewfinder_VTable* vtbl, const QCameraViewfinder* self);
	void (*setVisible)(struct QCameraViewfinder_VTable* vtbl, QCameraViewfinder* self, bool visible);
	QSize* (*minimumSizeHint)(struct QCameraViewfinder_VTable* vtbl, const QCameraViewfinder* self);
	int (*heightForWidth)(struct QCameraViewfinder_VTable* vtbl, const QCameraViewfinder* self, int param1);
	bool (*hasHeightForWidth)(struct QCameraViewfinder_VTable* vtbl, const QCameraViewfinder* self);
	QPaintEngine* (*paintEngine)(struct QCameraViewfinder_VTable* vtbl, const QCameraViewfinder* self);
	void (*mousePressEvent)(struct QCameraViewfinder_VTable* vtbl, QCameraViewfinder* self, QMouseEvent* event);
	void (*mouseReleaseEvent)(struct QCameraViewfinder_VTable* vtbl, QCameraViewfinder* self, QMouseEvent* event);
	void (*mouseDoubleClickEvent)(struct QCameraViewfinder_VTable* vtbl, QCameraViewfinder* self, QMouseEvent* event);
	void (*mouseMoveEvent)(struct QCameraViewfinder_VTable* vtbl, QCameraViewfinder* self, QMouseEvent* event);
	void (*wheelEvent)(struct QCameraViewfinder_VTable* vtbl, QCameraViewfinder* self, QWheelEvent* event);
	void (*keyPressEvent)(struct QCameraViewfinder_VTable* vtbl, QCameraViewfinder* self, QKeyEvent* event);
	void (*keyReleaseEvent)(struct QCameraViewfinder_VTable* vtbl, QCameraViewfinder* self, QKeyEvent* event);
	void (*focusInEvent)(struct QCameraViewfinder_VTable* vtbl, QCameraViewfinder* self, QFocusEvent* event);
	void (*focusOutEvent)(struct QCameraViewfinder_VTable* vtbl, QCameraViewfinder* self, QFocusEvent* event);
	void (*enterEvent)(struct QCameraViewfinder_VTable* vtbl, QCameraViewfinder* self, QEvent* event);
	void (*leaveEvent)(struct QCameraViewfinder_VTable* vtbl, QCameraViewfinder* self, QEvent* event);
	void (*closeEvent)(struct QCameraViewfinder_VTable* vtbl, QCameraViewfinder* self, QCloseEvent* event);
	void (*contextMenuEvent)(struct QCameraViewfinder_VTable* vtbl, QCameraViewfinder* self, QContextMenuEvent* event);
	void (*tabletEvent)(struct QCameraViewfinder_VTable* vtbl, QCameraViewfinder* self, QTabletEvent* event);
	void (*actionEvent)(struct QCameraViewfinder_VTable* vtbl, QCameraViewfinder* self, QActionEvent* event);
	void (*dragEnterEvent)(struct QCameraViewfinder_VTable* vtbl, QCameraViewfinder* self, QDragEnterEvent* event);
	void (*dragMoveEvent)(struct QCameraViewfinder_VTable* vtbl, QCameraViewfinder* self, QDragMoveEvent* event);
	void (*dragLeaveEvent)(struct QCameraViewfinder_VTable* vtbl, QCameraViewfinder* self, QDragLeaveEvent* event);
	void (*dropEvent)(struct QCameraViewfinder_VTable* vtbl, QCameraViewfinder* self, QDropEvent* event);
	bool (*nativeEvent)(struct QCameraViewfinder_VTable* vtbl, QCameraViewfinder* self, struct miqt_string eventType, void* message, long* result);
	void (*changeEvent)(struct QCameraViewfinder_VTable* vtbl, QCameraViewfinder* self, QEvent* param1);
	int (*metric)(struct QCameraViewfinder_VTable* vtbl, const QCameraViewfinder* self, int param1);
	void (*initPainter)(struct QCameraViewfinder_VTable* vtbl, const QCameraViewfinder* self, QPainter* painter);
	QPaintDevice* (*redirected)(struct QCameraViewfinder_VTable* vtbl, const QCameraViewfinder* self, QPoint* offset);
	QPainter* (*sharedPainter)(struct QCameraViewfinder_VTable* vtbl, const QCameraViewfinder* self);
	void (*inputMethodEvent)(struct QCameraViewfinder_VTable* vtbl, QCameraViewfinder* self, QInputMethodEvent* param1);
	QVariant* (*inputMethodQuery)(struct QCameraViewfinder_VTable* vtbl, const QCameraViewfinder* self, int param1);
	bool (*focusNextPrevChild)(struct QCameraViewfinder_VTable* vtbl, QCameraViewfinder* self, bool next);
	bool (*eventFilter)(struct QCameraViewfinder_VTable* vtbl, QCameraViewfinder* self, QObject* watched, QEvent* event);
	void (*timerEvent)(struct QCameraViewfinder_VTable* vtbl, QCameraViewfinder* self, QTimerEvent* event);
	void (*childEvent)(struct QCameraViewfinder_VTable* vtbl, QCameraViewfinder* self, QChildEvent* event);
	void (*customEvent)(struct QCameraViewfinder_VTable* vtbl, QCameraViewfinder* self, QEvent* event);
	void (*connectNotify)(struct QCameraViewfinder_VTable* vtbl, QCameraViewfinder* self, QMetaMethod* signal);
	void (*disconnectNotify)(struct QCameraViewfinder_VTable* vtbl, QCameraViewfinder* self, QMetaMethod* signal);
};
QCameraViewfinder* QCameraViewfinder_new(struct QCameraViewfinder_VTable* vtbl, QWidget* parent);
QCameraViewfinder* QCameraViewfinder_new2(struct QCameraViewfinder_VTable* vtbl);
void QCameraViewfinder_virtbase(QCameraViewfinder* src, QVideoWidget** outptr_QVideoWidget);
QMetaObject* QCameraViewfinder_metaObject(const QCameraViewfinder* self);
void* QCameraViewfinder_metacast(QCameraViewfinder* self, const char* param1);
int QCameraViewfinder_metacall(QCameraViewfinder* self, int param1, int param2, void** param3);
struct miqt_string QCameraViewfinder_tr(const char* s);
struct miqt_string QCameraViewfinder_trUtf8(const char* s);
QMediaObject* QCameraViewfinder_mediaObject(const QCameraViewfinder* self);
bool QCameraViewfinder_setMediaObject(QCameraViewfinder* self, QMediaObject* object);
struct miqt_string QCameraViewfinder_tr2(const char* s, const char* c);
struct miqt_string QCameraViewfinder_tr3(const char* s, const char* c, int n);
struct miqt_string QCameraViewfinder_trUtf82(const char* s, const char* c);
struct miqt_string QCameraViewfinder_trUtf83(const char* s, const char* c, int n);
QMetaObject* QCameraViewfinder_virtualbase_metaObject(const void* self);
void* QCameraViewfinder_virtualbase_metacast(void* self, const char* param1);
int QCameraViewfinder_virtualbase_metacall(void* self, int param1, int param2, void** param3);
QMediaObject* QCameraViewfinder_virtualbase_mediaObject(const void* self);
bool QCameraViewfinder_virtualbase_setMediaObject(void* self, QMediaObject* object);
QSize* QCameraViewfinder_virtualbase_sizeHint(const void* self);
bool QCameraViewfinder_virtualbase_event(void* self, QEvent* event);
void QCameraViewfinder_virtualbase_showEvent(void* self, QShowEvent* event);
void QCameraViewfinder_virtualbase_hideEvent(void* self, QHideEvent* event);
void QCameraViewfinder_virtualbase_resizeEvent(void* self, QResizeEvent* event);
void QCameraViewfinder_virtualbase_moveEvent(void* self, QMoveEvent* event);
void QCameraViewfinder_virtualbase_paintEvent(void* self, QPaintEvent* event);
int QCameraViewfinder_virtualbase_devType(const void* self);
void QCameraViewfinder_virtualbase_setVisible(void* self, bool visible);
QSize* QCameraViewfinder_virtualbase_minimumSizeHint(const void* self);
int QCameraViewfinder_virtualbase_heightForWidth(const void* self, int param1);
bool QCameraViewfinder_virtualbase_hasHeightForWidth(const void* self);
QPaintEngine* QCameraViewfinder_virtualbase_paintEngine(const void* self);
void QCameraViewfinder_virtualbase_mousePressEvent(void* self, QMouseEvent* event);
void QCameraViewfinder_virtualbase_mouseReleaseEvent(void* self, QMouseEvent* event);
void QCameraViewfinder_virtualbase_mouseDoubleClickEvent(void* self, QMouseEvent* event);
void QCameraViewfinder_virtualbase_mouseMoveEvent(void* self, QMouseEvent* event);
void QCameraViewfinder_virtualbase_wheelEvent(void* self, QWheelEvent* event);
void QCameraViewfinder_virtualbase_keyPressEvent(void* self, QKeyEvent* event);
void QCameraViewfinder_virtualbase_keyReleaseEvent(void* self, QKeyEvent* event);
void QCameraViewfinder_virtualbase_focusInEvent(void* self, QFocusEvent* event);
void QCameraViewfinder_virtualbase_focusOutEvent(void* self, QFocusEvent* event);
void QCameraViewfinder_virtualbase_enterEvent(void* self, QEvent* event);
void QCameraViewfinder_virtualbase_leaveEvent(void* self, QEvent* event);
void QCameraViewfinder_virtualbase_closeEvent(void* self, QCloseEvent* event);
void QCameraViewfinder_virtualbase_contextMenuEvent(void* self, QContextMenuEvent* event);
void QCameraViewfinder_virtualbase_tabletEvent(void* self, QTabletEvent* event);
void QCameraViewfinder_virtualbase_actionEvent(void* self, QActionEvent* event);
void QCameraViewfinder_virtualbase_dragEnterEvent(void* self, QDragEnterEvent* event);
void QCameraViewfinder_virtualbase_dragMoveEvent(void* self, QDragMoveEvent* event);
void QCameraViewfinder_virtualbase_dragLeaveEvent(void* self, QDragLeaveEvent* event);
void QCameraViewfinder_virtualbase_dropEvent(void* self, QDropEvent* event);
bool QCameraViewfinder_virtualbase_nativeEvent(void* self, struct miqt_string eventType, void* message, long* result);
void QCameraViewfinder_virtualbase_changeEvent(void* self, QEvent* param1);
int QCameraViewfinder_virtualbase_metric(const void* self, int param1);
void QCameraViewfinder_virtualbase_initPainter(const void* self, QPainter* painter);
QPaintDevice* QCameraViewfinder_virtualbase_redirected(const void* self, QPoint* offset);
QPainter* QCameraViewfinder_virtualbase_sharedPainter(const void* self);
void QCameraViewfinder_virtualbase_inputMethodEvent(void* self, QInputMethodEvent* param1);
QVariant* QCameraViewfinder_virtualbase_inputMethodQuery(const void* self, int param1);
bool QCameraViewfinder_virtualbase_focusNextPrevChild(void* self, bool next);
bool QCameraViewfinder_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);
void QCameraViewfinder_virtualbase_timerEvent(void* self, QTimerEvent* event);
void QCameraViewfinder_virtualbase_childEvent(void* self, QChildEvent* event);
void QCameraViewfinder_virtualbase_customEvent(void* self, QEvent* event);
void QCameraViewfinder_virtualbase_connectNotify(void* self, QMetaMethod* signal);
void QCameraViewfinder_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);
void QCameraViewfinder_protectedbase_updateMicroFocus(bool* _dynamic_cast_ok, void* self);
void QCameraViewfinder_protectedbase_create(bool* _dynamic_cast_ok, void* self);
void QCameraViewfinder_protectedbase_destroy(bool* _dynamic_cast_ok, void* self);
bool QCameraViewfinder_protectedbase_focusNextChild(bool* _dynamic_cast_ok, void* self);
bool QCameraViewfinder_protectedbase_focusPreviousChild(bool* _dynamic_cast_ok, void* self);
QObject* QCameraViewfinder_protectedbase_sender(bool* _dynamic_cast_ok, const void* self);
int QCameraViewfinder_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self);
int QCameraViewfinder_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal);
bool QCameraViewfinder_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal);
const QMetaObject* QCameraViewfinder_staticMetaObject();
void QCameraViewfinder_delete(QCameraViewfinder* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
