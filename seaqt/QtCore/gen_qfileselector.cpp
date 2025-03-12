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
class VirtualQFileSelector final : public QFileSelector {
	const QFileSelector_VTable* vtbl;
	void* vdata;
public:
	friend const QFileSelector_VTable* QFileSelector_vtbl(const VirtualQFileSelector* self);
	friend void* QFileSelector_vdata(const VirtualQFileSelector* self);
	friend void QFileSelector_setVdata(VirtualQFileSelector* self, void* vdata);

	VirtualQFileSelector(const QFileSelector_VTable* vtbl, void* vdata): QFileSelector(), vtbl(vtbl), vdata(vdata) {}
	VirtualQFileSelector(const QFileSelector_VTable* vtbl, void* vdata, QObject* parent): QFileSelector(parent), vtbl(vtbl), vdata(vdata) {}

	virtual ~VirtualQFileSelector() override { if(vtbl->destructor) vtbl->destructor(this); }

	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QFileSelector::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(this);

		return callback_return_value;
	}

	friend QMetaObject* QFileSelector_virtualbase_metaObject(const VirtualQFileSelector* self);

	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QFileSelector::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(this, sigval1);

		return callback_return_value;
	}

	friend void* QFileSelector_virtualbase_metacast(VirtualQFileSelector* self, const char* param1);

	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QFileSelector::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QFileSelector_virtualbase_metacall(VirtualQFileSelector* self, int param1, int param2, void** param3);

	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QFileSelector::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(this, sigval1);

		return callback_return_value;
	}

	friend bool QFileSelector_virtualbase_event(VirtualQFileSelector* self, QEvent* event);

	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QFileSelector::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QFileSelector_virtualbase_eventFilter(VirtualQFileSelector* self, QObject* watched, QEvent* event);

	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QFileSelector::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(this, sigval1);

	}

	friend void QFileSelector_virtualbase_timerEvent(VirtualQFileSelector* self, QTimerEvent* event);

	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QFileSelector::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(this, sigval1);

	}

	friend void QFileSelector_virtualbase_childEvent(VirtualQFileSelector* self, QChildEvent* event);

	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QFileSelector::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(this, sigval1);

	}

	friend void QFileSelector_virtualbase_customEvent(VirtualQFileSelector* self, QEvent* event);

	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QFileSelector::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(this, sigval1);

	}

	friend void QFileSelector_virtualbase_connectNotify(VirtualQFileSelector* self, QMetaMethod* signal);

	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QFileSelector::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(this, sigval1);

	}

	friend void QFileSelector_virtualbase_disconnectNotify(VirtualQFileSelector* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend QObject* QFileSelector_protectedbase_sender(const VirtualQFileSelector* self);
	friend int QFileSelector_protectedbase_senderSignalIndex(const VirtualQFileSelector* self);
	friend int QFileSelector_protectedbase_receivers(const VirtualQFileSelector* self, const char* signal);
	friend bool QFileSelector_protectedbase_isSignalConnected(const VirtualQFileSelector* self, QMetaMethod* signal);
};

VirtualQFileSelector* QFileSelector_new(const QFileSelector_VTable* vtbl, void* vdata) {
	return new VirtualQFileSelector(vtbl, vdata);
}

VirtualQFileSelector* QFileSelector_new2(const QFileSelector_VTable* vtbl, void* vdata, QObject* parent) {
	return new VirtualQFileSelector(vtbl, vdata, parent);
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

QMetaObject* QFileSelector_virtualbase_metaObject(const VirtualQFileSelector* self) {

	return (QMetaObject*) self->QFileSelector::metaObject();
}

void* QFileSelector_virtualbase_metacast(VirtualQFileSelector* self, const char* param1) {

	return self->QFileSelector::qt_metacast(param1);
}

int QFileSelector_virtualbase_metacall(VirtualQFileSelector* self, int param1, int param2, void** param3) {

	return self->QFileSelector::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

bool QFileSelector_virtualbase_event(VirtualQFileSelector* self, QEvent* event) {

	return self->QFileSelector::event(event);
}

bool QFileSelector_virtualbase_eventFilter(VirtualQFileSelector* self, QObject* watched, QEvent* event) {

	return self->QFileSelector::eventFilter(watched, event);
}

void QFileSelector_virtualbase_timerEvent(VirtualQFileSelector* self, QTimerEvent* event) {

	self->QFileSelector::timerEvent(event);
}

void QFileSelector_virtualbase_childEvent(VirtualQFileSelector* self, QChildEvent* event) {

	self->QFileSelector::childEvent(event);
}

void QFileSelector_virtualbase_customEvent(VirtualQFileSelector* self, QEvent* event) {

	self->QFileSelector::customEvent(event);
}

void QFileSelector_virtualbase_connectNotify(VirtualQFileSelector* self, QMetaMethod* signal) {

	self->QFileSelector::connectNotify(*signal);
}

void QFileSelector_virtualbase_disconnectNotify(VirtualQFileSelector* self, QMetaMethod* signal) {

	self->QFileSelector::disconnectNotify(*signal);
}

const QMetaObject* QFileSelector_staticMetaObject() { return &QFileSelector::staticMetaObject; }

const QFileSelector_VTable* QFileSelector_vtbl(const VirtualQFileSelector* self) { return self->vtbl; }
void* QFileSelector_vdata(const VirtualQFileSelector* self) { return self->vdata; }
void QFileSelector_setVdata(VirtualQFileSelector* self, void* vdata) { self->vdata = vdata; }

QObject* QFileSelector_protectedbase_sender(const VirtualQFileSelector* self) {
	return self->sender();
}

int QFileSelector_protectedbase_senderSignalIndex(const VirtualQFileSelector* self) {
	return self->senderSignalIndex();
}

int QFileSelector_protectedbase_receivers(const VirtualQFileSelector* self, const char* signal) {
	return self->receivers(signal);
}

bool QFileSelector_protectedbase_isSignalConnected(const VirtualQFileSelector* self, QMetaMethod* signal) {
	return self->isSignalConnected(*signal);
}

void QFileSelector_delete(QFileSelector* self) {
	delete self;
}

