#include <QInternal>
#include <qnamespace.h>
#include "gen_qnamespace.h"

#ifndef SEAQT_ALIGNED_SIZEOF
#define SEAQT_ALIGNED_SIZEOF 1
#include <cstddef>
template<typename T>
static constexpr std::size_t seaqt_aligned_sizeof() {
	constexpr auto alignment = sizeof(std::max_align_t);
	return (sizeof(T) + alignment - 1) & ~(alignment - 1);
}
#endif

bool QInternal_activateCallbacks(int param1, void** param2) {
	return QInternal::activateCallbacks(static_cast<QInternal::Callback>(param1), param2);
}

void QInternal_delete(QInternal* self) {
	delete self;
}

