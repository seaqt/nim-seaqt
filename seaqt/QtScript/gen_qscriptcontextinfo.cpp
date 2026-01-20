#include <QList>
#include <QScriptContext>
#include <QScriptContextInfo>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <qscriptcontextinfo.h>
#include "gen_qscriptcontextinfo.h"

#ifndef SEAQT_ALIGNED_SIZEOF
#define SEAQT_ALIGNED_SIZEOF 1
#include <cstddef>
template<typename T>
static constexpr std::size_t seaqt_aligned_sizeof() {
	constexpr auto alignment = sizeof(std::max_align_t);
	return (sizeof(T) + alignment - 1) & ~(alignment - 1);
}
#endif

QScriptContextInfo* QScriptContextInfo_new_context(QScriptContext* context) {
	return new (std::nothrow) QScriptContextInfo(context);
}

QScriptContextInfo* QScriptContextInfo_new_from(QScriptContextInfo* from) {
	return new (std::nothrow) QScriptContextInfo(*from);
}

QScriptContextInfo* QScriptContextInfo_new() {
	return new (std::nothrow) QScriptContextInfo();
}

void QScriptContextInfo_operatorAssign(QScriptContextInfo* self, QScriptContextInfo* from) {
	self->operator=(*from);
}

bool QScriptContextInfo_isNull(const QScriptContextInfo* self) {
	return self->isNull();
}

long long QScriptContextInfo_scriptId(const QScriptContextInfo* self) {
	qint64 _ret = self->scriptId();
	return static_cast<long long>(_ret);
}

struct seaqt_string QScriptContextInfo_fileName(const QScriptContextInfo* self) {
	QString _ret = self->fileName();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

int QScriptContextInfo_lineNumber(const QScriptContextInfo* self) {
	return self->lineNumber();
}

int QScriptContextInfo_columnNumber(const QScriptContextInfo* self) {
	return self->columnNumber();
}

struct seaqt_string QScriptContextInfo_functionName(const QScriptContextInfo* self) {
	QString _ret = self->functionName();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

int QScriptContextInfo_functionType(const QScriptContextInfo* self) {
	QScriptContextInfo::FunctionType _ret = self->functionType();
	return static_cast<int>(_ret);
}

struct seaqt_array /* of struct seaqt_string */  QScriptContextInfo_functionParameterNames(const QScriptContextInfo* self) {
	QStringList _ret = self->functionParameterNames();
	// Convert QList<> from C++ memory to manually-managed C memory
	struct seaqt_string* _arr = static_cast<struct seaqt_string*>(malloc(sizeof(struct seaqt_string) * _ret.length()));
	for (size_t i = 0, e = _ret.length(); i < e; ++i) {
		QString _lv_ret = _ret[i];
		// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
		QByteArray _lv_b = _lv_ret.toUtf8();
		struct seaqt_string _lv_ms;
		_lv_ms.len = _lv_b.length();
		_lv_ms.data = static_cast<char*>(malloc(_lv_ms.len));
		memcpy(_lv_ms.data, _lv_b.data(), _lv_ms.len);
		_arr[i] = _lv_ms;
	}
	struct seaqt_array _out;
	_out.len = _ret.length();
	_out.data = static_cast<void*>(_arr);
	return _out;
}

int QScriptContextInfo_functionStartLineNumber(const QScriptContextInfo* self) {
	return self->functionStartLineNumber();
}

int QScriptContextInfo_functionEndLineNumber(const QScriptContextInfo* self) {
	return self->functionEndLineNumber();
}

int QScriptContextInfo_functionMetaIndex(const QScriptContextInfo* self) {
	return self->functionMetaIndex();
}

bool QScriptContextInfo_operatorEqual(const QScriptContextInfo* self, QScriptContextInfo* other) {
	return (*self == *other);
}

bool QScriptContextInfo_operatorNotEqual(const QScriptContextInfo* self, QScriptContextInfo* other) {
	return (*self != *other);
}

void QScriptContextInfo_delete(QScriptContextInfo* self) {
	delete self;
}

