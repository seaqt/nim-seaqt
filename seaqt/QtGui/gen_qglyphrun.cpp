#include <QGlyphRun>
#include <QList>
#include <QPointF>
#include <QRawFont>
#include <QRectF>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <qglyphrun.h>
#include "gen_qglyphrun.h"

#ifndef SEAQT_ALIGNED_SIZEOF
#define SEAQT_ALIGNED_SIZEOF 1
#include <cstddef>
template<typename T>
static constexpr std::size_t seaqt_aligned_sizeof() {
	constexpr auto alignment = sizeof(std::max_align_t);
	return (sizeof(T) + alignment - 1) & ~(alignment - 1);
}
#endif

QGlyphRun* QGlyphRun_new() {
	return new (std::nothrow) QGlyphRun();
}

QGlyphRun* QGlyphRun_new_from(QGlyphRun* from) {
	return new (std::nothrow) QGlyphRun(*from);
}

void QGlyphRun_operatorAssign(QGlyphRun* self, QGlyphRun* from) {
	self->operator=(*from);
}

void QGlyphRun_swap(QGlyphRun* self, QGlyphRun* other) {
	self->swap(*other);
}

QRawFont* QGlyphRun_rawFont(const QGlyphRun* self) {
	return new QRawFont(self->rawFont());
}

void QGlyphRun_setRawFont(QGlyphRun* self, QRawFont* rawFont) {
	self->setRawFont(*rawFont);
}

void QGlyphRun_setRawData(QGlyphRun* self, const unsigned int* glyphIndexArray, QPointF* glyphPositionArray, int size) {
	self->setRawData(static_cast<const quint32*>(glyphIndexArray), glyphPositionArray, static_cast<int>(size));
}

struct seaqt_array /* of unsigned int */  QGlyphRun_glyphIndexes(const QGlyphRun* self) {
	QList<quint32> _ret = self->glyphIndexes();
	// Convert QList<> from C++ memory to manually-managed C memory
	unsigned int* _arr = static_cast<unsigned int*>(malloc(sizeof(unsigned int) * _ret.length()));
	for (size_t i = 0, e = _ret.length(); i < e; ++i) {
		_arr[i] = _ret[i];
	}
	struct seaqt_array _out;
	_out.len = _ret.length();
	_out.data = static_cast<void*>(_arr);
	return _out;
}

void QGlyphRun_setGlyphIndexes(QGlyphRun* self, struct seaqt_array /* of unsigned int */  glyphIndexes) {
	QList<quint32> glyphIndexes_QList;
	glyphIndexes_QList.reserve(glyphIndexes.len);
	unsigned int* glyphIndexes_arr = static_cast<unsigned int*>(glyphIndexes.data);
	for(size_t i = 0; i < glyphIndexes.len; ++i) {
		glyphIndexes_QList.push_back(static_cast<unsigned int>(glyphIndexes_arr[i]));
	}
	self->setGlyphIndexes(glyphIndexes_QList);
}

struct seaqt_array /* of QPointF* */  QGlyphRun_positions(const QGlyphRun* self) {
	QList<QPointF> _ret = self->positions();
	// Convert QList<> from C++ memory to manually-managed C memory
	QPointF** _arr = static_cast<QPointF**>(malloc(sizeof(QPointF*) * _ret.length()));
	for (size_t i = 0, e = _ret.length(); i < e; ++i) {
		_arr[i] = new QPointF(_ret[i]);
	}
	struct seaqt_array _out;
	_out.len = _ret.length();
	_out.data = static_cast<void*>(_arr);
	return _out;
}

void QGlyphRun_setPositions(QGlyphRun* self, struct seaqt_array /* of QPointF* */  positions) {
	QList<QPointF> positions_QList;
	positions_QList.reserve(positions.len);
	QPointF** positions_arr = static_cast<QPointF**>(positions.data);
	for(size_t i = 0; i < positions.len; ++i) {
		positions_QList.push_back(*(positions_arr[i]));
	}
	self->setPositions(positions_QList);
}

void QGlyphRun_clear(QGlyphRun* self) {
	self->clear();
}

