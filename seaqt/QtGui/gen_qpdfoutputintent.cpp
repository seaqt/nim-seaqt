#include <QColorSpace>
#include <QPdfOutputIntent>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QUrl>
#include <qpdfoutputintent.h>
#include "gen_qpdfoutputintent.h"

#ifndef SEAQT_ALIGNED_SIZEOF
#define SEAQT_ALIGNED_SIZEOF 1
#include <cstddef>
template<typename T>
static constexpr std::size_t seaqt_aligned_sizeof() {
	constexpr auto alignment = sizeof(std::max_align_t);
	return (sizeof(T) + alignment - 1) & ~(alignment - 1);
}
#endif

QPdfOutputIntent* QPdfOutputIntent_new() {
	return new (std::nothrow) QPdfOutputIntent();
}

QPdfOutputIntent* QPdfOutputIntent_new_from(QPdfOutputIntent* from) {
	return new (std::nothrow) QPdfOutputIntent(*from);
}

void QPdfOutputIntent_operatorAssign(QPdfOutputIntent* self, QPdfOutputIntent* from) {
	self->operator=(*from);
}

void QPdfOutputIntent_swap(QPdfOutputIntent* self, QPdfOutputIntent* other) {
	self->swap(*other);
}

struct seaqt_string QPdfOutputIntent_outputConditionIdentifier(const QPdfOutputIntent* self) {
	QString _ret = self->outputConditionIdentifier();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QPdfOutputIntent_setOutputConditionIdentifier(QPdfOutputIntent* self, struct seaqt_string identifier) {
	QString identifier_QString = QString::fromUtf8(identifier.data, identifier.len);
	self->setOutputConditionIdentifier(identifier_QString);
}

struct seaqt_string QPdfOutputIntent_outputCondition(const QPdfOutputIntent* self) {
	QString _ret = self->outputCondition();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QPdfOutputIntent_setOutputCondition(QPdfOutputIntent* self, struct seaqt_string condition) {
	QString condition_QString = QString::fromUtf8(condition.data, condition.len);
	self->setOutputCondition(condition_QString);
}

QUrl* QPdfOutputIntent_registryName(const QPdfOutputIntent* self) {
	return new QUrl(self->registryName());
}

void QPdfOutputIntent_setRegistryName(QPdfOutputIntent* self, QUrl* name) {
	self->setRegistryName(*name);
}

QColorSpace* QPdfOutputIntent_outputProfile(const QPdfOutputIntent* self) {
	return new QColorSpace(self->outputProfile());
}

void QPdfOutputIntent_setOutputProfile(QPdfOutputIntent* self, QColorSpace* profile) {
	self->setOutputProfile(*profile);
}

void QPdfOutputIntent_delete(QPdfOutputIntent* self) {
	delete self;
}

