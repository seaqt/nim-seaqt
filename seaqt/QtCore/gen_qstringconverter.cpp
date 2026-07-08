#include <QAnyStringView>
#include <QString>
#include <QByteArray>
#include <QAnyStringView>
#include <QByteArrayView>
#include <QChar>
#include <QStringConverter>
#include <QStringDecoder>
#include <QStringEncoder>
#include <qstringconverter.h>
#include "gen_qstringconverter.h"

#ifndef SEAQT_ALIGNED_SIZEOF
#define SEAQT_ALIGNED_SIZEOF 1
#include <cstddef>
template<typename T>
static constexpr std::size_t seaqt_aligned_sizeof() {
	constexpr auto alignment = sizeof(std::max_align_t);
	return (sizeof(T) + alignment - 1) & ~(alignment - 1);
}
#endif

QStringEncoder* QStringEncoder_new() {
	return new (std::nothrow) QStringEncoder();
}

QStringEncoder* QStringEncoder_new_encoding(int encoding) {
	return new (std::nothrow) QStringEncoder(static_cast<QStringConverter::Encoding>(encoding));
}

QStringEncoder* QStringEncoder_new_name(struct seaqt_string name) {
	QAnyStringView name_QString = QAnyStringView(name.data, name.len);
	return new (std::nothrow) QStringEncoder(name_QString);
}

QStringEncoder* QStringEncoder_new_encoding_flags(int encoding, int flags) {
	return new (std::nothrow) QStringEncoder(static_cast<QStringConverter::Encoding>(encoding), static_cast<QStringConverterBase::Flags>(flags));
}

QStringEncoder* QStringEncoder_new_name_flags(struct seaqt_string name, int flags) {
	QAnyStringView name_QString = QAnyStringView(name.data, name.len);
	return new (std::nothrow) QStringEncoder(name_QString, static_cast<QStringConverterBase::Flags>(flags));
}

void QStringEncoder_virtbase(QStringEncoder* src, QStringConverter** outptr_QStringConverter) {
	*outptr_QStringConverter = static_cast<QStringConverter*>(src);
}

ptrdiff_t QStringEncoder_requiredSpace(const QStringEncoder* self, ptrdiff_t inputLength) {
	qsizetype _ret = self->requiredSpace((qsizetype)(inputLength));
	return static_cast<ptrdiff_t>(_ret);
}

void QStringEncoder_delete(QStringEncoder* self) {
	delete self;
}

QStringDecoder* QStringDecoder_new_encoding(int encoding) {
	return new (std::nothrow) QStringDecoder(static_cast<QStringConverter::Encoding>(encoding));
}

QStringDecoder* QStringDecoder_new() {
	return new (std::nothrow) QStringDecoder();
}

QStringDecoder* QStringDecoder_new_name(struct seaqt_string name) {
	QAnyStringView name_QString = QAnyStringView(name.data, name.len);
	return new (std::nothrow) QStringDecoder(name_QString);
}

QStringDecoder* QStringDecoder_new_encoding_flags(int encoding, int flags) {
	return new (std::nothrow) QStringDecoder(static_cast<QStringConverter::Encoding>(encoding), static_cast<QStringConverterBase::Flags>(flags));
}

QStringDecoder* QStringDecoder_new_name_f(struct seaqt_string name, int f) {
	QAnyStringView name_QString = QAnyStringView(name.data, name.len);
	return new (std::nothrow) QStringDecoder(name_QString, static_cast<QStringConverterBase::Flags>(f));
}

void QStringDecoder_virtbase(QStringDecoder* src, QStringConverter** outptr_QStringConverter) {
	*outptr_QStringConverter = static_cast<QStringConverter*>(src);
}

ptrdiff_t QStringDecoder_requiredSpace(const QStringDecoder* self, ptrdiff_t inputLength) {
	qsizetype _ret = self->requiredSpace((qsizetype)(inputLength));
	return static_cast<ptrdiff_t>(_ret);
}

QChar* QStringDecoder_appendToBuffer_QChar_QByteArrayView(QStringDecoder* self, QChar* out, struct seaqt_string ba) {
	QByteArrayView ba_QByteArray(ba.data, ba.len);
	return self->appendToBuffer(out, ba_QByteArray);
}

QStringDecoder* QStringDecoder_decoderForHtml(struct seaqt_string data) {
	QByteArrayView data_QByteArray(data.data, data.len);
	return new QStringDecoder(QStringDecoder::decoderForHtml(data_QByteArray));
}

void QStringDecoder_delete(QStringDecoder* self) {
	delete self;
}

