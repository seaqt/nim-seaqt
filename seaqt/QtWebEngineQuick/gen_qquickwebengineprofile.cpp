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
#include <QWebEngineClientCertificateStore>
#include <QWebEngineCookieStore>
#include <QWebEngineNotification>
#include <QWebEngineUrlRequestInterceptor>
#include <QWebEngineUrlSchemeHandler>
#include <qquickwebengineprofile.h>
#include "gen_qquickwebengineprofile.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
} /* extern C */
#endif

class VirtualQQuickWebEngineProfile final : public QQuickWebEngineProfile {
	struct QQuickWebEngineProfile_VTable* vtbl;
public:

	VirtualQQuickWebEngineProfile(struct QQuickWebEngineProfile_VTable* vtbl): QQuickWebEngineProfile(), vtbl(vtbl) {};
	VirtualQQuickWebEngineProfile(struct QQuickWebEngineProfile_VTable* vtbl, QObject* parent): QQuickWebEngineProfile(parent), vtbl(vtbl) {};

	virtual ~VirtualQQuickWebEngineProfile() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QQuickWebEngineProfile::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(vtbl, this);

		return callback_return_value;
	}

	friend QMetaObject* QQuickWebEngineProfile_virtualbase_metaObject(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QQuickWebEngineProfile::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend void* QQuickWebEngineProfile_virtualbase_metacast(void* self, const char* param1);

	// Subclass to allow providing a Go implementation
	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QQuickWebEngineProfile::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(vtbl, this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QQuickWebEngineProfile_virtualbase_metacall(void* self, int param1, int param2, void** param3);

	// Subclass to allow providing a Go implementation
	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QQuickWebEngineProfile::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend bool QQuickWebEngineProfile_virtualbase_event(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QQuickWebEngineProfile::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QQuickWebEngineProfile_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QQuickWebEngineProfile::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(vtbl, this, sigval1);

	}

	friend void QQuickWebEngineProfile_virtualbase_timerEvent(void* self, QTimerEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QQuickWebEngineProfile::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(vtbl, this, sigval1);

	}

	friend void QQuickWebEngineProfile_virtualbase_childEvent(void* self, QChildEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QQuickWebEngineProfile::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(vtbl, this, sigval1);

	}

	friend void QQuickWebEngineProfile_virtualbase_customEvent(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QQuickWebEngineProfile::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(vtbl, this, sigval1);

	}

	friend void QQuickWebEngineProfile_virtualbase_connectNotify(void* self, QMetaMethod* signal);

	// Subclass to allow providing a Go implementation
	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QQuickWebEngineProfile::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(vtbl, this, sigval1);

	}

	friend void QQuickWebEngineProfile_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend QObject* QQuickWebEngineProfile_protectedbase_sender(bool* _dynamic_cast_ok, const void* self);
	friend int QQuickWebEngineProfile_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self);
	friend int QQuickWebEngineProfile_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal);
	friend bool QQuickWebEngineProfile_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal);
};

QQuickWebEngineProfile* QQuickWebEngineProfile_new(struct QQuickWebEngineProfile_VTable* vtbl) {
	return new VirtualQQuickWebEngineProfile(vtbl);
}

