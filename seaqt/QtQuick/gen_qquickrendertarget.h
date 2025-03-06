#pragma once
#ifndef SEAQT_QTQUICK_GEN_QQUICKRENDERTARGET_H
#define SEAQT_QTQUICK_GEN_QQUICKRENDERTARGET_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt/libseaqt.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QPaintDevice;
class QQuickRenderTarget;
class QSize;
#else
typedef struct QPaintDevice QPaintDevice;
typedef struct QQuickRenderTarget QQuickRenderTarget;
typedef struct QSize QSize;
#endif

QQuickRenderTarget* QQuickRenderTarget_new();
QQuickRenderTarget* QQuickRenderTarget_new2(QQuickRenderTarget* other);
void QQuickRenderTarget_operatorAssign(QQuickRenderTarget* self, QQuickRenderTarget* other);
bool QQuickRenderTarget_isNull(const QQuickRenderTarget* self);
double QQuickRenderTarget_devicePixelRatio(const QQuickRenderTarget* self);
void QQuickRenderTarget_setDevicePixelRatio(QQuickRenderTarget* self, double ratio);
bool QQuickRenderTarget_mirrorVertically(const QQuickRenderTarget* self);
void QQuickRenderTarget_setMirrorVertically(QQuickRenderTarget* self, bool enable);
QQuickRenderTarget* QQuickRenderTarget_fromOpenGLTexture(unsigned int textureId, unsigned int format, QSize* pixelSize);
QQuickRenderTarget* QQuickRenderTarget_fromOpenGLTexture2(unsigned int textureId, QSize* pixelSize);
QQuickRenderTarget* QQuickRenderTarget_fromOpenGLRenderBuffer(unsigned int renderbufferId, QSize* pixelSize);
QQuickRenderTarget* QQuickRenderTarget_fromRhiRenderTarget(QRhiRenderTarget* renderTarget);
QQuickRenderTarget* QQuickRenderTarget_fromPaintDevice(QPaintDevice* device);
QQuickRenderTarget* QQuickRenderTarget_fromOpenGLTexture4(unsigned int textureId, unsigned int format, QSize* pixelSize, int sampleCount);
QQuickRenderTarget* QQuickRenderTarget_fromOpenGLTexture3(unsigned int textureId, QSize* pixelSize, int sampleCount);
QQuickRenderTarget* QQuickRenderTarget_fromOpenGLRenderBuffer3(unsigned int renderbufferId, QSize* pixelSize, int sampleCount);
void QQuickRenderTarget_delete(QQuickRenderTarget* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
