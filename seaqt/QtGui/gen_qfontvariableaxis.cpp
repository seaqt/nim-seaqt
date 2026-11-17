#define WORKAROUND_INNER_CLASS_DEFINITION_QFont__Tag
#include <QFontVariableAxis>
#include <QMetaObject>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <qfontvariableaxis.h>
#include "gen_qfontvariableaxis.h"

#ifndef SEAQT_ALIGNED_SIZEOF
#define SEAQT_ALIGNED_SIZEOF 1
#include <cstddef>
template<typename T>
static constexpr std::size_t seaqt_aligned_sizeof() {
	constexpr auto alignment = sizeof(std::max_align_t);
	return (sizeof(T) + alignment - 1) & ~(alignment - 1);
}
#endif

QFontVariableAxis* QFontVariableAxis_new() {
	return new (std::nothrow) QFontVariableAxis();
}

QFontVariableAxis* QFontVariableAxis_new_from(QFontVariableAxis* from) {
	return new (std::nothrow) QFontVariableAxis(*from);
}

void QFontVariableAxis_swap(QFontVariableAxis* self, QFontVariableAxis* other) {
	self->swap(*other);
}

void QFontVariableAxis_operatorAssign(QFontVariableAxis* self, QFontVariableAxis* from) {
	self->operator=(*from);
}

QFont__Tag* QFontVariableAxis_tag(const QFontVariableAxis* self) {
	return new QFont::Tag(self->tag());
}

void QFontVariableAxis_setTag(QFontVariableAxis* self, QFont__Tag* tag) {
	self->setTag(*tag);
}

struct seaqt_string QFontVariableAxis_name(const QFontVariableAxis* self) {
	QString _ret = self->name();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QFontVariableAxis_setName(QFontVariableAxis* self, struct seaqt_string name) {
	QString name_QString = QString::fromUtf8(name.data, name.len);
	self->setName(name_QString);
}

double QFontVariableAxis_minimumValue(const QFontVariableAxis* self) {
	qreal _ret = self->minimumValue();
	return static_cast<double>(_ret);
}

void QFontVariableAxis_setMinimumValue(QFontVariableAxis* self, double minimumValue) {
	self->setMinimumValue(static_cast<qreal>(minimumValue));
}

double QFontVariableAxis_maximumValue(const QFontVariableAxis* self) {
	qreal _ret = self->maximumValue();
	return static_cast<double>(_ret);
}

void QFontVariableAxis_setMaximumValue(QFontVariableAxis* self, double maximumValue) {
	self->setMaximumValue(static_cast<qreal>(maximumValue));
}

double QFontVariableAxis_defaultValue(const QFontVariableAxis* self) {
	qreal _ret = self->defaultValue();
	return static_cast<double>(_ret);
}

void QFontVariableAxis_setDefaultValue(QFontVariableAxis* self, double defaultValue) {
	self->setDefaultValue(static_cast<qreal>(defaultValue));
}

const QMetaObject* QFontVariableAxis_staticMetaObject() { return &QFontVariableAxis::staticMetaObject; }
void QFontVariableAxis_delete(QFontVariableAxis* self) {
	delete self;
}

