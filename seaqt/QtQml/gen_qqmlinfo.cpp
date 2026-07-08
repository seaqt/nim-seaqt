#include <QByteArray>
#include <QChar>
#include <QDebug>
#include <QQmlInfo>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QUrl>
#include <qqmlinfo.h>
#include "gen_qqmlinfo.h"

#ifndef SEAQT_ALIGNED_SIZEOF
#define SEAQT_ALIGNED_SIZEOF 1
#include <cstddef>
template<typename T>
static constexpr std::size_t seaqt_aligned_sizeof() {
	constexpr auto alignment = sizeof(std::max_align_t);
	return (sizeof(T) + alignment - 1) & ~(alignment - 1);
}
#endif

QQmlInfo* QQmlInfo_new(QQmlInfo* from) {
	return new (std::nothrow) QQmlInfo(*from);
}

void QQmlInfo_virtbase(QQmlInfo* src, QDebug** outptr_QDebug) {
	*outptr_QDebug = static_cast<QDebug*>(src);
}

QQmlInfo* QQmlInfo_operatorShiftLeft_QChar(QQmlInfo* self, QChar* t) {
	QQmlInfo& _ret = self->operator<<(*t);
	// Cast returned reference into pointer
	return &_ret;
}

QQmlInfo* QQmlInfo_operatorShiftLeft_bool(QQmlInfo* self, bool t) {
	QQmlInfo& _ret = self->operator<<(t);
	// Cast returned reference into pointer
	return &_ret;
}

QQmlInfo* QQmlInfo_operatorShiftLeft_char(QQmlInfo* self, char t) {
	QQmlInfo& _ret = self->operator<<(static_cast<char>(t));
	// Cast returned reference into pointer
	return &_ret;
}

QQmlInfo* QQmlInfo_operatorShiftLeft_short(QQmlInfo* self, short t) {
	QQmlInfo& _ret = self->operator<<(static_cast<short>(t));
	// Cast returned reference into pointer
	return &_ret;
}

QQmlInfo* QQmlInfo_operatorShiftLeft_unsignedshort(QQmlInfo* self, unsigned short t) {
	QQmlInfo& _ret = self->operator<<(static_cast<unsigned short>(t));
	// Cast returned reference into pointer
	return &_ret;
}

QQmlInfo* QQmlInfo_operatorShiftLeft_int(QQmlInfo* self, int t) {
	QQmlInfo& _ret = self->operator<<(static_cast<int>(t));
	// Cast returned reference into pointer
	return &_ret;
}

QQmlInfo* QQmlInfo_operatorShiftLeft_unsignedint(QQmlInfo* self, unsigned int t) {
	QQmlInfo& _ret = self->operator<<(static_cast<unsigned int>(t));
	// Cast returned reference into pointer
	return &_ret;
}

QQmlInfo* QQmlInfo_operatorShiftLeft_long(QQmlInfo* self, long t) {
	QQmlInfo& _ret = self->operator<<(static_cast<long>(t));
	// Cast returned reference into pointer
	return &_ret;
}

QQmlInfo* QQmlInfo_operatorShiftLeft_unsignedlong(QQmlInfo* self, unsigned long t) {
	QQmlInfo& _ret = self->operator<<(static_cast<unsigned long>(t));
	// Cast returned reference into pointer
	return &_ret;
}

QQmlInfo* QQmlInfo_operatorShiftLeft_qint64(QQmlInfo* self, long long t) {
	QQmlInfo& _ret = self->operator<<(static_cast<qint64>(t));
	// Cast returned reference into pointer
	return &_ret;
}

QQmlInfo* QQmlInfo_operatorShiftLeft_quint64(QQmlInfo* self, unsigned long long t) {
	QQmlInfo& _ret = self->operator<<(static_cast<quint64>(t));
	// Cast returned reference into pointer
	return &_ret;
}

QQmlInfo* QQmlInfo_operatorShiftLeft_float(QQmlInfo* self, float t) {
	QQmlInfo& _ret = self->operator<<(static_cast<float>(t));
	// Cast returned reference into pointer
	return &_ret;
}

QQmlInfo* QQmlInfo_operatorShiftLeft_double(QQmlInfo* self, double t) {
	QQmlInfo& _ret = self->operator<<(static_cast<double>(t));
	// Cast returned reference into pointer
	return &_ret;
}

QQmlInfo* QQmlInfo_operatorShiftLeft_pcchar(QQmlInfo* self, const char* t) {
	QQmlInfo& _ret = self->operator<<(t);
	// Cast returned reference into pointer
	return &_ret;
}

QQmlInfo* QQmlInfo_operatorShiftLeft_cQString(QQmlInfo* self, struct seaqt_string t) {
	QString t_QString = QString::fromUtf8(t.data, t.len);
	QQmlInfo& _ret = self->operator<<(t_QString);
	// Cast returned reference into pointer
	return &_ret;
}

QQmlInfo* QQmlInfo_operatorShiftLeft_cQByteArray(QQmlInfo* self, struct seaqt_string t) {
	QByteArray t_QByteArray(t.data, t.len);
	QQmlInfo& _ret = self->operator<<(t_QByteArray);
	// Cast returned reference into pointer
	return &_ret;
}

QQmlInfo* QQmlInfo_operatorShiftLeft_pcvoid(QQmlInfo* self, const void* t) {
	QQmlInfo& _ret = self->operator<<(t);
	// Cast returned reference into pointer
	return &_ret;
}

QQmlInfo* QQmlInfo_operatorShiftLeft_cQUrl(QQmlInfo* self, QUrl* t) {
	QQmlInfo& _ret = self->operator<<(*t);
	// Cast returned reference into pointer
	return &_ret;
}

void QQmlInfo_operatorAssign(QQmlInfo* self, QQmlInfo* from) {
	self->operator=(*from);
}

void QQmlInfo_delete(QQmlInfo* self) {
	delete self;
}

