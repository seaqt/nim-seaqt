#include <QThreadStorageData>
#include <qthreadstorage.h>
#include "gen_qthreadstorage.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
} /* extern C */
#endif

QThreadStorageData* QThreadStorageData_new(QThreadStorageData* param1) {
	return new QThreadStorageData(*param1);
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

void QThreadStorageData_delete(QThreadStorageData* self) {
	delete self;
}

