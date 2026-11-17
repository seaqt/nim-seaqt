#include <QChildEvent>
#include <QEvent>
#include <QList>
#include <QMetaMethod>
#include <QMetaObject>
#include <QNetworkCookie>
#include <QNetworkCookieJar>
#include <QObject>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QTimerEvent>
#include <QUrl>
#include <qnetworkcookiejar.h>
#include "gen_qnetworkcookiejar.h"

#ifndef SEAQT_ALIGNED_SIZEOF
#define SEAQT_ALIGNED_SIZEOF 1
#include <cstddef>
template<typename T>
static constexpr std::size_t seaqt_aligned_sizeof() {
	constexpr auto alignment = sizeof(std::max_align_t);
	return (sizeof(T) + alignment - 1) & ~(alignment - 1);
}
#endif

class VirtualQNetworkCookieJar final : public QNetworkCookieJar {
	const QNetworkCookieJar_VTable* vtbl;
public:
	friend void* QNetworkCookieJar_vdata(VirtualQNetworkCookieJar* self);
	friend VirtualQNetworkCookieJar* vdata_QNetworkCookieJar(void* vdata);

	VirtualQNetworkCookieJar(const QNetworkCookieJar_VTable* vtbl): QNetworkCookieJar(), vtbl(vtbl) {}
	VirtualQNetworkCookieJar(const QNetworkCookieJar_VTable* vtbl, QObject* parent): QNetworkCookieJar(parent), vtbl(vtbl) {}

	virtual ~VirtualQNetworkCookieJar() override { if(vtbl->destructor) vtbl->destructor(this); }

