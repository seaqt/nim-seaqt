#include <QByteArray>
#include <QChildEvent>
#include <QEvent>
#include <QHttpMultiPart>
#include <QIODevice>
#include <QJsonDocument>
#include <QMap>
#include <QMetaMethod>
#include <QMetaObject>
#include <QNetworkAccessManager>
#include <QNetworkReply>
#include <QNetworkRequest>
#include <QObject>
#include <QRestAccessManager>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QTimerEvent>
#include <QVariant>
#include <qrestaccessmanager.h>
#include "gen_qrestaccessmanager.h"

#ifndef SEAQT_ALIGNED_SIZEOF
#define SEAQT_ALIGNED_SIZEOF 1
#include <cstddef>
template<typename T>
static constexpr std::size_t seaqt_aligned_sizeof() {
	constexpr auto alignment = sizeof(std::max_align_t);
	return (sizeof(T) + alignment - 1) & ~(alignment - 1);
}
#endif

class VirtualQRestAccessManager final : public QRestAccessManager {
	const QRestAccessManager_VTable* vtbl;
public:
	friend void* QRestAccessManager_vdata(VirtualQRestAccessManager* self);
	friend VirtualQRestAccessManager* vdata_QRestAccessManager(void* vdata);

	VirtualQRestAccessManager(const QRestAccessManager_VTable* vtbl, QNetworkAccessManager* manager): QRestAccessManager(manager), vtbl(vtbl) {}
	VirtualQRestAccessManager(const QRestAccessManager_VTable* vtbl, QNetworkAccessManager* manager, QObject* parent): QRestAccessManager(manager, parent), vtbl(vtbl) {}

	virtual ~VirtualQRestAccessManager() override { if(vtbl->destructor) vtbl->destructor(this); }

	void operator delete(void* p) { ::operator delete(p); }
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QRestAccessManager::metaObject();
		}

		QMetaObject* callback_return_value = vtbl->metaObject(this);
		return callback_return_value;
	}

	friend QMetaObject* QRestAccessManager_virtualbase_metaObject(const VirtualQRestAccessManager* self);

	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QRestAccessManager::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;
		void* callback_return_value = vtbl->metacast(this, sigval1);
		return callback_return_value;
	}

	friend void* QRestAccessManager_virtualbase_metacast(VirtualQRestAccessManager* self, const char* param1);

	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QRestAccessManager::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;
		int callback_return_value = vtbl->metacall(this, sigval1, sigval2, sigval3);
		return static_cast<int>(callback_return_value);
	}

	friend int QRestAccessManager_virtualbase_metacall(VirtualQRestAccessManager* self, int param1, int param2, void** param3);

	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QRestAccessManager::event(event);
		}

		QEvent* sigval1 = event;
		bool callback_return_value = vtbl->event(this, sigval1);
		return callback_return_value;
	}

	friend bool QRestAccessManager_virtualbase_event(VirtualQRestAccessManager* self, QEvent* event);

	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QRestAccessManager::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;
		bool callback_return_value = vtbl->eventFilter(this, sigval1, sigval2);
		return callback_return_value;
	}

	friend bool QRestAccessManager_virtualbase_eventFilter(VirtualQRestAccessManager* self, QObject* watched, QEvent* event);

	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QRestAccessManager::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;
		vtbl->timerEvent(this, sigval1);
	}

	friend void QRestAccessManager_virtualbase_timerEvent(VirtualQRestAccessManager* self, QTimerEvent* event);

	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QRestAccessManager::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;
		vtbl->childEvent(this, sigval1);
	}

	friend void QRestAccessManager_virtualbase_childEvent(VirtualQRestAccessManager* self, QChildEvent* event);

	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QRestAccessManager::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;
		vtbl->customEvent(this, sigval1);
	}

	friend void QRestAccessManager_virtualbase_customEvent(VirtualQRestAccessManager* self, QEvent* event);

	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QRestAccessManager::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);
		vtbl->connectNotify(this, sigval1);
	}

	friend void QRestAccessManager_virtualbase_connectNotify(VirtualQRestAccessManager* self, QMetaMethod* signal);

	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QRestAccessManager::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);
		vtbl->disconnectNotify(this, sigval1);
	}

	friend void QRestAccessManager_virtualbase_disconnectNotify(VirtualQRestAccessManager* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend QObject* QRestAccessManager_protectedbase_sender(const VirtualQRestAccessManager* self);
	friend int QRestAccessManager_protectedbase_senderSignalIndex(const VirtualQRestAccessManager* self);
	friend int QRestAccessManager_protectedbase_receivers(const VirtualQRestAccessManager* self, const char* signal);
	friend bool QRestAccessManager_protectedbase_isSignalConnected(const VirtualQRestAccessManager* self, QMetaMethod* signal);
};

