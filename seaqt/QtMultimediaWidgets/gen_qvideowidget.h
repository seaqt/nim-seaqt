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
class QAbstractVideoSurface;
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
typedef struct QAbstractVideoSurface QAbstractVideoSurface;
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

typedef struct VirtualQVideoWidget VirtualQVideoWidget;
typedef struct QVideoWidget_VTable{
	void (*destructor)(VirtualQVideoWidget* self);
	QMetaObject* (*metaObject)(const VirtualQVideoWidget* self);
	void* (*metacast)(VirtualQVideoWidget* self, const char* param1);
	int (*metacall)(VirtualQVideoWidget* self, int param1, int param2, void** param3);
	QMediaObject* (*mediaObject)(const VirtualQVideoWidget* self);
	QSize* (*sizeHint)(const VirtualQVideoWidget* self);
	bool (*event)(VirtualQVideoWidget* self, QEvent* event);
	void (*showEvent)(VirtualQVideoWidget* self, QShowEvent* event);
	void (*hideEvent)(VirtualQVideoWidget* self, QHideEvent* event);
	void (*resizeEvent)(VirtualQVideoWidget* self, QResizeEvent* event);
	void (*moveEvent)(VirtualQVideoWidget* self, QMoveEvent* event);
	void (*paintEvent)(VirtualQVideoWidget* self, QPaintEvent* event);
	bool (*setMediaObject)(VirtualQVideoWidget* self, QMediaObject* object);
	int (*devType)(const VirtualQVideoWidget* self);
	void (*setVisible)(VirtualQVideoWidget* self, bool visible);
	QSize* (*minimumSizeHint)(const VirtualQVideoWidget* self);
	int (*heightForWidth)(const VirtualQVideoWidget* self, int param1);
	bool (*hasHeightForWidth)(const VirtualQVideoWidget* self);
	QPaintEngine* (*paintEngine)(const VirtualQVideoWidget* self);
	void (*mousePressEvent)(VirtualQVideoWidget* self, QMouseEvent* event);
	void (*mouseReleaseEvent)(VirtualQVideoWidget* self, QMouseEvent* event);
	void (*mouseDoubleClickEvent)(VirtualQVideoWidget* self, QMouseEvent* event);
	void (*mouseMoveEvent)(VirtualQVideoWidget* self, QMouseEvent* event);
	void (*wheelEvent)(VirtualQVideoWidget* self, QWheelEvent* event);
	void (*keyPressEvent)(VirtualQVideoWidget* self, QKeyEvent* event);
	void (*keyReleaseEvent)(VirtualQVideoWidget* self, QKeyEvent* event);
	void (*focusInEvent)(VirtualQVideoWidget* self, QFocusEvent* event);
	void (*focusOutEvent)(VirtualQVideoWidget* self, QFocusEvent* event);
	void (*enterEvent)(VirtualQVideoWidget* self, QEvent* event);
	void (*leaveEvent)(VirtualQVideoWidget* self, QEvent* event);
	void (*closeEvent)(VirtualQVideoWidget* self, QCloseEvent* event);
	void (*contextMenuEvent)(VirtualQVideoWidget* self, QContextMenuEvent* event);
	void (*tabletEvent)(VirtualQVideoWidget* self, QTabletEvent* event);
	void (*actionEvent)(VirtualQVideoWidget* self, QActionEvent* event);
	void (*dragEnterEvent)(VirtualQVideoWidget* self, QDragEnterEvent* event);
	void (*dragMoveEvent)(VirtualQVideoWidget* self, QDragMoveEvent* event);
	void (*dragLeaveEvent)(VirtualQVideoWidget* self, QDragLeaveEvent* event);
	void (*dropEvent)(VirtualQVideoWidget* self, QDropEvent* event);
	bool (*nativeEvent)(VirtualQVideoWidget* self, struct miqt_string eventType, void* message, long* result);
	void (*changeEvent)(VirtualQVideoWidget* self, QEvent* param1);
	int (*metric)(const VirtualQVideoWidget* self, int param1);
	void (*initPainter)(const VirtualQVideoWidget* self, QPainter* painter);
	QPaintDevice* (*redirected)(const VirtualQVideoWidget* self, QPoint* offset);
	QPainter* (*sharedPainter)(const VirtualQVideoWidget* self);
	void (*inputMethodEvent)(VirtualQVideoWidget* self, QInputMethodEvent* param1);
	QVariant* (*inputMethodQuery)(const VirtualQVideoWidget* self, int param1);
	bool (*focusNextPrevChild)(VirtualQVideoWidget* self, bool next);
	bool (*eventFilter)(VirtualQVideoWidget* self, QObject* watched, QEvent* event);
	void (*timerEvent)(VirtualQVideoWidget* self, QTimerEvent* event);
	void (*childEvent)(VirtualQVideoWidget* self, QChildEvent* event);
	void (*customEvent)(VirtualQVideoWidget* self, QEvent* event);
	void (*connectNotify)(VirtualQVideoWidget* self, QMetaMethod* signal);
	void (*disconnectNotify)(VirtualQVideoWidget* self, QMetaMethod* signal);
}QVideoWidget_VTable;

