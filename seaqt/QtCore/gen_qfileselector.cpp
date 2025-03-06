#include <QChildEvent>
#include <QEvent>
#include <QFileSelector>
#include <QList>
#include <QMetaMethod>
#include <QMetaObject>
#include <QObject>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QTimerEvent>
#include <QUrl>
#include <qfileselector.h>
#include "gen_qfileselector.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
} /* extern C */
#endif

class VirtualQFileSelector final : public QFileSelector {
	struct QFileSelector_VTable* vtbl;
public:

	VirtualQFileSelector(struct QFileSelector_VTable* vtbl): QFileSelector(), vtbl(vtbl) {};
	VirtualQFileSelector(struct QFileSelector_VTable* vtbl, QObject* parent): QFileSelector(parent), vtbl(vtbl) {};

	virtual ~VirtualQFileSelector() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QFileSelector::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(vtbl, this);

		return callback_return_value;
	}

	friend QMetaObject* QFileSelector_virtualbase_metaObject(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QFileSelector::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend void* QFileSelector_virtualbase_metacast(void* self, const char* param1);

	// Subclass to allow providing a Go implementation
	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QFileSelector::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(vtbl, this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QFileSelector_virtualbase_metacall(void* self, int param1, int param2, void** param3);

	// Subclass to allow providing a Go implementation
	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QFileSelector::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend bool QFileSelector_virtualbase_event(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QFileSelector::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QFileSelector_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QFileSelector::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(vtbl, this, sigval1);

	}

	friend void QFileSelector_virtualbase_timerEvent(void* self, QTimerEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QFileSelector::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(vtbl, this, sigval1);

	}

	friend void QFileSelector_virtualbase_childEvent(void* self, QChildEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QFileSelector::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(vtbl, this, sigval1);

	}

	friend void QFileSelector_virtualbase_customEvent(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QFileSelector::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(vtbl, this, sigval1);

	}

	friend void QFileSelector_virtualbase_connectNotify(void* self, QMetaMethod* signal);

	// Subclass to allow providing a Go implementation
	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QFileSelector::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(vtbl, this, sigval1);

	}

	friend void QFileSelector_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend QObject* QFileSelector_protectedbase_sender(const void* self);
	friend int QFileSelector_protectedbase_senderSignalIndex(const void* self);
	friend int QFileSelector_protectedbase_receivers(const void* self, const char* signal);
	friend bool QFileSelector_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal);
};

QFileSelector* QFileSelector_new(struct QFileSelector_VTable* vtbl) {
	return new VirtualQFileSelector(vtbl);
}

QFileSelector* QFileSelector_new2(struct QFileSelector_VTable* vtbl, QObject* parent) {
	return new VirtualQFileSelector(vtbl, parent);
}

void QFileSelector_virtbase(QFileSelector* src, QObject** outptr_QObject) {
	*outptr_QObject = static_cast<QObject*>(src);
}

QMetaObject* QFileSelector_metaObject(const QFileSelector* self) {
	return (QMetaObject*) self->metaObject();
}

