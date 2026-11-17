#include <QMetaObject>
#include <QPdfDestination>
#include <QPointF>
#include <qpdfdestination.h>
#include "gen_qpdfdestination.h"

#ifndef SEAQT_ALIGNED_SIZEOF
#define SEAQT_ALIGNED_SIZEOF 1
#include <cstddef>
template<typename T>
static constexpr std::size_t seaqt_aligned_sizeof() {
	constexpr auto alignment = sizeof(std::max_align_t);
	return (sizeof(T) + alignment - 1) & ~(alignment - 1);
}
#endif

QPdfDestination* QPdfDestination_new(QPdfDestination* other) {
	return new (std::nothrow) QPdfDestination(*other);
}

void QPdfDestination_operatorAssign(QPdfDestination* self, QPdfDestination* other) {
	self->operator=(*other);
}

void QPdfDestination_swap(QPdfDestination* self, QPdfDestination* other) {
	self->swap(*other);
}

bool QPdfDestination_isValid(const QPdfDestination* self) {
	return self->isValid();
}

int QPdfDestination_page(const QPdfDestination* self) {
	return self->page();
}

QPointF* QPdfDestination_location(const QPdfDestination* self) {
	return new QPointF(self->location());
}

double QPdfDestination_zoom(const QPdfDestination* self) {
	qreal _ret = self->zoom();
	return static_cast<double>(_ret);
}

const QMetaObject* QPdfDestination_staticMetaObject() { return &QPdfDestination::staticMetaObject; }
void QPdfDestination_delete(QPdfDestination* self) {
	delete self;
}

