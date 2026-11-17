#include <QChar>
#include <QLatin1Char>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <qchar.h>
#include "gen_qchar.h"

#ifndef SEAQT_ALIGNED_SIZEOF
#define SEAQT_ALIGNED_SIZEOF 1
#include <cstddef>
template<typename T>
static constexpr std::size_t seaqt_aligned_sizeof() {
	constexpr auto alignment = sizeof(std::max_align_t);
	return (sizeof(T) + alignment - 1) & ~(alignment - 1);
}
#endif

QLatin1Char* QLatin1Char_new_c(char c) {
	return new (std::nothrow) QLatin1Char(static_cast<char>(c));
}

QLatin1Char* QLatin1Char_new_from(QLatin1Char* from) {
	return new (std::nothrow) QLatin1Char(*from);
}

char QLatin1Char_toLatin1(const QLatin1Char* self) {
	return self->toLatin1();
}

unsigned short QLatin1Char_unicode(const QLatin1Char* self) {
	ushort _ret = self->unicode();
	return static_cast<unsigned short>(_ret);
}

void QLatin1Char_delete(QLatin1Char* self) {
	delete self;
}

QChar* QChar_new() {
	return new (std::nothrow) QChar();
}

QChar* QChar_new_ushort(unsigned short rc) {
	return new (std::nothrow) QChar(static_cast<ushort>(rc));
}

QChar* QChar_new_uchar_uchar(unsigned char c, unsigned char r) {
	return new (std::nothrow) QChar(static_cast<uchar>(c), static_cast<uchar>(r));
}

QChar* QChar_new_short(short rc) {
	return new (std::nothrow) QChar(static_cast<short>(rc));
}

QChar* QChar_new_uint(unsigned int rc) {
	return new (std::nothrow) QChar(static_cast<uint>(rc));
}

QChar* QChar_new_int(int rc) {
	return new (std::nothrow) QChar(static_cast<int>(rc));
}

QChar* QChar_new_QChar_SpecialCharacter(int s) {
	return new (std::nothrow) QChar(static_cast<QChar::SpecialCharacter>(s));
}

QChar* QChar_new_QLatin1Char(QLatin1Char* ch) {
	return new (std::nothrow) QChar(*ch);
}

QChar* QChar_new_char(char c) {
	return new (std::nothrow) QChar(static_cast<char>(c));
}

QChar* QChar_new_uchar(unsigned char c) {
	return new (std::nothrow) QChar(static_cast<uchar>(c));
}

QChar* QChar_new_QChar(QChar* from) {
	return new (std::nothrow) QChar(*from);
}

int QChar_category(const QChar* self) {
	QChar::Category _ret = self->category();
	return static_cast<int>(_ret);
}

int QChar_direction(const QChar* self) {
	QChar::Direction _ret = self->direction();
	return static_cast<int>(_ret);
}

int QChar_joiningType(const QChar* self) {
	QChar::JoiningType _ret = self->joiningType();
	return static_cast<int>(_ret);
}

int QChar_joining(const QChar* self) {
	QChar::Joining _ret = self->joining();
	return static_cast<int>(_ret);
}

unsigned char QChar_combiningClass(const QChar* self) {
	return self->combiningClass();
}

QChar* QChar_mirroredChar(const QChar* self) {
	return new QChar(self->mirroredChar());
}

bool QChar_hasMirrored(const QChar* self) {
	return self->hasMirrored();
}

