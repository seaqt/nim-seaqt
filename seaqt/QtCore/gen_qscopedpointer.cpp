#include <QScopedPointerPodDeleter>
#include <qscopedpointer.h>
#include "gen_qscopedpointer.h"
void QScopedPointerPodDeleter_cleanup(void* pointer) {
	QScopedPointerPodDeleter::cleanup(pointer);
}

void QScopedPointerPodDeleter_operatorCall(const QScopedPointerPodDeleter* self, void* pointer) {
	self->operator()(pointer);
}

void QScopedPointerPodDeleter_delete(QScopedPointerPodDeleter* self) {
	delete self;
}

