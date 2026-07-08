#include <QByteArray>
#include <QChildEvent>
#include <QEvent>
#include <QList>
#include <QMetaMethod>
#include <QMetaObject>
#include <QObject>
#include <QQuickWebEngineProfile>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QTimerEvent>
#include <QUrl>
#include <QWebEngineClientCertificateStore>
#include <QWebEngineClientHints>
#include <QWebEngineCookieStore>
#include <QWebEngineNotification>
#include <QWebEnginePermission>
#include <QWebEngineUrlRequestInterceptor>
#include <QWebEngineUrlSchemeHandler>
#include <qquickwebengineprofile.h>
#include "gen_qquickwebengineprofile.h"

#ifndef SEAQT_ALIGNED_SIZEOF
#define SEAQT_ALIGNED_SIZEOF 1
#include <cstddef>
template<typename T>
static constexpr std::size_t seaqt_aligned_sizeof() {
	constexpr auto alignment = sizeof(std::max_align_t);
	return (sizeof(T) + alignment - 1) & ~(alignment - 1);
}
#endif

class VirtualQQuickWebEngineProfile final : public QQuickWebEngineProfile {
	const QQuickWebEngineProfile_VTable* vtbl;
public:
	friend void* QQuickWebEngineProfile_vdata(VirtualQQuickWebEngineProfile* self);
	friend VirtualQQuickWebEngineProfile* vdata_QQuickWebEngineProfile(void* vdata);

	VirtualQQuickWebEngineProfile(const QQuickWebEngineProfile_VTable* vtbl): QQuickWebEngineProfile(), vtbl(vtbl) {}
	VirtualQQuickWebEngineProfile(const QQuickWebEngineProfile_VTable* vtbl, QObject* parent): QQuickWebEngineProfile(parent), vtbl(vtbl) {}

	virtual ~VirtualQQuickWebEngineProfile() override { if(vtbl->destructor) vtbl->destructor(this); }

	void operator delete(void* p) { ::operator delete(p); }
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QQuickWebEngineProfile::metaObject();
		}

		QMetaObject* callback_return_value = vtbl->metaObject(this);
		return callback_return_value;
	}

	friend QMetaObject* QQuickWebEngineProfile_virtualbase_metaObject(const VirtualQQuickWebEngineProfile* self);

	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QQuickWebEngineProfile::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;
		void* callback_return_value = vtbl->metacast(this, sigval1);
		return callback_return_value;
	}

	friend void* QQuickWebEngineProfile_virtualbase_metacast(VirtualQQuickWebEngineProfile* self, const char* param1);

	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QQuickWebEngineProfile::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;
		int callback_return_value = vtbl->metacall(this, sigval1, sigval2, sigval3);
		return static_cast<int>(callback_return_value);
	}

	friend int QQuickWebEngineProfile_virtualbase_metacall(VirtualQQuickWebEngineProfile* self, int param1, int param2, void** param3);

	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QQuickWebEngineProfile::event(event);
		}

		QEvent* sigval1 = event;
		bool callback_return_value = vtbl->event(this, sigval1);
		return callback_return_value;
	}

	friend bool QQuickWebEngineProfile_virtualbase_event(VirtualQQuickWebEngineProfile* self, QEvent* event);

	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QQuickWebEngineProfile::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;
		bool callback_return_value = vtbl->eventFilter(this, sigval1, sigval2);
		return callback_return_value;
	}

	friend bool QQuickWebEngineProfile_virtualbase_eventFilter(VirtualQQuickWebEngineProfile* self, QObject* watched, QEvent* event);

	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QQuickWebEngineProfile::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;
		vtbl->timerEvent(this, sigval1);
	}

	friend void QQuickWebEngineProfile_virtualbase_timerEvent(VirtualQQuickWebEngineProfile* self, QTimerEvent* event);

	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QQuickWebEngineProfile::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;
		vtbl->childEvent(this, sigval1);
	}

	friend void QQuickWebEngineProfile_virtualbase_childEvent(VirtualQQuickWebEngineProfile* self, QChildEvent* event);

	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QQuickWebEngineProfile::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;
		vtbl->customEvent(this, sigval1);
	}

	friend void QQuickWebEngineProfile_virtualbase_customEvent(VirtualQQuickWebEngineProfile* self, QEvent* event);

	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QQuickWebEngineProfile::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);
		vtbl->connectNotify(this, sigval1);
	}

	friend void QQuickWebEngineProfile_virtualbase_connectNotify(VirtualQQuickWebEngineProfile* self, QMetaMethod* signal);

	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QQuickWebEngineProfile::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);
		vtbl->disconnectNotify(this, sigval1);
	}

	friend void QQuickWebEngineProfile_virtualbase_disconnectNotify(VirtualQQuickWebEngineProfile* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend QObject* QQuickWebEngineProfile_protectedbase_sender(const VirtualQQuickWebEngineProfile* self);
	friend int QQuickWebEngineProfile_protectedbase_senderSignalIndex(const VirtualQQuickWebEngineProfile* self);
	friend int QQuickWebEngineProfile_protectedbase_receivers(const VirtualQQuickWebEngineProfile* self, const char* signal);
	friend bool QQuickWebEngineProfile_protectedbase_isSignalConnected(const VirtualQQuickWebEngineProfile* self, QMetaMethod* signal);
};

