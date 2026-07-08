#include <qvarlengtharray.h>
#include "gen_qvarlengtharray.h"

#ifndef SEAQT_ALIGNED_SIZEOF
#define SEAQT_ALIGNED_SIZEOF 1
#include <cstddef>
template<typename T>
static constexpr std::size_t seaqt_aligned_sizeof() {
	constexpr auto alignment = sizeof(std::max_align_t);
	return (sizeof(T) + alignment - 1) & ~(alignment - 1);
}
#endif

ptrdiff_t QVLABaseBase_capacity(const QVLABaseBase* self) {
	QVLABaseBase::size_type _ret = self->capacity();
	return static_cast<ptrdiff_t>(_ret);
}

ptrdiff_t QVLABaseBase_size(const QVLABaseBase* self) {
	QVLABaseBase::size_type _ret = self->size();
	return static_cast<ptrdiff_t>(_ret);
}

bool QVLABaseBase_empty(const QVLABaseBase* self) {
	return self->empty();
}

