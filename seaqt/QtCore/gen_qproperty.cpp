#include <QMetaType>
#include <QPropertyBindingError>
#include <QPropertyBindingSourceLocation>
#include <QPropertyNotifier>
#include <QPropertyObserver>
#include <QPropertyObserverBase>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QUntypedBindable>
#include <QUntypedPropertyBinding>
#include <QUntypedPropertyData>
#include <qproperty.h>
#include "gen_qproperty.h"

#ifndef SEAQT_ALIGNED_SIZEOF
#define SEAQT_ALIGNED_SIZEOF 1
#include <cstddef>
template<typename T>
static constexpr std::size_t seaqt_aligned_sizeof() {
	constexpr auto alignment = sizeof(std::max_align_t);
	return (sizeof(T) + alignment - 1) & ~(alignment - 1);
}
#endif

QPropertyBindingSourceLocation* QPropertyBindingSourceLocation_new() {
	return new (std::nothrow) QPropertyBindingSourceLocation();
}

QPropertyBindingSourceLocation* QPropertyBindingSourceLocation_new_from(QPropertyBindingSourceLocation* from) {
	return new (std::nothrow) QPropertyBindingSourceLocation(*from);
}

const char* QPropertyBindingSourceLocation_fileName(const QPropertyBindingSourceLocation* self) {
	return (const char*) self->fileName;
}

void QPropertyBindingSourceLocation_setFileName(QPropertyBindingSourceLocation* self, const char* fileName) {
	self->fileName = fileName;
}

const char* QPropertyBindingSourceLocation_functionName(const QPropertyBindingSourceLocation* self) {
	return (const char*) self->functionName;
}

void QPropertyBindingSourceLocation_setFunctionName(QPropertyBindingSourceLocation* self, const char* functionName) {
	self->functionName = functionName;
}

unsigned int QPropertyBindingSourceLocation_line(const QPropertyBindingSourceLocation* self) {
	quint32 line_ret = self->line;
	return static_cast<unsigned int>(line_ret);
}

void QPropertyBindingSourceLocation_setLine(QPropertyBindingSourceLocation* self, unsigned int line) {
	self->line = static_cast<quint32>(line);
}

unsigned int QPropertyBindingSourceLocation_column(const QPropertyBindingSourceLocation* self) {
	quint32 column_ret = self->column;
	return static_cast<unsigned int>(column_ret);
}

void QPropertyBindingSourceLocation_setColumn(QPropertyBindingSourceLocation* self, unsigned int column) {
	self->column = static_cast<quint32>(column);
}

void QPropertyBindingSourceLocation_delete(QPropertyBindingSourceLocation* self) {
	delete self;
}

QPropertyBindingError* QPropertyBindingError_new() {
	return new (std::nothrow) QPropertyBindingError();
}

QPropertyBindingError* QPropertyBindingError_new_type(int type) {
	return new (std::nothrow) QPropertyBindingError(static_cast<QPropertyBindingError::Type>(type));
}

QPropertyBindingError* QPropertyBindingError_new_from(QPropertyBindingError* from) {
	return new (std::nothrow) QPropertyBindingError(*from);
}

QPropertyBindingError* QPropertyBindingError_new_type_description(int type, struct seaqt_string description) {
	QString description_QString = QString::fromUtf8(description.data, description.len);
	return new (std::nothrow) QPropertyBindingError(static_cast<QPropertyBindingError::Type>(type), description_QString);
}

void QPropertyBindingError_operatorAssign(QPropertyBindingError* self, QPropertyBindingError* from) {
	self->operator=(*from);
}

bool QPropertyBindingError_hasError(const QPropertyBindingError* self) {
	return self->hasError();
}

int QPropertyBindingError_type(const QPropertyBindingError* self) {
	QPropertyBindingError::Type _ret = self->type();
	return static_cast<int>(_ret);
}

