#include <QTypeRevision>
#include <qtyperevision.h>
#include "gen_qtyperevision.h"

#ifndef SEAQT_ALIGNED_SIZEOF
#define SEAQT_ALIGNED_SIZEOF 1
#include <cstddef>
template<typename T>
static constexpr std::size_t seaqt_aligned_sizeof() {
	constexpr auto alignment = sizeof(std::max_align_t);
	return (sizeof(T) + alignment - 1) & ~(alignment - 1);
}
#endif

QTypeRevision* QTypeRevision_new() {
	return new (std::nothrow) QTypeRevision();
}

QTypeRevision* QTypeRevision_new_from(QTypeRevision* from) {
	return new (std::nothrow) QTypeRevision(*from);
}

QTypeRevision* QTypeRevision_zero() {
	return new QTypeRevision(QTypeRevision::zero());
}

bool QTypeRevision_hasMajorVersion(const QTypeRevision* self) {
	return self->hasMajorVersion();
}

unsigned char QTypeRevision_majorVersion(const QTypeRevision* self) {
	quint8 _ret = self->majorVersion();
	return static_cast<unsigned char>(_ret);
}

bool QTypeRevision_hasMinorVersion(const QTypeRevision* self) {
	return self->hasMinorVersion();
}

unsigned char QTypeRevision_minorVersion(const QTypeRevision* self) {
	quint8 _ret = self->minorVersion();
	return static_cast<unsigned char>(_ret);
}

bool QTypeRevision_isValid(const QTypeRevision* self) {
	return self->isValid();
}

void QTypeRevision_delete(QTypeRevision* self) {
	delete self;
}

