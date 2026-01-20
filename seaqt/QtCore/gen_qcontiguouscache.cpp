#include <QContiguousCacheData>
#include <qcontiguouscache.h>
#include "gen_qcontiguouscache.h"

#ifndef SEAQT_ALIGNED_SIZEOF
#define SEAQT_ALIGNED_SIZEOF 1
#include <cstddef>
template<typename T>
static constexpr std::size_t seaqt_aligned_sizeof() {
	constexpr auto alignment = sizeof(std::max_align_t);
	return (sizeof(T) + alignment - 1) & ~(alignment - 1);
}
#endif

ptrdiff_t QContiguousCacheData_alloc(const QContiguousCacheData* self) {
	qsizetype alloc_ret = self->alloc;
	return static_cast<ptrdiff_t>(alloc_ret);
}

void QContiguousCacheData_setAlloc(QContiguousCacheData* self, ptrdiff_t alloc) {
	self->alloc = (qsizetype)(alloc);
}

ptrdiff_t QContiguousCacheData_count(const QContiguousCacheData* self) {
	qsizetype count_ret = self->count;
	return static_cast<ptrdiff_t>(count_ret);
}

void QContiguousCacheData_setCount(QContiguousCacheData* self, ptrdiff_t count) {
	self->count = (qsizetype)(count);
}

ptrdiff_t QContiguousCacheData_start(const QContiguousCacheData* self) {
	qsizetype start_ret = self->start;
	return static_cast<ptrdiff_t>(start_ret);
}

void QContiguousCacheData_setStart(QContiguousCacheData* self, ptrdiff_t start) {
	self->start = (qsizetype)(start);
}

ptrdiff_t QContiguousCacheData_offset(const QContiguousCacheData* self) {
	qsizetype offset_ret = self->offset;
	return static_cast<ptrdiff_t>(offset_ret);
}

void QContiguousCacheData_setOffset(QContiguousCacheData* self, ptrdiff_t offset) {
	self->offset = (qsizetype)(offset);
}

QContiguousCacheData* QContiguousCacheData_allocateData(ptrdiff_t size, ptrdiff_t alignment) {
	return QContiguousCacheData::allocateData((qsizetype)(size), (qsizetype)(alignment));
}

void QContiguousCacheData_freeData(QContiguousCacheData* data) {
	QContiguousCacheData::freeData(data);
}

void QContiguousCacheData_delete(QContiguousCacheData* self) {
	delete self;
}