struct seaqt_string QPropertyBindingError_description(const QPropertyBindingError* self) {
	QString _ret = self->description();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QPropertyBindingError_delete(QPropertyBindingError* self) {
	delete self;
}

QUntypedPropertyBinding* QUntypedPropertyBinding_new() {
	return new (std::nothrow) QUntypedPropertyBinding();
}

QUntypedPropertyBinding* QUntypedPropertyBinding_new_metaType_vtable_function_location(QMetaType* metaType, const void* vtable, void* function, QPropertyBindingSourceLocation* location) {
	return new (std::nothrow) QUntypedPropertyBinding(*metaType, static_cast<const QUntypedPropertyBinding::BindingFunctionVTable*>(vtable), function, *location);
}

QUntypedPropertyBinding* QUntypedPropertyBinding_new_from(QUntypedPropertyBinding* from) {
	return new (std::nothrow) QUntypedPropertyBinding(*from);
}

void QUntypedPropertyBinding_operatorAssign(QUntypedPropertyBinding* self, QUntypedPropertyBinding* from) {
	self->operator=(*from);
}

bool QUntypedPropertyBinding_isNull(const QUntypedPropertyBinding* self) {
	return self->isNull();
}

QPropertyBindingError* QUntypedPropertyBinding_error(const QUntypedPropertyBinding* self) {
	return new QPropertyBindingError(self->error());
}

QMetaType* QUntypedPropertyBinding_valueMetaType(const QUntypedPropertyBinding* self) {
	return new QMetaType(self->valueMetaType());
}

void QUntypedPropertyBinding_delete(QUntypedPropertyBinding* self) {
	delete self;
}

QPropertyObserverBase* QPropertyObserverBase_new() {
	return new (std::nothrow) QPropertyObserverBase();
}

QPropertyObserverBase* QPropertyObserverBase_new_from(QPropertyObserverBase* from) {
	return new (std::nothrow) QPropertyObserverBase(*from);
}

void QPropertyObserverBase_operatorAssign(QPropertyObserverBase* self, QPropertyObserverBase* from) {
	self->operator=(*from);
}

void QPropertyObserverBase_delete(QPropertyObserverBase* self) {
	delete self;
}

QPropertyObserver* QPropertyObserver_new() {
	return new (std::nothrow) QPropertyObserver();
}

void QPropertyObserver_virtbase(QPropertyObserver* src, QPropertyObserverBase** outptr_QPropertyObserverBase) {
	*outptr_QPropertyObserverBase = static_cast<QPropertyObserverBase*>(src);
}

void QPropertyObserver_delete(QPropertyObserver* self) {
	delete self;
}

QPropertyNotifier* QPropertyNotifier_new() {
	return new (std::nothrow) QPropertyNotifier();
}

void QPropertyNotifier_virtbase(QPropertyNotifier* src, QPropertyObserver** outptr_QPropertyObserver) {
	*outptr_QPropertyObserver = static_cast<QPropertyObserver*>(src);
}

void QPropertyNotifier_delete(QPropertyNotifier* self) {
	delete self;
}

QUntypedBindable* QUntypedBindable_new() {
	return new (std::nothrow) QUntypedBindable();
}

QUntypedBindable* QUntypedBindable_new_from(QUntypedBindable* from) {
	return new (std::nothrow) QUntypedBindable(*from);
}

bool QUntypedBindable_isValid(const QUntypedBindable* self) {
	return self->isValid();
}

bool QUntypedBindable_isBindable(const QUntypedBindable* self) {
	return self->isBindable();
}

bool QUntypedBindable_isReadOnly(const QUntypedBindable* self) {
	return self->isReadOnly();
}

QUntypedPropertyBinding* QUntypedBindable_makeBinding(const QUntypedBindable* self) {
	return new QUntypedPropertyBinding(self->makeBinding());
}

QUntypedPropertyBinding* QUntypedBindable_takeBinding(QUntypedBindable* self) {
	return new QUntypedPropertyBinding(self->takeBinding());
}

void QUntypedBindable_observe(const QUntypedBindable* self, QPropertyObserver* observer) {
	self->observe(observer);
}

QUntypedPropertyBinding* QUntypedBindable_binding(const QUntypedBindable* self) {
	return new QUntypedPropertyBinding(self->binding());
}

bool QUntypedBindable_setBinding(QUntypedBindable* self, QUntypedPropertyBinding* binding) {
	return self->setBinding(*binding);
}

bool QUntypedBindable_hasBinding(const QUntypedBindable* self) {
	return self->hasBinding();
}

QMetaType* QUntypedBindable_metaType(const QUntypedBindable* self) {
	return new QMetaType(self->metaType());
}

QUntypedPropertyBinding* QUntypedBindable_makeBinding_location(const QUntypedBindable* self, QPropertyBindingSourceLocation* location) {
	return new QUntypedPropertyBinding(self->makeBinding(*location));
}

void QUntypedBindable_delete(QUntypedBindable* self) {
	delete self;
}

