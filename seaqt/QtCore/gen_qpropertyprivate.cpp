#include <QUntypedPropertyData>
#include <qpropertyprivate.h>
#include "gen_qpropertyprivate.h"

#ifndef SEAQT_ALIGNED_SIZEOF
#define SEAQT_ALIGNED_SIZEOF 1
#include <cstddef>
template<typename T>
static constexpr std::size_t seaqt_aligned_sizeof() {
	constexpr auto alignment = sizeof(std::max_align_t);
	return (sizeof(T) + alignment - 1) & ~(alignment - 1);
}
#endif

void QUntypedPropertyData_delete(QUntypedPropertyData* self) {
	delete self;
}

