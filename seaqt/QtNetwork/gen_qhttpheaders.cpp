#include <QAnyStringView>
#include <QString>
#include <QByteArray>
#include <QAnyStringView>
#include <QByteArray>
#include <QByteArrayView>
#include <QHttpHeaders>
#include <QList>
#include <QMetaObject>
#include <qhttpheaders.h>
#include "gen_qhttpheaders.h"

#ifndef SEAQT_ALIGNED_SIZEOF
#define SEAQT_ALIGNED_SIZEOF 1
#include <cstddef>
template<typename T>
static constexpr std::size_t seaqt_aligned_sizeof() {
	constexpr auto alignment = sizeof(std::max_align_t);
	return (sizeof(T) + alignment - 1) & ~(alignment - 1);
}
#endif

QHttpHeaders* QHttpHeaders_new() {
	return new (std::nothrow) QHttpHeaders();
}

QHttpHeaders* QHttpHeaders_new_from(QHttpHeaders* from) {
	return new (std::nothrow) QHttpHeaders(*from);
}

void QHttpHeaders_operatorAssign(QHttpHeaders* self, QHttpHeaders* from) {
	self->operator=(*from);
}

void QHttpHeaders_swap(QHttpHeaders* self, QHttpHeaders* other) {
	self->swap(*other);
}

bool QHttpHeaders_append_QAnyStringView_QAnyStringView(QHttpHeaders* self, struct seaqt_string name, struct seaqt_string value) {
	QAnyStringView name_QString = QAnyStringView(name.data, name.len);
	QAnyStringView value_QString = QAnyStringView(value.data, value.len);
	return self->append(name_QString, value_QString);
}

bool QHttpHeaders_append_QHttpHeaders_WellKnownHeader_QAnyStringView(QHttpHeaders* self, int name, struct seaqt_string value) {
	QAnyStringView value_QString = QAnyStringView(value.data, value.len);
	return self->append(static_cast<QHttpHeaders::WellKnownHeader>(name), value_QString);
}

bool QHttpHeaders_insert_qsizetype_QAnyStringView_QAnyStringView(QHttpHeaders* self, ptrdiff_t i, struct seaqt_string name, struct seaqt_string value) {
	QAnyStringView name_QString = QAnyStringView(name.data, name.len);
	QAnyStringView value_QString = QAnyStringView(value.data, value.len);
	return self->insert((qsizetype)(i), name_QString, value_QString);
}

bool QHttpHeaders_insert_qsizetype_QHttpHeaders_WellKnownHeader_QAnyStringView(QHttpHeaders* self, ptrdiff_t i, int name, struct seaqt_string value) {
	QAnyStringView value_QString = QAnyStringView(value.data, value.len);
	return self->insert((qsizetype)(i), static_cast<QHttpHeaders::WellKnownHeader>(name), value_QString);
}

bool QHttpHeaders_replace_qsizetype_QAnyStringView_QAnyStringView(QHttpHeaders* self, ptrdiff_t i, struct seaqt_string name, struct seaqt_string newValue) {
	QAnyStringView name_QString = QAnyStringView(name.data, name.len);
	QAnyStringView newValue_QString = QAnyStringView(newValue.data, newValue.len);
	return self->replace((qsizetype)(i), name_QString, newValue_QString);
}

bool QHttpHeaders_replace_qsizetype_QHttpHeaders_WellKnownHeader_QAnyStringView(QHttpHeaders* self, ptrdiff_t i, int name, struct seaqt_string newValue) {
	QAnyStringView newValue_QString = QAnyStringView(newValue.data, newValue.len);
	return self->replace((qsizetype)(i), static_cast<QHttpHeaders::WellKnownHeader>(name), newValue_QString);
}

