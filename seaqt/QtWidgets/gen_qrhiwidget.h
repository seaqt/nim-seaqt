#pragma once
#ifndef SEAQT_QTWIDGETS_GEN_QRHIWIDGET_H
#define SEAQT_QTWIDGETS_GEN_QRHIWIDGET_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt-runtime.h"

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
class QImage;
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
class QRhiWidget;
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
typedef struct QDragEnterEvent QDragEnterEvent;
typedef struct QDragLeaveEvent QDragLeaveEvent;
typedef struct QDragMoveEvent QDragMoveEvent;
typedef struct QDropEvent QDropEvent;
typedef struct QEnterEvent QEnterEvent;
typedef struct QEvent QEvent;
typedef struct QFocusEvent QFocusEvent;
typedef struct QHideEvent QHideEvent;
typedef struct QImage QImage;
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
typedef struct QRhiWidget QRhiWidget;
typedef struct QShowEvent QShowEvent;
typedef struct QSize QSize;
typedef struct QTabletEvent QTabletEvent;
typedef struct QTimerEvent QTimerEvent;
typedef struct QVariant QVariant;
typedef struct QWheelEvent QWheelEvent;
typedef struct QWidget QWidget;
#endif

typedef struct VirtualQRhiWidget VirtualQRhiWidget;
typedef struct QRhiWidget_VTable{
	void (*destructor)(VirtualQRhiWidget* self);
	QMetaObject* (*metaObject)(const VirtualQRhiWidget* self);
	void* (*metacast)(VirtualQRhiWidget* self, const char* param1);
	int (*metacall)(VirtualQRhiWidget* self, int param1, int param2, void** param3);
	void (*releaseResources)(VirtualQRhiWidget* self);
	void (*resizeEvent)(VirtualQRhiWidget* self, QResizeEvent* e);
	void (*paintEvent)(VirtualQRhiWidget* self, QPaintEvent* e);
	bool (*event)(VirtualQRhiWidget* self, QEvent* e);
	int (*devType)(const VirtualQRhiWidget* self);
	void (*setVisible)(VirtualQRhiWidget* self, bool visible);
	QSize* (*sizeHint)(const VirtualQRhiWidget* self);
	QSize* (*minimumSizeHint)(const VirtualQRhiWidget* self);
	int (*heightForWidth)(const VirtualQRhiWidget* self, int param1);
	bool (*hasHeightForWidth)(const VirtualQRhiWidget* self);
	QPaintEngine* (*paintEngine)(const VirtualQRhiWidget* self);
	void (*mousePressEvent)(VirtualQRhiWidget* self, QMouseEvent* event);
	void (*mouseReleaseEvent)(VirtualQRhiWidget* self, QMouseEvent* event);
	void (*mouseDoubleClickEvent)(VirtualQRhiWidget* self, QMouseEvent* event);
	void (*mouseMoveEvent)(VirtualQRhiWidget* self, QMouseEvent* event);
	void (*wheelEvent)(VirtualQRhiWidget* self, QWheelEvent* event);
	void (*keyPressEvent)(VirtualQRhiWidget* self, QKeyEvent* event);
	void (*keyReleaseEvent)(VirtualQRhiWidget* self, QKeyEvent* event);
	void (*focusInEvent)(VirtualQRhiWidget* self, QFocusEvent* event);
	void (*focusOutEvent)(VirtualQRhiWidget* self, QFocusEvent* event);
	void (*enterEvent)(VirtualQRhiWidget* self, QEnterEvent* event);
	void (*leaveEvent)(VirtualQRhiWidget* self, QEvent* event);
	void (*moveEvent)(VirtualQRhiWidget* self, QMoveEvent* event);
	void (*closeEvent)(VirtualQRhiWidget* self, QCloseEvent* event);
	void (*contextMenuEvent)(VirtualQRhiWidget* self, QContextMenuEvent* event);
	void (*tabletEvent)(VirtualQRhiWidget* self, QTabletEvent* event);
	void (*actionEvent)(VirtualQRhiWidget* self, QActionEvent* event);
	void (*dragEnterEvent)(VirtualQRhiWidget* self, QDragEnterEvent* event);
	void (*dragMoveEvent)(VirtualQRhiWidget* self, QDragMoveEvent* event);
	void (*dragLeaveEvent)(VirtualQRhiWidget* self, QDragLeaveEvent* event);
	void (*dropEvent)(VirtualQRhiWidget* self, QDropEvent* event);
	void (*showEvent)(VirtualQRhiWidget* self, QShowEvent* event);
	void (*hideEvent)(VirtualQRhiWidget* self, QHideEvent* event);
	bool (*nativeEvent)(VirtualQRhiWidget* self, struct seaqt_string eventType, void* message, intptr_t* result);
	void (*changeEvent)(VirtualQRhiWidget* self, QEvent* param1);
	int (*metric)(const VirtualQRhiWidget* self, int param1);
	void (*initPainter)(const VirtualQRhiWidget* self, QPainter* painter);
	QPaintDevice* (*redirected)(const VirtualQRhiWidget* self, QPoint* offset);
	QPainter* (*sharedPainter)(const VirtualQRhiWidget* self);
	void (*inputMethodEvent)(VirtualQRhiWidget* self, QInputMethodEvent* param1);
	QVariant* (*inputMethodQuery)(const VirtualQRhiWidget* self, int param1);
	bool (*focusNextPrevChild)(VirtualQRhiWidget* self, bool next);
	bool (*eventFilter)(VirtualQRhiWidget* self, QObject* watched, QEvent* event);
	void (*timerEvent)(VirtualQRhiWidget* self, QTimerEvent* event);
	void (*childEvent)(VirtualQRhiWidget* self, QChildEvent* event);
	void (*customEvent)(VirtualQRhiWidget* self, QEvent* event);
	void (*connectNotify)(VirtualQRhiWidget* self, QMetaMethod* signal);
	void (*disconnectNotify)(VirtualQRhiWidget* self, QMetaMethod* signal);
}QRhiWidget_VTable;

