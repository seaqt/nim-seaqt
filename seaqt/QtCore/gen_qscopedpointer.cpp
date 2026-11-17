#include <QScopedPointerPodDeleter>
#include <qscopedpointer.h>
#include "gen_qscopedpointer.h"

#ifndef SEAQT_ALIGNED_SIZEOF
#define SEAQT_ALIGNED_SIZEOF 1
#include <cstddef>
template<typename T>
static constexpr std::size_t seaqt_aligned_sizeof() {
	constexpr auto alignment = sizeof(std::max_align_t);
	return (sizeof(T) + alignment - 1) & ~(alignment - 1);
}
#endif

void QScopedPointerPodDeleter_cleanup(void* pointer) {
	QScopedPointerPodDeleter::cleanup(pointer);
}

void QScopedPointerPodDeleter_delete(QScopedPointerPodDeleter* self) {
	delete self;
}

