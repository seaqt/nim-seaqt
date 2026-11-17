#pragma once
#ifndef SEAQT_QTQUICK_GEN_QQUICKRENDERTARGET_H
#define SEAQT_QTQUICK_GEN_QQUICKRENDERTARGET_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt-runtime.h"

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
QQuickRenderTarget* QQuickRenderTarget_new_from(QQuickRenderTarget* from);

void QQuickRenderTarget_operatorAssign(QQuickRenderTarget* self, QQuickRenderTarget* from);
bool QQuickRenderTarget_isNull(const QQuickRenderTarget* self);
double QQuickRenderTarget_devicePixelRatio(const QQuickRenderTarget* self);
void QQuickRenderTarget_setDevicePixelRatio(QQuickRenderTarget* self, double ratio);
bool QQuickRenderTarget_mirrorVertically(const QQuickRenderTarget* self);
void QQuickRenderTarget_setMirrorVertically(QQuickRenderTarget* self, bool enable);
QQuickRenderTarget* QQuickRenderTarget_fromOpenGLTexture_textureId_format_pixelSize(unsigned int textureId, unsigned int format, QSize* pixelSize);
QQuickRenderTarget* QQuickRenderTarget_fromOpenGLTexture_textureId_pixelSize(unsigned int textureId, QSize* pixelSize);
QQuickRenderTarget* QQuickRenderTarget_fromOpenGLRenderBuffer_renderbufferId_pixelSize(unsigned int renderbufferId, QSize* pixelSize);
QQuickRenderTarget* QQuickRenderTarget_fromPaintDevice(QPaintDevice* device);
QQuickRenderTarget* QQuickRenderTarget_fromOpenGLTexture_textureId_format_pixelSize_sampleCount(unsigned int textureId, unsigned int format, QSize* pixelSize, int sampleCount);
QQuickRenderTarget* QQuickRenderTarget_fromOpenGLTexture_textureId_pixelSize_sampleCount(unsigned int textureId, QSize* pixelSize, int sampleCount);
QQuickRenderTarget* QQuickRenderTarget_fromOpenGLRenderBuffer_renderbufferId_pixelSize_sampleCount(unsigned int renderbufferId, QSize* pixelSize, int sampleCount);

void QQuickRenderTarget_delete(QQuickRenderTarget* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
