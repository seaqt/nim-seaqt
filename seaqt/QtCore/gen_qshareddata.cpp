#include <QSharedData>
#include <qshareddata.h>
#include "gen_qshareddata.h"

#ifndef SEAQT_ALIGNED_SIZEOF
#define SEAQT_ALIGNED_SIZEOF 1
#include <cstddef>
template<typename T>
static constexpr std::size_t seaqt_aligned_sizeof() {
	constexpr auto alignment = sizeof(std::max_align_t);
	return (sizeof(T) + alignment - 1) & ~(alignment - 1);
}
#endif

QSharedData* QSharedData_new() {
	return new (std::nothrow) QSharedData();
}

QSharedData* QSharedData_new2(QSharedData* param1) {
	return new (std::nothrow) QSharedData(*param1);
}

void QSharedData_delete(QSharedData* self) {
	delete self;
}