void* QRhiWidget_vdata(VirtualQRhiWidget* self);
VirtualQRhiWidget* vdata_QRhiWidget(void* vdata);

VirtualQRhiWidget* QRhiWidget_new(const QRhiWidget_VTable* vtbl, size_t vdata);
VirtualQRhiWidget* QRhiWidget_new_parent(const QRhiWidget_VTable* vtbl, size_t vdata, QWidget* parent);
VirtualQRhiWidget* QRhiWidget_new_parent_f(const QRhiWidget_VTable* vtbl, size_t vdata, QWidget* parent, int f);

void QRhiWidget_virtbase(QRhiWidget* src, QWidget** outptr_QWidget);
QMetaObject* QRhiWidget_metaObject(const QRhiWidget* self);
void* QRhiWidget_metacast(QRhiWidget* self, const char* param1);
int QRhiWidget_metacall(QRhiWidget* self, int param1, int param2, void** param3);
struct seaqt_string QRhiWidget_tr_s(const char* s);
int QRhiWidget_api(const QRhiWidget* self);
void QRhiWidget_setApi(QRhiWidget* self, int api);
bool QRhiWidget_isDebugLayerEnabled(const QRhiWidget* self);
void QRhiWidget_setDebugLayerEnabled(QRhiWidget* self, bool enable);
int QRhiWidget_sampleCount(const QRhiWidget* self);
void QRhiWidget_setSampleCount(QRhiWidget* self, int samples);
int QRhiWidget_colorBufferFormat(const QRhiWidget* self);
void QRhiWidget_setColorBufferFormat(QRhiWidget* self, int format);
QSize* QRhiWidget_fixedColorBufferSize(const QRhiWidget* self);
void QRhiWidget_setFixedColorBufferSize_pixelSize(QRhiWidget* self, QSize* pixelSize);
void QRhiWidget_setFixedColorBufferSize_w_h(QRhiWidget* self, int w, int h);
bool QRhiWidget_isMirrorVerticallyEnabled(const QRhiWidget* self);
void QRhiWidget_setMirrorVertically(QRhiWidget* self, bool enabled);
QImage* QRhiWidget_grabFramebuffer(const QRhiWidget* self);
void QRhiWidget_releaseResources(QRhiWidget* self);
void QRhiWidget_resizeEvent(QRhiWidget* self, QResizeEvent* e);
void QRhiWidget_paintEvent(QRhiWidget* self, QPaintEvent* e);
bool QRhiWidget_event(QRhiWidget* self, QEvent* e);
void QRhiWidget_frameSubmitted(QRhiWidget* self);
void QRhiWidget_connect_frameSubmitted(QRhiWidget* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
void QRhiWidget_renderFailed(QRhiWidget* self);
void QRhiWidget_connect_renderFailed(QRhiWidget* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
void QRhiWidget_sampleCountChanged(QRhiWidget* self, int samples);
void QRhiWidget_connect_sampleCountChanged(QRhiWidget* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t));
void QRhiWidget_colorBufferFormatChanged(QRhiWidget* self, int format);
void QRhiWidget_connect_colorBufferFormatChanged(QRhiWidget* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t));
void QRhiWidget_fixedColorBufferSizeChanged(QRhiWidget* self, QSize* pixelSize);
void QRhiWidget_connect_fixedColorBufferSizeChanged(QRhiWidget* self, intptr_t slot, void (*callback)(intptr_t, QSize*), void (*release)(intptr_t));
void QRhiWidget_mirrorVerticallyChanged(QRhiWidget* self, bool enabled);
void QRhiWidget_connect_mirrorVerticallyChanged(QRhiWidget* self, intptr_t slot, void (*callback)(intptr_t, bool), void (*release)(intptr_t));
struct seaqt_string QRhiWidget_tr_s_c(const char* s, const char* c);
struct seaqt_string QRhiWidget_tr_s_c_n(const char* s, const char* c, int n);

