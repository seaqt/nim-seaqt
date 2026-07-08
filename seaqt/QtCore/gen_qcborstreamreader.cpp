#include <QByteArray>
#include <QCborError>
#include <QCborStreamReader>
#include <QIODevice>
#include <QMetaObject>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <qcborstreamreader.h>
#include "gen_qcborstreamreader.h"

#ifndef SEAQT_ALIGNED_SIZEOF
#define SEAQT_ALIGNED_SIZEOF 1
#include <cstddef>
template<typename T>
static constexpr std::size_t seaqt_aligned_sizeof() {
	constexpr auto alignment = sizeof(std::max_align_t);
	return (sizeof(T) + alignment - 1) & ~(alignment - 1);
}
#endif

QCborStreamReader* QCborStreamReader_new() {
	return new (std::nothrow) QCborStreamReader();
}

QCborStreamReader* QCborStreamReader_new_char_qsizetype(const char* data, ptrdiff_t len) {
	return new (std::nothrow) QCborStreamReader(data, (qsizetype)(len));
}

QCborStreamReader* QCborStreamReader_new_quint8_qsizetype(const unsigned char* data, ptrdiff_t len) {
	return new (std::nothrow) QCborStreamReader(static_cast<const quint8*>(data), (qsizetype)(len));
}

QCborStreamReader* QCborStreamReader_new_QByteArray(struct seaqt_string data) {
	QByteArray data_QByteArray(data.data, data.len);
	return new (std::nothrow) QCborStreamReader(data_QByteArray);
}

QCborStreamReader* QCborStreamReader_new_QIODevice(QIODevice* device) {
	return new (std::nothrow) QCborStreamReader(device);
}

void QCborStreamReader_setDevice(QCborStreamReader* self, QIODevice* device) {
	self->setDevice(device);
}

QIODevice* QCborStreamReader_device(const QCborStreamReader* self) {
	return self->device();
}

void QCborStreamReader_addData_QByteArray(QCborStreamReader* self, struct seaqt_string data) {
	QByteArray data_QByteArray(data.data, data.len);
	self->addData(data_QByteArray);
}

void QCborStreamReader_addData_char_qsizetype(QCborStreamReader* self, const char* data, ptrdiff_t len) {
	self->addData(data, (qsizetype)(len));
}

void QCborStreamReader_addData_quint8_qsizetype(QCborStreamReader* self, const unsigned char* data, ptrdiff_t len) {
	self->addData(static_cast<const quint8*>(data), (qsizetype)(len));
}

void QCborStreamReader_reparse(QCborStreamReader* self) {
	self->reparse();
}

void QCborStreamReader_clear(QCborStreamReader* self) {
	self->clear();
}

void QCborStreamReader_reset(QCborStreamReader* self) {
	self->reset();
}

QCborError* QCborStreamReader_lastError(const QCborStreamReader* self) {
	return new QCborError(self->lastError());
}

long long QCborStreamReader_currentOffset(const QCborStreamReader* self) {
	qint64 _ret = self->currentOffset();
	return static_cast<long long>(_ret);
}

bool QCborStreamReader_isValid(const QCborStreamReader* self) {
	return self->isValid();
}

int QCborStreamReader_containerDepth(const QCborStreamReader* self) {
	return self->containerDepth();
}

uint8_t QCborStreamReader_parentContainerType(const QCborStreamReader* self) {
	QCborStreamReader::Type _ret = self->parentContainerType();
	return static_cast<uint8_t>(_ret);
}

bool QCborStreamReader_hasNext(const QCborStreamReader* self) {
	return self->hasNext();
}

bool QCborStreamReader_next(QCborStreamReader* self) {
	return self->next();
}

uint8_t QCborStreamReader_type(const QCborStreamReader* self) {
	QCborStreamReader::Type _ret = self->type();
	return static_cast<uint8_t>(_ret);
}

bool QCborStreamReader_isUnsignedInteger(const QCborStreamReader* self) {
	return self->isUnsignedInteger();
}

bool QCborStreamReader_isNegativeInteger(const QCborStreamReader* self) {
	return self->isNegativeInteger();
}

bool QCborStreamReader_isInteger(const QCborStreamReader* self) {
	return self->isInteger();
}

bool QCborStreamReader_isByteArray(const QCborStreamReader* self) {
	return self->isByteArray();
}

bool QCborStreamReader_isString(const QCborStreamReader* self) {
	return self->isString();
}

bool QCborStreamReader_isArray(const QCborStreamReader* self) {
	return self->isArray();
}

bool QCborStreamReader_isMap(const QCborStreamReader* self) {
	return self->isMap();
}

bool QCborStreamReader_isTag(const QCborStreamReader* self) {
	return self->isTag();
}

bool QCborStreamReader_isSimpleType(const QCborStreamReader* self) {
	return self->isSimpleType();
}

bool QCborStreamReader_isFloat16(const QCborStreamReader* self) {
	return self->isFloat16();
}

