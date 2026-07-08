#include <QOperatingSystemVersion>
#include <QOperatingSystemVersionBase>
#include <QOperatingSystemVersionUnexported>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QVersionNumber>
#include <qoperatingsystemversion.h>
#include "gen_qoperatingsystemversion.h"

#ifndef SEAQT_ALIGNED_SIZEOF
#define SEAQT_ALIGNED_SIZEOF 1
#include <cstddef>
template<typename T>
static constexpr std::size_t seaqt_aligned_sizeof() {
	constexpr auto alignment = sizeof(std::max_align_t);
	return (sizeof(T) + alignment - 1) & ~(alignment - 1);
}
#endif

QOperatingSystemVersionBase* QOperatingSystemVersionBase_new_osType_vmajor(int osType, int vmajor) {
	return new (std::nothrow) QOperatingSystemVersionBase(static_cast<QOperatingSystemVersionBase::OSType>(osType), static_cast<int>(vmajor));
}

QOperatingSystemVersionBase* QOperatingSystemVersionBase_new_from(QOperatingSystemVersionBase* from) {
	return new (std::nothrow) QOperatingSystemVersionBase(*from);
}

QOperatingSystemVersionBase* QOperatingSystemVersionBase_new_osType_vmajor_vminor(int osType, int vmajor, int vminor) {
	return new (std::nothrow) QOperatingSystemVersionBase(static_cast<QOperatingSystemVersionBase::OSType>(osType), static_cast<int>(vmajor), static_cast<int>(vminor));
}

QOperatingSystemVersionBase* QOperatingSystemVersionBase_new_osType_vmajor_vminor_vmicro(int osType, int vmajor, int vminor, int vmicro) {
	return new (std::nothrow) QOperatingSystemVersionBase(static_cast<QOperatingSystemVersionBase::OSType>(osType), static_cast<int>(vmajor), static_cast<int>(vminor), static_cast<int>(vmicro));
}

QOperatingSystemVersionBase* QOperatingSystemVersionBase_current() {
	return new QOperatingSystemVersionBase(QOperatingSystemVersionBase::current());
}

struct seaqt_string QOperatingSystemVersionBase_name_osversion(QOperatingSystemVersionBase* osversion) {
	QString _ret = QOperatingSystemVersionBase::name(*osversion);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

int QOperatingSystemVersionBase_currentType() {
	QOperatingSystemVersionBase::OSType _ret = QOperatingSystemVersionBase::currentType();
	return static_cast<int>(_ret);
}

QVersionNumber* QOperatingSystemVersionBase_version(const QOperatingSystemVersionBase* self) {
	return new QVersionNumber(self->version());
}

int QOperatingSystemVersionBase_majorVersion(const QOperatingSystemVersionBase* self) {
	return self->majorVersion();
}

int QOperatingSystemVersionBase_minorVersion(const QOperatingSystemVersionBase* self) {
	return self->minorVersion();
}

int QOperatingSystemVersionBase_microVersion(const QOperatingSystemVersionBase* self) {
	return self->microVersion();
}

int QOperatingSystemVersionBase_segmentCount(const QOperatingSystemVersionBase* self) {
	return self->segmentCount();
}

int QOperatingSystemVersionBase_type(const QOperatingSystemVersionBase* self) {
	QOperatingSystemVersionBase::OSType _ret = self->type();
	return static_cast<int>(_ret);
}

struct seaqt_string QOperatingSystemVersionBase_name(const QOperatingSystemVersionBase* self) {
	QString _ret = self->name();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QOperatingSystemVersionBase_delete(QOperatingSystemVersionBase* self) {
	delete self;
}

QOperatingSystemVersionUnexported* QOperatingSystemVersionUnexported_new_QOperatingSystemVersionBase(QOperatingSystemVersionBase* other) {
	return new (std::nothrow) QOperatingSystemVersionUnexported(*other);
}

QOperatingSystemVersionUnexported* QOperatingSystemVersionUnexported_new() {
	return new (std::nothrow) QOperatingSystemVersionUnexported();
}

QOperatingSystemVersionUnexported* QOperatingSystemVersionUnexported_new_QOperatingSystemVersionUnexported(QOperatingSystemVersionUnexported* from) {
	return new (std::nothrow) QOperatingSystemVersionUnexported(*from);
}

QOperatingSystemVersionUnexported* QOperatingSystemVersionUnexported_new_QOperatingSystemVersionBase_OSType_int_int_int(int param1, int param2, int param3, int param4) {
	return new (std::nothrow) QOperatingSystemVersionUnexported(static_cast<QOperatingSystemVersionBase::OSType>(param1), static_cast<int>(param2), static_cast<int>(param3), static_cast<int>(param4));
}

void QOperatingSystemVersionUnexported_virtbase(QOperatingSystemVersionUnexported* src, QOperatingSystemVersionBase** outptr_QOperatingSystemVersionBase) {
	*outptr_QOperatingSystemVersionBase = static_cast<QOperatingSystemVersionBase*>(src);
}

void QOperatingSystemVersionUnexported_delete(QOperatingSystemVersionUnexported* self) {
	delete self;
}

QOperatingSystemVersion* QOperatingSystemVersion_new_osversion(QOperatingSystemVersionBase* osversion) {
	return new (std::nothrow) QOperatingSystemVersion(*osversion);
}

QOperatingSystemVersion* QOperatingSystemVersion_new_osType_vmajor(int osType, int vmajor) {
	return new (std::nothrow) QOperatingSystemVersion(static_cast<QOperatingSystemVersion::OSType>(osType), static_cast<int>(vmajor));
}

QOperatingSystemVersion* QOperatingSystemVersion_new_from(QOperatingSystemVersion* from) {
	return new (std::nothrow) QOperatingSystemVersion(*from);
}

QOperatingSystemVersion* QOperatingSystemVersion_new_osType_vmajor_vminor(int osType, int vmajor, int vminor) {
	return new (std::nothrow) QOperatingSystemVersion(static_cast<QOperatingSystemVersion::OSType>(osType), static_cast<int>(vmajor), static_cast<int>(vminor));
}

QOperatingSystemVersion* QOperatingSystemVersion_new_osType_vmajor_vminor_vmicro(int osType, int vmajor, int vminor, int vmicro) {
	return new (std::nothrow) QOperatingSystemVersion(static_cast<QOperatingSystemVersion::OSType>(osType), static_cast<int>(vmajor), static_cast<int>(vminor), static_cast<int>(vmicro));
}

void QOperatingSystemVersion_virtbase(QOperatingSystemVersion* src, QOperatingSystemVersionUnexported** outptr_QOperatingSystemVersionUnexported) {
	*outptr_QOperatingSystemVersionUnexported = static_cast<QOperatingSystemVersionUnexported*>(src);
}

QOperatingSystemVersion* QOperatingSystemVersion_current() {
	return new QOperatingSystemVersion(QOperatingSystemVersion::current());
}

int QOperatingSystemVersion_currentType() {
	QOperatingSystemVersion::OSType _ret = QOperatingSystemVersion::currentType();
	return static_cast<int>(_ret);
}

int QOperatingSystemVersion_type(const QOperatingSystemVersion* self) {
	QOperatingSystemVersion::OSType _ret = self->type();
	return static_cast<int>(_ret);
}

void QOperatingSystemVersion_delete(QOperatingSystemVersion* self) {
	delete self;
}