QMetaObject* QRhiWidget_virtualbase_metaObject(const VirtualQRhiWidget* self);
void* QRhiWidget_virtualbase_metacast(VirtualQRhiWidget* self, const char* param1);
int QRhiWidget_virtualbase_metacall(VirtualQRhiWidget* self, int param1, int param2, void** param3);
void QRhiWidget_virtualbase_releaseResources(VirtualQRhiWidget* self);
void QRhiWidget_virtualbase_resizeEvent(VirtualQRhiWidget* self, QResizeEvent* e);
void QRhiWidget_virtualbase_paintEvent(VirtualQRhiWidget* self, QPaintEvent* e);
bool QRhiWidget_virtualbase_event(VirtualQRhiWidget* self, QEvent* e);
int QRhiWidget_virtualbase_devType(const VirtualQRhiWidget* self);
void QRhiWidget_virtualbase_setVisible(VirtualQRhiWidget* self, bool visible);
QSize* QRhiWidget_virtualbase_sizeHint(const VirtualQRhiWidget* self);
QSize* QRhiWidget_virtualbase_minimumSizeHint(const VirtualQRhiWidget* self);
int QRhiWidget_virtualbase_heightForWidth(const VirtualQRhiWidget* self, int param1);
bool QRhiWidget_virtualbase_hasHeightForWidth(const VirtualQRhiWidget* self);
QPaintEngine* QRhiWidget_virtualbase_paintEngine(const VirtualQRhiWidget* self);
void QRhiWidget_virtualbase_mousePressEvent(VirtualQRhiWidget* self, QMouseEvent* event);
void QRhiWidget_virtualbase_mouseReleaseEvent(VirtualQRhiWidget* self, QMouseEvent* event);
void QRhiWidget_virtualbase_mouseDoubleClickEvent(VirtualQRhiWidget* self, QMouseEvent* event);
void QRhiWidget_virtualbase_mouseMoveEvent(VirtualQRhiWidget* self, QMouseEvent* event);
void QRhiWidget_virtualbase_wheelEvent(VirtualQRhiWidget* self, QWheelEvent* event);
void QRhiWidget_virtualbase_keyPressEvent(VirtualQRhiWidget* self, QKeyEvent* event);
void QRhiWidget_virtualbase_keyReleaseEvent(VirtualQRhiWidget* self, QKeyEvent* event);
void QRhiWidget_virtualbase_focusInEvent(VirtualQRhiWidget* self, QFocusEvent* event);
void QRhiWidget_virtualbase_focusOutEvent(VirtualQRhiWidget* self, QFocusEvent* event);
void QRhiWidget_virtualbase_enterEvent(VirtualQRhiWidget* self, QEnterEvent* event);
void QRhiWidget_virtualbase_leaveEvent(VirtualQRhiWidget* self, QEvent* event);
void QRhiWidget_virtualbase_moveEvent(VirtualQRhiWidget* self, QMoveEvent* event);
void QRhiWidget_virtualbase_closeEvent(VirtualQRhiWidget* self, QCloseEvent* event);
void QRhiWidget_virtualbase_contextMenuEvent(VirtualQRhiWidget* self, QContextMenuEvent* event);
void QRhiWidget_virtualbase_tabletEvent(VirtualQRhiWidget* self, QTabletEvent* event);
void QRhiWidget_virtualbase_actionEvent(VirtualQRhiWidget* self, QActionEvent* event);
void QRhiWidget_virtualbase_dragEnterEvent(VirtualQRhiWidget* self, QDragEnterEvent* event);
void QRhiWidget_virtualbase_dragMoveEvent(VirtualQRhiWidget* self, QDragMoveEvent* event);
void QRhiWidget_virtualbase_dragLeaveEvent(VirtualQRhiWidget* self, QDragLeaveEvent* event);
void QRhiWidget_virtualbase_dropEvent(VirtualQRhiWidget* self, QDropEvent* event);
void QRhiWidget_virtualbase_showEvent(VirtualQRhiWidget* self, QShowEvent* event);
void QRhiWidget_virtualbase_hideEvent(VirtualQRhiWidget* self, QHideEvent* event);
bool QRhiWidget_virtualbase_nativeEvent(VirtualQRhiWidget* self, struct seaqt_string eventType, void* message, intptr_t* result);
void QRhiWidget_virtualbase_changeEvent(VirtualQRhiWidget* self, QEvent* param1);
int QRhiWidget_virtualbase_metric(const VirtualQRhiWidget* self, int param1);
void QRhiWidget_virtualbase_initPainter(const VirtualQRhiWidget* self, QPainter* painter);
QPaintDevice* QRhiWidget_virtualbase_redirected(const VirtualQRhiWidget* self, QPoint* offset);
QPainter* QRhiWidget_virtualbase_sharedPainter(const VirtualQRhiWidget* self);
void QRhiWidget_virtualbase_inputMethodEvent(VirtualQRhiWidget* self, QInputMethodEvent* param1);
QVariant* QRhiWidget_virtualbase_inputMethodQuery(const VirtualQRhiWidget* self, int param1);
bool QRhiWidget_virtualbase_focusNextPrevChild(VirtualQRhiWidget* self, bool next);
bool QRhiWidget_virtualbase_eventFilter(VirtualQRhiWidget* self, QObject* watched, QEvent* event);
void QRhiWidget_virtualbase_timerEvent(VirtualQRhiWidget* self, QTimerEvent* event);
void QRhiWidget_virtualbase_childEvent(VirtualQRhiWidget* self, QChildEvent* event);
void QRhiWidget_virtualbase_customEvent(VirtualQRhiWidget* self, QEvent* event);
void QRhiWidget_virtualbase_connectNotify(VirtualQRhiWidget* self, QMetaMethod* signal);
void QRhiWidget_virtualbase_disconnectNotify(VirtualQRhiWidget* self, QMetaMethod* signal);

