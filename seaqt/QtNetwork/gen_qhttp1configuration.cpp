#include <QHttp1Configuration>
#include <qhttp1configuration.h>
#include "gen_qhttp1configuration.h"

#ifndef SEAQT_ALIGNED_SIZEOF
#define SEAQT_ALIGNED_SIZEOF 1
#include <cstddef>
template<typename T>
static constexpr std::size_t seaqt_aligned_sizeof() {
	constexpr auto alignment = sizeof(std::max_align_t);
	return (sizeof(T) + alignment - 1) & ~(alignment - 1);
}
#endif

QHttp1Configuration* QHttp1Configuration_new() {
	return new (std::nothrow) QHttp1Configuration();
}

QHttp1Configuration* QHttp1Configuration_new_from(QHttp1Configuration* from) {
	return new (std::nothrow) QHttp1Configuration(*from);
}

void QHttp1Configuration_operatorAssign(QHttp1Configuration* self, QHttp1Configuration* from) {
	self->operator=(*from);
}

void QHttp1Configuration_setNumberOfConnectionsPerHost(QHttp1Configuration* self, ptrdiff_t amount) {
	self->setNumberOfConnectionsPerHost((qsizetype)(amount));
}

ptrdiff_t QHttp1Configuration_numberOfConnectionsPerHost(const QHttp1Configuration* self) {
	qsizetype _ret = self->numberOfConnectionsPerHost();
	return static_cast<ptrdiff_t>(_ret);
}

void QHttp1Configuration_swap(QHttp1Configuration* self, QHttp1Configuration* other) {
	self->swap(*other);
}

void QHttp1Configuration_delete(QHttp1Configuration* self) {
	delete self;
}

