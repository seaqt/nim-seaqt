#include <QPaintDevice>
#include <QQuickRenderTarget>
#include <QSize>
#include <qquickrendertarget.h>
#include "gen_qquickrendertarget.h"

#ifndef SEAQT_ALIGNED_SIZEOF
#define SEAQT_ALIGNED_SIZEOF 1
#include <cstddef>
template<typename T>
static constexpr std::size_t seaqt_aligned_sizeof() {
	constexpr auto alignment = sizeof(std::max_align_t);
	return (sizeof(T) + alignment - 1) & ~(alignment - 1);
}
#endif

QQuickRenderTarget* QQuickRenderTarget_new() {
	return new (std::nothrow) QQuickRenderTarget();
}

QQuickRenderTarget* QQuickRenderTarget_new_from(QQuickRenderTarget* from) {
	return new (std::nothrow) QQuickRenderTarget(*from);
}

void QQuickRenderTarget_operatorAssign(QQuickRenderTarget* self, QQuickRenderTarget* from) {
	self->operator=(*from);
}

bool QQuickRenderTarget_isNull(const QQuickRenderTarget* self) {
	return self->isNull();
}

double QQuickRenderTarget_devicePixelRatio(const QQuickRenderTarget* self) {
	qreal _ret = self->devicePixelRatio();
	return static_cast<double>(_ret);
}

void QQuickRenderTarget_setDevicePixelRatio(QQuickRenderTarget* self, double ratio) {
	self->setDevicePixelRatio(static_cast<qreal>(ratio));
}

bool QQuickRenderTarget_mirrorVertically(const QQuickRenderTarget* self) {
	return self->mirrorVertically();
}

void QQuickRenderTarget_setMirrorVertically(QQuickRenderTarget* self, bool enable) {
	self->setMirrorVertically(enable);
}

QQuickRenderTarget* QQuickRenderTarget_fromOpenGLTexture_textureId_format_pixelSize(unsigned int textureId, unsigned int format, QSize* pixelSize) {
	return new QQuickRenderTarget(QQuickRenderTarget::fromOpenGLTexture(static_cast<uint>(textureId), static_cast<uint>(format), *pixelSize));
}

QQuickRenderTarget* QQuickRenderTarget_fromOpenGLTexture_textureId_pixelSize(unsigned int textureId, QSize* pixelSize) {
	return new QQuickRenderTarget(QQuickRenderTarget::fromOpenGLTexture(static_cast<uint>(textureId), *pixelSize));
}

QQuickRenderTarget* QQuickRenderTarget_fromOpenGLRenderBuffer_renderbufferId_pixelSize(unsigned int renderbufferId, QSize* pixelSize) {
	return new QQuickRenderTarget(QQuickRenderTarget::fromOpenGLRenderBuffer(static_cast<uint>(renderbufferId), *pixelSize));
}

QQuickRenderTarget* QQuickRenderTarget_fromPaintDevice(QPaintDevice* device) {
	return new QQuickRenderTarget(QQuickRenderTarget::fromPaintDevice(device));
}

QQuickRenderTarget* QQuickRenderTarget_fromOpenGLTexture_textureId_format_pixelSize_sampleCount(unsigned int textureId, unsigned int format, QSize* pixelSize, int sampleCount) {
	return new QQuickRenderTarget(QQuickRenderTarget::fromOpenGLTexture(static_cast<uint>(textureId), static_cast<uint>(format), *pixelSize, static_cast<int>(sampleCount)));
}

QQuickRenderTarget* QQuickRenderTarget_fromOpenGLTexture_textureId_pixelSize_sampleCount(unsigned int textureId, QSize* pixelSize, int sampleCount) {
	return new QQuickRenderTarget(QQuickRenderTarget::fromOpenGLTexture(static_cast<uint>(textureId), *pixelSize, static_cast<int>(sampleCount)));
}

QQuickRenderTarget* QQuickRenderTarget_fromOpenGLRenderBuffer_renderbufferId_pixelSize_sampleCount(unsigned int renderbufferId, QSize* pixelSize, int sampleCount) {
	return new QQuickRenderTarget(QQuickRenderTarget::fromOpenGLRenderBuffer(static_cast<uint>(renderbufferId), *pixelSize, static_cast<int>(sampleCount)));
}

void QQuickRenderTarget_delete(QQuickRenderTarget* self) {
	delete self;
}

