#include <QChildEvent>
#include <QEvent>
#include <QLibrary>
#include <QMetaMethod>
#include <QMetaObject>
#include <QObject>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QTimerEvent>
#include <qlibrary.h>
#include "gen_qlibrary.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
} /* extern C */
#endif

class VirtualQLibrary final : public QLibrary {
	struct QLibrary_VTable* vtbl;
public:

	VirtualQLibrary(struct QLibrary_VTable* vtbl): QLibrary(), vtbl(vtbl) {};
	VirtualQLibrary(struct QLibrary_VTable* vtbl, const QString& fileName): QLibrary(fileName), vtbl(vtbl) {};
	VirtualQLibrary(struct QLibrary_VTable* vtbl, const QString& fileName, int verNum): QLibrary(fileName, verNum), vtbl(vtbl) {};
	VirtualQLibrary(struct QLibrary_VTable* vtbl, const QString& fileName, const QString& version): QLibrary(fileName, version), vtbl(vtbl) {};
	VirtualQLibrary(struct QLibrary_VTable* vtbl, QObject* parent): QLibrary(parent), vtbl(vtbl) {};
	VirtualQLibrary(struct QLibrary_VTable* vtbl, const QString& fileName, QObject* parent): QLibrary(fileName, parent), vtbl(vtbl) {};
	VirtualQLibrary(struct QLibrary_VTable* vtbl, const QString& fileName, int verNum, QObject* parent): QLibrary(fileName, verNum, parent), vtbl(vtbl) {};
	VirtualQLibrary(struct QLibrary_VTable* vtbl, const QString& fileName, const QString& version, QObject* parent): QLibrary(fileName, version, parent), vtbl(vtbl) {};

	virtual ~VirtualQLibrary() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QLibrary::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(vtbl, this);

		return callback_return_value;
	}

	friend QMetaObject* QLibrary_virtualbase_metaObject(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QLibrary::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend void* QLibrary_virtualbase_metacast(void* self, const char* param1);

	// Subclass to allow providing a Go implementation
	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QLibrary::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(vtbl, this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QLibrary_virtualbase_metacall(void* self, int param1, int param2, void** param3);

	// Subclass to allow providing a Go implementation
	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QLibrary::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend bool QLibrary_virtualbase_event(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QLibrary::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QLibrary_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QLibrary::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(vtbl, this, sigval1);

	}

	friend void QLibrary_virtualbase_timerEvent(void* self, QTimerEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QLibrary::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(vtbl, this, sigval1);

	}

	friend void QLibrary_virtualbase_childEvent(void* self, QChildEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QLibrary::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(vtbl, this, sigval1);

	}

	friend void QLibrary_virtualbase_customEvent(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QLibrary::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(vtbl, this, sigval1);

	}

	friend void QLibrary_virtualbase_connectNotify(void* self, QMetaMethod* signal);

	// Subclass to allow providing a Go implementation
	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QLibrary::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(vtbl, this, sigval1);

	}

	friend void QLibrary_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend QObject* QLibrary_protectedbase_sender(bool* _dynamic_cast_ok, const void* self);
	friend int QLibrary_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self);
	friend int QLibrary_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal);
	friend bool QLibrary_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal);
};

QLibrary* QLibrary_new(struct QLibrary_VTable* vtbl) {
	return new VirtualQLibrary(vtbl);
}

QLibrary* QLibrary_new2(struct QLibrary_VTable* vtbl, struct miqt_string fileName) {
	QString fileName_QString = QString::fromUtf8(fileName.data, fileName.len);
	return new VirtualQLibrary(vtbl, fileName_QString);
}

QLibrary* QLibrary_new3(struct QLibrary_VTable* vtbl, struct miqt_string fileName, int verNum) {
	QString fileName_QString = QString::fromUtf8(fileName.data, fileName.len);
	return new VirtualQLibrary(vtbl, fileName_QString, static_cast<int>(verNum));
}

QLibrary* QLibrary_new4(struct QLibrary_VTable* vtbl, struct miqt_string fileName, struct miqt_string version) {
	QString fileName_QString = QString::fromUtf8(fileName.data, fileName.len);
	QString version_QString = QString::fromUtf8(version.data, version.len);
	return new VirtualQLibrary(vtbl, fileName_QString, version_QString);
}

QLibrary* QLibrary_new5(struct QLibrary_VTable* vtbl, QObject* parent) {
	return new VirtualQLibrary(vtbl, parent);
}

QLibrary* QLibrary_new6(struct QLibrary_VTable* vtbl, struct miqt_string fileName, QObject* parent) {
	QString fileName_QString = QString::fromUtf8(fileName.data, fileName.len);
	return new VirtualQLibrary(vtbl, fileName_QString, parent);
}

QLibrary* QLibrary_new7(struct QLibrary_VTable* vtbl, struct miqt_string fileName, int verNum, QObject* parent) {
	QString fileName_QString = QString::fromUtf8(fileName.data, fileName.len);
	return new VirtualQLibrary(vtbl, fileName_QString, static_cast<int>(verNum), parent);
}

QLibrary* QLibrary_new8(struct QLibrary_VTable* vtbl, struct miqt_string fileName, struct miqt_string version, QObject* parent) {
	QString fileName_QString = QString::fromUtf8(fileName.data, fileName.len);
	QString version_QString = QString::fromUtf8(version.data, version.len);
	return new VirtualQLibrary(vtbl, fileName_QString, version_QString, parent);
}

