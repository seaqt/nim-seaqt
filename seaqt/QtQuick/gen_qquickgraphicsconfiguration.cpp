#include <QQuickGraphicsConfiguration>
#include <qquickgraphicsconfiguration.h>
#include "gen_qquickgraphicsconfiguration.h"

#ifndef SEAQT_ALIGNED_SIZEOF
#define SEAQT_ALIGNED_SIZEOF 1
#include <cstddef>
template<typename T>
static constexpr std::size_t seaqt_aligned_sizeof() {
	constexpr auto alignment = sizeof(std::max_align_t);
	return (sizeof(T) + alignment - 1) & ~(alignment - 1);
}
#endif

QQuickGraphicsConfiguration* QQuickGraphicsConfiguration_new() {
	return new (std::nothrow) QQuickGraphicsConfiguration();
}

QQuickGraphicsConfiguration* QQuickGraphicsConfiguration_new2(QQuickGraphicsConfiguration* other) {
	return new (std::nothrow) QQuickGraphicsConfiguration(*other);
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