VirtualQRestAccessManager* QRestAccessManager_new_manager(const QRestAccessManager_VTable* vtbl, size_t vdata, QNetworkAccessManager* manager) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQRestAccessManager>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQRestAccessManager(vtbl, manager) : nullptr;
}

VirtualQRestAccessManager* QRestAccessManager_new_manager_parent(const QRestAccessManager_VTable* vtbl, size_t vdata, QNetworkAccessManager* manager, QObject* parent) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQRestAccessManager>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQRestAccessManager(vtbl, manager, parent) : nullptr;
}

void QRestAccessManager_virtbase(QRestAccessManager* src, QObject** outptr_QObject) {
	*outptr_QObject = static_cast<QObject*>(src);
}

QMetaObject* QRestAccessManager_metaObject(const QRestAccessManager* self) {
	return (QMetaObject*) self->metaObject();
}

void* QRestAccessManager_metacast(QRestAccessManager* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QRestAccessManager_metacall(QRestAccessManager* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct seaqt_string QRestAccessManager_tr_s(const char* s) {
	QString _ret = QRestAccessManager::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QNetworkAccessManager* QRestAccessManager_networkAccessManager(const QRestAccessManager* self) {
	return self->networkAccessManager();
}

QNetworkReply* QRestAccessManager_deleteResource(QRestAccessManager* self, QNetworkRequest* request) {
	return self->deleteResource(*request);
}

QNetworkReply* QRestAccessManager_head(QRestAccessManager* self, QNetworkRequest* request) {
	return self->head(*request);
}

QNetworkReply* QRestAccessManager_get_QNetworkRequest(QRestAccessManager* self, QNetworkRequest* request) {
	return self->get(*request);
}

QNetworkReply* QRestAccessManager_get_QNetworkRequest_QByteArray(QRestAccessManager* self, QNetworkRequest* request, struct seaqt_string data) {
	QByteArray data_QByteArray(data.data, data.len);
	return self->get(*request, data_QByteArray);
}

QNetworkReply* QRestAccessManager_get_QNetworkRequest_QJsonDocument(QRestAccessManager* self, QNetworkRequest* request, QJsonDocument* data) {
	return self->get(*request, *data);
}

QNetworkReply* QRestAccessManager_get_QNetworkRequest_QIODevice(QRestAccessManager* self, QNetworkRequest* request, QIODevice* data) {
	return self->get(*request, data);
}

QNetworkReply* QRestAccessManager_post_QNetworkRequest_QJsonDocument(QRestAccessManager* self, QNetworkRequest* request, QJsonDocument* data) {
	return self->post(*request, *data);
}

QNetworkReply* QRestAccessManager_post_QNetworkRequest_QVariantMap(QRestAccessManager* self, QNetworkRequest* request, struct seaqt_map /* of struct seaqt_string to QVariant* */  data) {
	QVariantMap data_QMap;
	struct seaqt_string* data_karr = static_cast<struct seaqt_string*>(data.keys);
	QVariant** data_varr = static_cast<QVariant**>(data.values);
	for(size_t i = 0; i < data.len; ++i) {
		QString data_karr_i_QString = QString::fromUtf8(data_karr[i].data, data_karr[i].len);
		data_QMap[data_karr_i_QString] = *(data_varr[i]);
	}
	return self->post(*request, data_QMap);
}

QNetworkReply* QRestAccessManager_post_QNetworkRequest_QByteArray(QRestAccessManager* self, QNetworkRequest* request, struct seaqt_string data) {
	QByteArray data_QByteArray(data.data, data.len);
	return self->post(*request, data_QByteArray);
}

QNetworkReply* QRestAccessManager_post_QNetworkRequest_QHttpMultiPart(QRestAccessManager* self, QNetworkRequest* request, QHttpMultiPart* data) {
	return self->post(*request, data);
}

QNetworkReply* QRestAccessManager_post_QNetworkRequest_QIODevice(QRestAccessManager* self, QNetworkRequest* request, QIODevice* data) {
	return self->post(*request, data);
}

QNetworkReply* QRestAccessManager_put_QNetworkRequest_QJsonDocument(QRestAccessManager* self, QNetworkRequest* request, QJsonDocument* data) {
	return self->put(*request, *data);
}

QNetworkReply* QRestAccessManager_put_QNetworkRequest_QVariantMap(QRestAccessManager* self, QNetworkRequest* request, struct seaqt_map /* of struct seaqt_string to QVariant* */  data) {
	QVariantMap data_QMap;
	struct seaqt_string* data_karr = static_cast<struct seaqt_string*>(data.keys);
	QVariant** data_varr = static_cast<QVariant**>(data.values);
	for(size_t i = 0; i < data.len; ++i) {
		QString data_karr_i_QString = QString::fromUtf8(data_karr[i].data, data_karr[i].len);
		data_QMap[data_karr_i_QString] = *(data_varr[i]);
	}
	return self->put(*request, data_QMap);
}

QNetworkReply* QRestAccessManager_put_QNetworkRequest_QByteArray(QRestAccessManager* self, QNetworkRequest* request, struct seaqt_string data) {
	QByteArray data_QByteArray(data.data, data.len);
	return self->put(*request, data_QByteArray);
}

QNetworkReply* QRestAccessManager_put_QNetworkRequest_QHttpMultiPart(QRestAccessManager* self, QNetworkRequest* request, QHttpMultiPart* data) {
	return self->put(*request, data);
}

QNetworkReply* QRestAccessManager_put_QNetworkRequest_QIODevice(QRestAccessManager* self, QNetworkRequest* request, QIODevice* data) {
	return self->put(*request, data);
}

QNetworkReply* QRestAccessManager_patch_QNetworkRequest_QJsonDocument(QRestAccessManager* self, QNetworkRequest* request, QJsonDocument* data) {
	return self->patch(*request, *data);
}

QNetworkReply* QRestAccessManager_patch_QNetworkRequest_QVariantMap(QRestAccessManager* self, QNetworkRequest* request, struct seaqt_map /* of struct seaqt_string to QVariant* */  data) {
	QVariantMap data_QMap;
	struct seaqt_string* data_karr = static_cast<struct seaqt_string*>(data.keys);
	QVariant** data_varr = static_cast<QVariant**>(data.values);
	for(size_t i = 0; i < data.len; ++i) {
		QString data_karr_i_QString = QString::fromUtf8(data_karr[i].data, data_karr[i].len);
		data_QMap[data_karr_i_QString] = *(data_varr[i]);
	}
	return self->patch(*request, data_QMap);
}

QNetworkReply* QRestAccessManager_patch_QNetworkRequest_QByteArray(QRestAccessManager* self, QNetworkRequest* request, struct seaqt_string data) {
	QByteArray data_QByteArray(data.data, data.len);
	return self->patch(*request, data_QByteArray);
}

QNetworkReply* QRestAccessManager_patch_QNetworkRequest_QIODevice(QRestAccessManager* self, QNetworkRequest* request, QIODevice* data) {
	return self->patch(*request, data);
}

QNetworkReply* QRestAccessManager_sendCustomRequest_QNetworkRequest_QByteArray_QByteArray(QRestAccessManager* self, QNetworkRequest* request, struct seaqt_string method, struct seaqt_string data) {
	QByteArray method_QByteArray(method.data, method.len);
	QByteArray data_QByteArray(data.data, data.len);
	return self->sendCustomRequest(*request, method_QByteArray, data_QByteArray);
}

QNetworkReply* QRestAccessManager_sendCustomRequest_QNetworkRequest_QByteArray_QIODevice(QRestAccessManager* self, QNetworkRequest* request, struct seaqt_string method, QIODevice* data) {
	QByteArray method_QByteArray(method.data, method.len);
	return self->sendCustomRequest(*request, method_QByteArray, data);
}

QNetworkReply* QRestAccessManager_sendCustomRequest_QNetworkRequest_QByteArray_QHttpMultiPart(QRestAccessManager* self, QNetworkRequest* request, struct seaqt_string method, QHttpMultiPart* data) {
	QByteArray method_QByteArray(method.data, method.len);
	return self->sendCustomRequest(*request, method_QByteArray, data);
}

struct seaqt_string QRestAccessManager_tr_s_c(const char* s, const char* c) {
	QString _ret = QRestAccessManager::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QRestAccessManager_tr_s_c_n(const char* s, const char* c, int n) {
	QString _ret = QRestAccessManager::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

const QMetaObject* QRestAccessManager_staticMetaObject() { return &QRestAccessManager::staticMetaObject; }
void* QRestAccessManager_vdata(VirtualQRestAccessManager* self) { return reinterpret_cast<void*>(reinterpret_cast<char*>(self) + seaqt_aligned_sizeof<VirtualQRestAccessManager>()); }
VirtualQRestAccessManager* vdata_QRestAccessManager(void* vdata) { return reinterpret_cast<VirtualQRestAccessManager*>(reinterpret_cast<char*>(vdata) - seaqt_aligned_sizeof<VirtualQRestAccessManager>()); }

QMetaObject* QRestAccessManager_virtualbase_metaObject(const VirtualQRestAccessManager* self) {

	return (QMetaObject*) self->QRestAccessManager::metaObject();
}

void* QRestAccessManager_virtualbase_metacast(VirtualQRestAccessManager* self, const char* param1) {

	return self->QRestAccessManager::qt_metacast(param1);
}

int QRestAccessManager_virtualbase_metacall(VirtualQRestAccessManager* self, int param1, int param2, void** param3) {

	return self->QRestAccessManager::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

bool QRestAccessManager_virtualbase_event(VirtualQRestAccessManager* self, QEvent* event) {

	return self->QRestAccessManager::event(event);
}

bool QRestAccessManager_virtualbase_eventFilter(VirtualQRestAccessManager* self, QObject* watched, QEvent* event) {

	return self->QRestAccessManager::eventFilter(watched, event);
}

void QRestAccessManager_virtualbase_timerEvent(VirtualQRestAccessManager* self, QTimerEvent* event) {

	self->QRestAccessManager::timerEvent(event);
}

void QRestAccessManager_virtualbase_childEvent(VirtualQRestAccessManager* self, QChildEvent* event) {

	self->QRestAccessManager::childEvent(event);
}

void QRestAccessManager_virtualbase_customEvent(VirtualQRestAccessManager* self, QEvent* event) {

	self->QRestAccessManager::customEvent(event);
}

void QRestAccessManager_virtualbase_connectNotify(VirtualQRestAccessManager* self, QMetaMethod* signal) {

	self->QRestAccessManager::connectNotify(*signal);
}

void QRestAccessManager_virtualbase_disconnectNotify(VirtualQRestAccessManager* self, QMetaMethod* signal) {

	self->QRestAccessManager::disconnectNotify(*signal);
}

QObject* QRestAccessManager_protectedbase_sender(const VirtualQRestAccessManager* self) {
	return self->QRestAccessManager::sender();
}

int QRestAccessManager_protectedbase_senderSignalIndex(const VirtualQRestAccessManager* self) {
	return self->QRestAccessManager::senderSignalIndex();
}

int QRestAccessManager_protectedbase_receivers(const VirtualQRestAccessManager* self, const char* signal) {
	return self->QRestAccessManager::receivers(signal);
}

bool QRestAccessManager_protectedbase_isSignalConnected(const VirtualQRestAccessManager* self, QMetaMethod* signal) {
	return self->QRestAccessManager::isSignalConnected(*signal);
}

void QRestAccessManager_delete(QRestAccessManager* self) {
	delete self;
}