QQuickWebEngineProfile* QQuickWebEngineProfile_new2(struct QQuickWebEngineProfile_VTable* vtbl, QObject* parent) {
	return new VirtualQQuickWebEngineProfile(vtbl, parent);
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

struct miqt_string QQuickWebEngineProfile_tr(const char* s) {
	QString _ret = QQuickWebEngineProfile::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QQuickWebEngineProfile_storageName(const QQuickWebEngineProfile* self) {
	QString _ret = self->storageName();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QQuickWebEngineProfile_setStorageName(QQuickWebEngineProfile* self, struct miqt_string name) {
	QString name_QString = QString::fromUtf8(name.data, name.len);
	self->setStorageName(name_QString);
}

bool QQuickWebEngineProfile_isOffTheRecord(const QQuickWebEngineProfile* self) {
	return self->isOffTheRecord();
}

void QQuickWebEngineProfile_setOffTheRecord(QQuickWebEngineProfile* self, bool offTheRecord) {
	self->setOffTheRecord(offTheRecord);
}

struct miqt_string QQuickWebEngineProfile_persistentStoragePath(const QQuickWebEngineProfile* self) {
	QString _ret = self->persistentStoragePath();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QQuickWebEngineProfile_setPersistentStoragePath(QQuickWebEngineProfile* self, struct miqt_string path) {
	QString path_QString = QString::fromUtf8(path.data, path.len);
	self->setPersistentStoragePath(path_QString);
}

struct miqt_string QQuickWebEngineProfile_cachePath(const QQuickWebEngineProfile* self) {
	QString _ret = self->cachePath();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QQuickWebEngineProfile_setCachePath(QQuickWebEngineProfile* self, struct miqt_string path) {
	QString path_QString = QString::fromUtf8(path.data, path.len);
	self->setCachePath(path_QString);
}

struct miqt_string QQuickWebEngineProfile_httpUserAgent(const QQuickWebEngineProfile* self) {
	QString _ret = self->httpUserAgent();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QQuickWebEngineProfile_setHttpUserAgent(QQuickWebEngineProfile* self, struct miqt_string userAgent) {
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

int QQuickWebEngineProfile_httpCacheMaximumSize(const QQuickWebEngineProfile* self) {
	return self->httpCacheMaximumSize();
}

void QQuickWebEngineProfile_setHttpCacheMaximumSize(QQuickWebEngineProfile* self, int maxSize) {
	self->setHttpCacheMaximumSize(static_cast<int>(maxSize));
}

struct miqt_string QQuickWebEngineProfile_httpAcceptLanguage(const QQuickWebEngineProfile* self) {
	QString _ret = self->httpAcceptLanguage();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QQuickWebEngineProfile_setHttpAcceptLanguage(QQuickWebEngineProfile* self, struct miqt_string httpAcceptLanguage) {
	QString httpAcceptLanguage_QString = QString::fromUtf8(httpAcceptLanguage.data, httpAcceptLanguage.len);
	self->setHttpAcceptLanguage(httpAcceptLanguage_QString);
}

QWebEngineCookieStore* QQuickWebEngineProfile_cookieStore(const QQuickWebEngineProfile* self) {
	return self->cookieStore();
}

void QQuickWebEngineProfile_setUrlRequestInterceptor(QQuickWebEngineProfile* self, QWebEngineUrlRequestInterceptor* interceptor) {
	self->setUrlRequestInterceptor(interceptor);
}

QWebEngineUrlSchemeHandler* QQuickWebEngineProfile_urlSchemeHandler(const QQuickWebEngineProfile* self, struct miqt_string param1) {
	QByteArray param1_QByteArray(param1.data, param1.len);
	return (QWebEngineUrlSchemeHandler*) self->urlSchemeHandler(param1_QByteArray);
}

void QQuickWebEngineProfile_installUrlSchemeHandler(QQuickWebEngineProfile* self, struct miqt_string scheme, QWebEngineUrlSchemeHandler* param2) {
	QByteArray scheme_QByteArray(scheme.data, scheme.len);
	self->installUrlSchemeHandler(scheme_QByteArray, param2);
}

void QQuickWebEngineProfile_removeUrlScheme(QQuickWebEngineProfile* self, struct miqt_string scheme) {
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

void QQuickWebEngineProfile_setSpellCheckLanguages(QQuickWebEngineProfile* self, struct miqt_array /* of struct miqt_string */  languages) {
	QStringList languages_QList;
	languages_QList.reserve(languages.len);
	struct miqt_string* languages_arr = static_cast<struct miqt_string*>(languages.data);
	for(size_t i = 0; i < languages.len; ++i) {
		QString languages_arr_i_QString = QString::fromUtf8(languages_arr[i].data, languages_arr[i].len);
		languages_QList.push_back(languages_arr_i_QString);
	}
	self->setSpellCheckLanguages(languages_QList);
}

struct miqt_array /* of struct miqt_string */  QQuickWebEngineProfile_spellCheckLanguages(const QQuickWebEngineProfile* self) {
	QStringList _ret = self->spellCheckLanguages();
	// Convert QList<> from C++ memory to manually-managed C memory
	struct miqt_string* _arr = static_cast<struct miqt_string*>(malloc(sizeof(struct miqt_string) * _ret.length()));
	for (size_t i = 0, e = _ret.length(); i < e; ++i) {
		QString _lv_ret = _ret[i];
		// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
		QByteArray _lv_b = _lv_ret.toUtf8();
		struct miqt_string _lv_ms;
		_lv_ms.len = _lv_b.length();
		_lv_ms.data = static_cast<char*>(malloc(_lv_ms.len));
		memcpy(_lv_ms.data, _lv_b.data(), _lv_ms.len);
		_arr[i] = _lv_ms;
	}
	struct miqt_array _out;
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

struct miqt_string QQuickWebEngineProfile_downloadPath(const QQuickWebEngineProfile* self) {
	QString _ret = self->downloadPath();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QQuickWebEngineProfile_setDownloadPath(QQuickWebEngineProfile* self, struct miqt_string path) {
	QString path_QString = QString::fromUtf8(path.data, path.len);
	self->setDownloadPath(path_QString);
}

QWebEngineClientCertificateStore* QQuickWebEngineProfile_clientCertificateStore(QQuickWebEngineProfile* self) {
	return self->clientCertificateStore();
}

QQuickWebEngineProfile* QQuickWebEngineProfile_defaultProfile() {
	return QQuickWebEngineProfile::defaultProfile();
}

void QQuickWebEngineProfile_storageNameChanged(QQuickWebEngineProfile* self) {
	self->storageNameChanged();
}

void QQuickWebEngineProfile_connect_storageNameChanged(QQuickWebEngineProfile* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t);
		void operator()() {
			callback(slot);
		}
	};
	VirtualQQuickWebEngineProfile::connect(self, static_cast<void (QQuickWebEngineProfile::*)()>(&QQuickWebEngineProfile::storageNameChanged), self, local_caller{slot, callback, release});
}

void QQuickWebEngineProfile_offTheRecordChanged(QQuickWebEngineProfile* self) {
	self->offTheRecordChanged();
}

void QQuickWebEngineProfile_connect_offTheRecordChanged(QQuickWebEngineProfile* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t);
		void operator()() {
			callback(slot);
		}
	};
	VirtualQQuickWebEngineProfile::connect(self, static_cast<void (QQuickWebEngineProfile::*)()>(&QQuickWebEngineProfile::offTheRecordChanged), self, local_caller{slot, callback, release});
}

void QQuickWebEngineProfile_persistentStoragePathChanged(QQuickWebEngineProfile* self) {
	self->persistentStoragePathChanged();
}

void QQuickWebEngineProfile_connect_persistentStoragePathChanged(QQuickWebEngineProfile* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t);
		void operator()() {
			callback(slot);
		}
	};
	VirtualQQuickWebEngineProfile::connect(self, static_cast<void (QQuickWebEngineProfile::*)()>(&QQuickWebEngineProfile::persistentStoragePathChanged), self, local_caller{slot, callback, release});
}

void QQuickWebEngineProfile_cachePathChanged(QQuickWebEngineProfile* self) {
	self->cachePathChanged();
}

void QQuickWebEngineProfile_connect_cachePathChanged(QQuickWebEngineProfile* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t);
		void operator()() {
			callback(slot);
		}
	};
	VirtualQQuickWebEngineProfile::connect(self, static_cast<void (QQuickWebEngineProfile::*)()>(&QQuickWebEngineProfile::cachePathChanged), self, local_caller{slot, callback, release});
}

void QQuickWebEngineProfile_httpUserAgentChanged(QQuickWebEngineProfile* self) {
	self->httpUserAgentChanged();
}

void QQuickWebEngineProfile_connect_httpUserAgentChanged(QQuickWebEngineProfile* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t);
		void operator()() {
			callback(slot);
		}
	};
	VirtualQQuickWebEngineProfile::connect(self, static_cast<void (QQuickWebEngineProfile::*)()>(&QQuickWebEngineProfile::httpUserAgentChanged), self, local_caller{slot, callback, release});
}

void QQuickWebEngineProfile_httpCacheTypeChanged(QQuickWebEngineProfile* self) {
	self->httpCacheTypeChanged();
}

void QQuickWebEngineProfile_connect_httpCacheTypeChanged(QQuickWebEngineProfile* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t);
		void operator()() {
			callback(slot);
		}
	};
	VirtualQQuickWebEngineProfile::connect(self, static_cast<void (QQuickWebEngineProfile::*)()>(&QQuickWebEngineProfile::httpCacheTypeChanged), self, local_caller{slot, callback, release});
}

