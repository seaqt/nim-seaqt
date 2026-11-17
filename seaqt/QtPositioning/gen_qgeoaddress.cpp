#include <QGeoAddress>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <qgeoaddress.h>
#include "gen_qgeoaddress.h"

#ifndef SEAQT_ALIGNED_SIZEOF
#define SEAQT_ALIGNED_SIZEOF 1
#include <cstddef>
template<typename T>
static constexpr std::size_t seaqt_aligned_sizeof() {
	constexpr auto alignment = sizeof(std::max_align_t);
	return (sizeof(T) + alignment - 1) & ~(alignment - 1);
}
#endif

QGeoAddress* QGeoAddress_new() {
	return new (std::nothrow) QGeoAddress();
}

QGeoAddress* QGeoAddress_new2(QGeoAddress* other) {
	return new (std::nothrow) QGeoAddress(*other);
}

void QGeoAddress_operatorAssign(QGeoAddress* self, QGeoAddress* other) {
	self->operator=(*other);
}

bool QGeoAddress_operatorEqual(const QGeoAddress* self, QGeoAddress* other) {
	return (*self == *other);
}

bool QGeoAddress_operatorNotEqual(const QGeoAddress* self, QGeoAddress* other) {
	return (*self != *other);
}

struct seaqt_string QGeoAddress_text(const QGeoAddress* self) {
	QString _ret = self->text();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QGeoAddress_setText(QGeoAddress* self, struct seaqt_string text) {
	QString text_QString = QString::fromUtf8(text.data, text.len);
	self->setText(text_QString);
}

struct seaqt_string QGeoAddress_country(const QGeoAddress* self) {
	QString _ret = self->country();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QGeoAddress_setCountry(QGeoAddress* self, struct seaqt_string country) {
	QString country_QString = QString::fromUtf8(country.data, country.len);
	self->setCountry(country_QString);
}

struct seaqt_string QGeoAddress_countryCode(const QGeoAddress* self) {
	QString _ret = self->countryCode();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QGeoAddress_setCountryCode(QGeoAddress* self, struct seaqt_string countryCode) {
	QString countryCode_QString = QString::fromUtf8(countryCode.data, countryCode.len);
	self->setCountryCode(countryCode_QString);
}

struct seaqt_string QGeoAddress_state(const QGeoAddress* self) {
	QString _ret = self->state();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QGeoAddress_setState(QGeoAddress* self, struct seaqt_string state) {
	QString state_QString = QString::fromUtf8(state.data, state.len);
	self->setState(state_QString);
}

struct seaqt_string QGeoAddress_county(const QGeoAddress* self) {
	QString _ret = self->county();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QGeoAddress_setCounty(QGeoAddress* self, struct seaqt_string county) {
	QString county_QString = QString::fromUtf8(county.data, county.len);
	self->setCounty(county_QString);
}

struct seaqt_string QGeoAddress_city(const QGeoAddress* self) {
	QString _ret = self->city();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QGeoAddress_setCity(QGeoAddress* self, struct seaqt_string city) {
	QString city_QString = QString::fromUtf8(city.data, city.len);
	self->setCity(city_QString);
}

struct seaqt_string QGeoAddress_district(const QGeoAddress* self) {
	QString _ret = self->district();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QGeoAddress_setDistrict(QGeoAddress* self, struct seaqt_string district) {
	QString district_QString = QString::fromUtf8(district.data, district.len);
	self->setDistrict(district_QString);
}

struct seaqt_string QGeoAddress_postalCode(const QGeoAddress* self) {
	QString _ret = self->postalCode();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QGeoAddress_setPostalCode(QGeoAddress* self, struct seaqt_string postalCode) {
	QString postalCode_QString = QString::fromUtf8(postalCode.data, postalCode.len);
	self->setPostalCode(postalCode_QString);
}

struct seaqt_string QGeoAddress_street(const QGeoAddress* self) {
	QString _ret = self->street();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QGeoAddress_setStreet(QGeoAddress* self, struct seaqt_string street) {
	QString street_QString = QString::fromUtf8(street.data, street.len);
	self->setStreet(street_QString);
}

bool QGeoAddress_isEmpty(const QGeoAddress* self) {
	return self->isEmpty();
}

void QGeoAddress_clear(QGeoAddress* self) {
	self->clear();
}

bool QGeoAddress_isTextGenerated(const QGeoAddress* self) {
	return self->isTextGenerated();
}

void QGeoAddress_delete(QGeoAddress* self) {
	delete self;
}