bool QRhiWidget_protectedbase_isAutoRenderTargetEnabled(const VirtualQRhiWidget* self);
void QRhiWidget_protectedbase_setAutoRenderTarget(VirtualQRhiWidget* self, bool enabled);
void QRhiWidget_protectedbase_updateMicroFocus(VirtualQRhiWidget* self);
void QRhiWidget_protectedbase_create(VirtualQRhiWidget* self);
void QRhiWidget_protectedbase_destroy(VirtualQRhiWidget* self);
bool QRhiWidget_protectedbase_focusNextChild(VirtualQRhiWidget* self);
bool QRhiWidget_protectedbase_focusPreviousChild(VirtualQRhiWidget* self);
QObject* QRhiWidget_protectedbase_sender(const VirtualQRhiWidget* self);
int QRhiWidget_protectedbase_senderSignalIndex(const VirtualQRhiWidget* self);
int QRhiWidget_protectedbase_receivers(const VirtualQRhiWidget* self, const char* signal);
bool QRhiWidget_protectedbase_isSignalConnected(const VirtualQRhiWidget* self, QMetaMethod* signal);
double QRhiWidget_protectedbase_getDecodedMetricF(const VirtualQRhiWidget* self, int metricA, int metricB);

const QMetaObject* QRhiWidget_staticMetaObject();
void QRhiWidget_delete(QRhiWidget* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
