#include <QQuickWindow>
#include <QSGRendererInterface>
#include <qsgrendererinterface.h>
#include "gen_qsgrendererinterface.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
} /* extern C */
#endif

int QSGRendererInterface_graphicsApi(const QSGRendererInterface* self) {
	QSGRendererInterface::GraphicsApi _ret = self->graphicsApi();
	return static_cast<int>(_ret);
}

void* QSGRendererInterface_getResource(const QSGRendererInterface* self, QQuickWindow* window, int resource) {
	return self->getResource(window, static_cast<QSGRendererInterface::Resource>(resource));
}

void* QSGRendererInterface_getResource2(const QSGRendererInterface* self, QQuickWindow* window, const char* resource) {
	return self->getResource(window, resource);
}

int QSGRendererInterface_shaderType(const QSGRendererInterface* self) {
	QSGRendererInterface::ShaderType _ret = self->shaderType();
	return static_cast<int>(_ret);
}

int QSGRendererInterface_shaderCompilationType(const QSGRendererInterface* self) {
	QSGRendererInterface::ShaderCompilationTypes _ret = self->shaderCompilationType();
	return static_cast<int>(_ret);
}

int QSGRendererInterface_shaderSourceType(const QSGRendererInterface* self) {
	QSGRendererInterface::ShaderSourceTypes _ret = self->shaderSourceType();
	return static_cast<int>(_ret);
}

bool QSGRendererInterface_isApiRhiBased(int api) {
	return QSGRendererInterface::isApiRhiBased(static_cast<QSGRendererInterface::GraphicsApi>(api));
}

void QSGRendererInterface_operatorAssign(QSGRendererInterface* self, QSGRendererInterface* param1) {
	self->operator=(*param1);
}

void QSGRendererInterface_delete(QSGRendererInterface* self) {
	delete self;
}

