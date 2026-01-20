#include <qfloat16.h>
#include "gen_qfloat16.h"

#ifndef SEAQT_ALIGNED_SIZEOF
#define SEAQT_ALIGNED_SIZEOF 1
#include <cstddef>
template<typename T>
static constexpr std::size_t seaqt_aligned_sizeof() {
	constexpr auto alignment = sizeof(std::max_align_t);
	return (sizeof(T) + alignment - 1) & ~(alignment - 1);
}
#endif

qfloat16* qfloat16_new() {
	return new (std::nothrow) qfloat16();
}

qfloat16* qfloat16_new_f(float f) {
	return new (std::nothrow) qfloat16(static_cast<float>(f));
}

bool qfloat16_isInf(const qfloat16* self) {
	return self->isInf();
}

bool qfloat16_isNaN(const qfloat16* self) {
	return self->isNaN();
}

bool qfloat16_isFinite(const qfloat16* self) {
	return self->isFinite();
}

int qfloat16_fpClassify(const qfloat16* self) {
	return self->fpClassify();
}

bool qfloat16_isNormal(const qfloat16* self) {
	return self->isNormal();
}

void qfloat16_delete(qfloat16* self) {
	delete self;
}

