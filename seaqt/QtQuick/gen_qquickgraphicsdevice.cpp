#include <QQuickGraphicsDevice>
#include <qquickgraphicsdevice.h>
#include "gen_qquickgraphicsdevice.h"

#ifndef SEAQT_ALIGNED_SIZEOF
#define SEAQT_ALIGNED_SIZEOF 1
#include <cstddef>
template<typename T>
static constexpr std::size_t seaqt_aligned_sizeof() {
	constexpr auto alignment = sizeof(std::max_align_t);
	return (sizeof(T) + alignment - 1) & ~(alignment - 1);
}
#endif

QQuickGraphicsDevice* QQuickGraphicsDevice_new() {
	return new (std::nothrow) QQuickGraphicsDevice();
}

QQuickGraphicsDevice* QQuickGraphicsDevice_new_from(QQuickGraphicsDevice* from) {
	return new (std::nothrow) QQuickGraphicsDevice(*from);
}

void QQuickGraphicsDevice_operatorAssign(QQuickGraphicsDevice* self, QQuickGraphicsDevice* from) {
	self->operator=(*from);
}

bool QQuickGraphicsDevice_isNull(const QQuickGraphicsDevice* self) {
	return self->isNull();
}

void QQuickGraphicsDevice_delete(QQuickGraphicsDevice* self) {
	delete self;
}

