#include <QColor>
#include <QColorTransform>
#include <QRgba64>
#include <qcolortransform.h>
#include "gen_qcolortransform.h"

#ifndef SEAQT_ALIGNED_SIZEOF
#define SEAQT_ALIGNED_SIZEOF 1
#include <cstddef>
template<typename T>
static constexpr std::size_t seaqt_aligned_sizeof() {
	constexpr auto alignment = sizeof(std::max_align_t);
	return (sizeof(T) + alignment - 1) & ~(alignment - 1);
}
#endif

QColorTransform* QColorTransform_new() {
	return new (std::nothrow) QColorTransform();
}

QColorTransform* QColorTransform_new_from(QColorTransform* from) {
	return new (std::nothrow) QColorTransform(*from);
}

void QColorTransform_operatorAssign(QColorTransform* self, QColorTransform* from) {
	self->operator=(*from);
}

void QColorTransform_swap(QColorTransform* self, QColorTransform* other) {
	self->swap(*other);
}

bool QColorTransform_isIdentity(const QColorTransform* self) {
	return self->isIdentity();
}

unsigned int QColorTransform_map_argb(const QColorTransform* self, unsigned int argb) {
	QRgb _ret = self->map(static_cast<QRgb>(argb));
	return static_cast<unsigned int>(_ret);
}

QRgba64* QColorTransform_map_rgba64(const QColorTransform* self, QRgba64* rgba64) {
	return new QRgba64(self->map(*rgba64));
}

QColor* QColorTransform_map_color(const QColorTransform* self, QColor* color) {
	return new QColor(self->map(*color));
}

void QColorTransform_delete(QColorTransform* self) {
	delete self;
}

