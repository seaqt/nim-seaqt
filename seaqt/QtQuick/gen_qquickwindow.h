#pragma once
#ifndef SEAQT_QTQUICK_GEN_QQUICKWINDOW_H
#define SEAQT_QTQUICK_GEN_QQUICKWINDOW_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt/libseaqt.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QAccessibleInterface;
class QChildEvent;
class QCloseEvent;
class QColor;
class QEvent;
class QExposeEvent;
class QFocusEvent;
class QHideEvent;
class QImage;
class QKeyEvent;
class QMetaMethod;
class QMetaObject;
class QMouseEvent;
class QMoveEvent;
class QObject;
class QPaintEvent;
class QQmlIncubationController;
class QQuickGraphicsConfiguration;
class QQuickGraphicsDevice;
class QQuickItem;
class QQuickRenderControl;
class QQuickRenderTarget;
class QQuickWindow;
#if defined(WORKAROUND_INNER_CLASS_DEFINITION_QQuickWindow__GraphicsStateInfo)
typedef QQuickWindow::GraphicsStateInfo QQuickWindow__GraphicsStateInfo;
#else
class QQuickWindow__GraphicsStateInfo;
#endif
class QResizeEvent;
class QRunnable;
class QSGImageNode;
class QSGNinePatchNode;
class QSGRectangleNode;
class QSGRendererInterface;
class QSGTexture;
class QShowEvent;
class QSize;
class QSurface;
class QSurfaceFormat;
class QTabletEvent;
class QTimerEvent;
class QTouchEvent;
class QWheelEvent;
class QWindow;
#else
typedef struct QAccessibleInterface QAccessibleInterface;
typedef struct QChildEvent QChildEvent;
typedef struct QCloseEvent QCloseEvent;
typedef struct QColor QColor;
typedef struct QEvent QEvent;
typedef struct QExposeEvent QExposeEvent;
typedef struct QFocusEvent QFocusEvent;
typedef struct QHideEvent QHideEvent;
typedef struct QImage QImage;
typedef struct QKeyEvent QKeyEvent;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QMouseEvent QMouseEvent;
typedef struct QMoveEvent QMoveEvent;
typedef struct QObject QObject;
typedef struct QPaintEvent QPaintEvent;
typedef struct QQmlIncubationController QQmlIncubationController;
typedef struct QQuickGraphicsConfiguration QQuickGraphicsConfiguration;
typedef struct QQuickGraphicsDevice QQuickGraphicsDevice;
typedef struct QQuickItem QQuickItem;
typedef struct QQuickRenderControl QQuickRenderControl;
typedef struct QQuickRenderTarget QQuickRenderTarget;
typedef struct QQuickWindow QQuickWindow;
typedef struct QQuickWindow__GraphicsStateInfo QQuickWindow__GraphicsStateInfo;
typedef struct QResizeEvent QResizeEvent;
typedef struct QRunnable QRunnable;
typedef struct QSGImageNode QSGImageNode;
typedef struct QSGNinePatchNode QSGNinePatchNode;
typedef struct QSGRectangleNode QSGRectangleNode;
typedef struct QSGRendererInterface QSGRendererInterface;
typedef struct QSGTexture QSGTexture;
typedef struct QShowEvent QShowEvent;
typedef struct QSize QSize;
typedef struct QSurface QSurface;
typedef struct QSurfaceFormat QSurfaceFormat;
typedef struct QTabletEvent QTabletEvent;
typedef struct QTimerEvent QTimerEvent;
typedef struct QTouchEvent QTouchEvent;
typedef struct QWheelEvent QWheelEvent;
typedef struct QWindow QWindow;
#endif

