#include <QAbstractNetworkCache>
#include <QChildEvent>
#include <QEvent>
#include <QIODevice>
#include <QMetaMethod>
#include <QMetaObject>
#include <QNetworkCacheMetaData>
#include <QNetworkDiskCache>
#include <QObject>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QTimerEvent>
#include <QUrl>
#include <qnetworkdiskcache.h>
#include "gen_qnetworkdiskcache.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
} /* extern C */
#endif

class VirtualQNetworkDiskCache final : public QNetworkDiskCache {
	struct QNetworkDiskCache_VTable* vtbl;
public:

	VirtualQNetworkDiskCache(struct QNetworkDiskCache_VTable* vtbl): QNetworkDiskCache(), vtbl(vtbl) {};
	VirtualQNetworkDiskCache(struct QNetworkDiskCache_VTable* vtbl, QObject* parent): QNetworkDiskCache(parent), vtbl(vtbl) {};

	virtual ~VirtualQNetworkDiskCache() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QNetworkDiskCache::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(vtbl, this);

		return callback_return_value;
	}

	friend QMetaObject* QNetworkDiskCache_virtualbase_metaObject(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QNetworkDiskCache::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend void* QNetworkDiskCache_virtualbase_metacast(void* self, const char* param1);

	// Subclass to allow providing a Go implementation
	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QNetworkDiskCache::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(vtbl, this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QNetworkDiskCache_virtualbase_metacall(void* self, int param1, int param2, void** param3);

	// Subclass to allow providing a Go implementation
	virtual qint64 cacheSize() const override {
		if (vtbl->cacheSize == 0) {
			return QNetworkDiskCache::cacheSize();
		}


		long long callback_return_value = vtbl->cacheSize(vtbl, this);

		return static_cast<qint64>(callback_return_value);
	}

	friend long long QNetworkDiskCache_virtualbase_cacheSize(const void* self);

	// Subclass to allow providing a Go implementation
	virtual QNetworkCacheMetaData metaData(const QUrl& url) override {
		if (vtbl->metaData == 0) {
			return QNetworkDiskCache::metaData(url);
		}

		const QUrl& url_ret = url;
		// Cast returned reference into pointer
		QUrl* sigval1 = const_cast<QUrl*>(&url_ret);

		QNetworkCacheMetaData* callback_return_value = vtbl->metaData(vtbl, this, sigval1);

		return *callback_return_value;
	}

	friend QNetworkCacheMetaData* QNetworkDiskCache_virtualbase_metaData(void* self, QUrl* url);

	// Subclass to allow providing a Go implementation
	virtual void updateMetaData(const QNetworkCacheMetaData& metaData) override {
		if (vtbl->updateMetaData == 0) {
			QNetworkDiskCache::updateMetaData(metaData);
			return;
		}

		const QNetworkCacheMetaData& metaData_ret = metaData;
		// Cast returned reference into pointer
		QNetworkCacheMetaData* sigval1 = const_cast<QNetworkCacheMetaData*>(&metaData_ret);

		vtbl->updateMetaData(vtbl, this, sigval1);

	}

	friend void QNetworkDiskCache_virtualbase_updateMetaData(void* self, QNetworkCacheMetaData* metaData);

	// Subclass to allow providing a Go implementation
	virtual QIODevice* data(const QUrl& url) override {
		if (vtbl->data == 0) {
			return QNetworkDiskCache::data(url);
		}

		const QUrl& url_ret = url;
		// Cast returned reference into pointer
		QUrl* sigval1 = const_cast<QUrl*>(&url_ret);

		QIODevice* callback_return_value = vtbl->data(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend QIODevice* QNetworkDiskCache_virtualbase_data(void* self, QUrl* url);

	// Subclass to allow providing a Go implementation
	virtual bool remove(const QUrl& url) override {
		if (vtbl->remove == 0) {
			return QNetworkDiskCache::remove(url);
		}

		const QUrl& url_ret = url;
		// Cast returned reference into pointer
		QUrl* sigval1 = const_cast<QUrl*>(&url_ret);

		bool callback_return_value = vtbl->remove(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend bool QNetworkDiskCache_virtualbase_remove(void* self, QUrl* url);

	// Subclass to allow providing a Go implementation
	virtual QIODevice* prepare(const QNetworkCacheMetaData& metaData) override {
		if (vtbl->prepare == 0) {
			return QNetworkDiskCache::prepare(metaData);
		}

		const QNetworkCacheMetaData& metaData_ret = metaData;
		// Cast returned reference into pointer
		QNetworkCacheMetaData* sigval1 = const_cast<QNetworkCacheMetaData*>(&metaData_ret);

		QIODevice* callback_return_value = vtbl->prepare(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend QIODevice* QNetworkDiskCache_virtualbase_prepare(void* self, QNetworkCacheMetaData* metaData);

	// Subclass to allow providing a Go implementation
	virtual void insert(QIODevice* device) override {
		if (vtbl->insert == 0) {
			QNetworkDiskCache::insert(device);
			return;
		}

		QIODevice* sigval1 = device;

		vtbl->insert(vtbl, this, sigval1);

	}

	friend void QNetworkDiskCache_virtualbase_insert(void* self, QIODevice* device);

	// Subclass to allow providing a Go implementation
	virtual void clear() override {
		if (vtbl->clear == 0) {
			QNetworkDiskCache::clear();
			return;
		}


		vtbl->clear(vtbl, this);

	}

	friend void QNetworkDiskCache_virtualbase_clear(void* self);

	// Subclass to allow providing a Go implementation
	virtual qint64 expire() override {
		if (vtbl->expire == 0) {
			return QNetworkDiskCache::expire();
		}


		long long callback_return_value = vtbl->expire(vtbl, this);

		return static_cast<qint64>(callback_return_value);
	}

	friend long long QNetworkDiskCache_virtualbase_expire(void* self);

	// Subclass to allow providing a Go implementation
	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QNetworkDiskCache::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend bool QNetworkDiskCache_virtualbase_event(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QNetworkDiskCache::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QNetworkDiskCache_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QNetworkDiskCache::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(vtbl, this, sigval1);

	}

	friend void QNetworkDiskCache_virtualbase_timerEvent(void* self, QTimerEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QNetworkDiskCache::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(vtbl, this, sigval1);

	}

	friend void QNetworkDiskCache_virtualbase_childEvent(void* self, QChildEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QNetworkDiskCache::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(vtbl, this, sigval1);

	}

	friend void QNetworkDiskCache_virtualbase_customEvent(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QNetworkDiskCache::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(vtbl, this, sigval1);

	}

	friend void QNetworkDiskCache_virtualbase_connectNotify(void* self, QMetaMethod* signal);

	// Subclass to allow providing a Go implementation
	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QNetworkDiskCache::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(vtbl, this, sigval1);

	}

	friend void QNetworkDiskCache_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend QObject* QNetworkDiskCache_protectedbase_sender(const void* self);
	friend int QNetworkDiskCache_protectedbase_senderSignalIndex(const void* self);
	friend int QNetworkDiskCache_protectedbase_receivers(const void* self, const char* signal);
	friend bool QNetworkDiskCache_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal);
};

QNetworkDiskCache* QNetworkDiskCache_new(struct QNetworkDiskCache_VTable* vtbl) {
	return new VirtualQNetworkDiskCache(vtbl);
}

QNetworkDiskCache* QNetworkDiskCache_new2(struct QNetworkDiskCache_VTable* vtbl, QObject* parent) {
	return new VirtualQNetworkDiskCache(vtbl, parent);
}

void QNetworkDiskCache_virtbase(QNetworkDiskCache* src, QAbstractNetworkCache** outptr_QAbstractNetworkCache) {
	*outptr_QAbstractNetworkCache = static_cast<QAbstractNetworkCache*>(src);
}

QMetaObject* QNetworkDiskCache_metaObject(const QNetworkDiskCache* self) {
	return (QMetaObject*) self->metaObject();
}

void* QNetworkDiskCache_metacast(QNetworkDiskCache* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QNetworkDiskCache_metacall(QNetworkDiskCache* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QNetworkDiskCache_tr(const char* s) {
	QString _ret = QNetworkDiskCache::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QNetworkDiskCache_cacheDirectory(const QNetworkDiskCache* self) {
	QString _ret = self->cacheDirectory();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QNetworkDiskCache_setCacheDirectory(QNetworkDiskCache* self, struct miqt_string cacheDir) {
	QString cacheDir_QString = QString::fromUtf8(cacheDir.data, cacheDir.len);
	self->setCacheDirectory(cacheDir_QString);
}

long long QNetworkDiskCache_maximumCacheSize(const QNetworkDiskCache* self) {
	qint64 _ret = self->maximumCacheSize();
	return static_cast<long long>(_ret);
}

void QNetworkDiskCache_setMaximumCacheSize(QNetworkDiskCache* self, long long size) {
	self->setMaximumCacheSize(static_cast<qint64>(size));
}

long long QNetworkDiskCache_cacheSize(const QNetworkDiskCache* self) {
	qint64 _ret = self->cacheSize();
	return static_cast<long long>(_ret);
}

QNetworkCacheMetaData* QNetworkDiskCache_metaData(QNetworkDiskCache* self, QUrl* url) {
	return new QNetworkCacheMetaData(self->metaData(*url));
}

void QNetworkDiskCache_updateMetaData(QNetworkDiskCache* self, QNetworkCacheMetaData* metaData) {
	self->updateMetaData(*metaData);
}

QIODevice* QNetworkDiskCache_data(QNetworkDiskCache* self, QUrl* url) {
	return self->data(*url);
}

bool QNetworkDiskCache_remove(QNetworkDiskCache* self, QUrl* url) {
	return self->remove(*url);
}

QIODevice* QNetworkDiskCache_prepare(QNetworkDiskCache* self, QNetworkCacheMetaData* metaData) {
	return self->prepare(*metaData);
}

void QNetworkDiskCache_insert(QNetworkDiskCache* self, QIODevice* device) {
	self->insert(device);
}

QNetworkCacheMetaData* QNetworkDiskCache_fileMetaData(const QNetworkDiskCache* self, struct miqt_string fileName) {
	QString fileName_QString = QString::fromUtf8(fileName.data, fileName.len);
	return new QNetworkCacheMetaData(self->fileMetaData(fileName_QString));
}

void QNetworkDiskCache_clear(QNetworkDiskCache* self) {
	self->clear();
}

struct miqt_string QNetworkDiskCache_tr2(const char* s, const char* c) {
	QString _ret = QNetworkDiskCache::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QNetworkDiskCache_tr3(const char* s, const char* c, int n) {
	QString _ret = QNetworkDiskCache::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QMetaObject* QNetworkDiskCache_virtualbase_metaObject(const void* self) {

	return (QMetaObject*) ( (const VirtualQNetworkDiskCache*)(self) )->QNetworkDiskCache::metaObject();

}

void* QNetworkDiskCache_virtualbase_metacast(void* self, const char* param1) {

	return ( (VirtualQNetworkDiskCache*)(self) )->QNetworkDiskCache::qt_metacast(param1);

}

int QNetworkDiskCache_virtualbase_metacall(void* self, int param1, int param2, void** param3) {

	return ( (VirtualQNetworkDiskCache*)(self) )->QNetworkDiskCache::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);

}

long long QNetworkDiskCache_virtualbase_cacheSize(const void* self) {

	qint64 _ret = ( (const VirtualQNetworkDiskCache*)(self) )->QNetworkDiskCache::cacheSize();
	return static_cast<long long>(_ret);

}

QNetworkCacheMetaData* QNetworkDiskCache_virtualbase_metaData(void* self, QUrl* url) {

	return new QNetworkCacheMetaData(( (VirtualQNetworkDiskCache*)(self) )->QNetworkDiskCache::metaData(*url));

}

void QNetworkDiskCache_virtualbase_updateMetaData(void* self, QNetworkCacheMetaData* metaData) {

	( (VirtualQNetworkDiskCache*)(self) )->QNetworkDiskCache::updateMetaData(*metaData);

}

QIODevice* QNetworkDiskCache_virtualbase_data(void* self, QUrl* url) {

	return ( (VirtualQNetworkDiskCache*)(self) )->QNetworkDiskCache::data(*url);

}

bool QNetworkDiskCache_virtualbase_remove(void* self, QUrl* url) {

	return ( (VirtualQNetworkDiskCache*)(self) )->QNetworkDiskCache::remove(*url);

}

QIODevice* QNetworkDiskCache_virtualbase_prepare(void* self, QNetworkCacheMetaData* metaData) {

	return ( (VirtualQNetworkDiskCache*)(self) )->QNetworkDiskCache::prepare(*metaData);

}

void QNetworkDiskCache_virtualbase_insert(void* self, QIODevice* device) {

	( (VirtualQNetworkDiskCache*)(self) )->QNetworkDiskCache::insert(device);

}

void QNetworkDiskCache_virtualbase_clear(void* self) {

	( (VirtualQNetworkDiskCache*)(self) )->QNetworkDiskCache::clear();

}

long long QNetworkDiskCache_virtualbase_expire(void* self) {

	qint64 _ret = ( (VirtualQNetworkDiskCache*)(self) )->QNetworkDiskCache::expire();
	return static_cast<long long>(_ret);

}

bool QNetworkDiskCache_virtualbase_event(void* self, QEvent* event) {

	return ( (VirtualQNetworkDiskCache*)(self) )->QNetworkDiskCache::event(event);

}

bool QNetworkDiskCache_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event) {

	return ( (VirtualQNetworkDiskCache*)(self) )->QNetworkDiskCache::eventFilter(watched, event);

}

void QNetworkDiskCache_virtualbase_timerEvent(void* self, QTimerEvent* event) {

	( (VirtualQNetworkDiskCache*)(self) )->QNetworkDiskCache::timerEvent(event);

}

void QNetworkDiskCache_virtualbase_childEvent(void* self, QChildEvent* event) {

	( (VirtualQNetworkDiskCache*)(self) )->QNetworkDiskCache::childEvent(event);

}

void QNetworkDiskCache_virtualbase_customEvent(void* self, QEvent* event) {

	( (VirtualQNetworkDiskCache*)(self) )->QNetworkDiskCache::customEvent(event);

}

void QNetworkDiskCache_virtualbase_connectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQNetworkDiskCache*)(self) )->QNetworkDiskCache::connectNotify(*signal);

}

void QNetworkDiskCache_virtualbase_disconnectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQNetworkDiskCache*)(self) )->QNetworkDiskCache::disconnectNotify(*signal);

}

const QMetaObject* QNetworkDiskCache_staticMetaObject() { return &QNetworkDiskCache::staticMetaObject; }
QObject* QNetworkDiskCache_protectedbase_sender(const void* self) {
	VirtualQNetworkDiskCache* self_cast = static_cast<VirtualQNetworkDiskCache*>( (QNetworkDiskCache*)(self) );
	
	return self_cast->sender();

}

int QNetworkDiskCache_protectedbase_senderSignalIndex(const void* self) {
	VirtualQNetworkDiskCache* self_cast = static_cast<VirtualQNetworkDiskCache*>( (QNetworkDiskCache*)(self) );
	
	return self_cast->senderSignalIndex();

}

int QNetworkDiskCache_protectedbase_receivers(const void* self, const char* signal) {
	VirtualQNetworkDiskCache* self_cast = static_cast<VirtualQNetworkDiskCache*>( (QNetworkDiskCache*)(self) );
	
	return self_cast->receivers(signal);

}

bool QNetworkDiskCache_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal) {
	VirtualQNetworkDiskCache* self_cast = static_cast<VirtualQNetworkDiskCache*>( (QNetworkDiskCache*)(self) );
	
	return self_cast->isSignalConnected(*signal);

}

void QNetworkDiskCache_delete(QNetworkDiskCache* self) {
	delete self;
}

