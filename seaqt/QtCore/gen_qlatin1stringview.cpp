#include <QByteArray>
#include <QByteArrayView>
#include <QChar>
#include <QLatin1Char>
#include <QLatin1String>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <qlatin1stringview.h>
#include "gen_qlatin1stringview.h"

#ifndef SEAQT_ALIGNED_SIZEOF
#define SEAQT_ALIGNED_SIZEOF 1
#include <cstddef>
template<typename T>
static constexpr std::size_t seaqt_aligned_sizeof() {
	constexpr auto alignment = sizeof(std::max_align_t);
	return (sizeof(T) + alignment - 1) & ~(alignment - 1);
}
#endif

QLatin1String* QLatin1String_new() {
	return new (std::nothrow) QLatin1String();
}

QLatin1String* QLatin1String_new_char(const char* s) {
	return new (std::nothrow) QLatin1String(s);
}

QLatin1String* QLatin1String_new_char_char(const char* f, const char* l) {
	return new (std::nothrow) QLatin1String(f, l);
}

QLatin1String* QLatin1String_new_char_qsizetype(const char* s, ptrdiff_t sz) {
	return new (std::nothrow) QLatin1String(s, (qsizetype)(sz));
}

QLatin1String* QLatin1String_new_QByteArray(struct seaqt_string s) {
	QByteArray s_QByteArray(s.data, s.len);
	return new (std::nothrow) QLatin1String(s_QByteArray);
}

QLatin1String* QLatin1String_new_QByteArrayView(struct seaqt_string s) {
	QByteArrayView s_QByteArray(s.data, s.len);
	return new (std::nothrow) QLatin1String(s_QByteArray);
}