struct seaqt_string QChar_decomposition(const QChar* self) {
	QString _ret = self->decomposition();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

int QChar_decompositionTag(const QChar* self) {
	QChar::Decomposition _ret = self->decompositionTag();
	return static_cast<int>(_ret);
}

int QChar_digitValue(const QChar* self) {
	return self->digitValue();
}

QChar* QChar_toLower(const QChar* self) {
	return new QChar(self->toLower());
}

QChar* QChar_toUpper(const QChar* self) {
	return new QChar(self->toUpper());
}

QChar* QChar_toTitleCase(const QChar* self) {
	return new QChar(self->toTitleCase());
}

QChar* QChar_toCaseFolded(const QChar* self) {
	return new QChar(self->toCaseFolded());
}

int QChar_script(const QChar* self) {
	QChar::Script _ret = self->script();
	return static_cast<int>(_ret);
}

int QChar_unicodeVersion(const QChar* self) {
	QChar::UnicodeVersion _ret = self->unicodeVersion();
	return static_cast<int>(_ret);
}

char QChar_toLatin1(const QChar* self) {
	return self->toLatin1();
}

unsigned short QChar_unicode(const QChar* self) {
	ushort _ret = self->unicode();
	return static_cast<unsigned short>(_ret);
}

QChar* QChar_fromLatin1(char c) {
	return new QChar(QChar::fromLatin1(static_cast<char>(c)));
}

bool QChar_isNull(const QChar* self) {
	return self->isNull();
}

bool QChar_isPrint(const QChar* self) {
	return self->isPrint();
}

bool QChar_isSpace(const QChar* self) {
	return self->isSpace();
}

bool QChar_isMark(const QChar* self) {
	return self->isMark();
}

bool QChar_isPunct(const QChar* self) {
	return self->isPunct();
}

bool QChar_isSymbol(const QChar* self) {
	return self->isSymbol();
}

bool QChar_isLetter(const QChar* self) {
	return self->isLetter();
}

bool QChar_isNumber(const QChar* self) {
	return self->isNumber();
}

bool QChar_isLetterOrNumber(const QChar* self) {
	return self->isLetterOrNumber();
}

bool QChar_isDigit(const QChar* self) {
	return self->isDigit();
}

bool QChar_isLower(const QChar* self) {
	return self->isLower();
}

bool QChar_isUpper(const QChar* self) {
	return self->isUpper();
}

bool QChar_isTitleCase(const QChar* self) {
	return self->isTitleCase();
}

bool QChar_isNonCharacter(const QChar* self) {
	return self->isNonCharacter();
}

bool QChar_isHighSurrogate(const QChar* self) {
	return self->isHighSurrogate();
}

bool QChar_isLowSurrogate(const QChar* self) {
	return self->isLowSurrogate();
}

bool QChar_isSurrogate(const QChar* self) {
	return self->isSurrogate();
}

unsigned char QChar_cell(const QChar* self) {
	uchar _ret = self->cell();
	return static_cast<unsigned char>(_ret);
}

unsigned char QChar_row(const QChar* self) {
	uchar _ret = self->row();
	return static_cast<unsigned char>(_ret);
}

void QChar_setCell(QChar* self, unsigned char acell) {
	self->setCell(static_cast<uchar>(acell));
}

void QChar_setRow(QChar* self, unsigned char arow) {
	self->setRow(static_cast<uchar>(arow));
}

bool QChar_isNonCharacter_ucs4(unsigned int ucs4) {
	return QChar::isNonCharacter(static_cast<uint>(ucs4));
}

bool QChar_isHighSurrogate_ucs4(unsigned int ucs4) {
	return QChar::isHighSurrogate(static_cast<uint>(ucs4));
}

bool QChar_isLowSurrogate_ucs4(unsigned int ucs4) {
	return QChar::isLowSurrogate(static_cast<uint>(ucs4));
}

bool QChar_isSurrogate_ucs4(unsigned int ucs4) {
	return QChar::isSurrogate(static_cast<uint>(ucs4));
}

bool QChar_requiresSurrogates(unsigned int ucs4) {
	return QChar::requiresSurrogates(static_cast<uint>(ucs4));
}

unsigned int QChar_surrogateToUcs4_ushort_ushort(unsigned short high, unsigned short low) {
	uint _ret = QChar::surrogateToUcs4(static_cast<ushort>(high), static_cast<ushort>(low));
	return static_cast<unsigned int>(_ret);
}

unsigned int QChar_surrogateToUcs4_QChar_QChar(QChar* high, QChar* low) {
	uint _ret = QChar::surrogateToUcs4(*high, *low);
	return static_cast<unsigned int>(_ret);
}

unsigned short QChar_highSurrogate(unsigned int ucs4) {
	ushort _ret = QChar::highSurrogate(static_cast<uint>(ucs4));
	return static_cast<unsigned short>(_ret);
}

unsigned short QChar_lowSurrogate(unsigned int ucs4) {
	ushort _ret = QChar::lowSurrogate(static_cast<uint>(ucs4));
	return static_cast<unsigned short>(_ret);
}

int QChar_category_ucs4(unsigned int ucs4) {
	QChar::Category _ret = QChar::category(static_cast<uint>(ucs4));
	return static_cast<int>(_ret);
}

int QChar_direction_ucs4(unsigned int ucs4) {
	QChar::Direction _ret = QChar::direction(static_cast<uint>(ucs4));
	return static_cast<int>(_ret);
}

int QChar_joiningType_ucs4(unsigned int ucs4) {
	QChar::JoiningType _ret = QChar::joiningType(static_cast<uint>(ucs4));
	return static_cast<int>(_ret);
}

int QChar_joining_ucs4(unsigned int ucs4) {
	QChar::Joining _ret = QChar::joining(static_cast<uint>(ucs4));
	return static_cast<int>(_ret);
}

unsigned char QChar_combiningClass_ucs4(unsigned int ucs4) {
	return QChar::combiningClass(static_cast<uint>(ucs4));
}

unsigned int QChar_mirroredChar_ucs4(unsigned int ucs4) {
	uint _ret = QChar::mirroredChar(static_cast<uint>(ucs4));
	return static_cast<unsigned int>(_ret);
}

bool QChar_hasMirrored_ucs4(unsigned int ucs4) {
	return QChar::hasMirrored(static_cast<uint>(ucs4));
}

struct seaqt_string QChar_decomposition_ucs4(unsigned int ucs4) {
	QString _ret = QChar::decomposition(static_cast<uint>(ucs4));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

int QChar_decompositionTag_ucs4(unsigned int ucs4) {
	QChar::Decomposition _ret = QChar::decompositionTag(static_cast<uint>(ucs4));
	return static_cast<int>(_ret);
}

int QChar_digitValue_ucs4(unsigned int ucs4) {
	return QChar::digitValue(static_cast<uint>(ucs4));
}

unsigned int QChar_toLower_ucs4(unsigned int ucs4) {
	uint _ret = QChar::toLower(static_cast<uint>(ucs4));
	return static_cast<unsigned int>(_ret);
}

unsigned int QChar_toUpper_ucs4(unsigned int ucs4) {
	uint _ret = QChar::toUpper(static_cast<uint>(ucs4));
	return static_cast<unsigned int>(_ret);
}

unsigned int QChar_toTitleCase_ucs4(unsigned int ucs4) {
	uint _ret = QChar::toTitleCase(static_cast<uint>(ucs4));
	return static_cast<unsigned int>(_ret);
}

unsigned int QChar_toCaseFolded_ucs4(unsigned int ucs4) {
	uint _ret = QChar::toCaseFolded(static_cast<uint>(ucs4));
	return static_cast<unsigned int>(_ret);
}

int QChar_script_ucs4(unsigned int ucs4) {
	QChar::Script _ret = QChar::script(static_cast<uint>(ucs4));
	return static_cast<int>(_ret);
}

int QChar_unicodeVersion_ucs4(unsigned int ucs4) {
	QChar::UnicodeVersion _ret = QChar::unicodeVersion(static_cast<uint>(ucs4));
	return static_cast<int>(_ret);
}

int QChar_currentUnicodeVersion() {
	QChar::UnicodeVersion _ret = QChar::currentUnicodeVersion();
	return static_cast<int>(_ret);
}

bool QChar_isPrint_ucs4(unsigned int ucs4) {
	return QChar::isPrint(static_cast<uint>(ucs4));
}

bool QChar_isSpace_ucs4(unsigned int ucs4) {
	return QChar::isSpace(static_cast<uint>(ucs4));
}

bool QChar_isMark_ucs4(unsigned int ucs4) {
	return QChar::isMark(static_cast<uint>(ucs4));
}

bool QChar_isPunct_ucs4(unsigned int ucs4) {
	return QChar::isPunct(static_cast<uint>(ucs4));
}

bool QChar_isSymbol_ucs4(unsigned int ucs4) {
	return QChar::isSymbol(static_cast<uint>(ucs4));
}

bool QChar_isLetter_ucs4(unsigned int ucs4) {
	return QChar::isLetter(static_cast<uint>(ucs4));
}

bool QChar_isNumber_ucs4(unsigned int ucs4) {
	return QChar::isNumber(static_cast<uint>(ucs4));
}

bool QChar_isLetterOrNumber_ucs4(unsigned int ucs4) {
	return QChar::isLetterOrNumber(static_cast<uint>(ucs4));
}

bool QChar_isDigit_ucs4(unsigned int ucs4) {
	return QChar::isDigit(static_cast<uint>(ucs4));
}

bool QChar_isLower_ucs4(unsigned int ucs4) {
	return QChar::isLower(static_cast<uint>(ucs4));
}

bool QChar_isUpper_ucs4(unsigned int ucs4) {
	return QChar::isUpper(static_cast<uint>(ucs4));
}

bool QChar_isTitleCase_ucs4(unsigned int ucs4) {
	return QChar::isTitleCase(static_cast<uint>(ucs4));
}

void QChar_delete(QChar* self) {
	delete self;
}

