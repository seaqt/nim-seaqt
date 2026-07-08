#include <QJSListForInIterator>
#include <QJSListForOfIterator>
#include <QJSListIndexClamp>
#include <qjslist.h>
#include "gen_qjslist.h"

#ifndef SEAQT_ALIGNED_SIZEOF
#define SEAQT_ALIGNED_SIZEOF 1
#include <cstddef>
template<typename T>
static constexpr std::size_t seaqt_aligned_sizeof() {
	constexpr auto alignment = sizeof(std::max_align_t);
	return (sizeof(T) + alignment - 1) & ~(alignment - 1);
}
#endif

QJSListIndexClamp* QJSListIndexClamp_new_from(QJSListIndexClamp* from) {
	return new (std::nothrow) QJSListIndexClamp(*from);
}

QJSListIndexClamp* QJSListIndexClamp_new() {
	return new (std::nothrow) QJSListIndexClamp();
}

ptrdiff_t QJSListIndexClamp_clamp_start_max(ptrdiff_t start, ptrdiff_t max) {
	qsizetype _ret = QJSListIndexClamp::clamp((qsizetype)(start), (qsizetype)(max));
	return static_cast<ptrdiff_t>(_ret);
}

void QJSListIndexClamp_operatorAssign(QJSListIndexClamp* self, QJSListIndexClamp* from) {
	self->operator=(*from);
}

ptrdiff_t QJSListIndexClamp_clamp_start_max_min(ptrdiff_t start, ptrdiff_t max, ptrdiff_t min) {
	qsizetype _ret = QJSListIndexClamp::clamp((qsizetype)(start), (qsizetype)(max), (qsizetype)(min));
	return static_cast<ptrdiff_t>(_ret);
}

void QJSListIndexClamp_delete(QJSListIndexClamp* self) {
	delete self;
}

bool QJSListForInIterator_hasNext(const QJSListForInIterator* self) {
	return self->hasNext();
}

ptrdiff_t QJSListForInIterator_next(QJSListForInIterator* self) {
	qsizetype _ret = self->next();
	return static_cast<ptrdiff_t>(_ret);
}

void QJSListForInIterator_delete(QJSListForInIterator* self) {
	delete self;
}

void QJSListForOfIterator_init(QJSListForOfIterator* self) {
	self->init();
}

void QJSListForOfIterator_delete(QJSListForOfIterator* self) {
	delete self;
}