bool QGlyphRun_operatorEqual(const QGlyphRun* self, QGlyphRun* other) {
	return (*self == *other);
}

bool QGlyphRun_operatorNotEqual(const QGlyphRun* self, QGlyphRun* other) {
	return (*self != *other);
}

void QGlyphRun_setOverline(QGlyphRun* self, bool overline) {
	self->setOverline(overline);
}

bool QGlyphRun_overline(const QGlyphRun* self) {
	return self->overline();
}

void QGlyphRun_setUnderline(QGlyphRun* self, bool underline) {
	self->setUnderline(underline);
}

bool QGlyphRun_underline(const QGlyphRun* self) {
	return self->underline();
}

void QGlyphRun_setStrikeOut(QGlyphRun* self, bool strikeOut) {
	self->setStrikeOut(strikeOut);
}

bool QGlyphRun_strikeOut(const QGlyphRun* self) {
	return self->strikeOut();
}

void QGlyphRun_setRightToLeft(QGlyphRun* self, bool on) {
	self->setRightToLeft(on);
}

bool QGlyphRun_isRightToLeft(const QGlyphRun* self) {
	return self->isRightToLeft();
}

void QGlyphRun_setFlag_flag(QGlyphRun* self, int flag) {
	self->setFlag(static_cast<QGlyphRun::GlyphRunFlag>(flag));
}

void QGlyphRun_setFlags(QGlyphRun* self, int flags) {
	self->setFlags(static_cast<QGlyphRun::GlyphRunFlags>(flags));
}

int QGlyphRun_flags(const QGlyphRun* self) {
	QGlyphRun::GlyphRunFlags _ret = self->flags();
	return static_cast<int>(_ret);
}

void QGlyphRun_setBoundingRect(QGlyphRun* self, QRectF* boundingRect) {
	self->setBoundingRect(*boundingRect);
}

QRectF* QGlyphRun_boundingRect(const QGlyphRun* self) {
	return new QRectF(self->boundingRect());
}

struct seaqt_array /* of ptrdiff_t */  QGlyphRun_stringIndexes(const QGlyphRun* self) {
	QList<qsizetype> _ret = self->stringIndexes();
	// Convert QList<> from C++ memory to manually-managed C memory
	ptrdiff_t* _arr = static_cast<ptrdiff_t*>(malloc(sizeof(ptrdiff_t) * _ret.length()));
	for (size_t i = 0, e = _ret.length(); i < e; ++i) {
		_arr[i] = _ret[i];
	}
	struct seaqt_array _out;
	_out.len = _ret.length();
	_out.data = static_cast<void*>(_arr);
	return _out;
}

void QGlyphRun_setStringIndexes(QGlyphRun* self, struct seaqt_array /* of ptrdiff_t */  stringIndexes) {
	QList<qsizetype> stringIndexes_QList;
	stringIndexes_QList.reserve(stringIndexes.len);
	ptrdiff_t* stringIndexes_arr = static_cast<ptrdiff_t*>(stringIndexes.data);
	for(size_t i = 0; i < stringIndexes.len; ++i) {
		stringIndexes_QList.push_back(static_cast<QIntegerForSizeof<std::size_t>::Signed>(stringIndexes_arr[i]));
	}
	self->setStringIndexes(stringIndexes_QList);
}

void QGlyphRun_setSourceString(QGlyphRun* self, struct seaqt_string sourceString) {
	QString sourceString_QString = QString::fromUtf8(sourceString.data, sourceString.len);
	self->setSourceString(sourceString_QString);
}

struct seaqt_string QGlyphRun_sourceString(const QGlyphRun* self) {
	QString _ret = self->sourceString();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

bool QGlyphRun_isEmpty(const QGlyphRun* self) {
	return self->isEmpty();
}

void QGlyphRun_setFlag_flag_enabled(QGlyphRun* self, int flag, bool enabled) {
	self->setFlag(static_cast<QGlyphRun::GlyphRunFlag>(flag), enabled);
}

void QGlyphRun_delete(QGlyphRun* self) {
	delete self;
}

