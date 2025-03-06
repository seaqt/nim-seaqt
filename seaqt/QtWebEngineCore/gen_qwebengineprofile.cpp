#include <QByteArray>
#include <QChildEvent>
#include <QEvent>
#include <QList>
#include <QMetaMethod>
#include <QMetaObject>
#include <QObject>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QTimerEvent>
#include <QUrl>
#include <QWebEngineClientCertificateStore>
#include <QWebEngineCookieStore>
#include <QWebEngineDownloadRequest>
#include <QWebEngineProfile>
#include <QWebEngineScriptCollection>
#include <QWebEngineSettings>
#include <QWebEngineUrlRequestInterceptor>
#include <QWebEngineUrlSchemeHandler>
#include <qwebengineprofile.h>
#include "gen_qwebengineprofile.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
} /* extern C */
#endif

class VirtualQWebEngineProfile final : public QWebEngineProfile {
	struct QWebEngineProfile_VTable* vtbl;
public:

	VirtualQWebEngineProfile(struct QWebEngineProfile_VTable* vtbl): QWebEngineProfile(), vtbl(vtbl) {};
	VirtualQWebEngineProfile(struct QWebEngineProfile_VTable* vtbl, const QString& name): QWebEngineProfile(name), vtbl(vtbl) {};
	VirtualQWebEngineProfile(struct QWebEngineProfile_VTable* vtbl, QObject* parent): QWebEngineProfile(parent), vtbl(vtbl) {};
	VirtualQWebEngineProfile(struct QWebEngineProfile_VTable* vtbl, const QString& name, QObject* parent): QWebEngineProfile(name, parent), vtbl(vtbl) {};

	virtual ~VirtualQWebEngineProfile() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QWebEngineProfile::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(vtbl, this);

		return callback_return_value;
	}

	friend QMetaObject* QWebEngineProfile_virtualbase_metaObject(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QWebEngineProfile::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend void* QWebEngineProfile_virtualbase_metacast(void* self, const char* param1);

	// Subclass to allow providing a Go implementation
	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QWebEngineProfile::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(vtbl, this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QWebEngineProfile_virtualbase_metacall(void* self, int param1, int param2, void** param3);

	// Subclass to allow providing a Go implementation
	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QWebEngineProfile::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend bool QWebEngineProfile_virtualbase_event(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QWebEngineProfile::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QWebEngineProfile_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QWebEngineProfile::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(vtbl, this, sigval1);

	}

	friend void QWebEngineProfile_virtualbase_timerEvent(void* self, QTimerEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QWebEngineProfile::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(vtbl, this, sigval1);

	}

	friend void QWebEngineProfile_virtualbase_childEvent(void* self, QChildEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QWebEngineProfile::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(vtbl, this, sigval1);

	}

	friend void QWebEngineProfile_virtualbase_customEvent(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QWebEngineProfile::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(vtbl, this, sigval1);

	}

	friend void QWebEngineProfile_virtualbase_connectNotify(void* self, QMetaMethod* signal);

	// Subclass to allow providing a Go implementation
	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QWebEngineProfile::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(vtbl, this, sigval1);

	}

	friend void QWebEngineProfile_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend QObject* QWebEngineProfile_protectedbase_sender(const void* self);
	friend int QWebEngineProfile_protectedbase_senderSignalIndex(const void* self);
	friend int QWebEngineProfile_protectedbase_receivers(const void* self, const char* signal);
	friend bool QWebEngineProfile_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal);
};

QWebEngineProfile* QWebEngineProfile_new(struct QWebEngineProfile_VTable* vtbl) {
	return new VirtualQWebEngineProfile(vtbl);
}

QWebEngineProfile* QWebEngineProfile_new2(struct QWebEngineProfile_VTable* vtbl, struct miqt_string name) {
	QString name_QString = QString::fromUtf8(name.data, name.len);
	return new VirtualQWebEngineProfile(vtbl, name_QString);
}

QWebEngineProfile* QWebEngineProfile_new3(struct QWebEngineProfile_VTable* vtbl, QObject* parent) {
	return new VirtualQWebEngineProfile(vtbl, parent);
}

