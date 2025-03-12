#include <QBindingStatus>
#include <QBindingStorage>
#include <QUntypedPropertyData>
#include <qbindingstorage.h>
#include "gen_qbindingstorage.h"
void QBindingStatus_delete(QBindingStatus* self) {
	delete self;
}

QBindingStorage* QBindingStorage_new() {
	return new QBindingStorage();
}

bool QBindingStorage_isEmpty(QBindingStorage* self) {
	return self->isEmpty();
}

bool QBindingStorage_isValid(const QBindingStorage* self) {
	return self->isValid();
}

void QBindingStorage_registerDependency(const QBindingStorage* self, QUntypedPropertyData* data) {
	self->registerDependency(data);
}

void QBindingStorage_delete(QBindingStorage* self) {
	delete self;
}

