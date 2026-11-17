#include <QByteArray>
#include <QIODevice>
#include <QList>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QTextCodec>
#include <QTextDocument>
#include <QTextDocumentFragment>
#include <QTextDocumentWriter>
#include <qtextdocumentwriter.h>
#include "gen_qtextdocumentwriter.h"

#ifndef SEAQT_ALIGNED_SIZEOF
#define SEAQT_ALIGNED_SIZEOF 1
#include <cstddef>
template<typename T>
static constexpr std::size_t seaqt_aligned_sizeof() {
	constexpr auto alignment = sizeof(std::max_align_t);
	return (sizeof(T) + alignment - 1) & ~(alignment - 1);
}
#endif

QTextDocumentWriter* QTextDocumentWriter_new() {
	return new (std::nothrow) QTextDocumentWriter();
}

QTextDocumentWriter* QTextDocumentWriter_new_device_format(QIODevice* device, struct seaqt_string format) {
	QByteArray format_QByteArray(format.data, format.len);
	return new (std::nothrow) QTextDocumentWriter(device, format_QByteArray);
}

QTextDocumentWriter* QTextDocumentWriter_new_fileName(struct seaqt_string fileName) {
	QString fileName_QString = QString::fromUtf8(fileName.data, fileName.len);
	return new (std::nothrow) QTextDocumentWriter(fileName_QString);
}

QTextDocumentWriter* QTextDocumentWriter_new_fileName_format(struct seaqt_string fileName, struct seaqt_string format) {
	QString fileName_QString = QString::fromUtf8(fileName.data, fileName.len);
	QByteArray format_QByteArray(format.data, format.len);
	return new (std::nothrow) QTextDocumentWriter(fileName_QString, format_QByteArray);
}

void QTextDocumentWriter_setFormat(QTextDocumentWriter* self, struct seaqt_string format) {
	QByteArray format_QByteArray(format.data, format.len);
	self->setFormat(format_QByteArray);
}

struct seaqt_string QTextDocumentWriter_format(const QTextDocumentWriter* self) {
	QByteArray _qb = self->format();
	struct seaqt_string _ms;
	_ms.len = _qb.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _qb.data(), _ms.len);
	return _ms;
}

void QTextDocumentWriter_setDevice(QTextDocumentWriter* self, QIODevice* device) {
	self->setDevice(device);
}

QIODevice* QTextDocumentWriter_device(const QTextDocumentWriter* self) {
	return self->device();
}

void QTextDocumentWriter_setFileName(QTextDocumentWriter* self, struct seaqt_string fileName) {
	QString fileName_QString = QString::fromUtf8(fileName.data, fileName.len);
	self->setFileName(fileName_QString);
}

struct seaqt_string QTextDocumentWriter_fileName(const QTextDocumentWriter* self) {
	QString _ret = self->fileName();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

bool QTextDocumentWriter_write_document(QTextDocumentWriter* self, QTextDocument* document) {
	return self->write(document);
}

bool QTextDocumentWriter_write_fragment(QTextDocumentWriter* self, QTextDocumentFragment* fragment) {
	return self->write(*fragment);
}

void QTextDocumentWriter_setCodec(QTextDocumentWriter* self, QTextCodec* codec) {
	self->setCodec(codec);
}

QTextCodec* QTextDocumentWriter_codec(const QTextDocumentWriter* self) {
	return self->codec();
}

struct seaqt_array /* of struct seaqt_string */  QTextDocumentWriter_supportedDocumentFormats() {
	QList<QByteArray> _ret = QTextDocumentWriter::supportedDocumentFormats();
	// Convert QList<> from C++ memory to manually-managed C memory
	struct seaqt_string* _arr = static_cast<struct seaqt_string*>(malloc(sizeof(struct seaqt_string) * _ret.length()));
	for (size_t i = 0, e = _ret.length(); i < e; ++i) {
		QByteArray _lv_qb = _ret[i];
		struct seaqt_string _lv_ms;
		_lv_ms.len = _lv_qb.length();
		_lv_ms.data = static_cast<char*>(malloc(_lv_ms.len));
		memcpy(_lv_ms.data, _lv_qb.data(), _lv_ms.len);
		_arr[i] = _lv_ms;
	}
	struct seaqt_array _out;
	_out.len = _ret.length();
	_out.data = static_cast<void*>(_arr);
	return _out;
}

void QTextDocumentWriter_delete(QTextDocumentWriter* self) {
	delete self;
}

