#include <QAudioBuffer>
#include <QAudioFormat>
#include <QByteArray>
#include <qaudiobuffer.h>
#include "gen_qaudiobuffer.h"

#ifndef SEAQT_ALIGNED_SIZEOF
#define SEAQT_ALIGNED_SIZEOF 1
#include <cstddef>
template<typename T>
static constexpr std::size_t seaqt_aligned_sizeof() {
	constexpr auto alignment = sizeof(std::max_align_t);
	return (sizeof(T) + alignment - 1) & ~(alignment - 1);
}
#endif

QAudioBuffer* QAudioBuffer_new() {
	return new (std::nothrow) QAudioBuffer();
}

QAudioBuffer* QAudioBuffer_new_from(QAudioBuffer* from) {
	return new (std::nothrow) QAudioBuffer(*from);
}

QAudioBuffer* QAudioBuffer_new_data_format(struct seaqt_string data, QAudioFormat* format) {
	QByteArray data_QByteArray(data.data, data.len);
	return new (std::nothrow) QAudioBuffer(data_QByteArray, *format);
}

QAudioBuffer* QAudioBuffer_new_numFrames_format(int numFrames, QAudioFormat* format) {
	return new (std::nothrow) QAudioBuffer(static_cast<int>(numFrames), *format);
}

QAudioBuffer* QAudioBuffer_new_data_format_startTime(struct seaqt_string data, QAudioFormat* format, long long startTime) {
	QByteArray data_QByteArray(data.data, data.len);
	return new (std::nothrow) QAudioBuffer(data_QByteArray, *format, static_cast<qint64>(startTime));
}

QAudioBuffer* QAudioBuffer_new_numFrames_format_startTime(int numFrames, QAudioFormat* format, long long startTime) {
	return new (std::nothrow) QAudioBuffer(static_cast<int>(numFrames), *format, static_cast<qint64>(startTime));
}

void QAudioBuffer_operatorAssign(QAudioBuffer* self, QAudioBuffer* from) {
	self->operator=(*from);
}

bool QAudioBuffer_isValid(const QAudioBuffer* self) {
	return self->isValid();
}

QAudioFormat* QAudioBuffer_format(const QAudioBuffer* self) {
	return new QAudioFormat(self->format());
}

int QAudioBuffer_frameCount(const QAudioBuffer* self) {
	return self->frameCount();
}

int QAudioBuffer_sampleCount(const QAudioBuffer* self) {
	return self->sampleCount();
}

int QAudioBuffer_byteCount(const QAudioBuffer* self) {
	return self->byteCount();
}

long long QAudioBuffer_duration(const QAudioBuffer* self) {
	qint64 _ret = self->duration();
	return static_cast<long long>(_ret);
}

long long QAudioBuffer_startTime(const QAudioBuffer* self) {
	qint64 _ret = self->startTime();
	return static_cast<long long>(_ret);
}

const void* QAudioBuffer_constData(const QAudioBuffer* self) {
	return (const void*) self->constData();
}

const void* QAudioBuffer_data_const(const QAudioBuffer* self) {
	return (const void*) self->data();
}

void* QAudioBuffer_data(QAudioBuffer* self) {
	return self->data();
}

void QAudioBuffer_delete(QAudioBuffer* self) {
	delete self;
}

