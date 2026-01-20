#include <QMetaObject>
#include <QSize>
#include <QSurface>
#include <QSurfaceFormat>
#include <qsurface.h>
#include "gen_qsurface.h"

#ifndef SEAQT_ALIGNED_SIZEOF
#define SEAQT_ALIGNED_SIZEOF 1
#include <cstddef>
template<typename T>
static constexpr std::size_t seaqt_aligned_sizeof() {
	constexpr auto alignment = sizeof(std::max_align_t);
	return (sizeof(T) + alignment - 1) & ~(alignment - 1);
}
#endif

int QSurface_surfaceClass(const QSurface* self) {
	QSurface::SurfaceClass _ret = self->surfaceClass();
	return static_cast<int>(_ret);
}

QSurfaceFormat* QSurface_format(const QSurface* self) {
	return new QSurfaceFormat(self->format());
}

int QSurface_surfaceType(const QSurface* self) {
	QSurface::SurfaceType _ret = self->surfaceType();
	return static_cast<int>(_ret);
}

bool QSurface_supportsOpenGL(const QSurface* self) {
	return self->supportsOpenGL();
}

QSize* QSurface_size(const QSurface* self) {
	return new QSize(self->size());
}

void QSurface_operatorAssign(QSurface* self, QSurface* param1) {
	self->operator=(*param1);
}

const QMetaObject* QSurface_staticMetaObject() { return &QSurface::staticMetaObject; }
void QSurface_delete(QSurface* self) {
	delete self;
}

