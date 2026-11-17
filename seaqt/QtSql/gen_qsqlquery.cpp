#include <QMap>
#include <QSqlDatabase>
#include <QSqlDriver>
#include <QSqlError>
#include <QSqlQuery>
#include <QSqlRecord>
#include <QSqlResult>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QVariant>
#include <qsqlquery.h>
#include "gen_qsqlquery.h"

#ifndef SEAQT_ALIGNED_SIZEOF
#define SEAQT_ALIGNED_SIZEOF 1
#include <cstddef>
template<typename T>
static constexpr std::size_t seaqt_aligned_sizeof() {
	constexpr auto alignment = sizeof(std::max_align_t);
	return (sizeof(T) + alignment - 1) & ~(alignment - 1);
}
#endif

QSqlQuery* QSqlQuery_new_r(QSqlResult* r) {
	return new (std::nothrow) QSqlQuery(r);
}

QSqlQuery* QSqlQuery_new() {
	return new (std::nothrow) QSqlQuery();
}

QSqlQuery* QSqlQuery_new_db(QSqlDatabase* db) {
	return new (std::nothrow) QSqlQuery(*db);
}

QSqlQuery* QSqlQuery_new_from(QSqlQuery* from) {
	return new (std::nothrow) QSqlQuery(*from);
}

QSqlQuery* QSqlQuery_new_query(struct seaqt_string query) {
	QString query_QString = QString::fromUtf8(query.data, query.len);
	return new (std::nothrow) QSqlQuery(query_QString);
}

QSqlQuery* QSqlQuery_new_query_db(struct seaqt_string query, QSqlDatabase* db) {
	QString query_QString = QString::fromUtf8(query.data, query.len);
	return new (std::nothrow) QSqlQuery(query_QString, *db);
}

void QSqlQuery_operatorAssign(QSqlQuery* self, QSqlQuery* from) {
	self->operator=(*from);
}

bool QSqlQuery_isValid(const QSqlQuery* self) {
	return self->isValid();
}

bool QSqlQuery_isActive(const QSqlQuery* self) {
	return self->isActive();
}

bool QSqlQuery_isNull_field(const QSqlQuery* self, int field) {
	return self->isNull(static_cast<int>(field));
}

bool QSqlQuery_isNull_name(const QSqlQuery* self, struct seaqt_string name) {
	QString name_QString = QString::fromUtf8(name.data, name.len);
	return self->isNull(name_QString);
}

int QSqlQuery_at(const QSqlQuery* self) {
	return self->at();
}

