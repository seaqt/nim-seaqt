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

typedef struct VirtualQCameraViewfinder VirtualQCameraViewfinder;
typedef struct QCameraViewfinder_VTable{
	void (*destructor)(VirtualQCameraViewfinder* self);
	QMetaObject* (*metaObject)(const VirtualQCameraViewfinder* self);
	void* (*metacast)(VirtualQCameraViewfinder* self, const char* param1);
	int (*metacall)(VirtualQCameraViewfinder* self, int param1, int param2, void** param3);
	QMediaObject* (*mediaObject)(const VirtualQCameraViewfinder* self);
	bool (*setMediaObject)(VirtualQCameraViewfinder* self, QMediaObject* object);
	QSize* (*sizeHint)(const VirtualQCameraViewfinder* self);
	bool (*event)(VirtualQCameraViewfinder* self, QEvent* event);
	void (*showEvent)(VirtualQCameraViewfinder* self, QShowEvent* event);
	void (*hideEvent)(VirtualQCameraViewfinder* self, QHideEvent* event);
	void (*resizeEvent)(VirtualQCameraViewfinder* self, QResizeEvent* event);
	void (*moveEvent)(VirtualQCameraViewfinder* self, QMoveEvent* event);
	void (*paintEvent)(VirtualQCameraViewfinder* self, QPaintEvent* event);
	int (*devType)(const VirtualQCameraViewfinder* self);
	void (*setVisible)(VirtualQCameraViewfinder* self, bool visible);
	QSize* (*minimumSizeHint)(const VirtualQCameraViewfinder* self);
	int (*heightForWidth)(const VirtualQCameraViewfinder* self, int param1);
	bool (*hasHeightForWidth)(const VirtualQCameraViewfinder* self);
	QPaintEngine* (*paintEngine)(const VirtualQCameraViewfinder* self);
	void (*mousePressEvent)(VirtualQCameraViewfinder* self, QMouseEvent* event);
	void (*mouseReleaseEvent)(VirtualQCameraViewfinder* self, QMouseEvent* event);
	void (*mouseDoubleClickEvent)(VirtualQCameraViewfinder* self, QMouseEvent* event);
	void (*mouseMoveEvent)(VirtualQCameraViewfinder* self, QMouseEvent* event);
	void (*wheelEvent)(VirtualQCameraViewfinder* self, QWheelEvent* event);
	void (*keyPressEvent)(VirtualQCameraViewfinder* self, QKeyEvent* event);
	void (*keyReleaseEvent)(VirtualQCameraViewfinder* self, QKeyEvent* event);
	void (*focusInEvent)(VirtualQCameraViewfinder* self, QFocusEvent* event);
	void (*focusOutEvent)(VirtualQCameraViewfinder* self, QFocusEvent* event);
	void (*enterEvent)(VirtualQCameraViewfinder* self, QEvent* event);
	void (*leaveEvent)(VirtualQCameraViewfinder* self, QEvent* event);
	void (*closeEvent)(VirtualQCameraViewfinder* self, QCloseEvent* event);
	void (*contextMenuEvent)(VirtualQCameraViewfinder* self, QContextMenuEvent* event);
	void (*tabletEvent)(VirtualQCameraViewfinder* self, QTabletEvent* event);
	void (*actionEvent)(VirtualQCameraViewfinder* self, QActionEvent* event);
	void (*dragEnterEvent)(VirtualQCameraViewfinder* self, QDragEnterEvent* event);
	void (*dragMoveEvent)(VirtualQCameraViewfinder* self, QDragMoveEvent* event);
	void (*dragLeaveEvent)(VirtualQCameraViewfinder* self, QDragLeaveEvent* event);
	void (*dropEvent)(VirtualQCameraViewfinder* self, QDropEvent* event);
	bool (*nativeEvent)(VirtualQCameraViewfinder* self, struct miqt_string eventType, void* message, long* result);
	void (*changeEvent)(VirtualQCameraViewfinder* self, QEvent* param1);
	int (*metric)(const VirtualQCameraViewfinder* self, int param1);
	void (*initPainter)(const VirtualQCameraViewfinder* self, QPainter* painter);
	QPaintDevice* (*redirected)(const VirtualQCameraViewfinder* self, QPoint* offset);
	QPainter* (*sharedPainter)(const VirtualQCameraViewfinder* self);
	void (*inputMethodEvent)(VirtualQCameraViewfinder* self, QInputMethodEvent* param1);
	QVariant* (*inputMethodQuery)(const VirtualQCameraViewfinder* self, int param1);
	bool (*focusNextPrevChild)(VirtualQCameraViewfinder* self, bool next);
	bool (*eventFilter)(VirtualQCameraViewfinder* self, QObject* watched, QEvent* event);
	void (*timerEvent)(VirtualQCameraViewfinder* self, QTimerEvent* event);
	void (*childEvent)(VirtualQCameraViewfinder* self, QChildEvent* event);
	void (*customEvent)(VirtualQCameraViewfinder* self, QEvent* event);
	void (*connectNotify)(VirtualQCameraViewfinder* self, QMetaMethod* signal);
	void (*disconnectNotify)(VirtualQCameraViewfinder* self, QMetaMethod* signal);
}QCameraViewfinder_VTable;

