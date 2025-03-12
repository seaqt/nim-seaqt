#include <QChildEvent>
#include <QEvent>
#include <QMetaMethod>
#include <QMetaObject>
#include <QObject>
#include <QQuickItem>
#include <QQuickTextDocument>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QTextDocument>
#include <QTimerEvent>
#include <qquicktextdocument.h>
#include "gen_qquicktextdocument.h"
class VirtualQQuickTextDocument final : public QQuickTextDocument {
	const QQuickTextDocument_VTable* vtbl;
	void* vdata;
public:
	friend const QQuickTextDocument_VTable* QQuickTextDocument_vtbl(const VirtualQQuickTextDocument* self);
	friend void* QQuickTextDocument_vdata(const VirtualQQuickTextDocument* self);
	friend void QQuickTextDocument_setVdata(VirtualQQuickTextDocument* self, void* vdata);

	VirtualQQuickTextDocument(const QQuickTextDocument_VTable* vtbl, void* vdata, QQuickItem* parent): QQuickTextDocument(parent), vtbl(vtbl), vdata(vdata) {}

	virtual ~VirtualQQuickTextDocument() override { if(vtbl->destructor) vtbl->destructor(this); }

	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QQuickTextDocument::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(this);

		return callback_return_value;
	}

	friend QMetaObject* QQuickTextDocument_virtualbase_metaObject(const VirtualQQuickTextDocument* self);

	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QQuickTextDocument::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(this, sigval1);

		return callback_return_value;
	}

	friend void* QQuickTextDocument_virtualbase_metacast(VirtualQQuickTextDocument* self, const char* param1);

	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QQuickTextDocument::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QQuickTextDocument_virtualbase_metacall(VirtualQQuickTextDocument* self, int param1, int param2, void** param3);

	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QQuickTextDocument::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(this, sigval1);

		return callback_return_value;
	}

	friend bool QQuickTextDocument_virtualbase_event(VirtualQQuickTextDocument* self, QEvent* event);

	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QQuickTextDocument::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QQuickTextDocument_virtualbase_eventFilter(VirtualQQuickTextDocument* self, QObject* watched, QEvent* event);

	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QQuickTextDocument::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(this, sigval1);

	}

	friend void QQuickTextDocument_virtualbase_timerEvent(VirtualQQuickTextDocument* self, QTimerEvent* event);

	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QQuickTextDocument::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(this, sigval1);

	}

	friend void QQuickTextDocument_virtualbase_childEvent(VirtualQQuickTextDocument* self, QChildEvent* event);

	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QQuickTextDocument::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(this, sigval1);

	}

	friend void QQuickTextDocument_virtualbase_customEvent(VirtualQQuickTextDocument* self, QEvent* event);

	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QQuickTextDocument::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(this, sigval1);

	}

	friend void QQuickTextDocument_virtualbase_connectNotify(VirtualQQuickTextDocument* self, QMetaMethod* signal);

	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QQuickTextDocument::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(this, sigval1);

	}

	friend void QQuickTextDocument_virtualbase_disconnectNotify(VirtualQQuickTextDocument* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend QObject* QQuickTextDocument_protectedbase_sender(const VirtualQQuickTextDocument* self);
	friend int QQuickTextDocument_protectedbase_senderSignalIndex(const VirtualQQuickTextDocument* self);
	friend int QQuickTextDocument_protectedbase_receivers(const VirtualQQuickTextDocument* self, const char* signal);
	friend bool QQuickTextDocument_protectedbase_isSignalConnected(const VirtualQQuickTextDocument* self, QMetaMethod* signal);
};

VirtualQQuickTextDocument* QQuickTextDocument_new(const QQuickTextDocument_VTable* vtbl, void* vdata, QQuickItem* parent) {
	return new VirtualQQuickTextDocument(vtbl, vdata, parent);
}

void QQuickTextDocument_virtbase(QQuickTextDocument* src, QObject** outptr_QObject) {
	*outptr_QObject = static_cast<QObject*>(src);
}

