#define WORKAROUND_INNER_CLASS_DEFINITION_QtMocHelpers__NoType
#include <qtmochelpers.h>
#include "gen_qtmochelpers.h"

#ifndef SEAQT_ALIGNED_SIZEOF
#define SEAQT_ALIGNED_SIZEOF 1
#include <cstddef>
template<typename T>
static constexpr std::size_t seaqt_aligned_sizeof() {
	constexpr auto alignment = sizeof(std::max_align_t);
	return (sizeof(T) + alignment - 1) & ~(alignment - 1);
}
#endif

void QtMocHelpers__NoType_delete(QtMocHelpers__NoType* self) {
	delete self;
}

