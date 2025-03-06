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

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
} /* extern C */
#endif

class VirtualQQuickTextDocument final : public QQuickTextDocument {
	struct QQuickTextDocument_VTable* vtbl;
public:

	VirtualQQuickTextDocument(struct QQuickTextDocument_VTable* vtbl, QQuickItem* parent): QQuickTextDocument(parent), vtbl(vtbl) {};

	virtual ~VirtualQQuickTextDocument() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QQuickTextDocument::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(vtbl, this);

		return callback_return_value;
	}

	friend QMetaObject* QQuickTextDocument_virtualbase_metaObject(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QQuickTextDocument::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend void* QQuickTextDocument_virtualbase_metacast(void* self, const char* param1);

	// Subclass to allow providing a Go implementation
	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QQuickTextDocument::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(vtbl, this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QQuickTextDocument_virtualbase_metacall(void* self, int param1, int param2, void** param3);

	// Subclass to allow providing a Go implementation
	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QQuickTextDocument::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend bool QQuickTextDocument_virtualbase_event(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QQuickTextDocument::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QQuickTextDocument_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QQuickTextDocument::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(vtbl, this, sigval1);

	}

	friend void QQuickTextDocument_virtualbase_timerEvent(void* self, QTimerEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QQuickTextDocument::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(vtbl, this, sigval1);

	}

	friend void QQuickTextDocument_virtualbase_childEvent(void* self, QChildEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QQuickTextDocument::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(vtbl, this, sigval1);

	}

	friend void QQuickTextDocument_virtualbase_customEvent(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QQuickTextDocument::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(vtbl, this, sigval1);

	}

	friend void QQuickTextDocument_virtualbase_connectNotify(void* self, QMetaMethod* signal);

	// Subclass to allow providing a Go implementation
	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QQuickTextDocument::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(vtbl, this, sigval1);

	}

	friend void QQuickTextDocument_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend QObject* QQuickTextDocument_protectedbase_sender(bool* _dynamic_cast_ok, const void* self);
	friend int QQuickTextDocument_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self);
	friend int QQuickTextDocument_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal);
	friend bool QQuickTextDocument_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal);
};

QQuickTextDocument* QQuickTextDocument_new(struct QQuickTextDocument_VTable* vtbl, QQuickItem* parent) {
	return new VirtualQQuickTextDocument(vtbl, parent);
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

QMetaObject* QQuickTextDocument_virtualbase_metaObject(const void* self) {

	return (QMetaObject*) ( (const VirtualQQuickTextDocument*)(self) )->QQuickTextDocument::metaObject();

}

void* QQuickTextDocument_virtualbase_metacast(void* self, const char* param1) {

	return ( (VirtualQQuickTextDocument*)(self) )->QQuickTextDocument::qt_metacast(param1);

}

int QQuickTextDocument_virtualbase_metacall(void* self, int param1, int param2, void** param3) {

	return ( (VirtualQQuickTextDocument*)(self) )->QQuickTextDocument::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);

}

bool QQuickTextDocument_virtualbase_event(void* self, QEvent* event) {

	return ( (VirtualQQuickTextDocument*)(self) )->QQuickTextDocument::event(event);

}

bool QQuickTextDocument_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event) {

	return ( (VirtualQQuickTextDocument*)(self) )->QQuickTextDocument::eventFilter(watched, event);

}

void QQuickTextDocument_virtualbase_timerEvent(void* self, QTimerEvent* event) {

	( (VirtualQQuickTextDocument*)(self) )->QQuickTextDocument::timerEvent(event);

}

void QQuickTextDocument_virtualbase_childEvent(void* self, QChildEvent* event) {

	( (VirtualQQuickTextDocument*)(self) )->QQuickTextDocument::childEvent(event);

}

void QQuickTextDocument_virtualbase_customEvent(void* self, QEvent* event) {

	( (VirtualQQuickTextDocument*)(self) )->QQuickTextDocument::customEvent(event);

}

void QQuickTextDocument_virtualbase_connectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQQuickTextDocument*)(self) )->QQuickTextDocument::connectNotify(*signal);

}

void QQuickTextDocument_virtualbase_disconnectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQQuickTextDocument*)(self) )->QQuickTextDocument::disconnectNotify(*signal);

}

const QMetaObject* QQuickTextDocument_staticMetaObject() { return &QQuickTextDocument::staticMetaObject; }
QObject* QQuickTextDocument_protectedbase_sender(bool* _dynamic_cast_ok, const void* self) {
	VirtualQQuickTextDocument* self_cast = dynamic_cast<VirtualQQuickTextDocument*>( (QQuickTextDocument*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return nullptr;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->sender();

}

int QQuickTextDocument_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self) {
	VirtualQQuickTextDocument* self_cast = dynamic_cast<VirtualQQuickTextDocument*>( (QQuickTextDocument*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return 0;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->senderSignalIndex();

}

int QQuickTextDocument_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal) {
	VirtualQQuickTextDocument* self_cast = dynamic_cast<VirtualQQuickTextDocument*>( (QQuickTextDocument*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return 0;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->receivers(signal);

}

bool QQuickTextDocument_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal) {
	VirtualQQuickTextDocument* self_cast = dynamic_cast<VirtualQQuickTextDocument*>( (QQuickTextDocument*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return false;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->isSignalConnected(*signal);

}

void QQuickTextDocument_delete(QQuickTextDocument* self) {
	delete self;
}

