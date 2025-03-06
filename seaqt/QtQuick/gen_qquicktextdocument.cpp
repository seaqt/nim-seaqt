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

bool miqt_exec_callback_QQuickTextDocument_event(QQuickTextDocument*, intptr_t, QEvent*);
bool miqt_exec_callback_QQuickTextDocument_eventFilter(QQuickTextDocument*, intptr_t, QObject*, QEvent*);
void miqt_exec_callback_QQuickTextDocument_timerEvent(QQuickTextDocument*, intptr_t, QTimerEvent*);
void miqt_exec_callback_QQuickTextDocument_childEvent(QQuickTextDocument*, intptr_t, QChildEvent*);
void miqt_exec_callback_QQuickTextDocument_customEvent(QQuickTextDocument*, intptr_t, QEvent*);
void miqt_exec_callback_QQuickTextDocument_connectNotify(QQuickTextDocument*, intptr_t, QMetaMethod*);
void miqt_exec_callback_QQuickTextDocument_disconnectNotify(QQuickTextDocument*, intptr_t, QMetaMethod*);
#ifdef __cplusplus
} /* extern C */
#endif

class VirtualQQuickTextDocument final : public QQuickTextDocument {
public:

	VirtualQQuickTextDocument(QQuickItem* parent): QQuickTextDocument(parent) {};

	virtual ~VirtualQQuickTextDocument() override = default;

	// cgo.Handle value for overwritten implementation
	intptr_t handle__event = 0;

	// Subclass to allow providing a Go implementation
	virtual bool event(QEvent* event) override {
		if (handle__event == 0) {
			return QQuickTextDocument::event(event);
		}
		
		QEvent* sigval1 = event;

		bool callback_return_value = miqt_exec_callback_QQuickTextDocument_event(this, handle__event, sigval1);

		return callback_return_value;
	}

	friend bool QQuickTextDocument_virtualbase_event(void* self, QEvent* event);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__eventFilter = 0;

	// Subclass to allow providing a Go implementation
	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (handle__eventFilter == 0) {
			return QQuickTextDocument::eventFilter(watched, event);
		}
		
		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = miqt_exec_callback_QQuickTextDocument_eventFilter(this, handle__eventFilter, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QQuickTextDocument_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__timerEvent = 0;

	// Subclass to allow providing a Go implementation
	virtual void timerEvent(QTimerEvent* event) override {
		if (handle__timerEvent == 0) {
			QQuickTextDocument::timerEvent(event);
			return;
		}
		
		QTimerEvent* sigval1 = event;

		miqt_exec_callback_QQuickTextDocument_timerEvent(this, handle__timerEvent, sigval1);

		
	}

	friend void QQuickTextDocument_virtualbase_timerEvent(void* self, QTimerEvent* event);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__childEvent = 0;

	// Subclass to allow providing a Go implementation
	virtual void childEvent(QChildEvent* event) override {
		if (handle__childEvent == 0) {
			QQuickTextDocument::childEvent(event);
			return;
		}
		
		QChildEvent* sigval1 = event;

		miqt_exec_callback_QQuickTextDocument_childEvent(this, handle__childEvent, sigval1);

		
	}

	friend void QQuickTextDocument_virtualbase_childEvent(void* self, QChildEvent* event);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__customEvent = 0;

	// Subclass to allow providing a Go implementation
	virtual void customEvent(QEvent* event) override {
		if (handle__customEvent == 0) {
			QQuickTextDocument::customEvent(event);
			return;
		}
		
		QEvent* sigval1 = event;

		miqt_exec_callback_QQuickTextDocument_customEvent(this, handle__customEvent, sigval1);

		
	}

	friend void QQuickTextDocument_virtualbase_customEvent(void* self, QEvent* event);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__connectNotify = 0;

	// Subclass to allow providing a Go implementation
	virtual void connectNotify(const QMetaMethod& signal) override {
		if (handle__connectNotify == 0) {
			QQuickTextDocument::connectNotify(signal);
			return;
		}
		
		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		miqt_exec_callback_QQuickTextDocument_connectNotify(this, handle__connectNotify, sigval1);

		
	}

	friend void QQuickTextDocument_virtualbase_connectNotify(void* self, QMetaMethod* signal);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__disconnectNotify = 0;

	// Subclass to allow providing a Go implementation
	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (handle__disconnectNotify == 0) {
			QQuickTextDocument::disconnectNotify(signal);
			return;
		}
		
		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		miqt_exec_callback_QQuickTextDocument_disconnectNotify(this, handle__disconnectNotify, sigval1);

		
	}

