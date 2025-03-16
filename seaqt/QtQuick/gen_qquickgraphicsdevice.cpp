#include <QQuickGraphicsDevice>
#include <qquickgraphicsdevice.h>
#include "gen_qquickgraphicsdevice.h"
QQuickGraphicsDevice* QQuickGraphicsDevice_new() {
	return new QQuickGraphicsDevice();
}

QQuickGraphicsDevice* QQuickGraphicsDevice_new2(QQuickGraphicsDevice* other) {
	return new QQuickGraphicsDevice(*other);
}

void QQuickGraphicsDevice_operatorAssign(QQuickGraphicsDevice* self, QQuickGraphicsDevice* other) {
	self->operator=(*other);
}

bool QQuickGraphicsDevice_isNull(const QQuickGraphicsDevice* self) {
	return self->isNull();
}

void QQuickGraphicsDevice_delete(QQuickGraphicsDevice* self) {
	delete self;
}