typedef struct VirtualQQuickWindow VirtualQQuickWindow;
typedef struct QQuickWindow_VTable{
	void (*destructor)(VirtualQQuickWindow* self);
	QMetaObject* (*metaObject)(const VirtualQQuickWindow* self);
	void* (*metacast)(VirtualQQuickWindow* self, const char* param1);
	int (*metacall)(VirtualQQuickWindow* self, int param1, int param2, void** param3);
	QObject* (*focusObject)(const VirtualQQuickWindow* self);
	QAccessibleInterface* (*accessibleRoot)(const VirtualQQuickWindow* self);
	void (*exposeEvent)(VirtualQQuickWindow* self, QExposeEvent* param1);
	void (*resizeEvent)(VirtualQQuickWindow* self, QResizeEvent* param1);
	void (*showEvent)(VirtualQQuickWindow* self, QShowEvent* param1);
	void (*hideEvent)(VirtualQQuickWindow* self, QHideEvent* param1);
	void (*closeEvent)(VirtualQQuickWindow* self, QCloseEvent* param1);
	void (*focusInEvent)(VirtualQQuickWindow* self, QFocusEvent* param1);
	void (*focusOutEvent)(VirtualQQuickWindow* self, QFocusEvent* param1);
	bool (*event)(VirtualQQuickWindow* self, QEvent* param1);
	void (*keyPressEvent)(VirtualQQuickWindow* self, QKeyEvent* param1);
	void (*keyReleaseEvent)(VirtualQQuickWindow* self, QKeyEvent* param1);
	void (*mousePressEvent)(VirtualQQuickWindow* self, QMouseEvent* param1);
	void (*mouseReleaseEvent)(VirtualQQuickWindow* self, QMouseEvent* param1);
	void (*mouseDoubleClickEvent)(VirtualQQuickWindow* self, QMouseEvent* param1);
	void (*mouseMoveEvent)(VirtualQQuickWindow* self, QMouseEvent* param1);
	void (*wheelEvent)(VirtualQQuickWindow* self, QWheelEvent* param1);
	void (*tabletEvent)(VirtualQQuickWindow* self, QTabletEvent* param1);
	int (*surfaceType)(const VirtualQQuickWindow* self);
	QSurfaceFormat* (*format)(const VirtualQQuickWindow* self);
	QSize* (*size)(const VirtualQQuickWindow* self);
	void (*paintEvent)(VirtualQQuickWindow* self, QPaintEvent* param1);
	void (*moveEvent)(VirtualQQuickWindow* self, QMoveEvent* param1);
	void (*touchEvent)(VirtualQQuickWindow* self, QTouchEvent* param1);
	bool (*nativeEvent)(VirtualQQuickWindow* self, struct miqt_string eventType, void* message, intptr_t* result);
	bool (*eventFilter)(VirtualQQuickWindow* self, QObject* watched, QEvent* event);
	void (*timerEvent)(VirtualQQuickWindow* self, QTimerEvent* event);
	void (*childEvent)(VirtualQQuickWindow* self, QChildEvent* event);
	void (*customEvent)(VirtualQQuickWindow* self, QEvent* event);
	void (*connectNotify)(VirtualQQuickWindow* self, QMetaMethod* signal);
	void (*disconnectNotify)(VirtualQQuickWindow* self, QMetaMethod* signal);
}QQuickWindow_VTable;

const QQuickWindow_VTable* QQuickWindow_vtbl(const VirtualQQuickWindow* self);
void* QQuickWindow_vdata(const VirtualQQuickWindow* self);
void QQuickWindow_setVdata(VirtualQQuickWindow* self, void* vdata);

VirtualQQuickWindow* QQuickWindow_new(const QQuickWindow_VTable* vtbl, void* vdata);
VirtualQQuickWindow* QQuickWindow_new2(const QQuickWindow_VTable* vtbl, void* vdata, QQuickRenderControl* renderControl);
VirtualQQuickWindow* QQuickWindow_new3(const QQuickWindow_VTable* vtbl, void* vdata, QWindow* parent);