bool QCborStreamReader_isFloat(const QCborStreamReader* self) {
	return self->isFloat();
}

bool QCborStreamReader_isDouble(const QCborStreamReader* self) {
	return self->isDouble();
}

bool QCborStreamReader_isInvalid(const QCborStreamReader* self) {
	return self->isInvalid();
}

bool QCborStreamReader_isSimpleType_st(const QCborStreamReader* self, uint8_t st) {
	return self->isSimpleType(static_cast<QCborSimpleType>(st));
}

bool QCborStreamReader_isFalse(const QCborStreamReader* self) {
	return self->isFalse();
}

bool QCborStreamReader_isTrue(const QCborStreamReader* self) {
	return self->isTrue();
}

bool QCborStreamReader_isBool(const QCborStreamReader* self) {
	return self->isBool();
}

bool QCborStreamReader_isNull(const QCborStreamReader* self) {
	return self->isNull();
}

bool QCborStreamReader_isUndefined(const QCborStreamReader* self) {
	return self->isUndefined();
}

bool QCborStreamReader_isLengthKnown(const QCborStreamReader* self) {
	return self->isLengthKnown();
}

unsigned long long QCborStreamReader_length(const QCborStreamReader* self) {
	quint64 _ret = self->length();
	return static_cast<unsigned long long>(_ret);
}

bool QCborStreamReader_isContainer(const QCborStreamReader* self) {
	return self->isContainer();
}

bool QCborStreamReader_enterContainer(QCborStreamReader* self) {
	return self->enterContainer();
}

bool QCborStreamReader_leaveContainer(QCborStreamReader* self) {
	return self->leaveContainer();
}

bool QCborStreamReader_readAndAppendToString(QCborStreamReader* self, struct seaqt_string dst) {
	QString dst_QString = QString::fromUtf8(dst.data, dst.len);
	return self->readAndAppendToString(dst_QString);
}

bool QCborStreamReader_readAndAppendToUtf8String(QCborStreamReader* self, struct seaqt_string dst) {
	QByteArray dst_QByteArray(dst.data, dst.len);
	return self->readAndAppendToUtf8String(dst_QByteArray);
}

bool QCborStreamReader_readAndAppendToByteArray(QCborStreamReader* self, struct seaqt_string dst) {
	QByteArray dst_QByteArray(dst.data, dst.len);
	return self->readAndAppendToByteArray(dst_QByteArray);
}

ptrdiff_t QCborStreamReader_currentStringChunkSize(const QCborStreamReader* self) {
	qsizetype _ret = self->currentStringChunkSize();
	return static_cast<ptrdiff_t>(_ret);
}

bool QCborStreamReader_toBool(const QCborStreamReader* self) {
	return self->toBool();
}

uint64_t QCborStreamReader_toTag(const QCborStreamReader* self) {
	QCborTag _ret = self->toTag();
	return static_cast<uint64_t>(_ret);
}

unsigned long long QCborStreamReader_toUnsignedInteger(const QCborStreamReader* self) {
	quint64 _ret = self->toUnsignedInteger();
	return static_cast<unsigned long long>(_ret);
}

uint64_t QCborStreamReader_toNegativeInteger(const QCborStreamReader* self) {
	QCborNegativeInteger _ret = self->toNegativeInteger();
	return static_cast<uint64_t>(_ret);
}

uint8_t QCborStreamReader_toSimpleType(const QCborStreamReader* self) {
	QCborSimpleType _ret = self->toSimpleType();
	return static_cast<uint8_t>(_ret);
}

float QCborStreamReader_toFloat(const QCborStreamReader* self) {
	return self->toFloat();
}

double QCborStreamReader_toDouble(const QCborStreamReader* self) {
	return self->toDouble();
}

long long QCborStreamReader_toInteger(const QCborStreamReader* self) {
	qint64 _ret = self->toInteger();
	return static_cast<long long>(_ret);
}

struct seaqt_string QCborStreamReader_readAllString(QCborStreamReader* self) {
	QString _ret = self->readAllString();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QCborStreamReader_readAllUtf8String(QCborStreamReader* self) {
	QByteArray _qb = self->readAllUtf8String();
	struct seaqt_string _ms;
	_ms.len = _qb.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _qb.data(), _ms.len);
	return _ms;
}

struct seaqt_string QCborStreamReader_readAllByteArray(QCborStreamReader* self) {
	QByteArray _qb = self->readAllByteArray();
	struct seaqt_string _ms;
	_ms.len = _qb.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _qb.data(), _ms.len);
	return _ms;
}

bool QCborStreamReader_next_maxRecursion(QCborStreamReader* self, int maxRecursion) {
	return self->next(static_cast<int>(maxRecursion));
}

const QMetaObject* QCborStreamReader_staticMetaObject() { return &QCborStreamReader::staticMetaObject; }
void QCborStreamReader_delete(QCborStreamReader* self) {
	delete self;
}