	friend void QQuickTextDocument_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend QObject* QQuickTextDocument_protectedbase_sender(bool* _dynamic_cast_ok, const void* self);
	friend int QQuickTextDocument_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self);
	friend int QQuickTextDocument_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal);
	friend bool QQuickTextDocument_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal);
};

QQuickTextDocument* QQuickTextDocument_new(QQuickItem* parent) {
	return new VirtualQQuickTextDocument(parent);
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

struct miqt_string QQuickTextDocument_trUtf8(const char* s) {
	QString _ret = QQuickTextDocument::trUtf8(s);
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

struct miqt_string QQuickTextDocument_trUtf82(const char* s, const char* c) {
	QString _ret = QQuickTextDocument::trUtf8(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QQuickTextDocument_trUtf83(const char* s, const char* c, int n) {
	QString _ret = QQuickTextDocument::trUtf8(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

bool QQuickTextDocument_override_virtual_event(void* self, intptr_t slot) {
	VirtualQQuickTextDocument* self_cast = dynamic_cast<VirtualQQuickTextDocument*>( (QQuickTextDocument*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__event = slot;
	return true;
}

bool QQuickTextDocument_virtualbase_event(void* self, QEvent* event) {

	return ( (VirtualQQuickTextDocument*)(self) )->QQuickTextDocument::event(event);

}

bool QQuickTextDocument_override_virtual_eventFilter(void* self, intptr_t slot) {
	VirtualQQuickTextDocument* self_cast = dynamic_cast<VirtualQQuickTextDocument*>( (QQuickTextDocument*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__eventFilter = slot;
	return true;
}

bool QQuickTextDocument_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event) {

	return ( (VirtualQQuickTextDocument*)(self) )->QQuickTextDocument::eventFilter(watched, event);

}

bool QQuickTextDocument_override_virtual_timerEvent(void* self, intptr_t slot) {
	VirtualQQuickTextDocument* self_cast = dynamic_cast<VirtualQQuickTextDocument*>( (QQuickTextDocument*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__timerEvent = slot;
	return true;
}

void QQuickTextDocument_virtualbase_timerEvent(void* self, QTimerEvent* event) {

	( (VirtualQQuickTextDocument*)(self) )->QQuickTextDocument::timerEvent(event);

}

bool QQuickTextDocument_override_virtual_childEvent(void* self, intptr_t slot) {
	VirtualQQuickTextDocument* self_cast = dynamic_cast<VirtualQQuickTextDocument*>( (QQuickTextDocument*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__childEvent = slot;
	return true;
}

void QQuickTextDocument_virtualbase_childEvent(void* self, QChildEvent* event) {

	( (VirtualQQuickTextDocument*)(self) )->QQuickTextDocument::childEvent(event);

}

bool QQuickTextDocument_override_virtual_customEvent(void* self, intptr_t slot) {
	VirtualQQuickTextDocument* self_cast = dynamic_cast<VirtualQQuickTextDocument*>( (QQuickTextDocument*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__customEvent = slot;
	return true;
}

void QQuickTextDocument_virtualbase_customEvent(void* self, QEvent* event) {

	( (VirtualQQuickTextDocument*)(self) )->QQuickTextDocument::customEvent(event);

}

bool QQuickTextDocument_override_virtual_connectNotify(void* self, intptr_t slot) {
	VirtualQQuickTextDocument* self_cast = dynamic_cast<VirtualQQuickTextDocument*>( (QQuickTextDocument*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__connectNotify = slot;
	return true;
}

void QQuickTextDocument_virtualbase_connectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQQuickTextDocument*)(self) )->QQuickTextDocument::connectNotify(*signal);

}

bool QQuickTextDocument_override_virtual_disconnectNotify(void* self, intptr_t slot) {
	VirtualQQuickTextDocument* self_cast = dynamic_cast<VirtualQQuickTextDocument*>( (QQuickTextDocument*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__disconnectNotify = slot;
	return true;
}

void QQuickTextDocument_virtualbase_disconnectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQQuickTextDocument*)(self) )->QQuickTextDocument::disconnectNotify(*signal);

}

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