VirtualQQuickWebEngineProfile* QQuickWebEngineProfile_new(const QQuickWebEngineProfile_VTable* vtbl, size_t vdata) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQQuickWebEngineProfile>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQQuickWebEngineProfile(vtbl) : nullptr;
}

VirtualQQuickWebEngineProfile* QQuickWebEngineProfile_new_parent(const QQuickWebEngineProfile_VTable* vtbl, size_t vdata, QObject* parent) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQQuickWebEngineProfile>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQQuickWebEngineProfile(vtbl, parent) : nullptr;
}

void QQuickWebEngineProfile_virtbase(QQuickWebEngineProfile* src, QObject** outptr_QObject) {
	*outptr_QObject = static_cast<QObject*>(src);
}

QMetaObject* QQuickWebEngineProfile_metaObject(const QQuickWebEngineProfile* self) {
	return (QMetaObject*) self->metaObject();
}

void* QQuickWebEngineProfile_metacast(QQuickWebEngineProfile* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QQuickWebEngineProfile_metacall(QQuickWebEngineProfile* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct seaqt_string QQuickWebEngineProfile_tr_s(const char* s) {
	QString _ret = QQuickWebEngineProfile::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QQuickWebEngineProfile_storageName(const QQuickWebEngineProfile* self) {
	QString _ret = self->storageName();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QQuickWebEngineProfile_setStorageName(QQuickWebEngineProfile* self, struct seaqt_string name) {
	QString name_QString = QString::fromUtf8(name.data, name.len);
	self->setStorageName(name_QString);
}

bool QQuickWebEngineProfile_isOffTheRecord(const QQuickWebEngineProfile* self) {
	return self->isOffTheRecord();
}

void QQuickWebEngineProfile_setOffTheRecord(QQuickWebEngineProfile* self, bool offTheRecord) {
	self->setOffTheRecord(offTheRecord);
}

struct seaqt_string QQuickWebEngineProfile_persistentStoragePath(const QQuickWebEngineProfile* self) {
	QString _ret = self->persistentStoragePath();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QQuickWebEngineProfile_setPersistentStoragePath(QQuickWebEngineProfile* self, struct seaqt_string path) {
	QString path_QString = QString::fromUtf8(path.data, path.len);
	self->setPersistentStoragePath(path_QString);
}

struct seaqt_string QQuickWebEngineProfile_cachePath(const QQuickWebEngineProfile* self) {
	QString _ret = self->cachePath();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QQuickWebEngineProfile_setCachePath(QQuickWebEngineProfile* self, struct seaqt_string path) {
	QString path_QString = QString::fromUtf8(path.data, path.len);
	self->setCachePath(path_QString);
}

struct seaqt_string QQuickWebEngineProfile_httpUserAgent(const QQuickWebEngineProfile* self) {
	QString _ret = self->httpUserAgent();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QQuickWebEngineProfile_setHttpUserAgent(QQuickWebEngineProfile* self, struct seaqt_string userAgent) {
	QString userAgent_QString = QString::fromUtf8(userAgent.data, userAgent.len);
	self->setHttpUserAgent(userAgent_QString);
}

int QQuickWebEngineProfile_httpCacheType(const QQuickWebEngineProfile* self) {
	QQuickWebEngineProfile::HttpCacheType _ret = self->httpCacheType();
	return static_cast<int>(_ret);
}

void QQuickWebEngineProfile_setHttpCacheType(QQuickWebEngineProfile* self, int httpCacheType) {
	self->setHttpCacheType(static_cast<QQuickWebEngineProfile::HttpCacheType>(httpCacheType));
}

int QQuickWebEngineProfile_persistentCookiesPolicy(const QQuickWebEngineProfile* self) {
	QQuickWebEngineProfile::PersistentCookiesPolicy _ret = self->persistentCookiesPolicy();
	return static_cast<int>(_ret);
}

void QQuickWebEngineProfile_setPersistentCookiesPolicy(QQuickWebEngineProfile* self, int persistentCookiesPolicy) {
	self->setPersistentCookiesPolicy(static_cast<QQuickWebEngineProfile::PersistentCookiesPolicy>(persistentCookiesPolicy));
}

uint8_t QQuickWebEngineProfile_persistentPermissionsPolicy(const QQuickWebEngineProfile* self) {
	QQuickWebEngineProfile::PersistentPermissionsPolicy _ret = self->persistentPermissionsPolicy();
	return static_cast<uint8_t>(_ret);
}

void QQuickWebEngineProfile_setPersistentPermissionsPolicy(QQuickWebEngineProfile* self, uint8_t persistentPermissionsPolicy) {
	self->setPersistentPermissionsPolicy(static_cast<QQuickWebEngineProfile::PersistentPermissionsPolicy>(persistentPermissionsPolicy));
}

int QQuickWebEngineProfile_httpCacheMaximumSize(const QQuickWebEngineProfile* self) {
	return self->httpCacheMaximumSize();
}

void QQuickWebEngineProfile_setHttpCacheMaximumSize(QQuickWebEngineProfile* self, int maxSize) {
	self->setHttpCacheMaximumSize(static_cast<int>(maxSize));
}

struct seaqt_string QQuickWebEngineProfile_httpAcceptLanguage(const QQuickWebEngineProfile* self) {
	QString _ret = self->httpAcceptLanguage();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QQuickWebEngineProfile_setHttpAcceptLanguage(QQuickWebEngineProfile* self, struct seaqt_string httpAcceptLanguage) {
	QString httpAcceptLanguage_QString = QString::fromUtf8(httpAcceptLanguage.data, httpAcceptLanguage.len);
	self->setHttpAcceptLanguage(httpAcceptLanguage_QString);
}

QWebEngineCookieStore* QQuickWebEngineProfile_cookieStore(const QQuickWebEngineProfile* self) {
	return self->cookieStore();
}

void QQuickWebEngineProfile_setUrlRequestInterceptor(QQuickWebEngineProfile* self, QWebEngineUrlRequestInterceptor* interceptor) {
	self->setUrlRequestInterceptor(interceptor);
}

QWebEngineUrlSchemeHandler* QQuickWebEngineProfile_urlSchemeHandler(const QQuickWebEngineProfile* self, struct seaqt_string param1) {
	QByteArray param1_QByteArray(param1.data, param1.len);
	return (QWebEngineUrlSchemeHandler*) self->urlSchemeHandler(param1_QByteArray);
}

void QQuickWebEngineProfile_installUrlSchemeHandler(QQuickWebEngineProfile* self, struct seaqt_string scheme, QWebEngineUrlSchemeHandler* param2) {
	QByteArray scheme_QByteArray(scheme.data, scheme.len);
	self->installUrlSchemeHandler(scheme_QByteArray, param2);
}

void QQuickWebEngineProfile_removeUrlScheme(QQuickWebEngineProfile* self, struct seaqt_string scheme) {
	QByteArray scheme_QByteArray(scheme.data, scheme.len);
	self->removeUrlScheme(scheme_QByteArray);
}

void QQuickWebEngineProfile_removeUrlSchemeHandler(QQuickWebEngineProfile* self, QWebEngineUrlSchemeHandler* param1) {
	self->removeUrlSchemeHandler(param1);
}

void QQuickWebEngineProfile_removeAllUrlSchemeHandlers(QQuickWebEngineProfile* self) {
	self->removeAllUrlSchemeHandlers();
}

void QQuickWebEngineProfile_clearHttpCache(QQuickWebEngineProfile* self) {
	self->clearHttpCache();
}

void QQuickWebEngineProfile_setSpellCheckLanguages(QQuickWebEngineProfile* self, struct seaqt_array /* of struct seaqt_string */  languages) {
	QStringList languages_QList;
	languages_QList.reserve(languages.len);
	struct seaqt_string* languages_arr = static_cast<struct seaqt_string*>(languages.data);
	for(size_t i = 0; i < languages.len; ++i) {
		QString languages_arr_i_QString = QString::fromUtf8(languages_arr[i].data, languages_arr[i].len);
		languages_QList.push_back(languages_arr_i_QString);
	}
	self->setSpellCheckLanguages(languages_QList);
}

struct seaqt_array /* of struct seaqt_string */  QQuickWebEngineProfile_spellCheckLanguages(const QQuickWebEngineProfile* self) {
	QStringList _ret = self->spellCheckLanguages();
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

void QQuickWebEngineProfile_setSpellCheckEnabled(QQuickWebEngineProfile* self, bool enabled) {
	self->setSpellCheckEnabled(enabled);
}

bool QQuickWebEngineProfile_isSpellCheckEnabled(const QQuickWebEngineProfile* self) {
	return self->isSpellCheckEnabled();
}

struct seaqt_string QQuickWebEngineProfile_downloadPath(const QQuickWebEngineProfile* self) {
	QString _ret = self->downloadPath();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QQuickWebEngineProfile_setDownloadPath(QQuickWebEngineProfile* self, struct seaqt_string path) {
	QString path_QString = QString::fromUtf8(path.data, path.len);
	self->setDownloadPath(path_QString);
}

bool QQuickWebEngineProfile_isPushServiceEnabled(const QQuickWebEngineProfile* self) {
	return self->isPushServiceEnabled();
}

void QQuickWebEngineProfile_setPushServiceEnabled(QQuickWebEngineProfile* self, bool enable) {
	self->setPushServiceEnabled(enable);
}

QWebEngineClientCertificateStore* QQuickWebEngineProfile_clientCertificateStore(QQuickWebEngineProfile* self) {
	return self->clientCertificateStore();
}

QWebEngineClientHints* QQuickWebEngineProfile_clientHints(const QQuickWebEngineProfile* self) {
	return self->clientHints();
}

QWebEnginePermission* QQuickWebEngineProfile_queryPermission(const QQuickWebEngineProfile* self, QUrl* securityOrigin, uint8_t permissionType) {
	return new QWebEnginePermission(self->queryPermission(*securityOrigin, static_cast<QWebEnginePermission::PermissionType>(permissionType)));
}

struct seaqt_array /* of QWebEnginePermission* */  QQuickWebEngineProfile_listAllPermissions(const QQuickWebEngineProfile* self) {
	QList<QWebEnginePermission> _ret = self->listAllPermissions();
	// Convert QList<> from C++ memory to manually-managed C memory
	QWebEnginePermission** _arr = static_cast<QWebEnginePermission**>(malloc(sizeof(QWebEnginePermission*) * _ret.length()));
	for (size_t i = 0, e = _ret.length(); i < e; ++i) {
		_arr[i] = new QWebEnginePermission(_ret[i]);
	}
	struct seaqt_array _out;
	_out.len = _ret.length();
	_out.data = static_cast<void*>(_arr);
	return _out;
}

struct seaqt_array /* of QWebEnginePermission* */  QQuickWebEngineProfile_listPermissionsForOrigin(const QQuickWebEngineProfile* self, QUrl* securityOrigin) {
	QList<QWebEnginePermission> _ret = self->listPermissionsForOrigin(*securityOrigin);
	// Convert QList<> from C++ memory to manually-managed C memory
	QWebEnginePermission** _arr = static_cast<QWebEnginePermission**>(malloc(sizeof(QWebEnginePermission*) * _ret.length()));
	for (size_t i = 0, e = _ret.length(); i < e; ++i) {
		_arr[i] = new QWebEnginePermission(_ret[i]);
	}
	struct seaqt_array _out;
	_out.len = _ret.length();
	_out.data = static_cast<void*>(_arr);
	return _out;
}

struct seaqt_array /* of QWebEnginePermission* */  QQuickWebEngineProfile_listPermissionsForPermissionType(const QQuickWebEngineProfile* self, uint8_t permissionType) {
	QList<QWebEnginePermission> _ret = self->listPermissionsForPermissionType(static_cast<QWebEnginePermission::PermissionType>(permissionType));
	// Convert QList<> from C++ memory to manually-managed C memory
	QWebEnginePermission** _arr = static_cast<QWebEnginePermission**>(malloc(sizeof(QWebEnginePermission*) * _ret.length()));
	for (size_t i = 0, e = _ret.length(); i < e; ++i) {
		_arr[i] = new QWebEnginePermission(_ret[i]);
	}
	struct seaqt_array _out;
	_out.len = _ret.length();
	_out.data = static_cast<void*>(_arr);
	return _out;
}

QQuickWebEngineProfile* QQuickWebEngineProfile_defaultProfile() {
	return QQuickWebEngineProfile::defaultProfile();
}

void QQuickWebEngineProfile_storageNameChanged(QQuickWebEngineProfile* self) {
	self->storageNameChanged();
}

void QQuickWebEngineProfile_connect_storageNameChanged(QQuickWebEngineProfile* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	QQuickWebEngineProfile::connect(self, static_cast<void (QQuickWebEngineProfile::*)()>(&QQuickWebEngineProfile::storageNameChanged), self, [callback, release = seaqt::release_callback{slot,release}]() {
			callback(release.slot);
	});
}

void QQuickWebEngineProfile_offTheRecordChanged(QQuickWebEngineProfile* self) {
	self->offTheRecordChanged();
}

void QQuickWebEngineProfile_connect_offTheRecordChanged(QQuickWebEngineProfile* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	QQuickWebEngineProfile::connect(self, static_cast<void (QQuickWebEngineProfile::*)()>(&QQuickWebEngineProfile::offTheRecordChanged), self, [callback, release = seaqt::release_callback{slot,release}]() {
			callback(release.slot);
	});
}

void QQuickWebEngineProfile_persistentStoragePathChanged(QQuickWebEngineProfile* self) {
	self->persistentStoragePathChanged();
}

void QQuickWebEngineProfile_connect_persistentStoragePathChanged(QQuickWebEngineProfile* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	QQuickWebEngineProfile::connect(self, static_cast<void (QQuickWebEngineProfile::*)()>(&QQuickWebEngineProfile::persistentStoragePathChanged), self, [callback, release = seaqt::release_callback{slot,release}]() {
			callback(release.slot);
	});
}

void QQuickWebEngineProfile_cachePathChanged(QQuickWebEngineProfile* self) {
	self->cachePathChanged();
}

void QQuickWebEngineProfile_connect_cachePathChanged(QQuickWebEngineProfile* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	QQuickWebEngineProfile::connect(self, static_cast<void (QQuickWebEngineProfile::*)()>(&QQuickWebEngineProfile::cachePathChanged), self, [callback, release = seaqt::release_callback{slot,release}]() {
			callback(release.slot);
	});
}

void QQuickWebEngineProfile_httpUserAgentChanged(QQuickWebEngineProfile* self) {
	self->httpUserAgentChanged();
}

void QQuickWebEngineProfile_connect_httpUserAgentChanged(QQuickWebEngineProfile* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	QQuickWebEngineProfile::connect(self, static_cast<void (QQuickWebEngineProfile::*)()>(&QQuickWebEngineProfile::httpUserAgentChanged), self, [callback, release = seaqt::release_callback{slot,release}]() {
			callback(release.slot);
	});
}

void QQuickWebEngineProfile_httpCacheTypeChanged(QQuickWebEngineProfile* self) {
	self->httpCacheTypeChanged();
}

void QQuickWebEngineProfile_connect_httpCacheTypeChanged(QQuickWebEngineProfile* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	QQuickWebEngineProfile::connect(self, static_cast<void (QQuickWebEngineProfile::*)()>(&QQuickWebEngineProfile::httpCacheTypeChanged), self, [callback, release = seaqt::release_callback{slot,release}]() {
			callback(release.slot);
	});
}

void QQuickWebEngineProfile_persistentCookiesPolicyChanged(QQuickWebEngineProfile* self) {
	self->persistentCookiesPolicyChanged();
}

void QQuickWebEngineProfile_connect_persistentCookiesPolicyChanged(QQuickWebEngineProfile* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	QQuickWebEngineProfile::connect(self, static_cast<void (QQuickWebEngineProfile::*)()>(&QQuickWebEngineProfile::persistentCookiesPolicyChanged), self, [callback, release = seaqt::release_callback{slot,release}]() {
			callback(release.slot);
	});
}

void QQuickWebEngineProfile_httpCacheMaximumSizeChanged(QQuickWebEngineProfile* self) {
	self->httpCacheMaximumSizeChanged();
}

void QQuickWebEngineProfile_connect_httpCacheMaximumSizeChanged(QQuickWebEngineProfile* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	QQuickWebEngineProfile::connect(self, static_cast<void (QQuickWebEngineProfile::*)()>(&QQuickWebEngineProfile::httpCacheMaximumSizeChanged), self, [callback, release = seaqt::release_callback{slot,release}]() {
			callback(release.slot);
	});
}

void QQuickWebEngineProfile_httpAcceptLanguageChanged(QQuickWebEngineProfile* self) {
	self->httpAcceptLanguageChanged();
}

void QQuickWebEngineProfile_connect_httpAcceptLanguageChanged(QQuickWebEngineProfile* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	QQuickWebEngineProfile::connect(self, static_cast<void (QQuickWebEngineProfile::*)()>(&QQuickWebEngineProfile::httpAcceptLanguageChanged), self, [callback, release = seaqt::release_callback{slot,release}]() {
			callback(release.slot);
	});
}

void QQuickWebEngineProfile_spellCheckLanguagesChanged(QQuickWebEngineProfile* self) {
	self->spellCheckLanguagesChanged();
}

void QQuickWebEngineProfile_connect_spellCheckLanguagesChanged(QQuickWebEngineProfile* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	QQuickWebEngineProfile::connect(self, static_cast<void (QQuickWebEngineProfile::*)()>(&QQuickWebEngineProfile::spellCheckLanguagesChanged), self, [callback, release = seaqt::release_callback{slot,release}]() {
			callback(release.slot);
	});
}

void QQuickWebEngineProfile_spellCheckEnabledChanged(QQuickWebEngineProfile* self) {
	self->spellCheckEnabledChanged();
}

void QQuickWebEngineProfile_connect_spellCheckEnabledChanged(QQuickWebEngineProfile* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	QQuickWebEngineProfile::connect(self, static_cast<void (QQuickWebEngineProfile::*)()>(&QQuickWebEngineProfile::spellCheckEnabledChanged), self, [callback, release = seaqt::release_callback{slot,release}]() {
			callback(release.slot);
	});
}

void QQuickWebEngineProfile_downloadPathChanged(QQuickWebEngineProfile* self) {
	self->downloadPathChanged();
}

void QQuickWebEngineProfile_connect_downloadPathChanged(QQuickWebEngineProfile* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	QQuickWebEngineProfile::connect(self, static_cast<void (QQuickWebEngineProfile::*)()>(&QQuickWebEngineProfile::downloadPathChanged), self, [callback, release = seaqt::release_callback{slot,release}]() {
			callback(release.slot);
	});
}

void QQuickWebEngineProfile_pushServiceEnabledChanged(QQuickWebEngineProfile* self) {
	self->pushServiceEnabledChanged();
}

void QQuickWebEngineProfile_connect_pushServiceEnabledChanged(QQuickWebEngineProfile* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	QQuickWebEngineProfile::connect(self, static_cast<void (QQuickWebEngineProfile::*)()>(&QQuickWebEngineProfile::pushServiceEnabledChanged), self, [callback, release = seaqt::release_callback{slot,release}]() {
			callback(release.slot);
	});
}

void QQuickWebEngineProfile_clearHttpCacheCompleted(QQuickWebEngineProfile* self) {
	self->clearHttpCacheCompleted();
}

void QQuickWebEngineProfile_connect_clearHttpCacheCompleted(QQuickWebEngineProfile* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	QQuickWebEngineProfile::connect(self, static_cast<void (QQuickWebEngineProfile::*)()>(&QQuickWebEngineProfile::clearHttpCacheCompleted), self, [callback, release = seaqt::release_callback{slot,release}]() {
			callback(release.slot);
	});
}

void QQuickWebEngineProfile_persistentPermissionsPolicyChanged(QQuickWebEngineProfile* self) {
	self->persistentPermissionsPolicyChanged();
}

void QQuickWebEngineProfile_connect_persistentPermissionsPolicyChanged(QQuickWebEngineProfile* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	QQuickWebEngineProfile::connect(self, static_cast<void (QQuickWebEngineProfile::*)()>(&QQuickWebEngineProfile::persistentPermissionsPolicyChanged), self, [callback, release = seaqt::release_callback{slot,release}]() {
			callback(release.slot);
	});
}

void QQuickWebEngineProfile_presentNotification(QQuickWebEngineProfile* self, QWebEngineNotification* notification) {
	self->presentNotification(notification);
}

void QQuickWebEngineProfile_connect_presentNotification(QQuickWebEngineProfile* self, intptr_t slot, void (*callback)(intptr_t, QWebEngineNotification*), void (*release)(intptr_t)) {
	QQuickWebEngineProfile::connect(self, static_cast<void (QQuickWebEngineProfile::*)(QWebEngineNotification*)>(&QQuickWebEngineProfile::presentNotification), self, [callback, release = seaqt::release_callback{slot,release}](QWebEngineNotification* notification) {
			QWebEngineNotification* sigval1 = notification;
			callback(release.slot, sigval1);
	});
}

struct seaqt_string QQuickWebEngineProfile_tr_s_c(const char* s, const char* c) {
	QString _ret = QQuickWebEngineProfile::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QQuickWebEngineProfile_tr_s_c_n(const char* s, const char* c, int n) {
	QString _ret = QQuickWebEngineProfile::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

const QMetaObject* QQuickWebEngineProfile_staticMetaObject() { return &QQuickWebEngineProfile::staticMetaObject; }
void* QQuickWebEngineProfile_vdata(VirtualQQuickWebEngineProfile* self) { return reinterpret_cast<void*>(reinterpret_cast<char*>(self) + seaqt_aligned_sizeof<VirtualQQuickWebEngineProfile>()); }
VirtualQQuickWebEngineProfile* vdata_QQuickWebEngineProfile(void* vdata) { return reinterpret_cast<VirtualQQuickWebEngineProfile*>(reinterpret_cast<char*>(vdata) - seaqt_aligned_sizeof<VirtualQQuickWebEngineProfile>()); }

QMetaObject* QQuickWebEngineProfile_virtualbase_metaObject(const VirtualQQuickWebEngineProfile* self) {

	return (QMetaObject*) self->QQuickWebEngineProfile::metaObject();
}

void* QQuickWebEngineProfile_virtualbase_metacast(VirtualQQuickWebEngineProfile* self, const char* param1) {

	return self->QQuickWebEngineProfile::qt_metacast(param1);
}

int QQuickWebEngineProfile_virtualbase_metacall(VirtualQQuickWebEngineProfile* self, int param1, int param2, void** param3) {

	return self->QQuickWebEngineProfile::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

bool QQuickWebEngineProfile_virtualbase_event(VirtualQQuickWebEngineProfile* self, QEvent* event) {

	return self->QQuickWebEngineProfile::event(event);
}

bool QQuickWebEngineProfile_virtualbase_eventFilter(VirtualQQuickWebEngineProfile* self, QObject* watched, QEvent* event) {

	return self->QQuickWebEngineProfile::eventFilter(watched, event);
}

void QQuickWebEngineProfile_virtualbase_timerEvent(VirtualQQuickWebEngineProfile* self, QTimerEvent* event) {

	self->QQuickWebEngineProfile::timerEvent(event);
}

void QQuickWebEngineProfile_virtualbase_childEvent(VirtualQQuickWebEngineProfile* self, QChildEvent* event) {

	self->QQuickWebEngineProfile::childEvent(event);
}

void QQuickWebEngineProfile_virtualbase_customEvent(VirtualQQuickWebEngineProfile* self, QEvent* event) {

	self->QQuickWebEngineProfile::customEvent(event);
}

void QQuickWebEngineProfile_virtualbase_connectNotify(VirtualQQuickWebEngineProfile* self, QMetaMethod* signal) {

	self->QQuickWebEngineProfile::connectNotify(*signal);
}

void QQuickWebEngineProfile_virtualbase_disconnectNotify(VirtualQQuickWebEngineProfile* self, QMetaMethod* signal) {

	self->QQuickWebEngineProfile::disconnectNotify(*signal);
}

QObject* QQuickWebEngineProfile_protectedbase_sender(const VirtualQQuickWebEngineProfile* self) {
	return self->QQuickWebEngineProfile::sender();
}

int QQuickWebEngineProfile_protectedbase_senderSignalIndex(const VirtualQQuickWebEngineProfile* self) {
	return self->QQuickWebEngineProfile::senderSignalIndex();
}

int QQuickWebEngineProfile_protectedbase_receivers(const VirtualQQuickWebEngineProfile* self, const char* signal) {
	return self->QQuickWebEngineProfile::receivers(signal);
}

bool QQuickWebEngineProfile_protectedbase_isSignalConnected(const VirtualQQuickWebEngineProfile* self, QMetaMethod* signal) {
	return self->QQuickWebEngineProfile::isSignalConnected(*signal);
}

void QQuickWebEngineProfile_delete(QQuickWebEngineProfile* self) {
	delete self;
}

