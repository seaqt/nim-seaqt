#include <QPainter>
#include <QPainterStateGuard>
#include <qpainterstateguard.h>
#include "gen_qpainterstateguard.h"

#ifndef SEAQT_ALIGNED_SIZEOF
#define SEAQT_ALIGNED_SIZEOF 1
#include <cstddef>
template<typename T>
static constexpr std::size_t seaqt_aligned_sizeof() {
	constexpr auto alignment = sizeof(std::max_align_t);
	return (sizeof(T) + alignment - 1) & ~(alignment - 1);
}
#endif

QPainterStateGuard* QPainterStateGuard_new_painter(QPainter* painter) {
	return new (std::nothrow) QPainterStateGuard(painter);
}

QPainterStateGuard* QPainterStateGuard_new_painter_state(QPainter* painter, uint8_t state) {
	return new (std::nothrow) QPainterStateGuard(painter, static_cast<QPainterStateGuard::InitialState>(state));
}

void QPainterStateGuard_swap(QPainterStateGuard* self, QPainterStateGuard* other) {
	self->swap(*other);
}

void QPainterStateGuard_save(QPainterStateGuard* self) {
	self->save();
}

void QPainterStateGuard_restore(QPainterStateGuard* self) {
	self->restore();
}

void QPainterStateGuard_delete(QPainterStateGuard* self) {
	delete self;
}

