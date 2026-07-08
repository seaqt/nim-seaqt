#include <QByteArray>
#include <QChar>
#include <QDebug>
#include <QDebugStateSaver>
#include <QIODevice>
#include <QNoDebug>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <qdebug.h>
#include "gen_qdebug.h"

#ifndef SEAQT_ALIGNED_SIZEOF
#define SEAQT_ALIGNED_SIZEOF 1
#include <cstddef>
template<typename T>
static constexpr std::size_t seaqt_aligned_sizeof() {
	constexpr auto alignment = sizeof(std::max_align_t);
	return (sizeof(T) + alignment - 1) & ~(alignment - 1);
}
#endif

QDebug* QDebug_new_device(QIODevice* device) {
	return new (std::nothrow) QDebug(device);
}

QDebug* QDebug_new_from(QDebug* from) {
	return new (std::nothrow) QDebug(*from);
}

void QDebug_operatorAssign(QDebug* self, QDebug* from) {
	self->operator=(*from);
}

void QDebug_swap(QDebug* self, QDebug* other) {
	self->swap(*other);
}

QDebug* QDebug_resetFormat(QDebug* self) {
	QDebug& _ret = self->resetFormat();
	// Cast returned reference into pointer
	return &_ret;
}

QDebug* QDebug_space(QDebug* self) {
	QDebug& _ret = self->space();
	// Cast returned reference into pointer
	return &_ret;
}

QDebug* QDebug_nospace(QDebug* self) {
	QDebug& _ret = self->nospace();
	// Cast returned reference into pointer
	return &_ret;
}

QDebug* QDebug_maybeSpace(QDebug* self) {
	QDebug& _ret = self->maybeSpace();
	// Cast returned reference into pointer
	return &_ret;
}

QDebug* QDebug_verbosity_verbosityLevel(QDebug* self, int verbosityLevel) {
	QDebug& _ret = self->verbosity(static_cast<int>(verbosityLevel));
	// Cast returned reference into pointer
	return &_ret;
}

int QDebug_verbosity(const QDebug* self) {
	return self->verbosity();
}

void QDebug_setVerbosity(QDebug* self, int verbosityLevel) {
	self->setVerbosity(static_cast<int>(verbosityLevel));
}

bool QDebug_autoInsertSpaces(const QDebug* self) {
	return self->autoInsertSpaces();
}

void QDebug_setAutoInsertSpaces(QDebug* self, bool b) {
	self->setAutoInsertSpaces(b);
}

QDebug* QDebug_quote(QDebug* self) {
	QDebug& _ret = self->quote();
	// Cast returned reference into pointer
	return &_ret;
}

QDebug* QDebug_noquote(QDebug* self) {
	QDebug& _ret = self->noquote();
	// Cast returned reference into pointer
	return &_ret;
}

QDebug* QDebug_maybeQuote(QDebug* self) {
	QDebug& _ret = self->maybeQuote();
	// Cast returned reference into pointer
	return &_ret;
}

QDebug* QDebug_operatorShiftLeft_QChar(QDebug* self, QChar* t) {
	QDebug& _ret = self->operator<<(*t);
	// Cast returned reference into pointer
	return &_ret;
}

QDebug* QDebug_operatorShiftLeft_bool(QDebug* self, bool t) {
	QDebug& _ret = self->operator<<(t);
	// Cast returned reference into pointer
	return &_ret;
}

QDebug* QDebug_operatorShiftLeft_char(QDebug* self, char t) {
	QDebug& _ret = self->operator<<(static_cast<char>(t));
	// Cast returned reference into pointer
	return &_ret;
}

QDebug* QDebug_operatorShiftLeft_short(QDebug* self, short t) {
	QDebug& _ret = self->operator<<(static_cast<short>(t));
	// Cast returned reference into pointer
	return &_ret;
}

QDebug* QDebug_operatorShiftLeft_unsignedshort(QDebug* self, unsigned short t) {
	QDebug& _ret = self->operator<<(static_cast<unsigned short>(t));
	// Cast returned reference into pointer
	return &_ret;
}

QDebug* QDebug_operatorShiftLeft_int(QDebug* self, int t) {
	QDebug& _ret = self->operator<<(static_cast<int>(t));
	// Cast returned reference into pointer
	return &_ret;
}

QDebug* QDebug_operatorShiftLeft_unsignedint(QDebug* self, unsigned int t) {
	QDebug& _ret = self->operator<<(static_cast<unsigned int>(t));
	// Cast returned reference into pointer
	return &_ret;
}