void QQuickWebEngineProfile_persistentCookiesPolicyChanged(QQuickWebEngineProfile* self) {
	self->persistentCookiesPolicyChanged();
}

void QQuickWebEngineProfile_connect_persistentCookiesPolicyChanged(QQuickWebEngineProfile* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t);
		void operator()() {
			callback(slot);
		}
	};
	VirtualQQuickWebEngineProfile::connect(self, static_cast<void (QQuickWebEngineProfile::*)()>(&QQuickWebEngineProfile::persistentCookiesPolicyChanged), self, local_caller{slot, callback, release});
}

void QQuickWebEngineProfile_httpCacheMaximumSizeChanged(QQuickWebEngineProfile* self) {
	self->httpCacheMaximumSizeChanged();
}

void QQuickWebEngineProfile_connect_httpCacheMaximumSizeChanged(QQuickWebEngineProfile* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t);
		void operator()() {
			callback(slot);
		}
	};
	VirtualQQuickWebEngineProfile::connect(self, static_cast<void (QQuickWebEngineProfile::*)()>(&QQuickWebEngineProfile::httpCacheMaximumSizeChanged), self, local_caller{slot, callback, release});
}

void QQuickWebEngineProfile_httpAcceptLanguageChanged(QQuickWebEngineProfile* self) {
	self->httpAcceptLanguageChanged();
}

