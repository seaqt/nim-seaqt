#include <QByteArray>
#include <QDataStream>
#include <QIODevice>
#include <QIODeviceBase>
#include <qdatastream.h>
#include "gen_qdatastream.h"

#ifndef SEAQT_ALIGNED_SIZEOF
#define SEAQT_ALIGNED_SIZEOF 1
#include <cstddef>
template<typename T>
static constexpr std::size_t seaqt_aligned_sizeof() {
	constexpr auto alignment = sizeof(std::max_align_t);
	return (sizeof(T) + alignment - 1) & ~(alignment - 1);
}
#endif

QDataStream* QDataStream_new() {
	return new (std::nothrow) QDataStream();
}

QDataStream* QDataStream_new_QIODevice(QIODevice* param1) {
	return new (std::nothrow) QDataStream(param1);
}

QDataStream* QDataStream_new_QByteArray(struct seaqt_string param1) {
	QByteArray param1_QByteArray(param1.data, param1.len);
	return new (std::nothrow) QDataStream(param1_QByteArray);
}

void QDataStream_virtbase(QDataStream* src, QIODeviceBase** outptr_QIODeviceBase) {
	*outptr_QIODeviceBase = static_cast<QIODeviceBase*>(src);
}

QIODevice* QDataStream_device(const QDataStream* self) {
	return self->device();
}

void QDataStream_setDevice(QDataStream* self, QIODevice* device) {
	self->setDevice(device);
}

bool QDataStream_atEnd(const QDataStream* self) {
	return self->atEnd();
}

int QDataStream_status(const QDataStream* self) {
	QDataStream::Status _ret = self->status();
	return static_cast<int>(_ret);
}

void QDataStream_setStatus(QDataStream* self, int status) {
	self->setStatus(static_cast<QDataStream::Status>(status));
}

void QDataStream_resetStatus(QDataStream* self) {
	self->resetStatus();
}

int QDataStream_floatingPointPrecision(const QDataStream* self) {
	QDataStream::FloatingPointPrecision _ret = self->floatingPointPrecision();
	return static_cast<int>(_ret);
}

void QDataStream_setFloatingPointPrecision(QDataStream* self, int precision) {
	self->setFloatingPointPrecision(static_cast<QDataStream::FloatingPointPrecision>(precision));
}

int QDataStream_byteOrder(const QDataStream* self) {
	QDataStream::ByteOrder _ret = self->byteOrder();
	return static_cast<int>(_ret);
}

void QDataStream_setByteOrder(QDataStream* self, int byteOrder) {
	self->setByteOrder(static_cast<QDataStream::ByteOrder>(byteOrder));
}

int QDataStream_version(const QDataStream* self) {
	return self->version();
}

void QDataStream_setVersion(QDataStream* self, int version) {
	self->setVersion(static_cast<int>(version));
}

void QDataStream_operatorShiftRight_char(QDataStream* self, char* i) {
	self->operator>>(static_cast<char&>(*i));
}

void QDataStream_operatorShiftRight_qint8(QDataStream* self, signed char* i) {
	self->operator>>(static_cast<qint8&>(*i));
}

void QDataStream_operatorShiftRight_quint8(QDataStream* self, unsigned char* i) {
	self->operator>>(static_cast<quint8&>(*i));
}

void QDataStream_operatorShiftRight_qint16(QDataStream* self, short* i) {
	self->operator>>(static_cast<qint16&>(*i));
}

void QDataStream_operatorShiftRight_quint16(QDataStream* self, unsigned short* i) {
	self->operator>>(static_cast<quint16&>(*i));
}

void QDataStream_operatorShiftRight_qint32(QDataStream* self, int* i) {
	self->operator>>(static_cast<qint32&>(*i));
}

void QDataStream_operatorShiftRight_quint32(QDataStream* self, unsigned int* i) {
	self->operator>>(static_cast<quint32&>(*i));
}

void QDataStream_operatorShiftRight_qint64(QDataStream* self, long long* i) {
	self->operator>>(static_cast<qint64&>(*i));
}

void QDataStream_operatorShiftRight_quint64(QDataStream* self, unsigned long long* i) {
	self->operator>>(static_cast<quint64&>(*i));
}

