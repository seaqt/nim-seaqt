#include <QContiguousCacheData>
#include <qcontiguouscache.h>
#include "gen_qcontiguouscache.h"
QContiguousCacheData* QContiguousCacheData_allocateData(int size, int alignment) {
	return QContiguousCacheData::allocateData(static_cast<int>(size), static_cast<int>(alignment));
}

void QContiguousCacheData_freeData(QContiguousCacheData* data) {
	QContiguousCacheData::freeData(data);
}

void QContiguousCacheData_delete(QContiguousCacheData* self) {
	delete self;
}