void QQuickWindow_virtbase(QQuickWindow* src, QWindow** outptr_QWindow);
QMetaObject* QQuickWindow_metaObject(const QQuickWindow* self);
void* QQuickWindow_metacast(QQuickWindow* self, const char* param1);
int QQuickWindow_metacall(QQuickWindow* self, int param1, int param2, void** param3);
struct miqt_string QQuickWindow_tr(const char* s);
QQuickItem* QQuickWindow_contentItem(const QQuickWindow* self);
QQuickItem* QQuickWindow_activeFocusItem(const QQuickWindow* self);
QObject* QQuickWindow_focusObject(const QQuickWindow* self);
QQuickItem* QQuickWindow_mouseGrabberItem(const QQuickWindow* self);
QImage* QQuickWindow_grabWindow(QQuickWindow* self);
void QQuickWindow_setRenderTarget(QQuickWindow* self, QQuickRenderTarget* target);
QQuickRenderTarget* QQuickWindow_renderTarget(const QQuickWindow* self);
QQuickWindow__GraphicsStateInfo* QQuickWindow_graphicsStateInfo(QQuickWindow* self);
void QQuickWindow_beginExternalCommands(QQuickWindow* self);
void QQuickWindow_endExternalCommands(QQuickWindow* self);
QQmlIncubationController* QQuickWindow_incubationController(const QQuickWindow* self);
QAccessibleInterface* QQuickWindow_accessibleRoot(const QQuickWindow* self);
QSGTexture* QQuickWindow_createTextureFromImage(const QQuickWindow* self, QImage* image);
QSGTexture* QQuickWindow_createTextureFromImage2(const QQuickWindow* self, QImage* image, int options);
void QQuickWindow_setColor(QQuickWindow* self, QColor* color);
QColor* QQuickWindow_color(const QQuickWindow* self);
bool QQuickWindow_hasDefaultAlphaBuffer();
void QQuickWindow_setDefaultAlphaBuffer(bool useAlpha);
void QQuickWindow_setPersistentGraphics(QQuickWindow* self, bool persistent);
bool QQuickWindow_isPersistentGraphics(const QQuickWindow* self);
void QQuickWindow_setPersistentSceneGraph(QQuickWindow* self, bool persistent);
bool QQuickWindow_isPersistentSceneGraph(const QQuickWindow* self);
bool QQuickWindow_isSceneGraphInitialized(const QQuickWindow* self);
void QQuickWindow_scheduleRenderJob(QQuickWindow* self, QRunnable* job, int schedule);
double QQuickWindow_effectiveDevicePixelRatio(const QQuickWindow* self);
QSGRendererInterface* QQuickWindow_rendererInterface(const QQuickWindow* self);
void QQuickWindow_setGraphicsApi(int api);
int QQuickWindow_graphicsApi();
void QQuickWindow_setSceneGraphBackend(struct miqt_string backend);
struct miqt_string QQuickWindow_sceneGraphBackend();
void QQuickWindow_setGraphicsDevice(QQuickWindow* self, QQuickGraphicsDevice* device);
QQuickGraphicsDevice* QQuickWindow_graphicsDevice(const QQuickWindow* self);
void QQuickWindow_setGraphicsConfiguration(QQuickWindow* self, QQuickGraphicsConfiguration* config);
QQuickGraphicsConfiguration* QQuickWindow_graphicsConfiguration(const QQuickWindow* self);
QSGRectangleNode* QQuickWindow_createRectangleNode(const QQuickWindow* self);
QSGImageNode* QQuickWindow_createImageNode(const QQuickWindow* self);
QSGNinePatchNode* QQuickWindow_createNinePatchNode(const QQuickWindow* self);
int QQuickWindow_textRenderType();
void QQuickWindow_setTextRenderType(int renderType);
void QQuickWindow_frameSwapped(QQuickWindow* self);
void QQuickWindow_connect_frameSwapped(VirtualQQuickWindow* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
void QQuickWindow_sceneGraphInitialized(QQuickWindow* self);
void QQuickWindow_connect_sceneGraphInitialized(VirtualQQuickWindow* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
void QQuickWindow_sceneGraphInvalidated(QQuickWindow* self);
void QQuickWindow_connect_sceneGraphInvalidated(VirtualQQuickWindow* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
void QQuickWindow_beforeSynchronizing(QQuickWindow* self);
void QQuickWindow_connect_beforeSynchronizing(VirtualQQuickWindow* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
void QQuickWindow_afterSynchronizing(QQuickWindow* self);
void QQuickWindow_connect_afterSynchronizing(VirtualQQuickWindow* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
void QQuickWindow_beforeRendering(QQuickWindow* self);
void QQuickWindow_connect_beforeRendering(VirtualQQuickWindow* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
void QQuickWindow_afterRendering(QQuickWindow* self);
void QQuickWindow_connect_afterRendering(VirtualQQuickWindow* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
void QQuickWindow_afterAnimating(QQuickWindow* self);
void QQuickWindow_connect_afterAnimating(VirtualQQuickWindow* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
void QQuickWindow_sceneGraphAboutToStop(QQuickWindow* self);
void QQuickWindow_connect_sceneGraphAboutToStop(VirtualQQuickWindow* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
void QQuickWindow_colorChanged(QQuickWindow* self, QColor* param1);
void QQuickWindow_connect_colorChanged(VirtualQQuickWindow* self, intptr_t slot, void (*callback)(intptr_t, QColor*), void (*release)(intptr_t));
void QQuickWindow_activeFocusItemChanged(QQuickWindow* self);
void QQuickWindow_connect_activeFocusItemChanged(VirtualQQuickWindow* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
void QQuickWindow_sceneGraphError(QQuickWindow* self, int error, struct miqt_string message);
void QQuickWindow_connect_sceneGraphError(VirtualQQuickWindow* self, intptr_t slot, void (*callback)(intptr_t, int, struct miqt_string), void (*release)(intptr_t));
void QQuickWindow_beforeRenderPassRecording(QQuickWindow* self);
void QQuickWindow_connect_beforeRenderPassRecording(VirtualQQuickWindow* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
void QQuickWindow_afterRenderPassRecording(QQuickWindow* self);
void QQuickWindow_connect_afterRenderPassRecording(VirtualQQuickWindow* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
void QQuickWindow_paletteChanged(QQuickWindow* self);
void QQuickWindow_connect_paletteChanged(VirtualQQuickWindow* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
void QQuickWindow_paletteCreated(QQuickWindow* self);
void QQuickWindow_connect_paletteCreated(VirtualQQuickWindow* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
void QQuickWindow_beforeFrameBegin(QQuickWindow* self);
void QQuickWindow_connect_beforeFrameBegin(VirtualQQuickWindow* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
void QQuickWindow_afterFrameEnd(QQuickWindow* self);
void QQuickWindow_connect_afterFrameEnd(VirtualQQuickWindow* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
void QQuickWindow_update(QQuickWindow* self);
void QQuickWindow_releaseResources(QQuickWindow* self);
void QQuickWindow_exposeEvent(QQuickWindow* self, QExposeEvent* param1);
void QQuickWindow_resizeEvent(QQuickWindow* self, QResizeEvent* param1);
void QQuickWindow_showEvent(QQuickWindow* self, QShowEvent* param1);
void QQuickWindow_hideEvent(QQuickWindow* self, QHideEvent* param1);
void QQuickWindow_closeEvent(QQuickWindow* self, QCloseEvent* param1);
void QQuickWindow_focusInEvent(QQuickWindow* self, QFocusEvent* param1);
void QQuickWindow_focusOutEvent(QQuickWindow* self, QFocusEvent* param1);
bool QQuickWindow_event(QQuickWindow* self, QEvent* param1);
void QQuickWindow_keyPressEvent(QQuickWindow* self, QKeyEvent* param1);
void QQuickWindow_keyReleaseEvent(QQuickWindow* self, QKeyEvent* param1);
void QQuickWindow_mousePressEvent(QQuickWindow* self, QMouseEvent* param1);
void QQuickWindow_mouseReleaseEvent(QQuickWindow* self, QMouseEvent* param1);
void QQuickWindow_mouseDoubleClickEvent(QQuickWindow* self, QMouseEvent* param1);
void QQuickWindow_mouseMoveEvent(QQuickWindow* self, QMouseEvent* param1);
void QQuickWindow_wheelEvent(QQuickWindow* self, QWheelEvent* param1);
void QQuickWindow_tabletEvent(QQuickWindow* self, QTabletEvent* param1);
struct miqt_string QQuickWindow_tr2(const char* s, const char* c);
struct miqt_string QQuickWindow_tr3(const char* s, const char* c, int n);

QMetaObject* QQuickWindow_virtualbase_metaObject(const VirtualQQuickWindow* self);
void* QQuickWindow_virtualbase_metacast(VirtualQQuickWindow* self, const char* param1);
int QQuickWindow_virtualbase_metacall(VirtualQQuickWindow* self, int param1, int param2, void** param3);
QObject* QQuickWindow_virtualbase_focusObject(const VirtualQQuickWindow* self);
QAccessibleInterface* QQuickWindow_virtualbase_accessibleRoot(const VirtualQQuickWindow* self);
void QQuickWindow_virtualbase_exposeEvent(VirtualQQuickWindow* self, QExposeEvent* param1);
void QQuickWindow_virtualbase_resizeEvent(VirtualQQuickWindow* self, QResizeEvent* param1);
void QQuickWindow_virtualbase_showEvent(VirtualQQuickWindow* self, QShowEvent* param1);
void QQuickWindow_virtualbase_hideEvent(VirtualQQuickWindow* self, QHideEvent* param1);
void QQuickWindow_virtualbase_closeEvent(VirtualQQuickWindow* self, QCloseEvent* param1);
void QQuickWindow_virtualbase_focusInEvent(VirtualQQuickWindow* self, QFocusEvent* param1);
void QQuickWindow_virtualbase_focusOutEvent(VirtualQQuickWindow* self, QFocusEvent* param1);
bool QQuickWindow_virtualbase_event(VirtualQQuickWindow* self, QEvent* param1);
void QQuickWindow_virtualbase_keyPressEvent(VirtualQQuickWindow* self, QKeyEvent* param1);
void QQuickWindow_virtualbase_keyReleaseEvent(VirtualQQuickWindow* self, QKeyEvent* param1);
void QQuickWindow_virtualbase_mousePressEvent(VirtualQQuickWindow* self, QMouseEvent* param1);
void QQuickWindow_virtualbase_mouseReleaseEvent(VirtualQQuickWindow* self, QMouseEvent* param1);
void QQuickWindow_virtualbase_mouseDoubleClickEvent(VirtualQQuickWindow* self, QMouseEvent* param1);
void QQuickWindow_virtualbase_mouseMoveEvent(VirtualQQuickWindow* self, QMouseEvent* param1);
void QQuickWindow_virtualbase_wheelEvent(VirtualQQuickWindow* self, QWheelEvent* param1);
void QQuickWindow_virtualbase_tabletEvent(VirtualQQuickWindow* self, QTabletEvent* param1);
int QQuickWindow_virtualbase_surfaceType(const VirtualQQuickWindow* self);
QSurfaceFormat* QQuickWindow_virtualbase_format(const VirtualQQuickWindow* self);
QSize* QQuickWindow_virtualbase_size(const VirtualQQuickWindow* self);
void QQuickWindow_virtualbase_paintEvent(VirtualQQuickWindow* self, QPaintEvent* param1);
void QQuickWindow_virtualbase_moveEvent(VirtualQQuickWindow* self, QMoveEvent* param1);
void QQuickWindow_virtualbase_touchEvent(VirtualQQuickWindow* self, QTouchEvent* param1);
bool QQuickWindow_virtualbase_nativeEvent(VirtualQQuickWindow* self, struct miqt_string eventType, void* message, intptr_t* result);
bool QQuickWindow_virtualbase_eventFilter(VirtualQQuickWindow* self, QObject* watched, QEvent* event);
void QQuickWindow_virtualbase_timerEvent(VirtualQQuickWindow* self, QTimerEvent* event);
void QQuickWindow_virtualbase_childEvent(VirtualQQuickWindow* self, QChildEvent* event);
void QQuickWindow_virtualbase_customEvent(VirtualQQuickWindow* self, QEvent* event);
void QQuickWindow_virtualbase_connectNotify(VirtualQQuickWindow* self, QMetaMethod* signal);
void QQuickWindow_virtualbase_disconnectNotify(VirtualQQuickWindow* self, QMetaMethod* signal);

void* QQuickWindow_protectedbase_resolveInterface(const VirtualQQuickWindow* self, const char* name, int revision);
QObject* QQuickWindow_protectedbase_sender(const VirtualQQuickWindow* self);
int QQuickWindow_protectedbase_senderSignalIndex(const VirtualQQuickWindow* self);
int QQuickWindow_protectedbase_receivers(const VirtualQQuickWindow* self, const char* signal);
bool QQuickWindow_protectedbase_isSignalConnected(const VirtualQQuickWindow* self, QMetaMethod* signal);

const QMetaObject* QQuickWindow_staticMetaObject();
void QQuickWindow_delete(QQuickWindow* self);

void QQuickWindow__GraphicsStateInfo_delete(QQuickWindow__GraphicsStateInfo* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
