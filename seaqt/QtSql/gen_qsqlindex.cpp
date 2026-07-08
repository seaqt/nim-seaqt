#include <QMetaObject>
#include <QSqlField>
#include <QSqlIndex>
#include <QSqlRecord>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <qsqlindex.h>
#include "gen_qsqlindex.h"

#ifndef SEAQT_ALIGNED_SIZEOF
#define SEAQT_ALIGNED_SIZEOF 1
#include <cstddef>
template<typename T>
static constexpr std::size_t seaqt_aligned_sizeof() {
	constexpr auto alignment = sizeof(std::max_align_t);
	return (sizeof(T) + alignment - 1) & ~(alignment - 1);
}
#endif

QSqlIndex* QSqlIndex_new() {
	return new (std::nothrow) QSqlIndex();
}

QSqlIndex* QSqlIndex_new_from(QSqlIndex* from) {
	return new (std::nothrow) QSqlIndex(*from);
}

QSqlIndex* QSqlIndex_new_cursorName(struct seaqt_string cursorName) {
	QString cursorName_QString = QString::fromUtf8(cursorName.data, cursorName.len);
	return new (std::nothrow) QSqlIndex(cursorName_QString);
}

QSqlIndex* QSqlIndex_new_cursorName_name(struct seaqt_string cursorName, struct seaqt_string name) {
	QString cursorName_QString = QString::fromUtf8(cursorName.data, cursorName.len);
	QString name_QString = QString::fromUtf8(name.data, name.len);
	return new (std::nothrow) QSqlIndex(cursorName_QString, name_QString);
}

void QSqlIndex_virtbase(QSqlIndex* src, QSqlRecord** outptr_QSqlRecord) {
	*outptr_QSqlRecord = static_cast<QSqlRecord*>(src);
}

void QSqlIndex_operatorAssign(QSqlIndex* self, QSqlIndex* from) {
	self->operator=(*from);
}

void QSqlIndex_swap(QSqlIndex* self, QSqlIndex* other) {
	self->swap(*other);
}

void QSqlIndex_setCursorName(QSqlIndex* self, struct seaqt_string cursorName) {
	QString cursorName_QString = QString::fromUtf8(cursorName.data, cursorName.len);
	self->setCursorName(cursorName_QString);
}

struct seaqt_string QSqlIndex_cursorName(const QSqlIndex* self) {
	QString _ret = self->cursorName();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QSqlIndex_setName(QSqlIndex* self, struct seaqt_string name) {
	QString name_QString = QString::fromUtf8(name.data, name.len);
	self->setName(name_QString);
}

struct seaqt_string QSqlIndex_name(const QSqlIndex* self) {
	QString _ret = self->name();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QSqlIndex_append_field(QSqlIndex* self, QSqlField* field) {
	self->append(*field);
}

void QSqlIndex_append_field_desc(QSqlIndex* self, QSqlField* field, bool desc) {
	self->append(*field, desc);
}

bool QSqlIndex_isDescending(const QSqlIndex* self, int i) {
	return self->isDescending(static_cast<int>(i));
}

void QSqlIndex_setDescending(QSqlIndex* self, int i, bool desc) {
	self->setDescending(static_cast<int>(i), desc);
}

const QMetaObject* QSqlIndex_staticMetaObject() { return &QSqlIndex::staticMetaObject; }
void QSqlIndex_delete(QSqlIndex* self) {
	delete self;
}

