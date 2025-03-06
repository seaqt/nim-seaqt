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
class QQmlIncubationController;
class QQuickItem;
class QQuickRenderControl;
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
typedef struct QQmlIncubationController QQmlIncubationController;
typedef struct QQuickItem QQuickItem;
typedef struct QQuickRenderControl QQuickRenderControl;
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

QQuickWindow* QQuickWindow_new();
QQuickWindow* QQuickWindow_new2(QQuickRenderControl* renderControl);
QQuickWindow* QQuickWindow_new3(QWindow* parent);
void QQuickWindow_virtbase(QQuickWindow* src, QWindow** outptr_QWindow);
QMetaObject* QQuickWindow_metaObject(const QQuickWindow* self);
void* QQuickWindow_metacast(QQuickWindow* self, const char* param1);
int QQuickWindow_metacall(QQuickWindow* self, int param1, int param2, void** param3);
struct miqt_string QQuickWindow_tr(const char* s);
struct miqt_string QQuickWindow_trUtf8(const char* s);
QQuickItem* QQuickWindow_contentItem(const QQuickWindow* self);
QQuickItem* QQuickWindow_activeFocusItem(const QQuickWindow* self);
QObject* QQuickWindow_focusObject(const QQuickWindow* self);
QQuickItem* QQuickWindow_mouseGrabberItem(const QQuickWindow* self);
bool QQuickWindow_sendEvent(QQuickWindow* self, QQuickItem* param1, QEvent* param2);
QImage* QQuickWindow_grabWindow(QQuickWindow* self);
void QQuickWindow_setRenderTarget2(QQuickWindow* self, unsigned int fboId, QSize* size);
unsigned int QQuickWindow_renderTargetId(const QQuickWindow* self);
QSize* QQuickWindow_renderTargetSize(const QQuickWindow* self);
void QQuickWindow_resetOpenGLState(QQuickWindow* self);
QQuickWindow__GraphicsStateInfo* QQuickWindow_graphicsStateInfo(QQuickWindow* self);
void QQuickWindow_beginExternalCommands(QQuickWindow* self);
void QQuickWindow_endExternalCommands(QQuickWindow* self);
QQmlIncubationController* QQuickWindow_incubationController(const QQuickWindow* self);
QAccessibleInterface* QQuickWindow_accessibleRoot(const QQuickWindow* self);
QSGTexture* QQuickWindow_createTextureFromImage(const QQuickWindow* self, QImage* image);
QSGTexture* QQuickWindow_createTextureFromImage2(const QQuickWindow* self, QImage* image, int options);
QSGTexture* QQuickWindow_createTextureFromId(const QQuickWindow* self, unsigned int id, QSize* size);
QSGTexture* QQuickWindow_createTextureFromNativeObject(const QQuickWindow* self, int type, const void* nativeObjectPtr, int nativeLayout, QSize* size);
void QQuickWindow_setClearBeforeRendering(QQuickWindow* self, bool enabled);
bool QQuickWindow_clearBeforeRendering(const QQuickWindow* self);
void QQuickWindow_setColor(QQuickWindow* self, QColor* color);
QColor* QQuickWindow_color(const QQuickWindow* self);
bool QQuickWindow_hasDefaultAlphaBuffer();
void QQuickWindow_setDefaultAlphaBuffer(bool useAlpha);
void QQuickWindow_setPersistentOpenGLContext(QQuickWindow* self, bool persistent);
bool QQuickWindow_isPersistentOpenGLContext(const QQuickWindow* self);
void QQuickWindow_setPersistentSceneGraph(QQuickWindow* self, bool persistent);
bool QQuickWindow_isPersistentSceneGraph(const QQuickWindow* self);
bool QQuickWindow_isSceneGraphInitialized(const QQuickWindow* self);
void QQuickWindow_scheduleRenderJob(QQuickWindow* self, QRunnable* job, int schedule);
double QQuickWindow_effectiveDevicePixelRatio(const QQuickWindow* self);
QSGRendererInterface* QQuickWindow_rendererInterface(const QQuickWindow* self);
void QQuickWindow_setSceneGraphBackend(int api);
void QQuickWindow_setSceneGraphBackendWithBackend(struct miqt_string backend);
struct miqt_string QQuickWindow_sceneGraphBackend();
QSGRectangleNode* QQuickWindow_createRectangleNode(const QQuickWindow* self);
QSGImageNode* QQuickWindow_createImageNode(const QQuickWindow* self);
QSGNinePatchNode* QQuickWindow_createNinePatchNode(const QQuickWindow* self);
int QQuickWindow_textRenderType();
void QQuickWindow_setTextRenderType(int renderType);
void QQuickWindow_frameSwapped(QQuickWindow* self);
void QQuickWindow_connect_frameSwapped(QQuickWindow* self, intptr_t slot);
void QQuickWindow_sceneGraphInitialized(QQuickWindow* self);
void QQuickWindow_connect_sceneGraphInitialized(QQuickWindow* self, intptr_t slot);
void QQuickWindow_sceneGraphInvalidated(QQuickWindow* self);
void QQuickWindow_connect_sceneGraphInvalidated(QQuickWindow* self, intptr_t slot);
void QQuickWindow_beforeSynchronizing(QQuickWindow* self);
void QQuickWindow_connect_beforeSynchronizing(QQuickWindow* self, intptr_t slot);
void QQuickWindow_afterSynchronizing(QQuickWindow* self);
void QQuickWindow_connect_afterSynchronizing(QQuickWindow* self, intptr_t slot);
void QQuickWindow_beforeRendering(QQuickWindow* self);
void QQuickWindow_connect_beforeRendering(QQuickWindow* self, intptr_t slot);
void QQuickWindow_afterRendering(QQuickWindow* self);
void QQuickWindow_connect_afterRendering(QQuickWindow* self, intptr_t slot);
void QQuickWindow_afterAnimating(QQuickWindow* self);
void QQuickWindow_connect_afterAnimating(QQuickWindow* self, intptr_t slot);
void QQuickWindow_sceneGraphAboutToStop(QQuickWindow* self);
void QQuickWindow_connect_sceneGraphAboutToStop(QQuickWindow* self, intptr_t slot);
void QQuickWindow_colorChanged(QQuickWindow* self, QColor* param1);
void QQuickWindow_connect_colorChanged(QQuickWindow* self, intptr_t slot);
void QQuickWindow_activeFocusItemChanged(QQuickWindow* self);
void QQuickWindow_connect_activeFocusItemChanged(QQuickWindow* self, intptr_t slot);
void QQuickWindow_sceneGraphError(QQuickWindow* self, int error, struct miqt_string message);
void QQuickWindow_connect_sceneGraphError(QQuickWindow* self, intptr_t slot);
void QQuickWindow_beforeRenderPassRecording(QQuickWindow* self);
void QQuickWindow_connect_beforeRenderPassRecording(QQuickWindow* self, intptr_t slot);
void QQuickWindow_afterRenderPassRecording(QQuickWindow* self);
void QQuickWindow_connect_afterRenderPassRecording(QQuickWindow* self, intptr_t slot);
void QQuickWindow_update(QQuickWindow* self);
void QQuickWindow_releaseResources(QQuickWindow* self);
void QQuickWindow_exposeEvent(QQuickWindow* self, QExposeEvent* param1);
void QQuickWindow_resizeEvent(QQuickWindow* self, QResizeEvent* param1);
void QQuickWindow_showEvent(QQuickWindow* self, QShowEvent* param1);
void QQuickWindow_hideEvent(QQuickWindow* self, QHideEvent* param1);
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
struct miqt_string QQuickWindow_trUtf82(const char* s, const char* c);
struct miqt_string QQuickWindow_trUtf83(const char* s, const char* c, int n);
QSGTexture* QQuickWindow_createTextureFromId3(const QQuickWindow* self, unsigned int id, QSize* size, int options);
QSGTexture* QQuickWindow_createTextureFromNativeObject5(const QQuickWindow* self, int type, const void* nativeObjectPtr, int nativeLayout, QSize* size, int options);
bool QQuickWindow_override_virtual_metaObject(void* self, intptr_t slot);
QMetaObject* QQuickWindow_virtualbase_metaObject(const void* self);
bool QQuickWindow_override_virtual_metacast(void* self, intptr_t slot);
void* QQuickWindow_virtualbase_metacast(void* self, const char* param1);
bool QQuickWindow_override_virtual_metacall(void* self, intptr_t slot);
int QQuickWindow_virtualbase_metacall(void* self, int param1, int param2, void** param3);
bool QQuickWindow_override_virtual_focusObject(void* self, intptr_t slot);
QObject* QQuickWindow_virtualbase_focusObject(const void* self);
bool QQuickWindow_override_virtual_accessibleRoot(void* self, intptr_t slot);
QAccessibleInterface* QQuickWindow_virtualbase_accessibleRoot(const void* self);
bool QQuickWindow_override_virtual_exposeEvent(void* self, intptr_t slot);
void QQuickWindow_virtualbase_exposeEvent(void* self, QExposeEvent* param1);
bool QQuickWindow_override_virtual_resizeEvent(void* self, intptr_t slot);
void QQuickWindow_virtualbase_resizeEvent(void* self, QResizeEvent* param1);
bool QQuickWindow_override_virtual_showEvent(void* self, intptr_t slot);
void QQuickWindow_virtualbase_showEvent(void* self, QShowEvent* param1);
bool QQuickWindow_override_virtual_hideEvent(void* self, intptr_t slot);
void QQuickWindow_virtualbase_hideEvent(void* self, QHideEvent* param1);
bool QQuickWindow_override_virtual_focusInEvent(void* self, intptr_t slot);
void QQuickWindow_virtualbase_focusInEvent(void* self, QFocusEvent* param1);
bool QQuickWindow_override_virtual_focusOutEvent(void* self, intptr_t slot);
void QQuickWindow_virtualbase_focusOutEvent(void* self, QFocusEvent* param1);
bool QQuickWindow_override_virtual_event(void* self, intptr_t slot);
bool QQuickWindow_virtualbase_event(void* self, QEvent* param1);
bool QQuickWindow_override_virtual_keyPressEvent(void* self, intptr_t slot);
void QQuickWindow_virtualbase_keyPressEvent(void* self, QKeyEvent* param1);
bool QQuickWindow_override_virtual_keyReleaseEvent(void* self, intptr_t slot);
void QQuickWindow_virtualbase_keyReleaseEvent(void* self, QKeyEvent* param1);
bool QQuickWindow_override_virtual_mousePressEvent(void* self, intptr_t slot);
void QQuickWindow_virtualbase_mousePressEvent(void* self, QMouseEvent* param1);
bool QQuickWindow_override_virtual_mouseReleaseEvent(void* self, intptr_t slot);
void QQuickWindow_virtualbase_mouseReleaseEvent(void* self, QMouseEvent* param1);
bool QQuickWindow_override_virtual_mouseDoubleClickEvent(void* self, intptr_t slot);
void QQuickWindow_virtualbase_mouseDoubleClickEvent(void* self, QMouseEvent* param1);
bool QQuickWindow_override_virtual_mouseMoveEvent(void* self, intptr_t slot);
void QQuickWindow_virtualbase_mouseMoveEvent(void* self, QMouseEvent* param1);
bool QQuickWindow_override_virtual_wheelEvent(void* self, intptr_t slot);
void QQuickWindow_virtualbase_wheelEvent(void* self, QWheelEvent* param1);
bool QQuickWindow_override_virtual_tabletEvent(void* self, intptr_t slot);
void QQuickWindow_virtualbase_tabletEvent(void* self, QTabletEvent* param1);
bool QQuickWindow_override_virtual_surfaceType(void* self, intptr_t slot);
int QQuickWindow_virtualbase_surfaceType(const void* self);
bool QQuickWindow_override_virtual_format(void* self, intptr_t slot);
QSurfaceFormat* QQuickWindow_virtualbase_format(const void* self);
bool QQuickWindow_override_virtual_size(void* self, intptr_t slot);
QSize* QQuickWindow_virtualbase_size(const void* self);
bool QQuickWindow_override_virtual_moveEvent(void* self, intptr_t slot);
void QQuickWindow_virtualbase_moveEvent(void* self, QMoveEvent* param1);
bool QQuickWindow_override_virtual_touchEvent(void* self, intptr_t slot);
void QQuickWindow_virtualbase_touchEvent(void* self, QTouchEvent* param1);
bool QQuickWindow_override_virtual_nativeEvent(void* self, intptr_t slot);
bool QQuickWindow_virtualbase_nativeEvent(void* self, struct miqt_string eventType, void* message, long* result);
bool QQuickWindow_override_virtual_eventFilter(void* self, intptr_t slot);
bool QQuickWindow_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);
bool QQuickWindow_override_virtual_timerEvent(void* self, intptr_t slot);
void QQuickWindow_virtualbase_timerEvent(void* self, QTimerEvent* event);
bool QQuickWindow_override_virtual_childEvent(void* self, intptr_t slot);
void QQuickWindow_virtualbase_childEvent(void* self, QChildEvent* event);
bool QQuickWindow_override_virtual_customEvent(void* self, intptr_t slot);
void QQuickWindow_virtualbase_customEvent(void* self, QEvent* event);
bool QQuickWindow_override_virtual_connectNotify(void* self, intptr_t slot);
void QQuickWindow_virtualbase_connectNotify(void* self, QMetaMethod* signal);
bool QQuickWindow_override_virtual_disconnectNotify(void* self, intptr_t slot);
void QQuickWindow_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);
QObject* QQuickWindow_protectedbase_sender(bool* _dynamic_cast_ok, const void* self);
int QQuickWindow_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self);
int QQuickWindow_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal);
bool QQuickWindow_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal);
const QMetaObject* QQuickWindow_staticMetaObject();
void QQuickWindow_delete(QQuickWindow* self);

void QQuickWindow__GraphicsStateInfo_delete(QQuickWindow__GraphicsStateInfo* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