	void operator delete(void* p) { ::operator delete(p); }
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QNetworkCookieJar::metaObject();
		}

		QMetaObject* callback_return_value = vtbl->metaObject(this);
		return callback_return_value;
	}

	friend QMetaObject* QNetworkCookieJar_virtualbase_metaObject(const VirtualQNetworkCookieJar* self);

	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QNetworkCookieJar::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;
		void* callback_return_value = vtbl->metacast(this, sigval1);
		return callback_return_value;
	}

	friend void* QNetworkCookieJar_virtualbase_metacast(VirtualQNetworkCookieJar* self, const char* param1);

	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QNetworkCookieJar::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;
		int callback_return_value = vtbl->metacall(this, sigval1, sigval2, sigval3);
		return static_cast<int>(callback_return_value);
	}

	friend int QNetworkCookieJar_virtualbase_metacall(VirtualQNetworkCookieJar* self, int param1, int param2, void** param3);

	virtual QList<QNetworkCookie> cookiesForUrl(const QUrl& url) const override {
		if (vtbl->cookiesForUrl == 0) {
			return QNetworkCookieJar::cookiesForUrl(url);
		}

		const QUrl& url_ret = url;
		// Cast returned reference into pointer
		QUrl* sigval1 = const_cast<QUrl*>(&url_ret);
		struct seaqt_array /* of QNetworkCookie* */  callback_return_value = vtbl->cookiesForUrl(this, sigval1);
		QList<QNetworkCookie> callback_return_value_QList;
		callback_return_value_QList.reserve(callback_return_value.len);
		QNetworkCookie** callback_return_value_arr = static_cast<QNetworkCookie**>(callback_return_value.data);
		for(size_t i = 0; i < callback_return_value.len; ++i) {
			callback_return_value_QList.push_back(*(callback_return_value_arr[i]));
		}
		free(callback_return_value.data);
		return callback_return_value_QList;
	}

	friend struct seaqt_array /* of QNetworkCookie* */  QNetworkCookieJar_virtualbase_cookiesForUrl(const VirtualQNetworkCookieJar* self, QUrl* url);

	virtual bool setCookiesFromUrl(const QList<QNetworkCookie>& cookieList, const QUrl& url) override {
		if (vtbl->setCookiesFromUrl == 0) {
			return QNetworkCookieJar::setCookiesFromUrl(cookieList, url);
		}

		const QList<QNetworkCookie>& cookieList_ret = cookieList;
		// Convert QList<> from C++ memory to manually-managed C memory
		QNetworkCookie** cookieList_arr = static_cast<QNetworkCookie**>(malloc(sizeof(QNetworkCookie*) * cookieList_ret.length()));
		for (size_t i = 0, e = cookieList_ret.length(); i < e; ++i) {
			cookieList_arr[i] = new QNetworkCookie(cookieList_ret[i]);
		}
		struct seaqt_array cookieList_out;
		cookieList_out.len = cookieList_ret.length();
		cookieList_out.data = static_cast<void*>(cookieList_arr);
		struct seaqt_array /* of QNetworkCookie* */  sigval1 = cookieList_out;
		const QUrl& url_ret = url;
		// Cast returned reference into pointer
		QUrl* sigval2 = const_cast<QUrl*>(&url_ret);
		bool callback_return_value = vtbl->setCookiesFromUrl(this, sigval1, sigval2);
		return callback_return_value;
	}

	friend bool QNetworkCookieJar_virtualbase_setCookiesFromUrl(VirtualQNetworkCookieJar* self, struct seaqt_array /* of QNetworkCookie* */  cookieList, QUrl* url);

	virtual bool insertCookie(const QNetworkCookie& cookie) override {
		if (vtbl->insertCookie == 0) {
			return QNetworkCookieJar::insertCookie(cookie);
		}

		const QNetworkCookie& cookie_ret = cookie;
		// Cast returned reference into pointer
		QNetworkCookie* sigval1 = const_cast<QNetworkCookie*>(&cookie_ret);
		bool callback_return_value = vtbl->insertCookie(this, sigval1);
		return callback_return_value;
	}

	friend bool QNetworkCookieJar_virtualbase_insertCookie(VirtualQNetworkCookieJar* self, QNetworkCookie* cookie);

	virtual bool updateCookie(const QNetworkCookie& cookie) override {
		if (vtbl->updateCookie == 0) {
			return QNetworkCookieJar::updateCookie(cookie);
		}

		const QNetworkCookie& cookie_ret = cookie;
		// Cast returned reference into pointer
		QNetworkCookie* sigval1 = const_cast<QNetworkCookie*>(&cookie_ret);
		bool callback_return_value = vtbl->updateCookie(this, sigval1);
		return callback_return_value;
	}

	friend bool QNetworkCookieJar_virtualbase_updateCookie(VirtualQNetworkCookieJar* self, QNetworkCookie* cookie);

	virtual bool deleteCookie(const QNetworkCookie& cookie) override {
		if (vtbl->deleteCookie == 0) {
			return QNetworkCookieJar::deleteCookie(cookie);
		}

		const QNetworkCookie& cookie_ret = cookie;
		// Cast returned reference into pointer
		QNetworkCookie* sigval1 = const_cast<QNetworkCookie*>(&cookie_ret);
		bool callback_return_value = vtbl->deleteCookie(this, sigval1);
		return callback_return_value;
	}

	friend bool QNetworkCookieJar_virtualbase_deleteCookie(VirtualQNetworkCookieJar* self, QNetworkCookie* cookie);

	virtual bool validateCookie(const QNetworkCookie& cookie, const QUrl& url) const override {
		if (vtbl->validateCookie == 0) {
			return QNetworkCookieJar::validateCookie(cookie, url);
		}

		const QNetworkCookie& cookie_ret = cookie;
		// Cast returned reference into pointer
		QNetworkCookie* sigval1 = const_cast<QNetworkCookie*>(&cookie_ret);
		const QUrl& url_ret = url;
		// Cast returned reference into pointer
		QUrl* sigval2 = const_cast<QUrl*>(&url_ret);
		bool callback_return_value = vtbl->validateCookie(this, sigval1, sigval2);
		return callback_return_value;
	}

	friend bool QNetworkCookieJar_virtualbase_validateCookie(const VirtualQNetworkCookieJar* self, QNetworkCookie* cookie, QUrl* url);

	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QNetworkCookieJar::event(event);
		}

		QEvent* sigval1 = event;
		bool callback_return_value = vtbl->event(this, sigval1);
		return callback_return_value;
	}

	friend bool QNetworkCookieJar_virtualbase_event(VirtualQNetworkCookieJar* self, QEvent* event);

	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QNetworkCookieJar::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;
		bool callback_return_value = vtbl->eventFilter(this, sigval1, sigval2);
		return callback_return_value;
	}

	friend bool QNetworkCookieJar_virtualbase_eventFilter(VirtualQNetworkCookieJar* self, QObject* watched, QEvent* event);

	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QNetworkCookieJar::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;
		vtbl->timerEvent(this, sigval1);
	}

	friend void QNetworkCookieJar_virtualbase_timerEvent(VirtualQNetworkCookieJar* self, QTimerEvent* event);

	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QNetworkCookieJar::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;
		vtbl->childEvent(this, sigval1);
	}

	friend void QNetworkCookieJar_virtualbase_childEvent(VirtualQNetworkCookieJar* self, QChildEvent* event);

	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QNetworkCookieJar::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;
		vtbl->customEvent(this, sigval1);
	}

	friend void QNetworkCookieJar_virtualbase_customEvent(VirtualQNetworkCookieJar* self, QEvent* event);

	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QNetworkCookieJar::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);
		vtbl->connectNotify(this, sigval1);
	}

	friend void QNetworkCookieJar_virtualbase_connectNotify(VirtualQNetworkCookieJar* self, QMetaMethod* signal);

	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QNetworkCookieJar::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);
		vtbl->disconnectNotify(this, sigval1);
	}

	friend void QNetworkCookieJar_virtualbase_disconnectNotify(VirtualQNetworkCookieJar* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend struct seaqt_array /* of QNetworkCookie* */  QNetworkCookieJar_protectedbase_allCookies(const VirtualQNetworkCookieJar* self);
	friend void QNetworkCookieJar_protectedbase_setAllCookies(VirtualQNetworkCookieJar* self, struct seaqt_array /* of QNetworkCookie* */  cookieList);
	friend QObject* QNetworkCookieJar_protectedbase_sender(const VirtualQNetworkCookieJar* self);
	friend int QNetworkCookieJar_protectedbase_senderSignalIndex(const VirtualQNetworkCookieJar* self);
	friend int QNetworkCookieJar_protectedbase_receivers(const VirtualQNetworkCookieJar* self, const char* signal);
	friend bool QNetworkCookieJar_protectedbase_isSignalConnected(const VirtualQNetworkCookieJar* self, QMetaMethod* signal);
};

