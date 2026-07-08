#include <QList>
#include <QMap>
#include <QMetaMethod>
#include <QMetaObject>
#include <QObject>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QVariant>
#include <QWebEngineClientHints>
#include <qwebengineclienthints.h>
#include "gen_qwebengineclienthints.h"

#ifndef SEAQT_ALIGNED_SIZEOF
#define SEAQT_ALIGNED_SIZEOF 1
#include <cstddef>
template<typename T>
static constexpr std::size_t seaqt_aligned_sizeof() {
	constexpr auto alignment = sizeof(std::max_align_t);
	return (sizeof(T) + alignment - 1) & ~(alignment - 1);
}
#endif

void QWebEngineClientHints_virtbase(QWebEngineClientHints* src, QObject** outptr_QObject) {
	*outptr_QObject = static_cast<QObject*>(src);
}

QMetaObject* QWebEngineClientHints_metaObject(const QWebEngineClientHints* self) {
	return (QMetaObject*) self->metaObject();
}

void* QWebEngineClientHints_metacast(QWebEngineClientHints* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QWebEngineClientHints_metacall(QWebEngineClientHints* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct seaqt_string QWebEngineClientHints_tr_s(const char* s) {
	QString _ret = QWebEngineClientHints::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QWebEngineClientHints_arch(const QWebEngineClientHints* self) {
	QString _ret = self->arch();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QWebEngineClientHints_platform(const QWebEngineClientHints* self) {
	QString _ret = self->platform();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QWebEngineClientHints_model(const QWebEngineClientHints* self) {
	QString _ret = self->model();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

bool QWebEngineClientHints_isMobile(const QWebEngineClientHints* self) {
	return self->isMobile();
}

struct seaqt_string QWebEngineClientHints_fullVersion(const QWebEngineClientHints* self) {
	QString _ret = self->fullVersion();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QWebEngineClientHints_platformVersion(const QWebEngineClientHints* self) {
	QString _ret = self->platformVersion();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QWebEngineClientHints_bitness(const QWebEngineClientHints* self) {
	QString _ret = self->bitness();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_map /* of struct seaqt_string to QVariant* */  QWebEngineClientHints_fullVersionList(const QWebEngineClientHints* self) {
	QVariantMap _ret = self->fullVersionList();
	// Convert QMap<> from C++ memory to manually-managed C memory
	struct seaqt_string* _karr = static_cast<struct seaqt_string*>(malloc(sizeof(struct seaqt_string) * _ret.size()));
	QVariant** _varr = static_cast<QVariant**>(malloc(sizeof(QVariant*) * _ret.size()));
	int _ctr = 0;
	for (auto _itr = _ret.keyValueBegin(); _itr != _ret.keyValueEnd(); ++_itr) {
		QString _mapkey_ret = _itr->first;
		// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
		QByteArray _mapkey_b = _mapkey_ret.toUtf8();
		struct seaqt_string _mapkey_ms;
		_mapkey_ms.len = _mapkey_b.length();
		_mapkey_ms.data = static_cast<char*>(malloc(_mapkey_ms.len));
		memcpy(_mapkey_ms.data, _mapkey_b.data(), _mapkey_ms.len);
		_karr[_ctr] = _mapkey_ms;
		_varr[_ctr] = new QVariant(_itr->second);
		_ctr++;
	}
	struct seaqt_map _out;
	_out.len = _ret.size();
	_out.keys = static_cast<void*>(_karr);
	_out.values = static_cast<void*>(_varr);
	return _out;
}

bool QWebEngineClientHints_isWow64(const QWebEngineClientHints* self) {
	return self->isWow64();
}

struct seaqt_array /* of struct seaqt_string */  QWebEngineClientHints_formFactors(const QWebEngineClientHints* self) {
	QStringList _ret = self->formFactors();
	// Convert QList<> from C++ memory to manually-managed C memory
	struct seaqt_string* _arr = static_cast<struct seaqt_string*>(malloc(sizeof(struct seaqt_string) * _ret.length()));
	for (size_t i = 0, e = _ret.length(); i < e; ++i) {
		QString _lv_ret = _ret[i];
		// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
		QByteArray _lv_b = _lv_ret.toUtf8();
		struct seaqt_string _lv_ms;
		_lv_ms.len = _lv_b.length();
		_lv_ms.data = static_cast<char*>(malloc(_lv_ms.len));
		memcpy(_lv_ms.data, _lv_b.data(), _lv_ms.len);
		_arr[i] = _lv_ms;
	}
	struct seaqt_array _out;
	_out.len = _ret.length();
	_out.data = static_cast<void*>(_arr);
	return _out;
}

void QWebEngineClientHints_setArch(QWebEngineClientHints* self, struct seaqt_string arch) {
	QString arch_QString = QString::fromUtf8(arch.data, arch.len);
	self->setArch(arch_QString);
}

void QWebEngineClientHints_setPlatform(QWebEngineClientHints* self, struct seaqt_string platform) {
	QString platform_QString = QString::fromUtf8(platform.data, platform.len);
	self->setPlatform(platform_QString);
}

void QWebEngineClientHints_setModel(QWebEngineClientHints* self, struct seaqt_string model) {
	QString model_QString = QString::fromUtf8(model.data, model.len);
	self->setModel(model_QString);
}

void QWebEngineClientHints_setIsMobile(QWebEngineClientHints* self, bool isMobile) {
	self->setIsMobile(isMobile);
}

void QWebEngineClientHints_setFullVersion(QWebEngineClientHints* self, struct seaqt_string fullVersion) {
	QString fullVersion_QString = QString::fromUtf8(fullVersion.data, fullVersion.len);
	self->setFullVersion(fullVersion_QString);
}

void QWebEngineClientHints_setPlatformVersion(QWebEngineClientHints* self, struct seaqt_string platformVersion) {
	QString platformVersion_QString = QString::fromUtf8(platformVersion.data, platformVersion.len);
	self->setPlatformVersion(platformVersion_QString);
}

void QWebEngineClientHints_setBitness(QWebEngineClientHints* self, struct seaqt_string bitness) {
	QString bitness_QString = QString::fromUtf8(bitness.data, bitness.len);
	self->setBitness(bitness_QString);
}

void QWebEngineClientHints_setFullVersionList(QWebEngineClientHints* self, struct seaqt_map /* of struct seaqt_string to QVariant* */  fullVersionList) {
	QVariantMap fullVersionList_QMap;
	struct seaqt_string* fullVersionList_karr = static_cast<struct seaqt_string*>(fullVersionList.keys);
	QVariant** fullVersionList_varr = static_cast<QVariant**>(fullVersionList.values);
	for(size_t i = 0; i < fullVersionList.len; ++i) {
		QString fullVersionList_karr_i_QString = QString::fromUtf8(fullVersionList_karr[i].data, fullVersionList_karr[i].len);
		fullVersionList_QMap[fullVersionList_karr_i_QString] = *(fullVersionList_varr[i]);
	}
	self->setFullVersionList(fullVersionList_QMap);
}

void QWebEngineClientHints_setIsWow64(QWebEngineClientHints* self, bool isWow64) {
	self->setIsWow64(isWow64);
}

void QWebEngineClientHints_setFormFactors(QWebEngineClientHints* self, struct seaqt_array /* of struct seaqt_string */  formFactors) {
	QStringList formFactors_QList;
	formFactors_QList.reserve(formFactors.len);
	struct seaqt_string* formFactors_arr = static_cast<struct seaqt_string*>(formFactors.data);
	for(size_t i = 0; i < formFactors.len; ++i) {
		QString formFactors_arr_i_QString = QString::fromUtf8(formFactors_arr[i].data, formFactors_arr[i].len);
		formFactors_QList.push_back(formFactors_arr_i_QString);
	}
	self->setFormFactors(formFactors_QList);
}

bool QWebEngineClientHints_isAllClientHintsEnabled(QWebEngineClientHints* self) {
	return self->isAllClientHintsEnabled();
}

void QWebEngineClientHints_setAllClientHintsEnabled(QWebEngineClientHints* self, bool enabled) {
	self->setAllClientHintsEnabled(enabled);
}

void QWebEngineClientHints_resetAll(QWebEngineClientHints* self) {
	self->resetAll();
}

struct seaqt_string QWebEngineClientHints_tr_s_c(const char* s, const char* c) {
	QString _ret = QWebEngineClientHints::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QWebEngineClientHints_tr_s_c_n(const char* s, const char* c, int n) {
	QString _ret = QWebEngineClientHints::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

const QMetaObject* QWebEngineClientHints_staticMetaObject() { return &QWebEngineClientHints::staticMetaObject; }
void QWebEngineClientHints_delete(QWebEngineClientHints* self) {
	delete self;
}

