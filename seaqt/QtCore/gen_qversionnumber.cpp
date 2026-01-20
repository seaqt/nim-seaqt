#include <QAnyStringView>
#include <QString>
#include <QByteArray>
#include <QAnyStringView>
#include <QList>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QTypeRevision>
#include <QVersionNumber>
#include <qversionnumber.h>
#include "gen_qversionnumber.h"

#ifndef SEAQT_ALIGNED_SIZEOF
#define SEAQT_ALIGNED_SIZEOF 1
#include <cstddef>
template<typename T>
static constexpr std::size_t seaqt_aligned_sizeof() {
	constexpr auto alignment = sizeof(std::max_align_t);
	return (sizeof(T) + alignment - 1) & ~(alignment - 1);
}
#endif

QVersionNumber* QVersionNumber_new() {
	return new (std::nothrow) QVersionNumber();
}

QVersionNumber* QVersionNumber_new_seg(struct seaqt_array /* of int */  seg) {
	QList<int> seg_QList;
	seg_QList.reserve(seg.len);
	int* seg_arr = static_cast<int*>(seg.data);
	for(size_t i = 0; i < seg.len; ++i) {
		seg_QList.push_back(static_cast<int>(seg_arr[i]));
	}
	return new (std::nothrow) QVersionNumber(seg_QList);
}

QVersionNumber* QVersionNumber_new_maj(int maj) {
	return new (std::nothrow) QVersionNumber(static_cast<int>(maj));
}

QVersionNumber* QVersionNumber_new_maj_min(int maj, int min) {
	return new (std::nothrow) QVersionNumber(static_cast<int>(maj), static_cast<int>(min));
}

QVersionNumber* QVersionNumber_new_maj_min_mic(int maj, int min, int mic) {
	return new (std::nothrow) QVersionNumber(static_cast<int>(maj), static_cast<int>(min), static_cast<int>(mic));
}

QVersionNumber* QVersionNumber_new_from(QVersionNumber* from) {
	return new (std::nothrow) QVersionNumber(*from);
}

bool QVersionNumber_isNull(const QVersionNumber* self) {
	return self->isNull();
}

bool QVersionNumber_isNormalized(const QVersionNumber* self) {
	return self->isNormalized();
}

int QVersionNumber_majorVersion(const QVersionNumber* self) {
	return self->majorVersion();
}

int QVersionNumber_minorVersion(const QVersionNumber* self) {
	return self->minorVersion();
}

int QVersionNumber_microVersion(const QVersionNumber* self) {
	return self->microVersion();
}

QVersionNumber* QVersionNumber_normalized(const QVersionNumber* self) {
	return new QVersionNumber(self->normalized());
}

struct seaqt_array /* of int */  QVersionNumber_segments(const QVersionNumber* self) {
	QList<int> _ret = self->segments();
	// Convert QList<> from C++ memory to manually-managed C memory
	int* _arr = static_cast<int*>(malloc(sizeof(int) * _ret.length()));
	for (size_t i = 0, e = _ret.length(); i < e; ++i) {
		_arr[i] = _ret[i];
	}
	struct seaqt_array _out;
	_out.len = _ret.length();
	_out.data = static_cast<void*>(_arr);
	return _out;
}

int QVersionNumber_segmentAt(const QVersionNumber* self, ptrdiff_t index) {
	return self->segmentAt((qsizetype)(index));
}

ptrdiff_t QVersionNumber_segmentCount(const QVersionNumber* self) {
	qsizetype _ret = self->segmentCount();
	return static_cast<ptrdiff_t>(_ret);
}

bool QVersionNumber_isPrefixOf(const QVersionNumber* self, QVersionNumber* other) {
	return self->isPrefixOf(*other);
}

int QVersionNumber_compare(QVersionNumber* v1, QVersionNumber* v2) {
	return QVersionNumber::compare(*v1, *v2);
}

QVersionNumber* QVersionNumber_commonPrefix(QVersionNumber* v1, QVersionNumber* v2) {
	return new QVersionNumber(QVersionNumber::commonPrefix(*v1, *v2));
}

struct seaqt_string QVersionNumber_toString(const QVersionNumber* self) {
	QString _ret = self->toString();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QVersionNumber* QVersionNumber_fromString_string(struct seaqt_string string) {
	QAnyStringView string_QString = QAnyStringView(string.data, string.len);
	return new QVersionNumber(QVersionNumber::fromString(string_QString));
}

void QVersionNumber_operatorAssign(QVersionNumber* self, QVersionNumber* from) {
	self->operator=(*from);
}

QVersionNumber* QVersionNumber_fromString_string_suffixIndex(struct seaqt_string string, ptrdiff_t* suffixIndex) {
	QAnyStringView string_QString = QAnyStringView(string.data, string.len);
	return new QVersionNumber(QVersionNumber::fromString(string_QString, (qsizetype*)(suffixIndex)));
}

void QVersionNumber_delete(QVersionNumber* self) {
	delete self;
}

QTypeRevision* QTypeRevision_new() {
	return new (std::nothrow) QTypeRevision();
}

QTypeRevision* QTypeRevision_new_from(QTypeRevision* from) {
	return new (std::nothrow) QTypeRevision(*from);
}

QTypeRevision* QTypeRevision_zero() {
	return new QTypeRevision(QTypeRevision::zero());
}

bool QTypeRevision_hasMajorVersion(const QTypeRevision* self) {
	return self->hasMajorVersion();
}

unsigned char QTypeRevision_majorVersion(const QTypeRevision* self) {
	quint8 _ret = self->majorVersion();
	return static_cast<unsigned char>(_ret);
}

bool QTypeRevision_hasMinorVersion(const QTypeRevision* self) {
	return self->hasMinorVersion();
}

unsigned char QTypeRevision_minorVersion(const QTypeRevision* self) {
	quint8 _ret = self->minorVersion();
	return static_cast<unsigned char>(_ret);
}

bool QTypeRevision_isValid(const QTypeRevision* self) {
	return self->isValid();
}

void QTypeRevision_delete(QTypeRevision* self) {
	delete self;
}