void QDataStream_operatorShiftRight_bool(QDataStream* self, bool* i) {
	self->operator>>(*i);
}

void QDataStream_operatorShiftRight_float(QDataStream* self, float* f) {
	self->operator>>(static_cast<float&>(*f));
}

void QDataStream_operatorShiftRight_double(QDataStream* self, double* f) {
	self->operator>>(static_cast<double&>(*f));
}

void QDataStream_operatorShiftRight_pchar(QDataStream* self, char* str) {
	self->operator>>(str);
}

void QDataStream_operatorShiftLeft_char(QDataStream* self, char i) {
	self->operator<<(static_cast<char>(i));
}

void QDataStream_operatorShiftLeft_qint8(QDataStream* self, signed char i) {
	self->operator<<(static_cast<qint8>(i));
}

void QDataStream_operatorShiftLeft_quint8(QDataStream* self, unsigned char i) {
	self->operator<<(static_cast<quint8>(i));
}

void QDataStream_operatorShiftLeft_qint16(QDataStream* self, short i) {
	self->operator<<(static_cast<qint16>(i));
}

void QDataStream_operatorShiftLeft_quint16(QDataStream* self, unsigned short i) {
	self->operator<<(static_cast<quint16>(i));
}

void QDataStream_operatorShiftLeft_qint32(QDataStream* self, int i) {
	self->operator<<(static_cast<qint32>(i));
}

void QDataStream_operatorShiftLeft_quint32(QDataStream* self, unsigned int i) {
	self->operator<<(static_cast<quint32>(i));
}

void QDataStream_operatorShiftLeft_qint64(QDataStream* self, long long i) {
	self->operator<<(static_cast<qint64>(i));
}

void QDataStream_operatorShiftLeft_quint64(QDataStream* self, unsigned long long i) {
	self->operator<<(static_cast<quint64>(i));
}

void QDataStream_operatorShiftLeft_float(QDataStream* self, float f) {
	self->operator<<(static_cast<float>(f));
}

void QDataStream_operatorShiftLeft_double(QDataStream* self, double f) {
	self->operator<<(static_cast<double>(f));
}

void QDataStream_operatorShiftLeft_pcchar(QDataStream* self, const char* str) {
	self->operator<<(str);
}

QDataStream* QDataStream_readBytes_char_uint(QDataStream* self, char* param1, unsigned int* len) {
	QDataStream& _ret = self->readBytes(param1, static_cast<uint&>(*len));
	// Cast returned reference into pointer
	return &_ret;
}

QDataStream* QDataStream_readBytes_char_qint64(QDataStream* self, char* param1, long long* len) {
	QDataStream& _ret = self->readBytes(param1, static_cast<qint64&>(*len));
	// Cast returned reference into pointer
	return &_ret;
}

long long QDataStream_readRawData(QDataStream* self, char* param1, long long len) {
	qint64 _ret = self->readRawData(param1, static_cast<qint64>(len));
	return static_cast<long long>(_ret);
}

void QDataStream_writeBytes(QDataStream* self, const char* param1, long long len) {
	self->writeBytes(param1, static_cast<qint64>(len));
}

long long QDataStream_writeRawData(QDataStream* self, const char* param1, long long len) {
	qint64 _ret = self->writeRawData(param1, static_cast<qint64>(len));
	return static_cast<long long>(_ret);
}

long long QDataStream_skipRawData(QDataStream* self, long long len) {
	qint64 _ret = self->skipRawData(static_cast<qint64>(len));
	return static_cast<long long>(_ret);
}

void QDataStream_startTransaction(QDataStream* self) {
	self->startTransaction();
}

bool QDataStream_commitTransaction(QDataStream* self) {
	return self->commitTransaction();
}

void QDataStream_rollbackTransaction(QDataStream* self) {
	self->rollbackTransaction();
}

void QDataStream_abortTransaction(QDataStream* self) {
	self->abortTransaction();
}

bool QDataStream_isDeviceTransactionStarted(const QDataStream* self) {
	return self->isDeviceTransactionStarted();
}

void QDataStream_delete(QDataStream* self) {
	delete self;
}