QDebug* QDebug_operatorShiftLeft_long(QDebug* self, long t) {
	QDebug& _ret = self->operator<<(static_cast<long>(t));
	// Cast returned reference into pointer
	return &_ret;
}

QDebug* QDebug_operatorShiftLeft_unsignedlong(QDebug* self, unsigned long t) {
	QDebug& _ret = self->operator<<(static_cast<unsigned long>(t));
	// Cast returned reference into pointer
	return &_ret;
}

QDebug* QDebug_operatorShiftLeft_qint64(QDebug* self, long long t) {
	QDebug& _ret = self->operator<<(static_cast<qint64>(t));
	// Cast returned reference into pointer
	return &_ret;
}

QDebug* QDebug_operatorShiftLeft_quint64(QDebug* self, unsigned long long t) {
	QDebug& _ret = self->operator<<(static_cast<quint64>(t));
	// Cast returned reference into pointer
	return &_ret;
}

QDebug* QDebug_operatorShiftLeft_float(QDebug* self, float t) {
	QDebug& _ret = self->operator<<(static_cast<float>(t));
	// Cast returned reference into pointer
	return &_ret;
}

QDebug* QDebug_operatorShiftLeft_double(QDebug* self, double t) {
	QDebug& _ret = self->operator<<(static_cast<double>(t));
	// Cast returned reference into pointer
	return &_ret;
}

QDebug* QDebug_operatorShiftLeft_pcchar(QDebug* self, const char* t) {
	QDebug& _ret = self->operator<<(t);
	// Cast returned reference into pointer
	return &_ret;
}

QDebug* QDebug_operatorShiftLeft_cQString(QDebug* self, struct seaqt_string t) {
	QString t_QString = QString::fromUtf8(t.data, t.len);
	QDebug& _ret = self->operator<<(t_QString);
	// Cast returned reference into pointer
	return &_ret;
}

QDebug* QDebug_operatorShiftLeft_cQByteArray(QDebug* self, struct seaqt_string t) {
	QByteArray t_QByteArray(t.data, t.len);
	QDebug& _ret = self->operator<<(t_QByteArray);
	// Cast returned reference into pointer
	return &_ret;
}

QDebug* QDebug_operatorShiftLeft_pcvoid(QDebug* self, const void* t) {
	QDebug& _ret = self->operator<<(t);
	// Cast returned reference into pointer
	return &_ret;
}

QDebug* QDebug_maybeQuote_c(QDebug* self, char c) {
	QDebug& _ret = self->maybeQuote(static_cast<char>(c));
	// Cast returned reference into pointer
	return &_ret;
}

void QDebug_delete(QDebug* self) {
	delete self;
}

QDebugStateSaver* QDebugStateSaver_new(QDebug* dbg) {
	return new (std::nothrow) QDebugStateSaver(*dbg);
}

void QDebugStateSaver_delete(QDebugStateSaver* self) {
	delete self;
}

QNoDebug* QNoDebug_space(QNoDebug* self) {
	QNoDebug& _ret = self->space();
	// Cast returned reference into pointer
	return &_ret;
}

QNoDebug* QNoDebug_nospace(QNoDebug* self) {
	QNoDebug& _ret = self->nospace();
	// Cast returned reference into pointer
	return &_ret;
}

QNoDebug* QNoDebug_maybeSpace(QNoDebug* self) {
	QNoDebug& _ret = self->maybeSpace();
	// Cast returned reference into pointer
	return &_ret;
}

QNoDebug* QNoDebug_quote(QNoDebug* self) {
	QNoDebug& _ret = self->quote();
	// Cast returned reference into pointer
	return &_ret;
}

QNoDebug* QNoDebug_noquote(QNoDebug* self) {
	QNoDebug& _ret = self->noquote();
	// Cast returned reference into pointer
	return &_ret;
}

QNoDebug* QNoDebug_maybeQuote(QNoDebug* self) {
	QNoDebug& _ret = self->maybeQuote();
	// Cast returned reference into pointer
	return &_ret;
}

QNoDebug* QNoDebug_verbosity(QNoDebug* self, int param1) {
	QNoDebug& _ret = self->verbosity(static_cast<int>(param1));
	// Cast returned reference into pointer
	return &_ret;
}

QNoDebug* QNoDebug_maybeQuote_char(QNoDebug* self, const char param1) {
	QNoDebug& _ret = self->maybeQuote(static_cast<const char>(param1));
	// Cast returned reference into pointer
	return &_ret;
}

void QNoDebug_delete(QNoDebug* self) {
	delete self;
}

