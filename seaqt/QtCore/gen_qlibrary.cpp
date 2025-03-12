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
class VirtualQLibrary final : public QLibrary {
	const QLibrary_VTable* vtbl;
	void* vdata;
public:
	friend const QLibrary_VTable* QLibrary_vtbl(const VirtualQLibrary* self);
	friend void* QLibrary_vdata(const VirtualQLibrary* self);
	friend void QLibrary_setVdata(VirtualQLibrary* self, void* vdata);

	VirtualQLibrary(const QLibrary_VTable* vtbl, void* vdata): QLibrary(), vtbl(vtbl), vdata(vdata) {}
	VirtualQLibrary(const QLibrary_VTable* vtbl, void* vdata, const QString& fileName): QLibrary(fileName), vtbl(vtbl), vdata(vdata) {}
	VirtualQLibrary(const QLibrary_VTable* vtbl, void* vdata, const QString& fileName, int verNum): QLibrary(fileName, verNum), vtbl(vtbl), vdata(vdata) {}
	VirtualQLibrary(const QLibrary_VTable* vtbl, void* vdata, const QString& fileName, const QString& version): QLibrary(fileName, version), vtbl(vtbl), vdata(vdata) {}
	VirtualQLibrary(const QLibrary_VTable* vtbl, void* vdata, QObject* parent): QLibrary(parent), vtbl(vtbl), vdata(vdata) {}
	VirtualQLibrary(const QLibrary_VTable* vtbl, void* vdata, const QString& fileName, QObject* parent): QLibrary(fileName, parent), vtbl(vtbl), vdata(vdata) {}
	VirtualQLibrary(const QLibrary_VTable* vtbl, void* vdata, const QString& fileName, int verNum, QObject* parent): QLibrary(fileName, verNum, parent), vtbl(vtbl), vdata(vdata) {}
	VirtualQLibrary(const QLibrary_VTable* vtbl, void* vdata, const QString& fileName, const QString& version, QObject* parent): QLibrary(fileName, version, parent), vtbl(vtbl), vdata(vdata) {}

	virtual ~VirtualQLibrary() override { if(vtbl->destructor) vtbl->destructor(this); }

	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QLibrary::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(this);

		return callback_return_value;
	}

	friend QMetaObject* QLibrary_virtualbase_metaObject(const VirtualQLibrary* self);

	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QLibrary::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(this, sigval1);

		return callback_return_value;
	}

	friend void* QLibrary_virtualbase_metacast(VirtualQLibrary* self, const char* param1);

	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QLibrary::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QLibrary_virtualbase_metacall(VirtualQLibrary* self, int param1, int param2, void** param3);

	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QLibrary::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(this, sigval1);

		return callback_return_value;
	}

	friend bool QLibrary_virtualbase_event(VirtualQLibrary* self, QEvent* event);

	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QLibrary::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QLibrary_virtualbase_eventFilter(VirtualQLibrary* self, QObject* watched, QEvent* event);

	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QLibrary::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(this, sigval1);

	}

	friend void QLibrary_virtualbase_timerEvent(VirtualQLibrary* self, QTimerEvent* event);

	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QLibrary::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(this, sigval1);

	}

	friend void QLibrary_virtualbase_childEvent(VirtualQLibrary* self, QChildEvent* event);

	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QLibrary::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(this, sigval1);

	}

	friend void QLibrary_virtualbase_customEvent(VirtualQLibrary* self, QEvent* event);

	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QLibrary::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(this, sigval1);

	}

	friend void QLibrary_virtualbase_connectNotify(VirtualQLibrary* self, QMetaMethod* signal);

	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QLibrary::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(this, sigval1);

	}

	friend void QLibrary_virtualbase_disconnectNotify(VirtualQLibrary* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend QObject* QLibrary_protectedbase_sender(const VirtualQLibrary* self);
	friend int QLibrary_protectedbase_senderSignalIndex(const VirtualQLibrary* self);
	friend int QLibrary_protectedbase_receivers(const VirtualQLibrary* self, const char* signal);
	friend bool QLibrary_protectedbase_isSignalConnected(const VirtualQLibrary* self, QMetaMethod* signal);
};

VirtualQLibrary* QLibrary_new(const QLibrary_VTable* vtbl, void* vdata) {
	return new VirtualQLibrary(vtbl, vdata);
}

VirtualQLibrary* QLibrary_new2(const QLibrary_VTable* vtbl, void* vdata, struct miqt_string fileName) {
	QString fileName_QString = QString::fromUtf8(fileName.data, fileName.len);
	return new VirtualQLibrary(vtbl, vdata, fileName_QString);
}

