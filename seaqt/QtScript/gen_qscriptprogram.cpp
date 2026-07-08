#include <QScriptProgram>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <qscriptprogram.h>
#include "gen_qscriptprogram.h"

#ifndef SEAQT_ALIGNED_SIZEOF
#define SEAQT_ALIGNED_SIZEOF 1
#include <cstddef>
template<typename T>
static constexpr std::size_t seaqt_aligned_sizeof() {
	constexpr auto alignment = sizeof(std::max_align_t);
	return (sizeof(T) + alignment - 1) & ~(alignment - 1);
}
#endif

QScriptProgram* QScriptProgram_new() {
	return new (std::nothrow) QScriptProgram();
}

QScriptProgram* QScriptProgram_new_sourceCode(struct seaqt_string sourceCode) {
	QString sourceCode_QString = QString::fromUtf8(sourceCode.data, sourceCode.len);
	return new (std::nothrow) QScriptProgram(sourceCode_QString);
}

QScriptProgram* QScriptProgram_new_from(QScriptProgram* from) {
	return new (std::nothrow) QScriptProgram(*from);
}

QScriptProgram* QScriptProgram_new_sourceCode_fileName(struct seaqt_string sourceCode, struct seaqt_string fileName) {
	QString sourceCode_QString = QString::fromUtf8(sourceCode.data, sourceCode.len);
	QString fileName_QString = QString::fromUtf8(fileName.data, fileName.len);
	return new (std::nothrow) QScriptProgram(sourceCode_QString, fileName_QString);
}

QScriptProgram* QScriptProgram_new_sourceCode_fileName_firstLineNumber(struct seaqt_string sourceCode, struct seaqt_string fileName, int firstLineNumber) {
	QString sourceCode_QString = QString::fromUtf8(sourceCode.data, sourceCode.len);
	QString fileName_QString = QString::fromUtf8(fileName.data, fileName.len);
	return new (std::nothrow) QScriptProgram(sourceCode_QString, fileName_QString, static_cast<int>(firstLineNumber));
}

void QScriptProgram_operatorAssign(QScriptProgram* self, QScriptProgram* from) {
	self->operator=(*from);
}

bool QScriptProgram_isNull(const QScriptProgram* self) {
	return self->isNull();
}

struct seaqt_string QScriptProgram_sourceCode(const QScriptProgram* self) {
	QString _ret = self->sourceCode();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QScriptProgram_fileName(const QScriptProgram* self) {
	QString _ret = self->fileName();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

int QScriptProgram_firstLineNumber(const QScriptProgram* self) {
	return self->firstLineNumber();
}

bool QScriptProgram_operatorEqual(const QScriptProgram* self, QScriptProgram* other) {
	return (*self == *other);
}

bool QScriptProgram_operatorNotEqual(const QScriptProgram* self, QScriptProgram* other) {
	return (*self != *other);
}

void QScriptProgram_delete(QScriptProgram* self) {
	delete self;
}