void* QFileSelector_metacast(QFileSelector* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QFileSelector_metacall(QFileSelector* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QFileSelector_tr(const char* s) {
	QString _ret = QFileSelector::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QFileSelector_trUtf8(const char* s) {
	QString _ret = QFileSelector::trUtf8(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QFileSelector_select(const QFileSelector* self, struct miqt_string filePath) {
	QString filePath_QString = QString::fromUtf8(filePath.data, filePath.len);
	QString _ret = self->select(filePath_QString);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QUrl* QFileSelector_selectWithFilePath(const QFileSelector* self, QUrl* filePath) {
	return new QUrl(self->select(*filePath));
}

struct miqt_array /* of struct miqt_string */  QFileSelector_extraSelectors(const QFileSelector* self) {
	QStringList _ret = self->extraSelectors();
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

void QFileSelector_setExtraSelectors(QFileSelector* self, struct miqt_array /* of struct miqt_string */  list) {
	QStringList list_QList;
	list_QList.reserve(list.len);
	struct miqt_string* list_arr = static_cast<struct miqt_string*>(list.data);
	for(size_t i = 0; i < list.len; ++i) {
		QString list_arr_i_QString = QString::fromUtf8(list_arr[i].data, list_arr[i].len);
		list_QList.push_back(list_arr_i_QString);
	}
	self->setExtraSelectors(list_QList);
}

struct miqt_array /* of struct miqt_string */  QFileSelector_allSelectors(const QFileSelector* self) {
	QStringList _ret = self->allSelectors();
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

struct miqt_string QFileSelector_tr2(const char* s, const char* c) {
	QString _ret = QFileSelector::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QFileSelector_tr3(const char* s, const char* c, int n) {
	QString _ret = QFileSelector::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QFileSelector_trUtf82(const char* s, const char* c) {
	QString _ret = QFileSelector::trUtf8(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QFileSelector_trUtf83(const char* s, const char* c, int n) {
	QString _ret = QFileSelector::trUtf8(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QMetaObject* QFileSelector_virtualbase_metaObject(const void* self) {

	return (QMetaObject*) ( (const VirtualQFileSelector*)(self) )->QFileSelector::metaObject();

}

void* QFileSelector_virtualbase_metacast(void* self, const char* param1) {

	return ( (VirtualQFileSelector*)(self) )->QFileSelector::qt_metacast(param1);

}

int QFileSelector_virtualbase_metacall(void* self, int param1, int param2, void** param3) {

	return ( (VirtualQFileSelector*)(self) )->QFileSelector::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);

}

bool QFileSelector_virtualbase_event(void* self, QEvent* event) {

	return ( (VirtualQFileSelector*)(self) )->QFileSelector::event(event);

}

bool QFileSelector_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event) {

	return ( (VirtualQFileSelector*)(self) )->QFileSelector::eventFilter(watched, event);

}

void QFileSelector_virtualbase_timerEvent(void* self, QTimerEvent* event) {

	( (VirtualQFileSelector*)(self) )->QFileSelector::timerEvent(event);

}

void QFileSelector_virtualbase_childEvent(void* self, QChildEvent* event) {

	( (VirtualQFileSelector*)(self) )->QFileSelector::childEvent(event);

}

void QFileSelector_virtualbase_customEvent(void* self, QEvent* event) {

	( (VirtualQFileSelector*)(self) )->QFileSelector::customEvent(event);

}

void QFileSelector_virtualbase_connectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQFileSelector*)(self) )->QFileSelector::connectNotify(*signal);

}

void QFileSelector_virtualbase_disconnectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQFileSelector*)(self) )->QFileSelector::disconnectNotify(*signal);

}

const QMetaObject* QFileSelector_staticMetaObject() { return &QFileSelector::staticMetaObject; }
QObject* QFileSelector_protectedbase_sender(const void* self) {
	VirtualQFileSelector* self_cast = static_cast<VirtualQFileSelector*>( (QFileSelector*)(self) );
	
	return self_cast->sender();

}

int QFileSelector_protectedbase_senderSignalIndex(const void* self) {
	VirtualQFileSelector* self_cast = static_cast<VirtualQFileSelector*>( (QFileSelector*)(self) );
	
	return self_cast->senderSignalIndex();

}

int QFileSelector_protectedbase_receivers(const void* self, const char* signal) {
	VirtualQFileSelector* self_cast = static_cast<VirtualQFileSelector*>( (QFileSelector*)(self) );
	
	return self_cast->receivers(signal);

}

bool QFileSelector_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal) {
	VirtualQFileSelector* self_cast = static_cast<VirtualQFileSelector*>( (QFileSelector*)(self) );
	
	return self_cast->isSignalConnected(*signal);

}

void QFileSelector_delete(QFileSelector* self) {
	delete self;
}