QWebEngineProfile* QWebEngineProfile_new4(struct QWebEngineProfile_VTable* vtbl, struct miqt_string name, QObject* parent) {
	QString name_QString = QString::fromUtf8(name.data, name.len);
	return new VirtualQWebEngineProfile(vtbl, name_QString, parent);
}

void QWebEngineProfile_virtbase(QWebEngineProfile* src, QObject** outptr_QObject) {
	*outptr_QObject = static_cast<QObject*>(src);
}

QMetaObject* QWebEngineProfile_metaObject(const QWebEngineProfile* self) {
	return (QMetaObject*) self->metaObject();
}

void* QWebEngineProfile_metacast(QWebEngineProfile* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QWebEngineProfile_metacall(QWebEngineProfile* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QWebEngineProfile_tr(const char* s) {
	QString _ret = QWebEngineProfile::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QWebEngineProfile_storageName(const QWebEngineProfile* self) {
	QString _ret = self->storageName();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

bool QWebEngineProfile_isOffTheRecord(const QWebEngineProfile* self) {
	return self->isOffTheRecord();
}

struct miqt_string QWebEngineProfile_persistentStoragePath(const QWebEngineProfile* self) {
	QString _ret = self->persistentStoragePath();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QWebEngineProfile_setPersistentStoragePath(QWebEngineProfile* self, struct miqt_string path) {
	QString path_QString = QString::fromUtf8(path.data, path.len);
	self->setPersistentStoragePath(path_QString);
}

struct miqt_string QWebEngineProfile_cachePath(const QWebEngineProfile* self) {
	QString _ret = self->cachePath();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QWebEngineProfile_setCachePath(QWebEngineProfile* self, struct miqt_string path) {
	QString path_QString = QString::fromUtf8(path.data, path.len);
	self->setCachePath(path_QString);
}

struct miqt_string QWebEngineProfile_httpUserAgent(const QWebEngineProfile* self) {
	QString _ret = self->httpUserAgent();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QWebEngineProfile_setHttpUserAgent(QWebEngineProfile* self, struct miqt_string userAgent) {
	QString userAgent_QString = QString::fromUtf8(userAgent.data, userAgent.len);
	self->setHttpUserAgent(userAgent_QString);
}

int QWebEngineProfile_httpCacheType(const QWebEngineProfile* self) {
	QWebEngineProfile::HttpCacheType _ret = self->httpCacheType();
	return static_cast<int>(_ret);
}

void QWebEngineProfile_setHttpCacheType(QWebEngineProfile* self, int httpCacheType) {
	self->setHttpCacheType(static_cast<QWebEngineProfile::HttpCacheType>(httpCacheType));
}

void QWebEngineProfile_setHttpAcceptLanguage(QWebEngineProfile* self, struct miqt_string httpAcceptLanguage) {
	QString httpAcceptLanguage_QString = QString::fromUtf8(httpAcceptLanguage.data, httpAcceptLanguage.len);
	self->setHttpAcceptLanguage(httpAcceptLanguage_QString);
}

struct miqt_string QWebEngineProfile_httpAcceptLanguage(const QWebEngineProfile* self) {
	QString _ret = self->httpAcceptLanguage();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

int QWebEngineProfile_persistentCookiesPolicy(const QWebEngineProfile* self) {
	QWebEngineProfile::PersistentCookiesPolicy _ret = self->persistentCookiesPolicy();
	return static_cast<int>(_ret);
}

void QWebEngineProfile_setPersistentCookiesPolicy(QWebEngineProfile* self, int persistentCookiesPolicy) {
	self->setPersistentCookiesPolicy(static_cast<QWebEngineProfile::PersistentCookiesPolicy>(persistentCookiesPolicy));
}

int QWebEngineProfile_httpCacheMaximumSize(const QWebEngineProfile* self) {
	return self->httpCacheMaximumSize();
}

void QWebEngineProfile_setHttpCacheMaximumSize(QWebEngineProfile* self, int maxSize) {
	self->setHttpCacheMaximumSize(static_cast<int>(maxSize));
}

QWebEngineCookieStore* QWebEngineProfile_cookieStore(QWebEngineProfile* self) {
	return self->cookieStore();
}

void QWebEngineProfile_setUrlRequestInterceptor(QWebEngineProfile* self, QWebEngineUrlRequestInterceptor* interceptor) {
	self->setUrlRequestInterceptor(interceptor);
}

void QWebEngineProfile_clearAllVisitedLinks(QWebEngineProfile* self) {
	self->clearAllVisitedLinks();
}

void QWebEngineProfile_clearVisitedLinks(QWebEngineProfile* self, struct miqt_array /* of QUrl* */  urls) {
	QList<QUrl> urls_QList;
	urls_QList.reserve(urls.len);
	QUrl** urls_arr = static_cast<QUrl**>(urls.data);
	for(size_t i = 0; i < urls.len; ++i) {
		urls_QList.push_back(*(urls_arr[i]));
	}
	self->clearVisitedLinks(urls_QList);
}

bool QWebEngineProfile_visitedLinksContainsUrl(const QWebEngineProfile* self, QUrl* url) {
	return self->visitedLinksContainsUrl(*url);
}

QWebEngineSettings* QWebEngineProfile_settings(const QWebEngineProfile* self) {
	return self->settings();
}

QWebEngineScriptCollection* QWebEngineProfile_scripts(const QWebEngineProfile* self) {
	return self->scripts();
}

QWebEngineUrlSchemeHandler* QWebEngineProfile_urlSchemeHandler(const QWebEngineProfile* self, struct miqt_string param1) {
	QByteArray param1_QByteArray(param1.data, param1.len);
	return (QWebEngineUrlSchemeHandler*) self->urlSchemeHandler(param1_QByteArray);
}

void QWebEngineProfile_installUrlSchemeHandler(QWebEngineProfile* self, struct miqt_string scheme, QWebEngineUrlSchemeHandler* param2) {
	QByteArray scheme_QByteArray(scheme.data, scheme.len);
	self->installUrlSchemeHandler(scheme_QByteArray, param2);
}

void QWebEngineProfile_removeUrlScheme(QWebEngineProfile* self, struct miqt_string scheme) {
	QByteArray scheme_QByteArray(scheme.data, scheme.len);
	self->removeUrlScheme(scheme_QByteArray);
}

void QWebEngineProfile_removeUrlSchemeHandler(QWebEngineProfile* self, QWebEngineUrlSchemeHandler* param1) {
	self->removeUrlSchemeHandler(param1);
}

void QWebEngineProfile_removeAllUrlSchemeHandlers(QWebEngineProfile* self) {
	self->removeAllUrlSchemeHandlers();
}

void QWebEngineProfile_clearHttpCache(QWebEngineProfile* self) {
	self->clearHttpCache();
}

void QWebEngineProfile_setSpellCheckLanguages(QWebEngineProfile* self, struct miqt_array /* of struct miqt_string */  languages) {
	QStringList languages_QList;
	languages_QList.reserve(languages.len);
	struct miqt_string* languages_arr = static_cast<struct miqt_string*>(languages.data);
	for(size_t i = 0; i < languages.len; ++i) {
		QString languages_arr_i_QString = QString::fromUtf8(languages_arr[i].data, languages_arr[i].len);
		languages_QList.push_back(languages_arr_i_QString);
	}
	self->setSpellCheckLanguages(languages_QList);
}

struct miqt_array /* of struct miqt_string */  QWebEngineProfile_spellCheckLanguages(const QWebEngineProfile* self) {
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

void QWebEngineProfile_setSpellCheckEnabled(QWebEngineProfile* self, bool enabled) {
	self->setSpellCheckEnabled(enabled);
}

bool QWebEngineProfile_isSpellCheckEnabled(const QWebEngineProfile* self) {
	return self->isSpellCheckEnabled();
}

struct miqt_string QWebEngineProfile_downloadPath(const QWebEngineProfile* self) {
	QString _ret = self->downloadPath();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QWebEngineProfile_setDownloadPath(QWebEngineProfile* self, struct miqt_string path) {
	QString path_QString = QString::fromUtf8(path.data, path.len);
	self->setDownloadPath(path_QString);
}

QWebEngineClientCertificateStore* QWebEngineProfile_clientCertificateStore(QWebEngineProfile* self) {
	return self->clientCertificateStore();
}

QWebEngineProfile* QWebEngineProfile_defaultProfile() {
	return QWebEngineProfile::defaultProfile();
}

void QWebEngineProfile_downloadRequested(QWebEngineProfile* self, QWebEngineDownloadRequest* download) {
	self->downloadRequested(download);
}

void QWebEngineProfile_connect_downloadRequested(QWebEngineProfile* self, intptr_t slot, void (*callback)(intptr_t, QWebEngineDownloadRequest*), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, QWebEngineDownloadRequest*), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, QWebEngineDownloadRequest*);
		void operator()(QWebEngineDownloadRequest* download) {
			QWebEngineDownloadRequest* sigval1 = download;
			callback(slot, sigval1);
		}
	};
	VirtualQWebEngineProfile::connect(self, static_cast<void (QWebEngineProfile::*)(QWebEngineDownloadRequest*)>(&QWebEngineProfile::downloadRequested), self, local_caller{slot, callback, release});
}

struct miqt_string QWebEngineProfile_tr2(const char* s, const char* c) {
	QString _ret = QWebEngineProfile::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QWebEngineProfile_tr3(const char* s, const char* c, int n) {
	QString _ret = QWebEngineProfile::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QMetaObject* QWebEngineProfile_virtualbase_metaObject(const void* self) {

	return (QMetaObject*) ( (const VirtualQWebEngineProfile*)(self) )->QWebEngineProfile::metaObject();

}

void* QWebEngineProfile_virtualbase_metacast(void* self, const char* param1) {

	return ( (VirtualQWebEngineProfile*)(self) )->QWebEngineProfile::qt_metacast(param1);

}

int QWebEngineProfile_virtualbase_metacall(void* self, int param1, int param2, void** param3) {

	return ( (VirtualQWebEngineProfile*)(self) )->QWebEngineProfile::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);

}

bool QWebEngineProfile_virtualbase_event(void* self, QEvent* event) {

	return ( (VirtualQWebEngineProfile*)(self) )->QWebEngineProfile::event(event);

}

bool QWebEngineProfile_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event) {

	return ( (VirtualQWebEngineProfile*)(self) )->QWebEngineProfile::eventFilter(watched, event);

}

void QWebEngineProfile_virtualbase_timerEvent(void* self, QTimerEvent* event) {

	( (VirtualQWebEngineProfile*)(self) )->QWebEngineProfile::timerEvent(event);

}

void QWebEngineProfile_virtualbase_childEvent(void* self, QChildEvent* event) {

	( (VirtualQWebEngineProfile*)(self) )->QWebEngineProfile::childEvent(event);

}

void QWebEngineProfile_virtualbase_customEvent(void* self, QEvent* event) {

	( (VirtualQWebEngineProfile*)(self) )->QWebEngineProfile::customEvent(event);

}

void QWebEngineProfile_virtualbase_connectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQWebEngineProfile*)(self) )->QWebEngineProfile::connectNotify(*signal);

}

void QWebEngineProfile_virtualbase_disconnectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQWebEngineProfile*)(self) )->QWebEngineProfile::disconnectNotify(*signal);

}

const QMetaObject* QWebEngineProfile_staticMetaObject() { return &QWebEngineProfile::staticMetaObject; }
QObject* QWebEngineProfile_protectedbase_sender(const void* self) {
	VirtualQWebEngineProfile* self_cast = static_cast<VirtualQWebEngineProfile*>( (QWebEngineProfile*)(self) );
	
	return self_cast->sender();

}

int QWebEngineProfile_protectedbase_senderSignalIndex(const void* self) {
	VirtualQWebEngineProfile* self_cast = static_cast<VirtualQWebEngineProfile*>( (QWebEngineProfile*)(self) );
	
	return self_cast->senderSignalIndex();

}

int QWebEngineProfile_protectedbase_receivers(const void* self, const char* signal) {
	VirtualQWebEngineProfile* self_cast = static_cast<VirtualQWebEngineProfile*>( (QWebEngineProfile*)(self) );
	
	return self_cast->receivers(signal);

}

bool QWebEngineProfile_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal) {
	VirtualQWebEngineProfile* self_cast = static_cast<VirtualQWebEngineProfile*>( (QWebEngineProfile*)(self) );
	
	return self_cast->isSignalConnected(*signal);

}

void QWebEngineProfile_delete(QWebEngineProfile* self) {
	delete self;
}