const QCameraViewfinder_VTable* QCameraViewfinder_vtbl(const VirtualQCameraViewfinder* self);
void* QCameraViewfinder_vdata(const VirtualQCameraViewfinder* self);
void QCameraViewfinder_setVdata(VirtualQCameraViewfinder* self, void* vdata);

VirtualQCameraViewfinder* QCameraViewfinder_new(const QCameraViewfinder_VTable* vtbl, void* vdata, QWidget* parent);
VirtualQCameraViewfinder* QCameraViewfinder_new2(const QCameraViewfinder_VTable* vtbl, void* vdata);

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

QMetaObject* QCameraViewfinder_virtualbase_metaObject(const VirtualQCameraViewfinder* self);
void* QCameraViewfinder_virtualbase_metacast(VirtualQCameraViewfinder* self, const char* param1);
int QCameraViewfinder_virtualbase_metacall(VirtualQCameraViewfinder* self, int param1, int param2, void** param3);
QMediaObject* QCameraViewfinder_virtualbase_mediaObject(const VirtualQCameraViewfinder* self);
bool QCameraViewfinder_virtualbase_setMediaObject(VirtualQCameraViewfinder* self, QMediaObject* object);
QSize* QCameraViewfinder_virtualbase_sizeHint(const VirtualQCameraViewfinder* self);
bool QCameraViewfinder_virtualbase_event(VirtualQCameraViewfinder* self, QEvent* event);
void QCameraViewfinder_virtualbase_showEvent(VirtualQCameraViewfinder* self, QShowEvent* event);
void QCameraViewfinder_virtualbase_hideEvent(VirtualQCameraViewfinder* self, QHideEvent* event);
void QCameraViewfinder_virtualbase_resizeEvent(VirtualQCameraViewfinder* self, QResizeEvent* event);
void QCameraViewfinder_virtualbase_moveEvent(VirtualQCameraViewfinder* self, QMoveEvent* event);
void QCameraViewfinder_virtualbase_paintEvent(VirtualQCameraViewfinder* self, QPaintEvent* event);
int QCameraViewfinder_virtualbase_devType(const VirtualQCameraViewfinder* self);
void QCameraViewfinder_virtualbase_setVisible(VirtualQCameraViewfinder* self, bool visible);
QSize* QCameraViewfinder_virtualbase_minimumSizeHint(const VirtualQCameraViewfinder* self);
int QCameraViewfinder_virtualbase_heightForWidth(const VirtualQCameraViewfinder* self, int param1);
bool QCameraViewfinder_virtualbase_hasHeightForWidth(const VirtualQCameraViewfinder* self);
QPaintEngine* QCameraViewfinder_virtualbase_paintEngine(const VirtualQCameraViewfinder* self);
void QCameraViewfinder_virtualbase_mousePressEvent(VirtualQCameraViewfinder* self, QMouseEvent* event);
void QCameraViewfinder_virtualbase_mouseReleaseEvent(VirtualQCameraViewfinder* self, QMouseEvent* event);
void QCameraViewfinder_virtualbase_mouseDoubleClickEvent(VirtualQCameraViewfinder* self, QMouseEvent* event);
void QCameraViewfinder_virtualbase_mouseMoveEvent(VirtualQCameraViewfinder* self, QMouseEvent* event);
void QCameraViewfinder_virtualbase_wheelEvent(VirtualQCameraViewfinder* self, QWheelEvent* event);
void QCameraViewfinder_virtualbase_keyPressEvent(VirtualQCameraViewfinder* self, QKeyEvent* event);
void QCameraViewfinder_virtualbase_keyReleaseEvent(VirtualQCameraViewfinder* self, QKeyEvent* event);
void QCameraViewfinder_virtualbase_focusInEvent(VirtualQCameraViewfinder* self, QFocusEvent* event);
void QCameraViewfinder_virtualbase_focusOutEvent(VirtualQCameraViewfinder* self, QFocusEvent* event);
void QCameraViewfinder_virtualbase_enterEvent(VirtualQCameraViewfinder* self, QEvent* event);
void QCameraViewfinder_virtualbase_leaveEvent(VirtualQCameraViewfinder* self, QEvent* event);
void QCameraViewfinder_virtualbase_closeEvent(VirtualQCameraViewfinder* self, QCloseEvent* event);
void QCameraViewfinder_virtualbase_contextMenuEvent(VirtualQCameraViewfinder* self, QContextMenuEvent* event);
void QCameraViewfinder_virtualbase_tabletEvent(VirtualQCameraViewfinder* self, QTabletEvent* event);
void QCameraViewfinder_virtualbase_actionEvent(VirtualQCameraViewfinder* self, QActionEvent* event);
void QCameraViewfinder_virtualbase_dragEnterEvent(VirtualQCameraViewfinder* self, QDragEnterEvent* event);
void QCameraViewfinder_virtualbase_dragMoveEvent(VirtualQCameraViewfinder* self, QDragMoveEvent* event);
void QCameraViewfinder_virtualbase_dragLeaveEvent(VirtualQCameraViewfinder* self, QDragLeaveEvent* event);
void QCameraViewfinder_virtualbase_dropEvent(VirtualQCameraViewfinder* self, QDropEvent* event);
bool QCameraViewfinder_virtualbase_nativeEvent(VirtualQCameraViewfinder* self, struct miqt_string eventType, void* message, long* result);
void QCameraViewfinder_virtualbase_changeEvent(VirtualQCameraViewfinder* self, QEvent* param1);
int QCameraViewfinder_virtualbase_metric(const VirtualQCameraViewfinder* self, int param1);
void QCameraViewfinder_virtualbase_initPainter(const VirtualQCameraViewfinder* self, QPainter* painter);
QPaintDevice* QCameraViewfinder_virtualbase_redirected(const VirtualQCameraViewfinder* self, QPoint* offset);
QPainter* QCameraViewfinder_virtualbase_sharedPainter(const VirtualQCameraViewfinder* self);
void QCameraViewfinder_virtualbase_inputMethodEvent(VirtualQCameraViewfinder* self, QInputMethodEvent* param1);
QVariant* QCameraViewfinder_virtualbase_inputMethodQuery(const VirtualQCameraViewfinder* self, int param1);
bool QCameraViewfinder_virtualbase_focusNextPrevChild(VirtualQCameraViewfinder* self, bool next);
bool QCameraViewfinder_virtualbase_eventFilter(VirtualQCameraViewfinder* self, QObject* watched, QEvent* event);
void QCameraViewfinder_virtualbase_timerEvent(VirtualQCameraViewfinder* self, QTimerEvent* event);
void QCameraViewfinder_virtualbase_childEvent(VirtualQCameraViewfinder* self, QChildEvent* event);
void QCameraViewfinder_virtualbase_customEvent(VirtualQCameraViewfinder* self, QEvent* event);
void QCameraViewfinder_virtualbase_connectNotify(VirtualQCameraViewfinder* self, QMetaMethod* signal);
void QCameraViewfinder_virtualbase_disconnectNotify(VirtualQCameraViewfinder* self, QMetaMethod* signal);

void QCameraViewfinder_protectedbase_updateMicroFocus(VirtualQCameraViewfinder* self);
void QCameraViewfinder_protectedbase_create(VirtualQCameraViewfinder* self);
void QCameraViewfinder_protectedbase_destroy(VirtualQCameraViewfinder* self);
bool QCameraViewfinder_protectedbase_focusNextChild(VirtualQCameraViewfinder* self);
bool QCameraViewfinder_protectedbase_focusPreviousChild(VirtualQCameraViewfinder* self);
QObject* QCameraViewfinder_protectedbase_sender(const VirtualQCameraViewfinder* self);
int QCameraViewfinder_protectedbase_senderSignalIndex(const VirtualQCameraViewfinder* self);
int QCameraViewfinder_protectedbase_receivers(const VirtualQCameraViewfinder* self, const char* signal);
bool QCameraViewfinder_protectedbase_isSignalConnected(const VirtualQCameraViewfinder* self, QMetaMethod* signal);

const QMetaObject* QCameraViewfinder_staticMetaObject();
void QCameraViewfinder_delete(QCameraViewfinder* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