const QVideoWidget_VTable* QVideoWidget_vtbl(const VirtualQVideoWidget* self);
void* QVideoWidget_vdata(const VirtualQVideoWidget* self);
void QVideoWidget_setVdata(VirtualQVideoWidget* self, void* vdata);

VirtualQVideoWidget* QVideoWidget_new(const QVideoWidget_VTable* vtbl, void* vdata, QWidget* parent);
VirtualQVideoWidget* QVideoWidget_new2(const QVideoWidget_VTable* vtbl, void* vdata);

void QVideoWidget_virtbase(QVideoWidget* src, QWidget** outptr_QWidget, QMediaBindableInterface** outptr_QMediaBindableInterface);
QMetaObject* QVideoWidget_metaObject(const QVideoWidget* self);
void* QVideoWidget_metacast(QVideoWidget* self, const char* param1);
int QVideoWidget_metacall(QVideoWidget* self, int param1, int param2, void** param3);
struct miqt_string QVideoWidget_tr(const char* s);
struct miqt_string QVideoWidget_trUtf8(const char* s);
QMediaObject* QVideoWidget_mediaObject(const QVideoWidget* self);
QAbstractVideoSurface* QVideoWidget_videoSurface(const QVideoWidget* self);
int QVideoWidget_aspectRatioMode(const QVideoWidget* self);
int QVideoWidget_brightness(const QVideoWidget* self);
int QVideoWidget_contrast(const QVideoWidget* self);
int QVideoWidget_hue(const QVideoWidget* self);
int QVideoWidget_saturation(const QVideoWidget* self);
QSize* QVideoWidget_sizeHint(const QVideoWidget* self);
void QVideoWidget_setFullScreen(QVideoWidget* self, bool fullScreen);
void QVideoWidget_setAspectRatioMode(QVideoWidget* self, int mode);
void QVideoWidget_setBrightness(QVideoWidget* self, int brightness);
void QVideoWidget_setContrast(QVideoWidget* self, int contrast);
void QVideoWidget_setHue(QVideoWidget* self, int hue);
void QVideoWidget_setSaturation(QVideoWidget* self, int saturation);
void QVideoWidget_fullScreenChanged(QVideoWidget* self, bool fullScreen);
void QVideoWidget_connect_fullScreenChanged(VirtualQVideoWidget* self, intptr_t slot, void (*callback)(intptr_t, bool), void (*release)(intptr_t));
void QVideoWidget_brightnessChanged(QVideoWidget* self, int brightness);
void QVideoWidget_connect_brightnessChanged(VirtualQVideoWidget* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t));
void QVideoWidget_contrastChanged(QVideoWidget* self, int contrast);
void QVideoWidget_connect_contrastChanged(VirtualQVideoWidget* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t));
void QVideoWidget_hueChanged(QVideoWidget* self, int hue);
void QVideoWidget_connect_hueChanged(VirtualQVideoWidget* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t));
void QVideoWidget_saturationChanged(QVideoWidget* self, int saturation);
void QVideoWidget_connect_saturationChanged(VirtualQVideoWidget* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t));
bool QVideoWidget_event(QVideoWidget* self, QEvent* event);
void QVideoWidget_showEvent(QVideoWidget* self, QShowEvent* event);
void QVideoWidget_hideEvent(QVideoWidget* self, QHideEvent* event);
void QVideoWidget_resizeEvent(QVideoWidget* self, QResizeEvent* event);
void QVideoWidget_moveEvent(QVideoWidget* self, QMoveEvent* event);
void QVideoWidget_paintEvent(QVideoWidget* self, QPaintEvent* event);
bool QVideoWidget_setMediaObject(QVideoWidget* self, QMediaObject* object);
struct miqt_string QVideoWidget_tr2(const char* s, const char* c);
struct miqt_string QVideoWidget_tr3(const char* s, const char* c, int n);
struct miqt_string QVideoWidget_trUtf82(const char* s, const char* c);
struct miqt_string QVideoWidget_trUtf83(const char* s, const char* c, int n);

