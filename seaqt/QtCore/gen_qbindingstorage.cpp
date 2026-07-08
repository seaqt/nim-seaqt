#include <QBindingStatus>
#include <QBindingStorage>
#include <QUntypedPropertyData>
#include <qbindingstorage.h>
#include "gen_qbindingstorage.h"

#ifndef SEAQT_ALIGNED_SIZEOF
#define SEAQT_ALIGNED_SIZEOF 1
#include <cstddef>
template<typename T>
static constexpr std::size_t seaqt_aligned_sizeof() {
	constexpr auto alignment = sizeof(std::max_align_t);
	return (sizeof(T) + alignment - 1) & ~(alignment - 1);
}
#endif

void* QBindingStatus_currentlyEvaluatingBinding(const QBindingStatus* self) {
	return self->currentlyEvaluatingBinding;
}

void QBindingStatus_setCurrentlyEvaluatingBinding(QBindingStatus* self, void* currentlyEvaluatingBinding) {
	self->currentlyEvaluatingBinding = static_cast<QtPrivate::BindingEvaluationState*>(currentlyEvaluatingBinding);
}

void* QBindingStatus_currentCompatProperty(const QBindingStatus* self) {
	return self->currentCompatProperty;
}

void QBindingStatus_setCurrentCompatProperty(QBindingStatus* self, void* currentCompatProperty) {
	self->currentCompatProperty = static_cast<QtPrivate::CompatPropertySafePoint*>(currentCompatProperty);
}

void* QBindingStatus_threadId(const QBindingStatus* self) {
	Qt::HANDLE threadId_ret = self->threadId;
	return static_cast<void*>(threadId_ret);
}

void QBindingStatus_setThreadId(QBindingStatus* self, void* threadId) {
	self->threadId = threadId;
}

void QBindingStatus_delete(QBindingStatus* self) {
	delete self;
}

QBindingStorage* QBindingStorage_new() {
	return new (std::nothrow) QBindingStorage();
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

void* QBindingStorage_bindingData_data(const QBindingStorage* self, QUntypedPropertyData* data) {
	return self->bindingData(data);
}

void* QBindingStorage_bindingData_data_create(QBindingStorage* self, QUntypedPropertyData* data, bool create) {
	return self->bindingData(data, create);
}

void QBindingStorage_delete(QBindingStorage* self) {
	delete self;
}

