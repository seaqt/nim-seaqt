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

void QAudioBuffer_swap(QAudioBuffer* self, QAudioBuffer* other) {
	self->swap(*other);
}

bool QAudioBuffer_isValid(const QAudioBuffer* self) {
	return self->isValid();
}

void QAudioBuffer_detach(QAudioBuffer* self) {
	self->detach();
}

QAudioFormat* QAudioBuffer_format(const QAudioBuffer* self) {
	return new QAudioFormat(self->format());
}

ptrdiff_t QAudioBuffer_frameCount(const QAudioBuffer* self) {
	qsizetype _ret = self->frameCount();
	return static_cast<ptrdiff_t>(_ret);
}

ptrdiff_t QAudioBuffer_sampleCount(const QAudioBuffer* self) {
	qsizetype _ret = self->sampleCount();
	return static_cast<ptrdiff_t>(_ret);
}

ptrdiff_t QAudioBuffer_byteCount(const QAudioBuffer* self) {
	qsizetype _ret = self->byteCount();
	return static_cast<ptrdiff_t>(_ret);
}

long long QAudioBuffer_duration(const QAudioBuffer* self) {
	qint64 _ret = self->duration();
	return static_cast<long long>(_ret);
}

long long QAudioBuffer_startTime(const QAudioBuffer* self) {
	qint64 _ret = self->startTime();
	return static_cast<long long>(_ret);
}

void QAudioBuffer_delete(QAudioBuffer* self) {
	delete self;
}

