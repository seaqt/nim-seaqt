#include <QPartialOrdering>
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

QPartialOrdering* QPartialOrdering_new(QPartialOrdering* from) {
	return new (std::nothrow) QPartialOrdering(*from);
}

void QPartialOrdering_delete(QPartialOrdering* self) {
	delete self;
}