QMetaObject* QQuickTextDocument_metaObject(const QQuickTextDocument* self) {
	return (QMetaObject*) self->metaObject();
}

void* QQuickTextDocument_metacast(QQuickTextDocument* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QQuickTextDocument_metacall(QQuickTextDocument* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QQuickTextDocument_tr(const char* s) {
	QString _ret = QQuickTextDocument::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QTextDocument* QQuickTextDocument_textDocument(const QQuickTextDocument* self) {
	return self->textDocument();
}

struct miqt_string QQuickTextDocument_tr2(const char* s, const char* c) {
	QString _ret = QQuickTextDocument::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QQuickTextDocument_tr3(const char* s, const char* c, int n) {
	QString _ret = QQuickTextDocument::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QMetaObject* QQuickTextDocument_virtualbase_metaObject(const VirtualQQuickTextDocument* self) {

	return (QMetaObject*) self->QQuickTextDocument::metaObject();
}

void* QQuickTextDocument_virtualbase_metacast(VirtualQQuickTextDocument* self, const char* param1) {

	return self->QQuickTextDocument::qt_metacast(param1);
}

int QQuickTextDocument_virtualbase_metacall(VirtualQQuickTextDocument* self, int param1, int param2, void** param3) {

	return self->QQuickTextDocument::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

bool QQuickTextDocument_virtualbase_event(VirtualQQuickTextDocument* self, QEvent* event) {

	return self->QQuickTextDocument::event(event);
}

bool QQuickTextDocument_virtualbase_eventFilter(VirtualQQuickTextDocument* self, QObject* watched, QEvent* event) {

	return self->QQuickTextDocument::eventFilter(watched, event);
}

void QQuickTextDocument_virtualbase_timerEvent(VirtualQQuickTextDocument* self, QTimerEvent* event) {

	self->QQuickTextDocument::timerEvent(event);
}

void QQuickTextDocument_virtualbase_childEvent(VirtualQQuickTextDocument* self, QChildEvent* event) {

	self->QQuickTextDocument::childEvent(event);
}

void QQuickTextDocument_virtualbase_customEvent(VirtualQQuickTextDocument* self, QEvent* event) {

	self->QQuickTextDocument::customEvent(event);
}

void QQuickTextDocument_virtualbase_connectNotify(VirtualQQuickTextDocument* self, QMetaMethod* signal) {

	self->QQuickTextDocument::connectNotify(*signal);
}

void QQuickTextDocument_virtualbase_disconnectNotify(VirtualQQuickTextDocument* self, QMetaMethod* signal) {

	self->QQuickTextDocument::disconnectNotify(*signal);
}

const QMetaObject* QQuickTextDocument_staticMetaObject() { return &QQuickTextDocument::staticMetaObject; }

const QQuickTextDocument_VTable* QQuickTextDocument_vtbl(const VirtualQQuickTextDocument* self) { return self->vtbl; }
void* QQuickTextDocument_vdata(const VirtualQQuickTextDocument* self) { return self->vdata; }
void QQuickTextDocument_setVdata(VirtualQQuickTextDocument* self, void* vdata) { self->vdata = vdata; }

QObject* QQuickTextDocument_protectedbase_sender(const VirtualQQuickTextDocument* self) {
	return self->sender();
}

int QQuickTextDocument_protectedbase_senderSignalIndex(const VirtualQQuickTextDocument* self) {
	return self->senderSignalIndex();
}

int QQuickTextDocument_protectedbase_receivers(const VirtualQQuickTextDocument* self, const char* signal) {
	return self->receivers(signal);
}

bool QQuickTextDocument_protectedbase_isSignalConnected(const VirtualQQuickTextDocument* self, QMetaMethod* signal) {
	return self->isSignalConnected(*signal);
}

void QQuickTextDocument_delete(QQuickTextDocument* self) {
	delete self;
}

