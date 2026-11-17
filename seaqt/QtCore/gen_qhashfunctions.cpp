#include <QHashSeed>
#include <qhashfunctions.h>
#include "gen_qhashfunctions.h"

#ifndef SEAQT_ALIGNED_SIZEOF
#define SEAQT_ALIGNED_SIZEOF 1
#include <cstddef>
template<typename T>
static constexpr std::size_t seaqt_aligned_sizeof() {
	constexpr auto alignment = sizeof(std::max_align_t);
	return (sizeof(T) + alignment - 1) & ~(alignment - 1);
}
#endif

QHashSeed* QHashSeed_new() {
	return new (std::nothrow) QHashSeed();
}

QHashSeed* QHashSeed_new_d(size_t d) {
	return new (std::nothrow) QHashSeed(static_cast<size_t>(d));
}

QHashSeed* QHashSeed_globalSeed() {
	return new QHashSeed(QHashSeed::globalSeed());
}

void QHashSeed_setDeterministicGlobalSeed() {
	QHashSeed::setDeterministicGlobalSeed();
}

void QHashSeed_resetRandomGlobalSeed() {
	QHashSeed::resetRandomGlobalSeed();
}

void QHashSeed_delete(QHashSeed* self) {
	delete self;
}

