#include <QFlag>
#include <QIncompatibleFlag>
#include <qflags.h>
#include "gen_qflags.h"

#ifndef SEAQT_ALIGNED_SIZEOF
#define SEAQT_ALIGNED_SIZEOF 1
#include <cstddef>
template<typename T>
static constexpr std::size_t seaqt_aligned_sizeof() {
	constexpr auto alignment = sizeof(std::max_align_t);
	return (sizeof(T) + alignment - 1) & ~(alignment - 1);
}
#endif

QFlag* QFlag_new(int value) {
	return new (std::nothrow) QFlag(static_cast<int>(value));
}

QFlag* QFlag_new2(unsigned int value) {
	return new (std::nothrow) QFlag(static_cast<uint>(value));
}

QFlag* QFlag_new3(short value) {
	return new (std::nothrow) QFlag(static_cast<short>(value));
}

QFlag* QFlag_new4(unsigned short value) {
	return new (std::nothrow) QFlag(static_cast<ushort>(value));
}

int QFlag_ToInt(const QFlag* self) {
	return self->operator int();
}

unsigned int QFlag_ToUnsignedInt(const QFlag* self) {
	uint _ret = self->operator unsigned int();
	return static_cast<unsigned int>(_ret);
}

void QFlag_delete(QFlag* self) {
	delete self;
}

QIncompatibleFlag* QIncompatibleFlag_new(int i) {
	return new (std::nothrow) QIncompatibleFlag(static_cast<int>(i));
}

QIncompatibleFlag* QIncompatibleFlag_new2(QIncompatibleFlag* param1) {
	return new (std::nothrow) QIncompatibleFlag(*param1);
}

int QIncompatibleFlag_ToInt(const QIncompatibleFlag* self) {
	return self->operator int();
}

void QIncompatibleFlag_delete(QIncompatibleFlag* self) {
	delete self;
}