VirtualQLibrary* QLibrary_new3(const QLibrary_VTable* vtbl, void* vdata, struct miqt_string fileName, int verNum) {
	QString fileName_QString = QString::fromUtf8(fileName.data, fileName.len);
	return new VirtualQLibrary(vtbl, vdata, fileName_QString, static_cast<int>(verNum));
}

VirtualQLibrary* QLibrary_new4(const QLibrary_VTable* vtbl, void* vdata, struct miqt_string fileName, struct miqt_string version) {
	QString fileName_QString = QString::fromUtf8(fileName.data, fileName.len);
	QString version_QString = QString::fromUtf8(version.data, version.len);
	return new VirtualQLibrary(vtbl, vdata, fileName_QString, version_QString);
}

VirtualQLibrary* QLibrary_new5(const QLibrary_VTable* vtbl, void* vdata, QObject* parent) {
	return new VirtualQLibrary(vtbl, vdata, parent);
}

VirtualQLibrary* QLibrary_new6(const QLibrary_VTable* vtbl, void* vdata, struct miqt_string fileName, QObject* parent) {
	QString fileName_QString = QString::fromUtf8(fileName.data, fileName.len);
	return new VirtualQLibrary(vtbl, vdata, fileName_QString, parent);
}

VirtualQLibrary* QLibrary_new7(const QLibrary_VTable* vtbl, void* vdata, struct miqt_string fileName, int verNum, QObject* parent) {
	QString fileName_QString = QString::fromUtf8(fileName.data, fileName.len);
	return new VirtualQLibrary(vtbl, vdata, fileName_QString, static_cast<int>(verNum), parent);
}

VirtualQLibrary* QLibrary_new8(const QLibrary_VTable* vtbl, void* vdata, struct miqt_string fileName, struct miqt_string version, QObject* parent) {
	QString fileName_QString = QString::fromUtf8(fileName.data, fileName.len);
	QString version_QString = QString::fromUtf8(version.data, version.len);
	return new VirtualQLibrary(vtbl, vdata, fileName_QString, version_QString, parent);
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

QMetaObject* QLibrary_virtualbase_metaObject(const VirtualQLibrary* self) {

	return (QMetaObject*) self->QLibrary::metaObject();
}

void* QLibrary_virtualbase_metacast(VirtualQLibrary* self, const char* param1) {

	return self->QLibrary::qt_metacast(param1);
}

int QLibrary_virtualbase_metacall(VirtualQLibrary* self, int param1, int param2, void** param3) {

	return self->QLibrary::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

bool QLibrary_virtualbase_event(VirtualQLibrary* self, QEvent* event) {

	return self->QLibrary::event(event);
}

bool QLibrary_virtualbase_eventFilter(VirtualQLibrary* self, QObject* watched, QEvent* event) {

	return self->QLibrary::eventFilter(watched, event);
}

void QLibrary_virtualbase_timerEvent(VirtualQLibrary* self, QTimerEvent* event) {

	self->QLibrary::timerEvent(event);
}

void QLibrary_virtualbase_childEvent(VirtualQLibrary* self, QChildEvent* event) {

	self->QLibrary::childEvent(event);
}

void QLibrary_virtualbase_customEvent(VirtualQLibrary* self, QEvent* event) {

	self->QLibrary::customEvent(event);
}

void QLibrary_virtualbase_connectNotify(VirtualQLibrary* self, QMetaMethod* signal) {

	self->QLibrary::connectNotify(*signal);
}

void QLibrary_virtualbase_disconnectNotify(VirtualQLibrary* self, QMetaMethod* signal) {

	self->QLibrary::disconnectNotify(*signal);
}

const QMetaObject* QLibrary_staticMetaObject() { return &QLibrary::staticMetaObject; }

const QLibrary_VTable* QLibrary_vtbl(const VirtualQLibrary* self) { return self->vtbl; }
void* QLibrary_vdata(const VirtualQLibrary* self) { return self->vdata; }
void QLibrary_setVdata(VirtualQLibrary* self, void* vdata) { self->vdata = vdata; }

QObject* QLibrary_protectedbase_sender(const VirtualQLibrary* self) {
	return self->sender();
}

int QLibrary_protectedbase_senderSignalIndex(const VirtualQLibrary* self) {
	return self->senderSignalIndex();
}

int QLibrary_protectedbase_receivers(const VirtualQLibrary* self, const char* signal) {
	return self->receivers(signal);
}

bool QLibrary_protectedbase_isSignalConnected(const VirtualQLibrary* self, QMetaMethod* signal) {
	return self->isSignalConnected(*signal);
}

void QLibrary_delete(QLibrary* self) {
	delete self;
}

