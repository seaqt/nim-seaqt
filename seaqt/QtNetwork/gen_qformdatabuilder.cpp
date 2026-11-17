#include <QAnyStringView>
#include <QString>
#include <QByteArray>
#include <QAnyStringView>
#include <QByteArrayView>
#include <QFormDataBuilder>
#include <QFormDataPartBuilder>
#include <QHttpHeaders>
#include <QIODevice>
#include <qformdatabuilder.h>
#include "gen_qformdatabuilder.h"

#ifndef SEAQT_ALIGNED_SIZEOF
#define SEAQT_ALIGNED_SIZEOF 1
#include <cstddef>
template<typename T>
static constexpr std::size_t seaqt_aligned_sizeof() {
	constexpr auto alignment = sizeof(std::max_align_t);
	return (sizeof(T) + alignment - 1) & ~(alignment - 1);
}
#endif

QFormDataPartBuilder* QFormDataPartBuilder_new() {
	return new (std::nothrow) QFormDataPartBuilder();
}

QFormDataPartBuilder* QFormDataPartBuilder_new_from(QFormDataPartBuilder* from) {
	return new (std::nothrow) QFormDataPartBuilder(*from);
}

void QFormDataPartBuilder_swap(QFormDataPartBuilder* self, QFormDataPartBuilder* other) {
	self->swap(*other);
}

QFormDataPartBuilder* QFormDataPartBuilder_setBody_data(QFormDataPartBuilder* self, struct seaqt_string data) {
	QByteArrayView data_QByteArray(data.data, data.len);
	return new QFormDataPartBuilder(self->setBody(data_QByteArray));
}

QFormDataPartBuilder* QFormDataPartBuilder_setBodyDevice_body(QFormDataPartBuilder* self, QIODevice* body) {
	return new QFormDataPartBuilder(self->setBodyDevice(body));
}

QFormDataPartBuilder* QFormDataPartBuilder_setHeaders(QFormDataPartBuilder* self, QHttpHeaders* headers) {
	return new QFormDataPartBuilder(self->setHeaders(*headers));
}

QFormDataPartBuilder* QFormDataPartBuilder_setBody_data_fileName(QFormDataPartBuilder* self, struct seaqt_string data, struct seaqt_string fileName) {
	QByteArrayView data_QByteArray(data.data, data.len);
	QAnyStringView fileName_QString = QAnyStringView(fileName.data, fileName.len);
	return new QFormDataPartBuilder(self->setBody(data_QByteArray, fileName_QString));
}

QFormDataPartBuilder* QFormDataPartBuilder_setBody_data_fileName_mimeType(QFormDataPartBuilder* self, struct seaqt_string data, struct seaqt_string fileName, struct seaqt_string mimeType) {
	QByteArrayView data_QByteArray(data.data, data.len);
	QAnyStringView fileName_QString = QAnyStringView(fileName.data, fileName.len);
	QAnyStringView mimeType_QString = QAnyStringView(mimeType.data, mimeType.len);
	return new QFormDataPartBuilder(self->setBody(data_QByteArray, fileName_QString, mimeType_QString));
}

QFormDataPartBuilder* QFormDataPartBuilder_setBodyDevice_body_fileName(QFormDataPartBuilder* self, QIODevice* body, struct seaqt_string fileName) {
	QAnyStringView fileName_QString = QAnyStringView(fileName.data, fileName.len);
	return new QFormDataPartBuilder(self->setBodyDevice(body, fileName_QString));
}

QFormDataPartBuilder* QFormDataPartBuilder_setBodyDevice_body_fileName_mimeType(QFormDataPartBuilder* self, QIODevice* body, struct seaqt_string fileName, struct seaqt_string mimeType) {
	QAnyStringView fileName_QString = QAnyStringView(fileName.data, fileName.len);
	QAnyStringView mimeType_QString = QAnyStringView(mimeType.data, mimeType.len);
	return new QFormDataPartBuilder(self->setBodyDevice(body, fileName_QString, mimeType_QString));
}

void QFormDataPartBuilder_delete(QFormDataPartBuilder* self) {
	delete self;
}

QFormDataBuilder* QFormDataBuilder_new() {
	return new (std::nothrow) QFormDataBuilder();
}

void QFormDataBuilder_swap(QFormDataBuilder* self, QFormDataBuilder* other) {
	self->swap(*other);
}

QFormDataPartBuilder* QFormDataBuilder_part(QFormDataBuilder* self, struct seaqt_string name) {
	QAnyStringView name_QString = QAnyStringView(name.data, name.len);
	return new QFormDataPartBuilder(self->part(name_QString));
}

void QFormDataBuilder_delete(QFormDataBuilder* self) {
	delete self;
}

