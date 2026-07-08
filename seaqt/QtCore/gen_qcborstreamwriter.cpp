#include <QByteArrayView>
#include <QCborStreamWriter>
#include <QIODevice>
#include <qcborstreamwriter.h>
#include "gen_qcborstreamwriter.h"

#ifndef SEAQT_ALIGNED_SIZEOF
#define SEAQT_ALIGNED_SIZEOF 1
#include <cstddef>
template<typename T>
static constexpr std::size_t seaqt_aligned_sizeof() {
	constexpr auto alignment = sizeof(std::max_align_t);
	return (sizeof(T) + alignment - 1) & ~(alignment - 1);
}
#endif

QCborStreamWriter* QCborStreamWriter_new_device(QIODevice* device) {
	return new (std::nothrow) QCborStreamWriter(device);
}

void QCborStreamWriter_setDevice(QCborStreamWriter* self, QIODevice* device) {
	self->setDevice(device);
}

QIODevice* QCborStreamWriter_device(const QCborStreamWriter* self) {
	return self->device();
}

void QCborStreamWriter_append_quint64(QCborStreamWriter* self, unsigned long long u) {
	self->append(static_cast<quint64>(u));
}

void QCborStreamWriter_append_qint64(QCborStreamWriter* self, long long i) {
	self->append(static_cast<qint64>(i));
}

void QCborStreamWriter_append_QCborNegativeInteger(QCborStreamWriter* self, uint64_t n) {
	self->append(static_cast<QCborNegativeInteger>(n));
}

void QCborStreamWriter_append_QByteArrayView(QCborStreamWriter* self, struct seaqt_string ba) {
	QByteArrayView ba_QByteArray(ba.data, ba.len);
	self->append(ba_QByteArray);
}

void QCborStreamWriter_append_QCborTag(QCborStreamWriter* self, uint64_t tag) {
	self->append(static_cast<QCborTag>(tag));
}

void QCborStreamWriter_append_QCborKnownTags(QCborStreamWriter* self, int tag) {
	self->append(static_cast<QCborKnownTags>(tag));
}

void QCborStreamWriter_append_QCborSimpleType(QCborStreamWriter* self, uint8_t st) {
	self->append(static_cast<QCborSimpleType>(st));
}

void QCborStreamWriter_append_float(QCborStreamWriter* self, float f) {
	self->append(static_cast<float>(f));
}

void QCborStreamWriter_append_double(QCborStreamWriter* self, double d) {
	self->append(static_cast<double>(d));
}

void QCborStreamWriter_appendByteString(QCborStreamWriter* self, const char* data, ptrdiff_t len) {
	self->appendByteString(data, (qsizetype)(len));
}

void QCborStreamWriter_appendTextString(QCborStreamWriter* self, const char* utf8, ptrdiff_t len) {
	self->appendTextString(utf8, (qsizetype)(len));
}

void QCborStreamWriter_append_bool(QCborStreamWriter* self, bool b) {
	self->append(b);
}

void QCborStreamWriter_appendNull(QCborStreamWriter* self) {
	self->appendNull();
}

void QCborStreamWriter_appendUndefined(QCborStreamWriter* self) {
	self->appendUndefined();
}

void QCborStreamWriter_append_int(QCborStreamWriter* self, int i) {
	self->append(static_cast<int>(i));
}

void QCborStreamWriter_append_uint(QCborStreamWriter* self, unsigned int u) {
	self->append(static_cast<uint>(u));
}

void QCborStreamWriter_append_char(QCborStreamWriter* self, const char* str) {
	self->append(str);
}

void QCborStreamWriter_startArray(QCborStreamWriter* self) {
	self->startArray();
}

void QCborStreamWriter_startArray_count(QCborStreamWriter* self, unsigned long long count) {
	self->startArray(static_cast<quint64>(count));
}

bool QCborStreamWriter_endArray(QCborStreamWriter* self) {
	return self->endArray();
}

void QCborStreamWriter_startMap(QCborStreamWriter* self) {
	self->startMap();
}

void QCborStreamWriter_startMap_count(QCborStreamWriter* self, unsigned long long count) {
	self->startMap(static_cast<quint64>(count));
}

bool QCborStreamWriter_endMap(QCborStreamWriter* self) {
	return self->endMap();
}

void QCborStreamWriter_append_char_qsizetype(QCborStreamWriter* self, const char* str, ptrdiff_t size) {
	self->append(str, (qsizetype)(size));
}

void QCborStreamWriter_delete(QCborStreamWriter* self) {
	delete self;
}

