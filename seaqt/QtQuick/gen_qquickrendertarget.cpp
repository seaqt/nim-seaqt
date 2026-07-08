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

QQuickRenderTarget* QQuickRenderTarget_new2(QQuickRenderTarget* other) {
	return new (std::nothrow) QQuickRenderTarget(*other);
}

void QQuickRenderTarget_operatorAssign(QQuickRenderTarget* self, QQuickRenderTarget* other) {
	self->operator=(*other);
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

QQuickRenderTarget* QQuickRenderTarget_fromOpenGLTexture(unsigned int textureId, unsigned int format, QSize* pixelSize) {
	return new QQuickRenderTarget(QQuickRenderTarget::fromOpenGLTexture(static_cast<uint>(textureId), static_cast<uint>(format), *pixelSize));
}

QQuickRenderTarget* QQuickRenderTarget_fromOpenGLTexture2(unsigned int textureId, QSize* pixelSize) {
	return new QQuickRenderTarget(QQuickRenderTarget::fromOpenGLTexture(static_cast<uint>(textureId), *pixelSize));
}

QQuickRenderTarget* QQuickRenderTarget_fromOpenGLRenderBuffer(unsigned int renderbufferId, QSize* pixelSize) {
	return new QQuickRenderTarget(QQuickRenderTarget::fromOpenGLRenderBuffer(static_cast<uint>(renderbufferId), *pixelSize));
}

QQuickRenderTarget* QQuickRenderTarget_fromPaintDevice(QPaintDevice* device) {
	return new QQuickRenderTarget(QQuickRenderTarget::fromPaintDevice(device));
}

QQuickRenderTarget* QQuickRenderTarget_fromOpenGLTexture3(unsigned int textureId, unsigned int format, QSize* pixelSize, int sampleCount) {
	return new QQuickRenderTarget(QQuickRenderTarget::fromOpenGLTexture(static_cast<uint>(textureId), static_cast<uint>(format), *pixelSize, static_cast<int>(sampleCount)));
}

QQuickRenderTarget* QQuickRenderTarget_fromOpenGLTexture4(unsigned int textureId, QSize* pixelSize, int sampleCount) {
	return new QQuickRenderTarget(QQuickRenderTarget::fromOpenGLTexture(static_cast<uint>(textureId), *pixelSize, static_cast<int>(sampleCount)));
}

QQuickRenderTarget* QQuickRenderTarget_fromOpenGLRenderBuffer2(unsigned int renderbufferId, QSize* pixelSize, int sampleCount) {
	return new QQuickRenderTarget(QQuickRenderTarget::fromOpenGLRenderBuffer(static_cast<uint>(renderbufferId), *pixelSize, static_cast<int>(sampleCount)));
}

void QQuickRenderTarget_delete(QQuickRenderTarget* self) {
	delete self;
}