bool QHttpHeaders_replaceOrAppend_QAnyStringView_QAnyStringView(QHttpHeaders* self, struct seaqt_string name, struct seaqt_string newValue) {
	QAnyStringView name_QString = QAnyStringView(name.data, name.len);
	QAnyStringView newValue_QString = QAnyStringView(newValue.data, newValue.len);
	return self->replaceOrAppend(name_QString, newValue_QString);
}

bool QHttpHeaders_replaceOrAppend_QHttpHeaders_WellKnownHeader_QAnyStringView(QHttpHeaders* self, int name, struct seaqt_string newValue) {
	QAnyStringView newValue_QString = QAnyStringView(newValue.data, newValue.len);
	return self->replaceOrAppend(static_cast<QHttpHeaders::WellKnownHeader>(name), newValue_QString);
}

bool QHttpHeaders_contains_QAnyStringView(const QHttpHeaders* self, struct seaqt_string name) {
	QAnyStringView name_QString = QAnyStringView(name.data, name.len);
	return self->contains(name_QString);
}

bool QHttpHeaders_contains_QHttpHeaders_WellKnownHeader(const QHttpHeaders* self, int name) {
	return self->contains(static_cast<QHttpHeaders::WellKnownHeader>(name));
}

void QHttpHeaders_clear(QHttpHeaders* self) {
	self->clear();
}

void QHttpHeaders_removeAll_QAnyStringView(QHttpHeaders* self, struct seaqt_string name) {
	QAnyStringView name_QString = QAnyStringView(name.data, name.len);
	self->removeAll(name_QString);
}

void QHttpHeaders_removeAll_QHttpHeaders_WellKnownHeader(QHttpHeaders* self, int name) {
	self->removeAll(static_cast<QHttpHeaders::WellKnownHeader>(name));
}

void QHttpHeaders_removeAt(QHttpHeaders* self, ptrdiff_t i) {
	self->removeAt((qsizetype)(i));
}

struct seaqt_string QHttpHeaders_value_QAnyStringView(const QHttpHeaders* self, struct seaqt_string name) {
	QAnyStringView name_QString = QAnyStringView(name.data, name.len);
	QByteArrayView _qb = self->value(name_QString);
	struct seaqt_string _ms;
	_ms.len = _qb.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _qb.data(), _ms.len);
	return _ms;
}

struct seaqt_string QHttpHeaders_value_QHttpHeaders_WellKnownHeader(const QHttpHeaders* self, int name) {
	QByteArrayView _qb = self->value(static_cast<QHttpHeaders::WellKnownHeader>(name));
	struct seaqt_string _ms;
	_ms.len = _qb.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _qb.data(), _ms.len);
	return _ms;
}

struct seaqt_array /* of struct seaqt_string */  QHttpHeaders_values_QAnyStringView(const QHttpHeaders* self, struct seaqt_string name) {
	QAnyStringView name_QString = QAnyStringView(name.data, name.len);
	QList<QByteArray> _ret = self->values(name_QString);
	// Convert QList<> from C++ memory to manually-managed C memory
	struct seaqt_string* _arr = static_cast<struct seaqt_string*>(malloc(sizeof(struct seaqt_string) * _ret.length()));
	for (size_t i = 0, e = _ret.length(); i < e; ++i) {
		QByteArray _lv_qb = _ret[i];
		struct seaqt_string _lv_ms;
		_lv_ms.len = _lv_qb.length();
		_lv_ms.data = static_cast<char*>(malloc(_lv_ms.len));
		memcpy(_lv_ms.data, _lv_qb.data(), _lv_ms.len);
		_arr[i] = _lv_ms;
	}
	struct seaqt_array _out;
	_out.len = _ret.length();
	_out.data = static_cast<void*>(_arr);
	return _out;
}