struct seaqt_string QSqlQuery_lastQuery(const QSqlQuery* self) {
	QString _ret = self->lastQuery();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

int QSqlQuery_numRowsAffected(const QSqlQuery* self) {
	return self->numRowsAffected();
}

QSqlError* QSqlQuery_lastError(const QSqlQuery* self) {
	return new QSqlError(self->lastError());
}

bool QSqlQuery_isSelect(const QSqlQuery* self) {
	return self->isSelect();
}

int QSqlQuery_size(const QSqlQuery* self) {
	return self->size();
}

QSqlDriver* QSqlQuery_driver(const QSqlQuery* self) {
	return (QSqlDriver*) self->driver();
}

QSqlResult* QSqlQuery_result(const QSqlQuery* self) {
	return (QSqlResult*) self->result();
}

bool QSqlQuery_isForwardOnly(const QSqlQuery* self) {
	return self->isForwardOnly();
}

QSqlRecord* QSqlQuery_record(const QSqlQuery* self) {
	return new QSqlRecord(self->record());
}

void QSqlQuery_setForwardOnly(QSqlQuery* self, bool forward) {
	self->setForwardOnly(forward);
}

bool QSqlQuery_exec_query(QSqlQuery* self, struct seaqt_string query) {
	QString query_QString = QString::fromUtf8(query.data, query.len);
	return self->exec(query_QString);
}

QVariant* QSqlQuery_value_i(const QSqlQuery* self, int i) {
	return new QVariant(self->value(static_cast<int>(i)));
}

QVariant* QSqlQuery_value_name(const QSqlQuery* self, struct seaqt_string name) {
	QString name_QString = QString::fromUtf8(name.data, name.len);
	return new QVariant(self->value(name_QString));
}

void QSqlQuery_setNumericalPrecisionPolicy(QSqlQuery* self, int precisionPolicy) {
	self->setNumericalPrecisionPolicy(static_cast<QSql::NumericalPrecisionPolicy>(precisionPolicy));
}

int QSqlQuery_numericalPrecisionPolicy(const QSqlQuery* self) {
	QSql::NumericalPrecisionPolicy _ret = self->numericalPrecisionPolicy();
	return static_cast<int>(_ret);
}

bool QSqlQuery_seek_i(QSqlQuery* self, int i) {
	return self->seek(static_cast<int>(i));
}

bool QSqlQuery_next(QSqlQuery* self) {
	return self->next();
}

bool QSqlQuery_previous(QSqlQuery* self) {
	return self->previous();
}

bool QSqlQuery_first(QSqlQuery* self) {
	return self->first();
}

bool QSqlQuery_last(QSqlQuery* self) {
	return self->last();
}

void QSqlQuery_clear(QSqlQuery* self) {
	self->clear();
}

bool QSqlQuery_exec(QSqlQuery* self) {
	return self->exec();
}

bool QSqlQuery_execBatch(QSqlQuery* self) {
	return self->execBatch();
}

bool QSqlQuery_prepare(QSqlQuery* self, struct seaqt_string query) {
	QString query_QString = QString::fromUtf8(query.data, query.len);
	return self->prepare(query_QString);
}

void QSqlQuery_bindValue_placeholder_val(QSqlQuery* self, struct seaqt_string placeholder, QVariant* val) {
	QString placeholder_QString = QString::fromUtf8(placeholder.data, placeholder.len);
	self->bindValue(placeholder_QString, *val);
}

void QSqlQuery_bindValue_pos_val(QSqlQuery* self, int pos, QVariant* val) {
	self->bindValue(static_cast<int>(pos), *val);
}

void QSqlQuery_addBindValue_val(QSqlQuery* self, QVariant* val) {
	self->addBindValue(*val);
}

QVariant* QSqlQuery_boundValue_placeholder(const QSqlQuery* self, struct seaqt_string placeholder) {
	QString placeholder_QString = QString::fromUtf8(placeholder.data, placeholder.len);
	return new QVariant(self->boundValue(placeholder_QString));
}

QVariant* QSqlQuery_boundValue_pos(const QSqlQuery* self, int pos) {
	return new QVariant(self->boundValue(static_cast<int>(pos)));
}

struct seaqt_map /* of struct seaqt_string to QVariant* */  QSqlQuery_boundValues(const QSqlQuery* self) {
	QMap<QString, QVariant> _ret = self->boundValues();
	// Convert QMap<> from C++ memory to manually-managed C memory
	struct seaqt_string* _karr = static_cast<struct seaqt_string*>(malloc(sizeof(struct seaqt_string) * _ret.size()));
	QVariant** _varr = static_cast<QVariant**>(malloc(sizeof(QVariant*) * _ret.size()));
	int _ctr = 0;
	for (auto _itr = _ret.keyValueBegin(); _itr != _ret.keyValueEnd(); ++_itr) {
		QString _mapkey_ret = _itr->first;
		// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
		QByteArray _mapkey_b = _mapkey_ret.toUtf8();
		struct seaqt_string _mapkey_ms;
		_mapkey_ms.len = _mapkey_b.length();
		_mapkey_ms.data = static_cast<char*>(malloc(_mapkey_ms.len));
		memcpy(_mapkey_ms.data, _mapkey_b.data(), _mapkey_ms.len);
		_karr[_ctr] = _mapkey_ms;
		_varr[_ctr] = new QVariant(_itr->second);
		_ctr++;
	}
	struct seaqt_map _out;
	_out.len = _ret.size();
	_out.keys = static_cast<void*>(_karr);
	_out.values = static_cast<void*>(_varr);
	return _out;
}

struct seaqt_string QSqlQuery_executedQuery(const QSqlQuery* self) {
	QString _ret = self->executedQuery();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QVariant* QSqlQuery_lastInsertId(const QSqlQuery* self) {
	return new QVariant(self->lastInsertId());
}

void QSqlQuery_finish(QSqlQuery* self) {
	self->finish();
}

bool QSqlQuery_nextResult(QSqlQuery* self) {
	return self->nextResult();
}

bool QSqlQuery_seek_i_relative(QSqlQuery* self, int i, bool relative) {
	return self->seek(static_cast<int>(i), relative);
}

bool QSqlQuery_execBatch_mode(QSqlQuery* self, int mode) {
	return self->execBatch(static_cast<QSqlQuery::BatchExecutionMode>(mode));
}

void QSqlQuery_bindValue_placeholder_val_type(QSqlQuery* self, struct seaqt_string placeholder, QVariant* val, int type) {
	QString placeholder_QString = QString::fromUtf8(placeholder.data, placeholder.len);
	self->bindValue(placeholder_QString, *val, static_cast<QSql::ParamType>(type));
}

void QSqlQuery_bindValue_pos_val_type(QSqlQuery* self, int pos, QVariant* val, int type) {
	self->bindValue(static_cast<int>(pos), *val, static_cast<QSql::ParamType>(type));
}

void QSqlQuery_addBindValue_val_type(QSqlQuery* self, QVariant* val, int type) {
	self->addBindValue(*val, static_cast<QSql::ParamType>(type));
}

void QSqlQuery_delete(QSqlQuery* self) {
	delete self;
}