void QQuickWebEngineProfile_connect_httpAcceptLanguageChanged(QQuickWebEngineProfile* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t);
		void operator()() {
			callback(slot);
		}
	};
	VirtualQQuickWebEngineProfile::connect(self, static_cast<void (QQuickWebEngineProfile::*)()>(&QQuickWebEngineProfile::httpAcceptLanguageChanged), self, local_caller{slot, callback, release});
}

void QQuickWebEngineProfile_spellCheckLanguagesChanged(QQuickWebEngineProfile* self) {
	self->spellCheckLanguagesChanged();
}

void QQuickWebEngineProfile_connect_spellCheckLanguagesChanged(QQuickWebEngineProfile* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t);
		void operator()() {
			callback(slot);
		}
	};
	VirtualQQuickWebEngineProfile::connect(self, static_cast<void (QQuickWebEngineProfile::*)()>(&QQuickWebEngineProfile::spellCheckLanguagesChanged), self, local_caller{slot, callback, release});
}

void QQuickWebEngineProfile_spellCheckEnabledChanged(QQuickWebEngineProfile* self) {
	self->spellCheckEnabledChanged();
}

void QQuickWebEngineProfile_connect_spellCheckEnabledChanged(QQuickWebEngineProfile* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t);
		void operator()() {
			callback(slot);
		}
	};
	VirtualQQuickWebEngineProfile::connect(self, static_cast<void (QQuickWebEngineProfile::*)()>(&QQuickWebEngineProfile::spellCheckEnabledChanged), self, local_caller{slot, callback, release});
}

void QQuickWebEngineProfile_downloadPathChanged(QQuickWebEngineProfile* self) {
	self->downloadPathChanged();
}

void QQuickWebEngineProfile_connect_downloadPathChanged(QQuickWebEngineProfile* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t);
		void operator()() {
			callback(slot);
		}
	};
	VirtualQQuickWebEngineProfile::connect(self, static_cast<void (QQuickWebEngineProfile::*)()>(&QQuickWebEngineProfile::downloadPathChanged), self, local_caller{slot, callback, release});
}

void QQuickWebEngineProfile_presentNotification(QQuickWebEngineProfile* self, QWebEngineNotification* notification) {
	self->presentNotification(notification);
}

