#include <QPartialOrdering>
#define WORKAROUND_INNER_CLASS_DEFINITION_partial_ordering
#define WORKAROUND_INNER_CLASS_DEFINITION_strong_ordering
#define WORKAROUND_INNER_CLASS_DEFINITION_weak_ordering
#include <qcompare.h>
#include "gen_qcompare.h"

#ifndef SEAQT_ALIGNED_SIZEOF
#define SEAQT_ALIGNED_SIZEOF 1
#include <cstddef>
template<typename T>
static constexpr std::size_t seaqt_aligned_sizeof() {
	constexpr auto alignment = sizeof(std::max_align_t);
	return (sizeof(T) + alignment - 1) & ~(alignment - 1);
}
#endif

partial_ordering* partial_ordering_new(partial_ordering* from) {
	return new (std::nothrow) partial_ordering(*from);
}

void partial_ordering_delete(partial_ordering* self) {
	delete self;
}

weak_ordering* weak_ordering_new(weak_ordering* from) {
	return new (std::nothrow) weak_ordering(*from);
}

partial_ordering* weak_ordering_ToPartial_ordering(const weak_ordering* self) {
	return new Qt::partial_ordering(self->operator partial_ordering());
}

void weak_ordering_delete(weak_ordering* self) {
	delete self;
}

strong_ordering* strong_ordering_new(strong_ordering* from) {
	return new (std::nothrow) strong_ordering(*from);
}

partial_ordering* strong_ordering_ToPartial_ordering(const strong_ordering* self) {
	return new Qt::partial_ordering(self->operator partial_ordering());
}

weak_ordering* strong_ordering_ToWeak_ordering(const strong_ordering* self) {
	return new Qt::weak_ordering(self->operator weak_ordering());
}

void strong_ordering_delete(strong_ordering* self) {
	delete self;
}

QPartialOrdering* QPartialOrdering_new_Qt_partial_ordering(partial_ordering* order) {
	return new (std::nothrow) QPartialOrdering(*order);
}

QPartialOrdering* QPartialOrdering_new_Qt_weak_ordering(weak_ordering* stdorder) {
	return new (std::nothrow) QPartialOrdering(*stdorder);
}

QPartialOrdering* QPartialOrdering_new_Qt_strong_ordering(strong_ordering* stdorder) {
	return new (std::nothrow) QPartialOrdering(*stdorder);
}

QPartialOrdering* QPartialOrdering_new_QPartialOrdering(QPartialOrdering* from) {
	return new (std::nothrow) QPartialOrdering(*from);
}

partial_ordering* QPartialOrdering_ToPartial_ordering(const QPartialOrdering* self) {
	return new Qt::partial_ordering(self->operator partial_ordering());
}

void QPartialOrdering_delete(QPartialOrdering* self) {
	delete self;
}

