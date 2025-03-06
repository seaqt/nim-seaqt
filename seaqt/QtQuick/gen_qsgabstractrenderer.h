#pragma once
#ifndef SEAQT_QTQUICK_GEN_QSGABSTRACTRENDERER_H
#define SEAQT_QTQUICK_GEN_QSGABSTRACTRENDERER_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt/libseaqt.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QColor;
class QMatrix4x4;
class QMetaMethod;
class QMetaObject;
class QObject;
class QRect;
class QRectF;
class QSGAbstractRenderer;
class QSGNode;
class QSGRootNode;
class QSize;
#else
typedef struct QColor QColor;
typedef struct QMatrix4x4 QMatrix4x4;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QObject QObject;
typedef struct QRect QRect;
typedef struct QRectF QRectF;
typedef struct QSGAbstractRenderer QSGAbstractRenderer;
typedef struct QSGNode QSGNode;
typedef struct QSGRootNode QSGRootNode;
typedef struct QSize QSize;
#endif

void QSGAbstractRenderer_virtbase(QSGAbstractRenderer* src, QObject** outptr_QObject);
QMetaObject* QSGAbstractRenderer_metaObject(const QSGAbstractRenderer* self);
void* QSGAbstractRenderer_metacast(QSGAbstractRenderer* self, const char* param1);
int QSGAbstractRenderer_metacall(QSGAbstractRenderer* self, int param1, int param2, void** param3);
struct miqt_string QSGAbstractRenderer_tr(const char* s);
struct miqt_string QSGAbstractRenderer_trUtf8(const char* s);
void QSGAbstractRenderer_setRootNode(QSGAbstractRenderer* self, QSGRootNode* node);
QSGRootNode* QSGAbstractRenderer_rootNode(const QSGAbstractRenderer* self);
void QSGAbstractRenderer_setDeviceRect(QSGAbstractRenderer* self, QRect* rect);
void QSGAbstractRenderer_setDeviceRectWithSize(QSGAbstractRenderer* self, QSize* size);
QRect* QSGAbstractRenderer_deviceRect(const QSGAbstractRenderer* self);
void QSGAbstractRenderer_setViewportRect(QSGAbstractRenderer* self, QRect* rect);
void QSGAbstractRenderer_setViewportRectWithSize(QSGAbstractRenderer* self, QSize* size);
QRect* QSGAbstractRenderer_viewportRect(const QSGAbstractRenderer* self);
void QSGAbstractRenderer_setProjectionMatrixToRect(QSGAbstractRenderer* self, QRectF* rect);
void QSGAbstractRenderer_setProjectionMatrixToRect2(QSGAbstractRenderer* self, QRectF* rect, int flags);
void QSGAbstractRenderer_setProjectionMatrix(QSGAbstractRenderer* self, QMatrix4x4* matrix);
void QSGAbstractRenderer_setProjectionMatrixWithNativeNDC(QSGAbstractRenderer* self, QMatrix4x4* matrix);
QMatrix4x4* QSGAbstractRenderer_projectionMatrix(const QSGAbstractRenderer* self);
QMatrix4x4* QSGAbstractRenderer_projectionMatrixWithNativeNDC(const QSGAbstractRenderer* self);
void QSGAbstractRenderer_setClearColor(QSGAbstractRenderer* self, QColor* color);
QColor* QSGAbstractRenderer_clearColor(const QSGAbstractRenderer* self);
void QSGAbstractRenderer_setClearMode(QSGAbstractRenderer* self, int mode);
int QSGAbstractRenderer_clearMode(const QSGAbstractRenderer* self);
void QSGAbstractRenderer_renderScene(QSGAbstractRenderer* self, unsigned int fboId);
void QSGAbstractRenderer_sceneGraphChanged(QSGAbstractRenderer* self);
void QSGAbstractRenderer_connect_sceneGraphChanged(QSGAbstractRenderer* self, intptr_t slot);
void QSGAbstractRenderer_nodeChanged(QSGAbstractRenderer* self, QSGNode* node, int state);
struct miqt_string QSGAbstractRenderer_tr2(const char* s, const char* c);
struct miqt_string QSGAbstractRenderer_tr3(const char* s, const char* c, int n);
struct miqt_string QSGAbstractRenderer_trUtf82(const char* s, const char* c);
struct miqt_string QSGAbstractRenderer_trUtf83(const char* s, const char* c, int n);
const QMetaObject* QSGAbstractRenderer_staticMetaObject();
void QSGAbstractRenderer_delete(QSGAbstractRenderer* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
