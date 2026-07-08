#include <QChar>
#include <QList>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QUrl>
#include <QUrlQuery>
#include <qurlquery.h>
#include "gen_qurlquery.h"

#ifndef SEAQT_ALIGNED_SIZEOF
#define SEAQT_ALIGNED_SIZEOF 1
#include <cstddef>
template<typename T>
static constexpr std::size_t seaqt_aligned_sizeof() {
	constexpr auto alignment = sizeof(std::max_align_t);
	return (sizeof(T) + alignment - 1) & ~(alignment - 1);
}
#endif

QUrlQuery* QUrlQuery_new() {
	return new (std::nothrow) QUrlQuery();
}

QUrlQuery* QUrlQuery_new_url(QUrl* url) {
	return new (std::nothrow) QUrlQuery(*url);
}

QUrlQuery* QUrlQuery_new_queryString(struct seaqt_string queryString) {
	QString queryString_QString = QString::fromUtf8(queryString.data, queryString.len);
	return new (std::nothrow) QUrlQuery(queryString_QString);
}

QUrlQuery* QUrlQuery_new_from(QUrlQuery* from) {
	return new (std::nothrow) QUrlQuery(*from);
}

void QUrlQuery_operatorAssign(QUrlQuery* self, QUrlQuery* from) {
	self->operator=(*from);
}

void QUrlQuery_swap(QUrlQuery* self, QUrlQuery* other) {
	self->swap(*other);
}

bool QUrlQuery_isEmpty(const QUrlQuery* self) {
	return self->isEmpty();
}

bool QUrlQuery_isDetached(const QUrlQuery* self) {
	return self->isDetached();
}

void QUrlQuery_clear(QUrlQuery* self) {
	self->clear();
}

struct seaqt_string QUrlQuery_query(const QUrlQuery* self) {
	QString _ret = self->query();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QUrlQuery_setQuery(QUrlQuery* self, struct seaqt_string queryString) {
	QString queryString_QString = QString::fromUtf8(queryString.data, queryString.len);
	self->setQuery(queryString_QString);
}

struct seaqt_string QUrlQuery_toString(const QUrlQuery* self) {
	QString _ret = self->toString();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QUrlQuery_setQueryDelimiters(QUrlQuery* self, QChar* valueDelimiter, QChar* pairDelimiter) {
	self->setQueryDelimiters(*valueDelimiter, *pairDelimiter);
}

QChar* QUrlQuery_queryValueDelimiter(const QUrlQuery* self) {
	return new QChar(self->queryValueDelimiter());
}

QChar* QUrlQuery_queryPairDelimiter(const QUrlQuery* self) {
	return new QChar(self->queryPairDelimiter());
}

bool QUrlQuery_hasQueryItem(const QUrlQuery* self, struct seaqt_string key) {
	QString key_QString = QString::fromUtf8(key.data, key.len);
	return self->hasQueryItem(key_QString);
}

void QUrlQuery_addQueryItem(QUrlQuery* self, struct seaqt_string key, struct seaqt_string value) {
	QString key_QString = QString::fromUtf8(key.data, key.len);
	QString value_QString = QString::fromUtf8(value.data, value.len);
	self->addQueryItem(key_QString, value_QString);
}

void QUrlQuery_removeQueryItem(QUrlQuery* self, struct seaqt_string key) {
	QString key_QString = QString::fromUtf8(key.data, key.len);
	self->removeQueryItem(key_QString);
}

struct seaqt_string QUrlQuery_queryItemValue_key(const QUrlQuery* self, struct seaqt_string key) {
	QString key_QString = QString::fromUtf8(key.data, key.len);
	QString _ret = self->queryItemValue(key_QString);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_array /* of struct seaqt_string */  QUrlQuery_allQueryItemValues_key(const QUrlQuery* self, struct seaqt_string key) {
	QString key_QString = QString::fromUtf8(key.data, key.len);
	QStringList _ret = self->allQueryItemValues(key_QString);
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

void QUrlQuery_removeAllQueryItems(QUrlQuery* self, struct seaqt_string key) {
	QString key_QString = QString::fromUtf8(key.data, key.len);
	self->removeAllQueryItems(key_QString);
}

struct seaqt_string QUrlQuery_query_encoding(const QUrlQuery* self, unsigned int encoding) {
	QString _ret = self->query(static_cast<QUrl::ComponentFormattingOptions>(encoding));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QUrlQuery_toString_encoding(const QUrlQuery* self, unsigned int encoding) {
	QString _ret = self->toString(static_cast<QUrl::ComponentFormattingOptions>(encoding));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QUrlQuery_queryItemValue_key_encoding(const QUrlQuery* self, struct seaqt_string key, unsigned int encoding) {
	QString key_QString = QString::fromUtf8(key.data, key.len);
	QString _ret = self->queryItemValue(key_QString, static_cast<QUrl::ComponentFormattingOptions>(encoding));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_array /* of struct seaqt_string */  QUrlQuery_allQueryItemValues_key_encoding(const QUrlQuery* self, struct seaqt_string key, unsigned int encoding) {
	QString key_QString = QString::fromUtf8(key.data, key.len);
	QStringList _ret = self->allQueryItemValues(key_QString, static_cast<QUrl::ComponentFormattingOptions>(encoding));
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

void QUrlQuery_delete(QUrlQuery* self) {
	delete self;
}

