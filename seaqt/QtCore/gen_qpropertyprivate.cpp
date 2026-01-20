#include <QPropertyProxyBindingData>
#include <QUntypedPropertyData>
#include <qpropertyprivate.h>
#include "gen_qpropertyprivate.h"

#ifndef SEAQT_ALIGNED_SIZEOF
#define SEAQT_ALIGNED_SIZEOF 1
#include <cstddef>
template<typename T>
static constexpr std::size_t seaqt_aligned_sizeof() {
	constexpr auto alignment = sizeof(std::max_align_t);
	return (sizeof(T) + alignment - 1) & ~(alignment - 1);
}
#endif

void QUntypedPropertyData_delete(QUntypedPropertyData* self) {
	delete self;
}

uintptr_t QPropertyProxyBindingData_dPtr(const QPropertyProxyBindingData* self) {
	quintptr d_ptr_ret = self->d_ptr;
	return static_cast<uintptr_t>(d_ptr_ret);
}

void QPropertyProxyBindingData_setDPtr(QPropertyProxyBindingData* self, uintptr_t d_ptr) {
	self->d_ptr = static_cast<quintptr>(d_ptr);
}

const void* QPropertyProxyBindingData_originalBindingData(const QPropertyProxyBindingData* self) {
	return (const void*) self->originalBindingData;
}

void QPropertyProxyBindingData_setOriginalBindingData(QPropertyProxyBindingData* self, const void* originalBindingData) {
	self->originalBindingData = static_cast<const QtPrivate::QPropertyBindingData*>(originalBindingData);
}

QUntypedPropertyData* QPropertyProxyBindingData_propertyData(const QPropertyProxyBindingData* self) {
	return self->propertyData;
}

void QPropertyProxyBindingData_setPropertyData(QPropertyProxyBindingData* self, QUntypedPropertyData* propertyData) {
	self->propertyData = propertyData;
}

void QPropertyProxyBindingData_delete(QPropertyProxyBindingData* self) {
	delete self;
}

