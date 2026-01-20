#include <QThreadStorageData>
#include <qthreadstorage.h>
#include "gen_qthreadstorage.h"

#ifndef SEAQT_ALIGNED_SIZEOF
#define SEAQT_ALIGNED_SIZEOF 1
#include <cstddef>
template<typename T>
static constexpr std::size_t seaqt_aligned_sizeof() {
	constexpr auto alignment = sizeof(std::max_align_t);
	return (sizeof(T) + alignment - 1) & ~(alignment - 1);
}
#endif

QThreadStorageData* QThreadStorageData_new(QThreadStorageData* param1) {
	return new (std::nothrow) QThreadStorageData(*param1);
}

void** QThreadStorageData_get(const QThreadStorageData* self) {
	return self->get();
}

void** QThreadStorageData_set(QThreadStorageData* self, void* p) {
	return self->set(p);
}

void QThreadStorageData_finish(void** param1) {
	QThreadStorageData::finish(param1);
}

int QThreadStorageData_id(const QThreadStorageData* self) {
	return self->id;
}

void QThreadStorageData_setId(QThreadStorageData* self, int id) {
	self->id = static_cast<int>(id);
}

void QThreadStorageData_delete(QThreadStorageData* self) {
	delete self;
}

