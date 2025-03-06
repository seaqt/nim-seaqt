#include <QQuickGraphicsConfiguration>
#include <qquickgraphicsconfiguration.h>
#include "gen_qquickgraphicsconfiguration.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
} /* extern C */
#endif

QQuickGraphicsConfiguration* QQuickGraphicsConfiguration_new() {
	return new QQuickGraphicsConfiguration();
}

QQuickGraphicsConfiguration* QQuickGraphicsConfiguration_new2(QQuickGraphicsConfiguration* other) {
	return new QQuickGraphicsConfiguration(*other);
}

void QQuickGraphicsConfiguration_operatorAssign(QQuickGraphicsConfiguration* self, QQuickGraphicsConfiguration* other) {
	self->operator=(*other);
}

void QQuickGraphicsConfiguration_setDepthBufferFor2D(QQuickGraphicsConfiguration* self, bool enable) {
	self->setDepthBufferFor2D(enable);
}

bool QQuickGraphicsConfiguration_isDepthBufferEnabledFor2D(const QQuickGraphicsConfiguration* self) {
	return self->isDepthBufferEnabledFor2D();
}

void QQuickGraphicsConfiguration_delete(QQuickGraphicsConfiguration* self) {
	delete self;
}