struct seaqt_string QLatin1String_toString(const QLatin1String* self) {
	QString _ret = self->toString();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

const char* QLatin1String_latin1(const QLatin1String* self) {
	return (const char*) self->latin1();
}

ptrdiff_t QLatin1String_size(const QLatin1String* self) {
	qsizetype _ret = self->size();
	return static_cast<ptrdiff_t>(_ret);
}

const char* QLatin1String_data(const QLatin1String* self) {
	return (const char*) self->data();
}

const char* QLatin1String_constData(const QLatin1String* self) {
	return (const char*) self->constData();
}

const char* QLatin1String_constBegin(const QLatin1String* self) {
	return (const char*) self->constBegin();
}

const char* QLatin1String_constEnd(const QLatin1String* self) {
	return (const char*) self->constEnd();
}

QLatin1Char* QLatin1String_first(const QLatin1String* self) {
	return new QLatin1Char(self->first());
}

QLatin1Char* QLatin1String_last(const QLatin1String* self) {
	return new QLatin1Char(self->last());
}

ptrdiff_t QLatin1String_length(const QLatin1String* self) {
	qsizetype _ret = self->length();
	return static_cast<ptrdiff_t>(_ret);
}

bool QLatin1String_isNull(const QLatin1String* self) {
	return self->isNull();
}

bool QLatin1String_isEmpty(const QLatin1String* self) {
	return self->isEmpty();
}

bool QLatin1String_empty(const QLatin1String* self) {
	return self->empty();
}

QLatin1Char* QLatin1String_at(const QLatin1String* self, ptrdiff_t i) {
	return new QLatin1Char(self->at((qsizetype)(i)));
}

QLatin1Char* QLatin1String_operatorSubscript(const QLatin1String* self, ptrdiff_t i) {
	return new QLatin1Char(self->operator[]((qsizetype)(i)));
}

QLatin1Char* QLatin1String_front(const QLatin1String* self) {
	return new QLatin1Char(self->front());
}

QLatin1Char* QLatin1String_back(const QLatin1String* self) {
	return new QLatin1Char(self->back());
}

int QLatin1String_compare_QChar(const QLatin1String* self, QChar* c) {
	return self->compare(*c);
}

int QLatin1String_compare_QChar_Qt_CaseSensitivity(const QLatin1String* self, QChar* c, int cs) {
	return self->compare(*c, static_cast<Qt::CaseSensitivity>(cs));
}

bool QLatin1String_startsWith_QChar(const QLatin1String* self, QChar* c) {
	return self->startsWith(*c);
}

bool QLatin1String_startsWith_QChar_Qt_CaseSensitivity(const QLatin1String* self, QChar* c, int cs) {
	return self->startsWith(*c, static_cast<Qt::CaseSensitivity>(cs));
}

bool QLatin1String_endsWith_QChar(const QLatin1String* self, QChar* c) {
	return self->endsWith(*c);
}

bool QLatin1String_endsWith_QChar_Qt_CaseSensitivity(const QLatin1String* self, QChar* c, int cs) {
	return self->endsWith(*c, static_cast<Qt::CaseSensitivity>(cs));
}

ptrdiff_t QLatin1String_indexOf_QChar(const QLatin1String* self, QChar* c) {
	qsizetype _ret = self->indexOf(*c);
	return static_cast<ptrdiff_t>(_ret);
}

bool QLatin1String_contains_QChar(const QLatin1String* self, QChar* c) {
	return self->contains(*c);
}

ptrdiff_t QLatin1String_lastIndexOf_QChar(const QLatin1String* self, QChar* c) {
	qsizetype _ret = self->lastIndexOf(*c);
	return static_cast<ptrdiff_t>(_ret);
}

ptrdiff_t QLatin1String_lastIndexOf_QChar_qsizetype(const QLatin1String* self, QChar* c, ptrdiff_t from) {
	qsizetype _ret = self->lastIndexOf(*c, (qsizetype)(from));
	return static_cast<ptrdiff_t>(_ret);
}

ptrdiff_t QLatin1String_count_QChar(const QLatin1String* self, QChar* ch) {
	qsizetype _ret = self->count(*ch);
	return static_cast<ptrdiff_t>(_ret);
}

short QLatin1String_toShort(const QLatin1String* self) {
	return self->toShort();
}

unsigned short QLatin1String_toUShort(const QLatin1String* self) {
	ushort _ret = self->toUShort();
	return static_cast<unsigned short>(_ret);
}

int QLatin1String_toInt(const QLatin1String* self) {
	return self->toInt();
}

unsigned int QLatin1String_toUInt(const QLatin1String* self) {
	uint _ret = self->toUInt();
	return static_cast<unsigned int>(_ret);
}

long QLatin1String_toLong(const QLatin1String* self) {
	return self->toLong();
}

unsigned long QLatin1String_toULong(const QLatin1String* self) {
	ulong _ret = self->toULong();
	return static_cast<unsigned long>(_ret);
}

long long QLatin1String_toLongLong(const QLatin1String* self) {
	qlonglong _ret = self->toLongLong();
	return static_cast<long long>(_ret);
}

unsigned long long QLatin1String_toULongLong(const QLatin1String* self) {
	qulonglong _ret = self->toULongLong();
	return static_cast<unsigned long long>(_ret);
}

float QLatin1String_toFloat(const QLatin1String* self) {
	return self->toFloat();
}

double QLatin1String_toDouble(const QLatin1String* self) {
	return self->toDouble();
}

const char* QLatin1String_begin(const QLatin1String* self) {
	QLatin1String::const_iterator _ret = self->begin();
	return const_cast<const char*>(static_cast<const char*>(_ret));
}

const char* QLatin1String_cbegin(const QLatin1String* self) {
	QLatin1String::const_iterator _ret = self->cbegin();
	return const_cast<const char*>(static_cast<const char*>(_ret));
}

const char* QLatin1String_end(const QLatin1String* self) {
	QLatin1String::const_iterator _ret = self->end();
	return const_cast<const char*>(static_cast<const char*>(_ret));
}

const char* QLatin1String_cend(const QLatin1String* self) {
	QLatin1String::const_iterator _ret = self->cend();
	return const_cast<const char*>(static_cast<const char*>(_ret));
}

ptrdiff_t QLatin1String_max_size(const QLatin1String* self) {
	qsizetype _ret = self->max_size();
	return static_cast<ptrdiff_t>(_ret);
}

ptrdiff_t QLatin1String_maxSize() {
	qsizetype _ret = QLatin1String::maxSize();
	return static_cast<ptrdiff_t>(_ret);
}

void QLatin1String_chop(QLatin1String* self, ptrdiff_t n) {
	self->chop((qsizetype)(n));
}

void QLatin1String_truncate(QLatin1String* self, ptrdiff_t n) {
	self->truncate((qsizetype)(n));
}

ptrdiff_t QLatin1String_indexOf_QChar_qsizetype(const QLatin1String* self, QChar* c, ptrdiff_t from) {
	qsizetype _ret = self->indexOf(*c, (qsizetype)(from));
	return static_cast<ptrdiff_t>(_ret);
}

ptrdiff_t QLatin1String_indexOf_QChar_qsizetype_Qt_CaseSensitivity(const QLatin1String* self, QChar* c, ptrdiff_t from, int cs) {
	qsizetype _ret = self->indexOf(*c, (qsizetype)(from), static_cast<Qt::CaseSensitivity>(cs));
	return static_cast<ptrdiff_t>(_ret);
}

bool QLatin1String_contains_QChar_Qt_CaseSensitivity(const QLatin1String* self, QChar* c, int cs) {
	return self->contains(*c, static_cast<Qt::CaseSensitivity>(cs));
}

ptrdiff_t QLatin1String_lastIndexOf_QChar_Qt_CaseSensitivity(const QLatin1String* self, QChar* c, int cs) {
	qsizetype _ret = self->lastIndexOf(*c, static_cast<Qt::CaseSensitivity>(cs));
	return static_cast<ptrdiff_t>(_ret);
}

ptrdiff_t QLatin1String_lastIndexOf_QChar_qsizetype_Qt_CaseSensitivity(const QLatin1String* self, QChar* c, ptrdiff_t from, int cs) {
	qsizetype _ret = self->lastIndexOf(*c, (qsizetype)(from), static_cast<Qt::CaseSensitivity>(cs));
	return static_cast<ptrdiff_t>(_ret);
}

ptrdiff_t QLatin1String_count_QChar_Qt_CaseSensitivity(const QLatin1String* self, QChar* ch, int cs) {
	qsizetype _ret = self->count(*ch, static_cast<Qt::CaseSensitivity>(cs));
	return static_cast<ptrdiff_t>(_ret);
}

short QLatin1String_toShort_ok(const QLatin1String* self, bool* ok) {
	return self->toShort(ok);
}

short QLatin1String_toShort_ok_base(const QLatin1String* self, bool* ok, int base) {
	return self->toShort(ok, static_cast<int>(base));
}

unsigned short QLatin1String_toUShort_ok(const QLatin1String* self, bool* ok) {
	ushort _ret = self->toUShort(ok);
	return static_cast<unsigned short>(_ret);
}

unsigned short QLatin1String_toUShort_ok_base(const QLatin1String* self, bool* ok, int base) {
	ushort _ret = self->toUShort(ok, static_cast<int>(base));
	return static_cast<unsigned short>(_ret);
}

int QLatin1String_toInt_ok(const QLatin1String* self, bool* ok) {
	return self->toInt(ok);
}

int QLatin1String_toInt_ok_base(const QLatin1String* self, bool* ok, int base) {
	return self->toInt(ok, static_cast<int>(base));
}

unsigned int QLatin1String_toUInt_ok(const QLatin1String* self, bool* ok) {
	uint _ret = self->toUInt(ok);
	return static_cast<unsigned int>(_ret);
}

unsigned int QLatin1String_toUInt_ok_base(const QLatin1String* self, bool* ok, int base) {
	uint _ret = self->toUInt(ok, static_cast<int>(base));
	return static_cast<unsigned int>(_ret);
}

long QLatin1String_toLong_ok(const QLatin1String* self, bool* ok) {
	return self->toLong(ok);
}

long QLatin1String_toLong_ok_base(const QLatin1String* self, bool* ok, int base) {
	return self->toLong(ok, static_cast<int>(base));
}

unsigned long QLatin1String_toULong_ok(const QLatin1String* self, bool* ok) {
	ulong _ret = self->toULong(ok);
	return static_cast<unsigned long>(_ret);
}

unsigned long QLatin1String_toULong_ok_base(const QLatin1String* self, bool* ok, int base) {
	ulong _ret = self->toULong(ok, static_cast<int>(base));
	return static_cast<unsigned long>(_ret);
}

long long QLatin1String_toLongLong_ok(const QLatin1String* self, bool* ok) {
	qlonglong _ret = self->toLongLong(ok);
	return static_cast<long long>(_ret);
}

long long QLatin1String_toLongLong_ok_base(const QLatin1String* self, bool* ok, int base) {
	qlonglong _ret = self->toLongLong(ok, static_cast<int>(base));
	return static_cast<long long>(_ret);
}

unsigned long long QLatin1String_toULongLong_ok(const QLatin1String* self, bool* ok) {
	qulonglong _ret = self->toULongLong(ok);
	return static_cast<unsigned long long>(_ret);
}

unsigned long long QLatin1String_toULongLong_ok_base(const QLatin1String* self, bool* ok, int base) {
	qulonglong _ret = self->toULongLong(ok, static_cast<int>(base));
	return static_cast<unsigned long long>(_ret);
}

float QLatin1String_toFloat_ok(const QLatin1String* self, bool* ok) {
	return self->toFloat(ok);
}

double QLatin1String_toDouble_ok(const QLatin1String* self, bool* ok) {
	return self->toDouble(ok);
}

void QLatin1String_delete(QLatin1String* self) {
	delete self;
}