void QQuickWebEngineProfile_connect_presentNotification(QQuickWebEngineProfile* self, intptr_t slot, void (*callback)(intptr_t, QWebEngineNotification*), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, QWebEngineNotification*), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, QWebEngineNotification*);
		void operator()(QWebEngineNotification* notification) {
			QWebEngineNotification* sigval1 = notification;
			callback(slot, sigval1);
		}
	};
	VirtualQQuickWebEngineProfile::connect(self, static_cast<void (QQuickWebEngineProfile::*)(QWebEngineNotification*)>(&QQuickWebEngineProfile::presentNotification), self, local_caller{slot, callback, release});
}

struct miqt_string QQuickWebEngineProfile_tr2(const char* s, const char* c) {
	QString _ret = QQuickWebEngineProfile::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QQuickWebEngineProfile_tr3(const char* s, const char* c, int n) {
	QString _ret = QQuickWebEngineProfile::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QMetaObject* QQuickWebEngineProfile_virtualbase_metaObject(const void* self) {

	return (QMetaObject*) ( (const VirtualQQuickWebEngineProfile*)(self) )->QQuickWebEngineProfile::metaObject();

}

void* QQuickWebEngineProfile_virtualbase_metacast(void* self, const char* param1) {

	return ( (VirtualQQuickWebEngineProfile*)(self) )->QQuickWebEngineProfile::qt_metacast(param1);

}

int QQuickWebEngineProfile_virtualbase_metacall(void* self, int param1, int param2, void** param3) {

	return ( (VirtualQQuickWebEngineProfile*)(self) )->QQuickWebEngineProfile::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);

}

bool QQuickWebEngineProfile_virtualbase_event(void* self, QEvent* event) {

	return ( (VirtualQQuickWebEngineProfile*)(self) )->QQuickWebEngineProfile::event(event);

}

bool QQuickWebEngineProfile_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event) {

	return ( (VirtualQQuickWebEngineProfile*)(self) )->QQuickWebEngineProfile::eventFilter(watched, event);

}

void QQuickWebEngineProfile_virtualbase_timerEvent(void* self, QTimerEvent* event) {

	( (VirtualQQuickWebEngineProfile*)(self) )->QQuickWebEngineProfile::timerEvent(event);

}

void QQuickWebEngineProfile_virtualbase_childEvent(void* self, QChildEvent* event) {

	( (VirtualQQuickWebEngineProfile*)(self) )->QQuickWebEngineProfile::childEvent(event);

}

void QQuickWebEngineProfile_virtualbase_customEvent(void* self, QEvent* event) {

	( (VirtualQQuickWebEngineProfile*)(self) )->QQuickWebEngineProfile::customEvent(event);

}

void QQuickWebEngineProfile_virtualbase_connectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQQuickWebEngineProfile*)(self) )->QQuickWebEngineProfile::connectNotify(*signal);

}

void QQuickWebEngineProfile_virtualbase_disconnectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQQuickWebEngineProfile*)(self) )->QQuickWebEngineProfile::disconnectNotify(*signal);

}

const QMetaObject* QQuickWebEngineProfile_staticMetaObject() { return &QQuickWebEngineProfile::staticMetaObject; }
QObject* QQuickWebEngineProfile_protectedbase_sender(bool* _dynamic_cast_ok, const void* self) {
	VirtualQQuickWebEngineProfile* self_cast = dynamic_cast<VirtualQQuickWebEngineProfile*>( (QQuickWebEngineProfile*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return nullptr;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->sender();

}

int QQuickWebEngineProfile_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self) {
	VirtualQQuickWebEngineProfile* self_cast = dynamic_cast<VirtualQQuickWebEngineProfile*>( (QQuickWebEngineProfile*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return 0;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->senderSignalIndex();

}

int QQuickWebEngineProfile_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal) {
	VirtualQQuickWebEngineProfile* self_cast = dynamic_cast<VirtualQQuickWebEngineProfile*>( (QQuickWebEngineProfile*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return 0;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->receivers(signal);

}

bool QQuickWebEngineProfile_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal) {
	VirtualQQuickWebEngineProfile* self_cast = dynamic_cast<VirtualQQuickWebEngineProfile*>( (QQuickWebEngineProfile*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return false;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->isSignalConnected(*signal);

}

void QQuickWebEngineProfile_delete(QQuickWebEngineProfile* self) {
	delete self;
}