QMetaObject* QVideoWidget_virtualbase_metaObject(const VirtualQVideoWidget* self);
void* QVideoWidget_virtualbase_metacast(VirtualQVideoWidget* self, const char* param1);
int QVideoWidget_virtualbase_metacall(VirtualQVideoWidget* self, int param1, int param2, void** param3);
QMediaObject* QVideoWidget_virtualbase_mediaObject(const VirtualQVideoWidget* self);
QSize* QVideoWidget_virtualbase_sizeHint(const VirtualQVideoWidget* self);
bool QVideoWidget_virtualbase_event(VirtualQVideoWidget* self, QEvent* event);
void QVideoWidget_virtualbase_showEvent(VirtualQVideoWidget* self, QShowEvent* event);
void QVideoWidget_virtualbase_hideEvent(VirtualQVideoWidget* self, QHideEvent* event);
void QVideoWidget_virtualbase_resizeEvent(VirtualQVideoWidget* self, QResizeEvent* event);
void QVideoWidget_virtualbase_moveEvent(VirtualQVideoWidget* self, QMoveEvent* event);
void QVideoWidget_virtualbase_paintEvent(VirtualQVideoWidget* self, QPaintEvent* event);
bool QVideoWidget_virtualbase_setMediaObject(VirtualQVideoWidget* self, QMediaObject* object);
int QVideoWidget_virtualbase_devType(const VirtualQVideoWidget* self);
void QVideoWidget_virtualbase_setVisible(VirtualQVideoWidget* self, bool visible);
QSize* QVideoWidget_virtualbase_minimumSizeHint(const VirtualQVideoWidget* self);
int QVideoWidget_virtualbase_heightForWidth(const VirtualQVideoWidget* self, int param1);
bool QVideoWidget_virtualbase_hasHeightForWidth(const VirtualQVideoWidget* self);
QPaintEngine* QVideoWidget_virtualbase_paintEngine(const VirtualQVideoWidget* self);
void QVideoWidget_virtualbase_mousePressEvent(VirtualQVideoWidget* self, QMouseEvent* event);
void QVideoWidget_virtualbase_mouseReleaseEvent(VirtualQVideoWidget* self, QMouseEvent* event);
void QVideoWidget_virtualbase_mouseDoubleClickEvent(VirtualQVideoWidget* self, QMouseEvent* event);
void QVideoWidget_virtualbase_mouseMoveEvent(VirtualQVideoWidget* self, QMouseEvent* event);
void QVideoWidget_virtualbase_wheelEvent(VirtualQVideoWidget* self, QWheelEvent* event);
void QVideoWidget_virtualbase_keyPressEvent(VirtualQVideoWidget* self, QKeyEvent* event);
void QVideoWidget_virtualbase_keyReleaseEvent(VirtualQVideoWidget* self, QKeyEvent* event);
void QVideoWidget_virtualbase_focusInEvent(VirtualQVideoWidget* self, QFocusEvent* event);
void QVideoWidget_virtualbase_focusOutEvent(VirtualQVideoWidget* self, QFocusEvent* event);
void QVideoWidget_virtualbase_enterEvent(VirtualQVideoWidget* self, QEvent* event);
void QVideoWidget_virtualbase_leaveEvent(VirtualQVideoWidget* self, QEvent* event);
void QVideoWidget_virtualbase_closeEvent(VirtualQVideoWidget* self, QCloseEvent* event);
void QVideoWidget_virtualbase_contextMenuEvent(VirtualQVideoWidget* self, QContextMenuEvent* event);
void QVideoWidget_virtualbase_tabletEvent(VirtualQVideoWidget* self, QTabletEvent* event);
void QVideoWidget_virtualbase_actionEvent(VirtualQVideoWidget* self, QActionEvent* event);
void QVideoWidget_virtualbase_dragEnterEvent(VirtualQVideoWidget* self, QDragEnterEvent* event);
void QVideoWidget_virtualbase_dragMoveEvent(VirtualQVideoWidget* self, QDragMoveEvent* event);
void QVideoWidget_virtualbase_dragLeaveEvent(VirtualQVideoWidget* self, QDragLeaveEvent* event);
void QVideoWidget_virtualbase_dropEvent(VirtualQVideoWidget* self, QDropEvent* event);
bool QVideoWidget_virtualbase_nativeEvent(VirtualQVideoWidget* self, struct miqt_string eventType, void* message, long* result);
void QVideoWidget_virtualbase_changeEvent(VirtualQVideoWidget* self, QEvent* param1);
int QVideoWidget_virtualbase_metric(const VirtualQVideoWidget* self, int param1);
void QVideoWidget_virtualbase_initPainter(const VirtualQVideoWidget* self, QPainter* painter);
QPaintDevice* QVideoWidget_virtualbase_redirected(const VirtualQVideoWidget* self, QPoint* offset);
QPainter* QVideoWidget_virtualbase_sharedPainter(const VirtualQVideoWidget* self);
void QVideoWidget_virtualbase_inputMethodEvent(VirtualQVideoWidget* self, QInputMethodEvent* param1);
QVariant* QVideoWidget_virtualbase_inputMethodQuery(const VirtualQVideoWidget* self, int param1);
bool QVideoWidget_virtualbase_focusNextPrevChild(VirtualQVideoWidget* self, bool next);
bool QVideoWidget_virtualbase_eventFilter(VirtualQVideoWidget* self, QObject* watched, QEvent* event);
void QVideoWidget_virtualbase_timerEvent(VirtualQVideoWidget* self, QTimerEvent* event);
void QVideoWidget_virtualbase_childEvent(VirtualQVideoWidget* self, QChildEvent* event);
void QVideoWidget_virtualbase_customEvent(VirtualQVideoWidget* self, QEvent* event);
void QVideoWidget_virtualbase_connectNotify(VirtualQVideoWidget* self, QMetaMethod* signal);
void QVideoWidget_virtualbase_disconnectNotify(VirtualQVideoWidget* self, QMetaMethod* signal);

void QVideoWidget_protectedbase_updateMicroFocus(VirtualQVideoWidget* self);
void QVideoWidget_protectedbase_create(VirtualQVideoWidget* self);
void QVideoWidget_protectedbase_destroy(VirtualQVideoWidget* self);
bool QVideoWidget_protectedbase_focusNextChild(VirtualQVideoWidget* self);
bool QVideoWidget_protectedbase_focusPreviousChild(VirtualQVideoWidget* self);
QObject* QVideoWidget_protectedbase_sender(const VirtualQVideoWidget* self);
int QVideoWidget_protectedbase_senderSignalIndex(const VirtualQVideoWidget* self);
int QVideoWidget_protectedbase_receivers(const VirtualQVideoWidget* self, const char* signal);
bool QVideoWidget_protectedbase_isSignalConnected(const VirtualQVideoWidget* self, QMetaMethod* signal);

const QMetaObject* QVideoWidget_staticMetaObject();
void QVideoWidget_delete(QVideoWidget* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