struct seaqt_array /* of struct seaqt_string */  QHttpHeaders_values_QHttpHeaders_WellKnownHeader(const QHttpHeaders* self, int name) {
	QList<QByteArray> _ret = self->values(static_cast<QHttpHeaders::WellKnownHeader>(name));
	// Convert QList<> from C++ memory to manually-managed C memory
	struct seaqt_string* _arr = static_cast<struct seaqt_string*>(malloc(sizeof(struct seaqt_string) * _ret.length()));
	for (size_t i = 0, e = _ret.length(); i < e; ++i) {
		QByteArray _lv_qb = _ret[i];
		struct seaqt_string _lv_ms;
		_lv_ms.len = _lv_qb.length();
		_lv_ms.data = static_cast<char*>(malloc(_lv_ms.len));
		memcpy(_lv_ms.data, _lv_qb.data(), _lv_ms.len);
		_arr[i] = _lv_ms;
	}
	struct seaqt_array _out;
	_out.len = _ret.length();
	_out.data = static_cast<void*>(_arr);
	return _out;
}

struct seaqt_string QHttpHeaders_valueAt(const QHttpHeaders* self, ptrdiff_t i) {
	QByteArrayView _qb = self->valueAt((qsizetype)(i));
	struct seaqt_string _ms;
	_ms.len = _qb.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _qb.data(), _ms.len);
	return _ms;
}

struct seaqt_string QHttpHeaders_combinedValue_QAnyStringView(const QHttpHeaders* self, struct seaqt_string name) {
	QAnyStringView name_QString = QAnyStringView(name.data, name.len);
	QByteArray _qb = self->combinedValue(name_QString);
	struct seaqt_string _ms;
	_ms.len = _qb.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _qb.data(), _ms.len);
	return _ms;
}

struct seaqt_string QHttpHeaders_combinedValue_QHttpHeaders_WellKnownHeader(const QHttpHeaders* self, int name) {
	QByteArray _qb = self->combinedValue(static_cast<QHttpHeaders::WellKnownHeader>(name));
	struct seaqt_string _ms;
	_ms.len = _qb.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _qb.data(), _ms.len);
	return _ms;
}

ptrdiff_t QHttpHeaders_size(const QHttpHeaders* self) {
	qsizetype _ret = self->size();
	return static_cast<ptrdiff_t>(_ret);
}

void QHttpHeaders_reserve(QHttpHeaders* self, ptrdiff_t size) {
	self->reserve((qsizetype)(size));
}

bool QHttpHeaders_isEmpty(const QHttpHeaders* self) {
	return self->isEmpty();
}

struct seaqt_string QHttpHeaders_wellKnownHeaderName(int name) {
	QByteArrayView _qb = QHttpHeaders::wellKnownHeaderName(static_cast<QHttpHeaders::WellKnownHeader>(name));
	struct seaqt_string _ms;
	_ms.len = _qb.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _qb.data(), _ms.len);
	return _ms;
}

struct seaqt_string QHttpHeaders_value_QAnyStringView_QByteArrayView(const QHttpHeaders* self, struct seaqt_string name, struct seaqt_string defaultValue) {
	QAnyStringView name_QString = QAnyStringView(name.data, name.len);
	QByteArrayView defaultValue_QByteArray(defaultValue.data, defaultValue.len);
	QByteArrayView _qb = self->value(name_QString, defaultValue_QByteArray);
	struct seaqt_string _ms;
	_ms.len = _qb.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _qb.data(), _ms.len);
	return _ms;
}

struct seaqt_string QHttpHeaders_value_QHttpHeaders_WellKnownHeader_QByteArrayView(const QHttpHeaders* self, int name, struct seaqt_string defaultValue) {
	QByteArrayView defaultValue_QByteArray(defaultValue.data, defaultValue.len);
	QByteArrayView _qb = self->value(static_cast<QHttpHeaders::WellKnownHeader>(name), defaultValue_QByteArray);
	struct seaqt_string _ms;
	_ms.len = _qb.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _qb.data(), _ms.len);
	return _ms;
}

const QMetaObject* QHttpHeaders_staticMetaObject() { return &QHttpHeaders::staticMetaObject; }
void QHttpHeaders_delete(QHttpHeaders* self) {
	delete self;
}

