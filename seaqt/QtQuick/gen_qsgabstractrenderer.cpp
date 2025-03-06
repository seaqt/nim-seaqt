#include <QColor>
#include <QMatrix4x4>
#include <QMetaMethod>
#include <QMetaObject>
#include <QObject>
#include <QRect>
#include <QRectF>
#include <QSGAbstractRenderer>
#include <QSGNode>
#include <QSGRootNode>
#include <QSize>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <qsgabstractrenderer.h>
#include "gen_qsgabstractrenderer.h"

#ifdef __cplusplus
extern "C" {
#endif

void miqt_exec_callback_QSGAbstractRenderer_sceneGraphChanged(intptr_t);
#ifdef __cplusplus
} /* extern C */
#endif

void QSGAbstractRenderer_virtbase(QSGAbstractRenderer* src, QObject** outptr_QObject) {
	*outptr_QObject = static_cast<QObject*>(src);
}

QMetaObject* QSGAbstractRenderer_metaObject(const QSGAbstractRenderer* self) {
	return (QMetaObject*) self->metaObject();
}

void* QSGAbstractRenderer_metacast(QSGAbstractRenderer* self, const char* param1) {
	return self->qt_metacast(param1);
}

struct miqt_string QSGAbstractRenderer_tr(const char* s) {
	QString _ret = QSGAbstractRenderer::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QSGAbstractRenderer_trUtf8(const char* s) {
	QString _ret = QSGAbstractRenderer::trUtf8(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QSGAbstractRenderer_setRootNode(QSGAbstractRenderer* self, QSGRootNode* node) {
	self->setRootNode(node);
}

QSGRootNode* QSGAbstractRenderer_rootNode(const QSGAbstractRenderer* self) {
	return self->rootNode();
}

void QSGAbstractRenderer_setDeviceRect(QSGAbstractRenderer* self, QRect* rect) {
	self->setDeviceRect(*rect);
}

void QSGAbstractRenderer_setDeviceRectWithSize(QSGAbstractRenderer* self, QSize* size) {
	self->setDeviceRect(*size);
}

QRect* QSGAbstractRenderer_deviceRect(const QSGAbstractRenderer* self) {
	return new QRect(self->deviceRect());
}

void QSGAbstractRenderer_setViewportRect(QSGAbstractRenderer* self, QRect* rect) {
	self->setViewportRect(*rect);
}

void QSGAbstractRenderer_setViewportRectWithSize(QSGAbstractRenderer* self, QSize* size) {
	self->setViewportRect(*size);
}

QRect* QSGAbstractRenderer_viewportRect(const QSGAbstractRenderer* self) {
	return new QRect(self->viewportRect());
}

void QSGAbstractRenderer_setProjectionMatrixToRect(QSGAbstractRenderer* self, QRectF* rect) {
	self->setProjectionMatrixToRect(*rect);
}

void QSGAbstractRenderer_setProjectionMatrixToRect2(QSGAbstractRenderer* self, QRectF* rect, int flags) {
	self->setProjectionMatrixToRect(*rect, static_cast<QSGAbstractRenderer::MatrixTransformFlags>(flags));
}

void QSGAbstractRenderer_setProjectionMatrix(QSGAbstractRenderer* self, QMatrix4x4* matrix) {
	self->setProjectionMatrix(*matrix);
}

void QSGAbstractRenderer_setProjectionMatrixWithNativeNDC(QSGAbstractRenderer* self, QMatrix4x4* matrix) {
	self->setProjectionMatrixWithNativeNDC(*matrix);
}

QMatrix4x4* QSGAbstractRenderer_projectionMatrix(const QSGAbstractRenderer* self) {
	return new QMatrix4x4(self->projectionMatrix());
}

QMatrix4x4* QSGAbstractRenderer_projectionMatrixWithNativeNDC(const QSGAbstractRenderer* self) {
	return new QMatrix4x4(self->projectionMatrixWithNativeNDC());
}

void QSGAbstractRenderer_setClearColor(QSGAbstractRenderer* self, QColor* color) {
	self->setClearColor(*color);
}

QColor* QSGAbstractRenderer_clearColor(const QSGAbstractRenderer* self) {
	return new QColor(self->clearColor());
}

void QSGAbstractRenderer_setClearMode(QSGAbstractRenderer* self, int mode) {
	self->setClearMode(static_cast<QSGAbstractRenderer::ClearMode>(mode));
}

int QSGAbstractRenderer_clearMode(const QSGAbstractRenderer* self) {
	QSGAbstractRenderer::ClearMode _ret = self->clearMode();
	return static_cast<int>(_ret);
}

void QSGAbstractRenderer_renderScene(QSGAbstractRenderer* self, unsigned int fboId) {
	self->renderScene(static_cast<uint>(fboId));
}

void QSGAbstractRenderer_sceneGraphChanged(QSGAbstractRenderer* self) {
	self->sceneGraphChanged();
}

void QSGAbstractRenderer_connect_sceneGraphChanged(QSGAbstractRenderer* self, intptr_t slot) {
	QSGAbstractRenderer::connect(self, static_cast<void (QSGAbstractRenderer::*)()>(&QSGAbstractRenderer::sceneGraphChanged), self, [=]() {
		miqt_exec_callback_QSGAbstractRenderer_sceneGraphChanged(slot);
	});
}

struct miqt_string QSGAbstractRenderer_tr2(const char* s, const char* c) {
	QString _ret = QSGAbstractRenderer::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QSGAbstractRenderer_tr3(const char* s, const char* c, int n) {
	QString _ret = QSGAbstractRenderer::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QSGAbstractRenderer_trUtf82(const char* s, const char* c) {
	QString _ret = QSGAbstractRenderer::trUtf8(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QSGAbstractRenderer_trUtf83(const char* s, const char* c, int n) {
	QString _ret = QSGAbstractRenderer::trUtf8(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QSGAbstractRenderer_delete(QSGAbstractRenderer* self) {
	delete self;
}