VirtualQNetworkCookieJar* QNetworkCookieJar_new(const QNetworkCookieJar_VTable* vtbl, size_t vdata) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQNetworkCookieJar>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQNetworkCookieJar(vtbl) : nullptr;
}

VirtualQNetworkCookieJar* QNetworkCookieJar_new_parent(const QNetworkCookieJar_VTable* vtbl, size_t vdata, QObject* parent) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQNetworkCookieJar>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQNetworkCookieJar(vtbl, parent) : nullptr;
}

void QNetworkCookieJar_virtbase(QNetworkCookieJar* src, QObject** outptr_QObject) {
	*outptr_QObject = static_cast<QObject*>(src);
}

QMetaObject* QNetworkCookieJar_metaObject(const QNetworkCookieJar* self) {
	return (QMetaObject*) self->metaObject();
}

void* QNetworkCookieJar_metacast(QNetworkCookieJar* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QNetworkCookieJar_metacall(QNetworkCookieJar* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct seaqt_string QNetworkCookieJar_tr_s(const char* s) {
	QString _ret = QNetworkCookieJar::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_array /* of QNetworkCookie* */  QNetworkCookieJar_cookiesForUrl(const QNetworkCookieJar* self, QUrl* url) {
	QList<QNetworkCookie> _ret = self->cookiesForUrl(*url);
	// Convert QList<> from C++ memory to manually-managed C memory
	QNetworkCookie** _arr = static_cast<QNetworkCookie**>(malloc(sizeof(QNetworkCookie*) * _ret.length()));
	for (size_t i = 0, e = _ret.length(); i < e; ++i) {
		_arr[i] = new QNetworkCookie(_ret[i]);
	}
	struct seaqt_array _out;
	_out.len = _ret.length();
	_out.data = static_cast<void*>(_arr);
	return _out;
}

bool QNetworkCookieJar_setCookiesFromUrl(QNetworkCookieJar* self, struct seaqt_array /* of QNetworkCookie* */  cookieList, QUrl* url) {
	QList<QNetworkCookie> cookieList_QList;
	cookieList_QList.reserve(cookieList.len);
	QNetworkCookie** cookieList_arr = static_cast<QNetworkCookie**>(cookieList.data);
	for(size_t i = 0; i < cookieList.len; ++i) {
		cookieList_QList.push_back(*(cookieList_arr[i]));
	}
	return self->setCookiesFromUrl(cookieList_QList, *url);
}

bool QNetworkCookieJar_insertCookie(QNetworkCookieJar* self, QNetworkCookie* cookie) {
	return self->insertCookie(*cookie);
}

bool QNetworkCookieJar_updateCookie(QNetworkCookieJar* self, QNetworkCookie* cookie) {
	return self->updateCookie(*cookie);
}

bool QNetworkCookieJar_deleteCookie(QNetworkCookieJar* self, QNetworkCookie* cookie) {
	return self->deleteCookie(*cookie);
}

struct seaqt_string QNetworkCookieJar_tr_s_c(const char* s, const char* c) {
	QString _ret = QNetworkCookieJar::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QNetworkCookieJar_tr_s_c_n(const char* s, const char* c, int n) {
	QString _ret = QNetworkCookieJar::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

const QMetaObject* QNetworkCookieJar_staticMetaObject() { return &QNetworkCookieJar::staticMetaObject; }
void* QNetworkCookieJar_vdata(VirtualQNetworkCookieJar* self) { return reinterpret_cast<void*>(reinterpret_cast<char*>(self) + seaqt_aligned_sizeof<VirtualQNetworkCookieJar>()); }
VirtualQNetworkCookieJar* vdata_QNetworkCookieJar(void* vdata) { return reinterpret_cast<VirtualQNetworkCookieJar*>(reinterpret_cast<char*>(vdata) - seaqt_aligned_sizeof<VirtualQNetworkCookieJar>()); }

QMetaObject* QNetworkCookieJar_virtualbase_metaObject(const VirtualQNetworkCookieJar* self) {

	return (QMetaObject*) self->QNetworkCookieJar::metaObject();
}

void* QNetworkCookieJar_virtualbase_metacast(VirtualQNetworkCookieJar* self, const char* param1) {

	return self->QNetworkCookieJar::qt_metacast(param1);
}

int QNetworkCookieJar_virtualbase_metacall(VirtualQNetworkCookieJar* self, int param1, int param2, void** param3) {

	return self->QNetworkCookieJar::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct seaqt_array /* of QNetworkCookie* */  QNetworkCookieJar_virtualbase_cookiesForUrl(const VirtualQNetworkCookieJar* self, QUrl* url) {

	QList<QNetworkCookie> _ret = self->QNetworkCookieJar::cookiesForUrl(*url);
	// Convert QList<> from C++ memory to manually-managed C memory
	QNetworkCookie** _arr = static_cast<QNetworkCookie**>(malloc(sizeof(QNetworkCookie*) * _ret.length()));
	for (size_t i = 0, e = _ret.length(); i < e; ++i) {
		_arr[i] = new QNetworkCookie(_ret[i]);
	}
	struct seaqt_array _out;
	_out.len = _ret.length();
	_out.data = static_cast<void*>(_arr);
	return _out;
}

bool QNetworkCookieJar_virtualbase_setCookiesFromUrl(VirtualQNetworkCookieJar* self, struct seaqt_array /* of QNetworkCookie* */  cookieList, QUrl* url) {
	QList<QNetworkCookie> cookieList_QList;
	cookieList_QList.reserve(cookieList.len);
	QNetworkCookie** cookieList_arr = static_cast<QNetworkCookie**>(cookieList.data);
	for(size_t i = 0; i < cookieList.len; ++i) {
		cookieList_QList.push_back(*(cookieList_arr[i]));
	}

	return self->QNetworkCookieJar::setCookiesFromUrl(cookieList_QList, *url);
}

bool QNetworkCookieJar_virtualbase_insertCookie(VirtualQNetworkCookieJar* self, QNetworkCookie* cookie) {

	return self->QNetworkCookieJar::insertCookie(*cookie);
}

bool QNetworkCookieJar_virtualbase_updateCookie(VirtualQNetworkCookieJar* self, QNetworkCookie* cookie) {

	return self->QNetworkCookieJar::updateCookie(*cookie);
}

bool QNetworkCookieJar_virtualbase_deleteCookie(VirtualQNetworkCookieJar* self, QNetworkCookie* cookie) {

	return self->QNetworkCookieJar::deleteCookie(*cookie);
}

bool QNetworkCookieJar_virtualbase_validateCookie(const VirtualQNetworkCookieJar* self, QNetworkCookie* cookie, QUrl* url) {

	return self->QNetworkCookieJar::validateCookie(*cookie, *url);
}

bool QNetworkCookieJar_virtualbase_event(VirtualQNetworkCookieJar* self, QEvent* event) {

	return self->QNetworkCookieJar::event(event);
}

bool QNetworkCookieJar_virtualbase_eventFilter(VirtualQNetworkCookieJar* self, QObject* watched, QEvent* event) {

	return self->QNetworkCookieJar::eventFilter(watched, event);
}

void QNetworkCookieJar_virtualbase_timerEvent(VirtualQNetworkCookieJar* self, QTimerEvent* event) {

	self->QNetworkCookieJar::timerEvent(event);
}

void QNetworkCookieJar_virtualbase_childEvent(VirtualQNetworkCookieJar* self, QChildEvent* event) {

	self->QNetworkCookieJar::childEvent(event);
}

void QNetworkCookieJar_virtualbase_customEvent(VirtualQNetworkCookieJar* self, QEvent* event) {

	self->QNetworkCookieJar::customEvent(event);
}

void QNetworkCookieJar_virtualbase_connectNotify(VirtualQNetworkCookieJar* self, QMetaMethod* signal) {

	self->QNetworkCookieJar::connectNotify(*signal);
}

void QNetworkCookieJar_virtualbase_disconnectNotify(VirtualQNetworkCookieJar* self, QMetaMethod* signal) {

	self->QNetworkCookieJar::disconnectNotify(*signal);
}

struct seaqt_array /* of QNetworkCookie* */  QNetworkCookieJar_protectedbase_allCookies(const VirtualQNetworkCookieJar* self) {
	QList<QNetworkCookie> _ret = self->allCookies();
	// Convert QList<> from C++ memory to manually-managed C memory
	QNetworkCookie** _arr = static_cast<QNetworkCookie**>(malloc(sizeof(QNetworkCookie*) * _ret.length()));
	for (size_t i = 0, e = _ret.length(); i < e; ++i) {
		_arr[i] = new QNetworkCookie(_ret[i]);
	}
	struct seaqt_array _out;
	_out.len = _ret.length();
	_out.data = static_cast<void*>(_arr);
	return _out;
}

void QNetworkCookieJar_protectedbase_setAllCookies(VirtualQNetworkCookieJar* self, struct seaqt_array /* of QNetworkCookie* */  cookieList) {
		QList<QNetworkCookie> cookieList_QList;
		cookieList_QList.reserve(cookieList.len);
		QNetworkCookie** cookieList_arr = static_cast<QNetworkCookie**>(cookieList.data);
		for(size_t i = 0; i < cookieList.len; ++i) {
			cookieList_QList.push_back(*(cookieList_arr[i]));
		}
	self->setAllCookies(cookieList_QList);
}

QObject* QNetworkCookieJar_protectedbase_sender(const VirtualQNetworkCookieJar* self) {
	return self->sender();
}

int QNetworkCookieJar_protectedbase_senderSignalIndex(const VirtualQNetworkCookieJar* self) {
	return self->senderSignalIndex();
}

int QNetworkCookieJar_protectedbase_receivers(const VirtualQNetworkCookieJar* self, const char* signal) {
	return self->receivers(signal);
}

bool QNetworkCookieJar_protectedbase_isSignalConnected(const VirtualQNetworkCookieJar* self, QMetaMethod* signal) {
	return self->isSignalConnected(*signal);
}

void QNetworkCookieJar_delete(QNetworkCookieJar* self) {
	delete self;
}