void QLibrary_virtbase(QLibrary* src, QObject** outptr_QObject) {
	*outptr_QObject = static_cast<QObject*>(src);
}

QMetaObject* QLibrary_metaObject(const QLibrary* self) {
	return (QMetaObject*) self->metaObject();
}

void* QLibrary_metacast(QLibrary* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QLibrary_metacall(QLibrary* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QLibrary_tr(const char* s) {
	QString _ret = QLibrary::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QLibrary_trUtf8(const char* s) {
	QString _ret = QLibrary::trUtf8(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

bool QLibrary_load(QLibrary* self) {
	return self->load();
}

bool QLibrary_unload(QLibrary* self) {
	return self->unload();
}

bool QLibrary_isLoaded(const QLibrary* self) {
	return self->isLoaded();
}

bool QLibrary_isLibrary(struct miqt_string fileName) {
	QString fileName_QString = QString::fromUtf8(fileName.data, fileName.len);
	return QLibrary::isLibrary(fileName_QString);
}

void QLibrary_setFileName(QLibrary* self, struct miqt_string fileName) {
	QString fileName_QString = QString::fromUtf8(fileName.data, fileName.len);
	self->setFileName(fileName_QString);
}

struct miqt_string QLibrary_fileName(const QLibrary* self) {
	QString _ret = self->fileName();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QLibrary_setFileNameAndVersion(QLibrary* self, struct miqt_string fileName, int verNum) {
	QString fileName_QString = QString::fromUtf8(fileName.data, fileName.len);
	self->setFileNameAndVersion(fileName_QString, static_cast<int>(verNum));
}

void QLibrary_setFileNameAndVersion2(QLibrary* self, struct miqt_string fileName, struct miqt_string version) {
	QString fileName_QString = QString::fromUtf8(fileName.data, fileName.len);
	QString version_QString = QString::fromUtf8(version.data, version.len);
	self->setFileNameAndVersion(fileName_QString, version_QString);
}

struct miqt_string QLibrary_errorString(const QLibrary* self) {
	QString _ret = self->errorString();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QLibrary_setLoadHints(QLibrary* self, int hints) {
	self->setLoadHints(static_cast<QLibrary::LoadHints>(hints));
}

int QLibrary_loadHints(const QLibrary* self) {
	QLibrary::LoadHints _ret = self->loadHints();
	return static_cast<int>(_ret);
}

struct miqt_string QLibrary_tr2(const char* s, const char* c) {
	QString _ret = QLibrary::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QLibrary_tr3(const char* s, const char* c, int n) {
	QString _ret = QLibrary::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QLibrary_trUtf82(const char* s, const char* c) {
	QString _ret = QLibrary::trUtf8(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QLibrary_trUtf83(const char* s, const char* c, int n) {
	QString _ret = QLibrary::trUtf8(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QMetaObject* QLibrary_virtualbase_metaObject(const void* self) {

	return (QMetaObject*) ( (const VirtualQLibrary*)(self) )->QLibrary::metaObject();

}

void* QLibrary_virtualbase_metacast(void* self, const char* param1) {

	return ( (VirtualQLibrary*)(self) )->QLibrary::qt_metacast(param1);

}

int QLibrary_virtualbase_metacall(void* self, int param1, int param2, void** param3) {

	return ( (VirtualQLibrary*)(self) )->QLibrary::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);

}

bool QLibrary_virtualbase_event(void* self, QEvent* event) {

	return ( (VirtualQLibrary*)(self) )->QLibrary::event(event);

}

bool QLibrary_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event) {

	return ( (VirtualQLibrary*)(self) )->QLibrary::eventFilter(watched, event);

}

void QLibrary_virtualbase_timerEvent(void* self, QTimerEvent* event) {

	( (VirtualQLibrary*)(self) )->QLibrary::timerEvent(event);

}

void QLibrary_virtualbase_childEvent(void* self, QChildEvent* event) {

	( (VirtualQLibrary*)(self) )->QLibrary::childEvent(event);

}

void QLibrary_virtualbase_customEvent(void* self, QEvent* event) {

	( (VirtualQLibrary*)(self) )->QLibrary::customEvent(event);

}

void QLibrary_virtualbase_connectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQLibrary*)(self) )->QLibrary::connectNotify(*signal);

}

void QLibrary_virtualbase_disconnectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQLibrary*)(self) )->QLibrary::disconnectNotify(*signal);

}

const QMetaObject* QLibrary_staticMetaObject() { return &QLibrary::staticMetaObject; }
QObject* QLibrary_protectedbase_sender(bool* _dynamic_cast_ok, const void* self) {
	VirtualQLibrary* self_cast = dynamic_cast<VirtualQLibrary*>( (QLibrary*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return nullptr;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->sender();

}

int QLibrary_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self) {
	VirtualQLibrary* self_cast = dynamic_cast<VirtualQLibrary*>( (QLibrary*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return 0;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->senderSignalIndex();

}

int QLibrary_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal) {
	VirtualQLibrary* self_cast = dynamic_cast<VirtualQLibrary*>( (QLibrary*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return 0;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->receivers(signal);

}

bool QLibrary_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal) {
	VirtualQLibrary* self_cast = dynamic_cast<VirtualQLibrary*>( (QLibrary*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return false;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->isSignalConnected(*signal);

}

void QLibrary_delete(QLibrary* self) {
	delete self;
}

