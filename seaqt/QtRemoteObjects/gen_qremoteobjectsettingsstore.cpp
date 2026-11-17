#include <QByteArray>
#include <QChildEvent>
#include <QEvent>
#include <QList>
#include <QMetaMethod>
#include <QMetaObject>
#include <QObject>
#include <QRemoteObjectAbstractPersistedStore>
#include <QRemoteObjectSettingsStore>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QTimerEvent>
#include <QVariant>
#include <qremoteobjectsettingsstore.h>
#include "gen_qremoteobjectsettingsstore.h"

#ifndef SEAQT_ALIGNED_SIZEOF
#define SEAQT_ALIGNED_SIZEOF 1
#include <cstddef>
template<typename T>
static constexpr std::size_t seaqt_aligned_sizeof() {
	constexpr auto alignment = sizeof(std::max_align_t);
	return (sizeof(T) + alignment - 1) & ~(alignment - 1);
}
#endif

class VirtualQRemoteObjectSettingsStore final : public QRemoteObjectSettingsStore {
	const QRemoteObjectSettingsStore_VTable* vtbl;
public:
	friend void* QRemoteObjectSettingsStore_vdata(VirtualQRemoteObjectSettingsStore* self);
	friend VirtualQRemoteObjectSettingsStore* vdata_QRemoteObjectSettingsStore(void* vdata);

	VirtualQRemoteObjectSettingsStore(const QRemoteObjectSettingsStore_VTable* vtbl): QRemoteObjectSettingsStore(), vtbl(vtbl) {}
	VirtualQRemoteObjectSettingsStore(const QRemoteObjectSettingsStore_VTable* vtbl, QObject* parent): QRemoteObjectSettingsStore(parent), vtbl(vtbl) {}

	virtual ~VirtualQRemoteObjectSettingsStore() override { if(vtbl->destructor) vtbl->destructor(this); }

	void operator delete(void* p) { ::operator delete(p); }
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QRemoteObjectSettingsStore::metaObject();
		}

		QMetaObject* callback_return_value = vtbl->metaObject(this);
		return callback_return_value;
	}

	friend QMetaObject* QRemoteObjectSettingsStore_virtualbase_metaObject(const VirtualQRemoteObjectSettingsStore* self);

	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QRemoteObjectSettingsStore::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;
		void* callback_return_value = vtbl->metacast(this, sigval1);
		return callback_return_value;
	}

	friend void* QRemoteObjectSettingsStore_virtualbase_metacast(VirtualQRemoteObjectSettingsStore* self, const char* param1);

	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QRemoteObjectSettingsStore::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;
		int callback_return_value = vtbl->metacall(this, sigval1, sigval2, sigval3);
		return static_cast<int>(callback_return_value);
	}

	friend int QRemoteObjectSettingsStore_virtualbase_metacall(VirtualQRemoteObjectSettingsStore* self, int param1, int param2, void** param3);

	virtual void saveProperties(const QString& repName, const QByteArray& repSig, const QVariantList& values) override {
		if (vtbl->saveProperties == 0) {
			QRemoteObjectSettingsStore::saveProperties(repName, repSig, values);
			return;
		}

		const QString repName_ret = repName;
		// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
		QByteArray repName_b = repName_ret.toUtf8();
		struct seaqt_string repName_ms;
		repName_ms.len = repName_b.length();
		repName_ms.data = static_cast<char*>(malloc(repName_ms.len));
		memcpy(repName_ms.data, repName_b.data(), repName_ms.len);
		struct seaqt_string sigval1 = repName_ms;
		const QByteArray repSig_qb = repSig;
		struct seaqt_string repSig_ms;
		repSig_ms.len = repSig_qb.length();
		repSig_ms.data = static_cast<char*>(malloc(repSig_ms.len));
		memcpy(repSig_ms.data, repSig_qb.data(), repSig_ms.len);
		struct seaqt_string sigval2 = repSig_ms;
		const QVariantList& values_ret = values;
		// Convert QList<> from C++ memory to manually-managed C memory
		QVariant** values_arr = static_cast<QVariant**>(malloc(sizeof(QVariant*) * values_ret.length()));
		for (size_t i = 0, e = values_ret.length(); i < e; ++i) {
			values_arr[i] = new QVariant(values_ret[i]);
		}
		struct seaqt_array values_out;
		values_out.len = values_ret.length();
		values_out.data = static_cast<void*>(values_arr);
		struct seaqt_array /* of QVariant* */  sigval3 = values_out;
		vtbl->saveProperties(this, sigval1, sigval2, sigval3);
	}

	friend void QRemoteObjectSettingsStore_virtualbase_saveProperties(VirtualQRemoteObjectSettingsStore* self, struct seaqt_string repName, struct seaqt_string repSig, struct seaqt_array /* of QVariant* */  values);

	virtual QVariantList restoreProperties(const QString& repName, const QByteArray& repSig) override {
		if (vtbl->restoreProperties == 0) {
			return QRemoteObjectSettingsStore::restoreProperties(repName, repSig);
		}

		const QString repName_ret = repName;
		// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
		QByteArray repName_b = repName_ret.toUtf8();
		struct seaqt_string repName_ms;
		repName_ms.len = repName_b.length();
		repName_ms.data = static_cast<char*>(malloc(repName_ms.len));
		memcpy(repName_ms.data, repName_b.data(), repName_ms.len);
		struct seaqt_string sigval1 = repName_ms;
		const QByteArray repSig_qb = repSig;
		struct seaqt_string repSig_ms;
		repSig_ms.len = repSig_qb.length();
		repSig_ms.data = static_cast<char*>(malloc(repSig_ms.len));
		memcpy(repSig_ms.data, repSig_qb.data(), repSig_ms.len);
		struct seaqt_string sigval2 = repSig_ms;
		struct seaqt_array /* of QVariant* */  callback_return_value = vtbl->restoreProperties(this, sigval1, sigval2);
		QVariantList callback_return_value_QList;
		callback_return_value_QList.reserve(callback_return_value.len);
		QVariant** callback_return_value_arr = static_cast<QVariant**>(callback_return_value.data);
		for(size_t i = 0; i < callback_return_value.len; ++i) {
			callback_return_value_QList.push_back(*(callback_return_value_arr[i]));
		}
		free(callback_return_value.data);
		return callback_return_value_QList;
	}

	friend struct seaqt_array /* of QVariant* */  QRemoteObjectSettingsStore_virtualbase_restoreProperties(VirtualQRemoteObjectSettingsStore* self, struct seaqt_string repName, struct seaqt_string repSig);

	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QRemoteObjectSettingsStore::event(event);
		}

		QEvent* sigval1 = event;
		bool callback_return_value = vtbl->event(this, sigval1);
		return callback_return_value;
	}

	friend bool QRemoteObjectSettingsStore_virtualbase_event(VirtualQRemoteObjectSettingsStore* self, QEvent* event);

	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QRemoteObjectSettingsStore::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;
		bool callback_return_value = vtbl->eventFilter(this, sigval1, sigval2);
		return callback_return_value;
	}

	friend bool QRemoteObjectSettingsStore_virtualbase_eventFilter(VirtualQRemoteObjectSettingsStore* self, QObject* watched, QEvent* event);

	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QRemoteObjectSettingsStore::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;
		vtbl->timerEvent(this, sigval1);
	}

	friend void QRemoteObjectSettingsStore_virtualbase_timerEvent(VirtualQRemoteObjectSettingsStore* self, QTimerEvent* event);

	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QRemoteObjectSettingsStore::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;
		vtbl->childEvent(this, sigval1);
	}

	friend void QRemoteObjectSettingsStore_virtualbase_childEvent(VirtualQRemoteObjectSettingsStore* self, QChildEvent* event);

	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QRemoteObjectSettingsStore::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;
		vtbl->customEvent(this, sigval1);
	}

	friend void QRemoteObjectSettingsStore_virtualbase_customEvent(VirtualQRemoteObjectSettingsStore* self, QEvent* event);

	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QRemoteObjectSettingsStore::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);
		vtbl->connectNotify(this, sigval1);
	}

	friend void QRemoteObjectSettingsStore_virtualbase_connectNotify(VirtualQRemoteObjectSettingsStore* self, QMetaMethod* signal);

	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QRemoteObjectSettingsStore::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);
		vtbl->disconnectNotify(this, sigval1);
	}

	friend void QRemoteObjectSettingsStore_virtualbase_disconnectNotify(VirtualQRemoteObjectSettingsStore* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend QObject* QRemoteObjectSettingsStore_protectedbase_sender(const VirtualQRemoteObjectSettingsStore* self);
	friend int QRemoteObjectSettingsStore_protectedbase_senderSignalIndex(const VirtualQRemoteObjectSettingsStore* self);
	friend int QRemoteObjectSettingsStore_protectedbase_receivers(const VirtualQRemoteObjectSettingsStore* self, const char* signal);
	friend bool QRemoteObjectSettingsStore_protectedbase_isSignalConnected(const VirtualQRemoteObjectSettingsStore* self, QMetaMethod* signal);
};

VirtualQRemoteObjectSettingsStore* QRemoteObjectSettingsStore_new(const QRemoteObjectSettingsStore_VTable* vtbl, size_t vdata) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQRemoteObjectSettingsStore>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQRemoteObjectSettingsStore(vtbl) : nullptr;
}

VirtualQRemoteObjectSettingsStore* QRemoteObjectSettingsStore_new_parent(const QRemoteObjectSettingsStore_VTable* vtbl, size_t vdata, QObject* parent) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQRemoteObjectSettingsStore>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQRemoteObjectSettingsStore(vtbl, parent) : nullptr;
}

void QRemoteObjectSettingsStore_virtbase(QRemoteObjectSettingsStore* src, QRemoteObjectAbstractPersistedStore** outptr_QRemoteObjectAbstractPersistedStore) {
	*outptr_QRemoteObjectAbstractPersistedStore = static_cast<QRemoteObjectAbstractPersistedStore*>(src);
}

QMetaObject* QRemoteObjectSettingsStore_metaObject(const QRemoteObjectSettingsStore* self) {
	return (QMetaObject*) self->metaObject();
}

void* QRemoteObjectSettingsStore_metacast(QRemoteObjectSettingsStore* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QRemoteObjectSettingsStore_metacall(QRemoteObjectSettingsStore* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct seaqt_string QRemoteObjectSettingsStore_tr_s(const char* s) {
	QString _ret = QRemoteObjectSettingsStore::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QRemoteObjectSettingsStore_saveProperties(QRemoteObjectSettingsStore* self, struct seaqt_string repName, struct seaqt_string repSig, struct seaqt_array /* of QVariant* */  values) {
	QString repName_QString = QString::fromUtf8(repName.data, repName.len);
	QByteArray repSig_QByteArray(repSig.data, repSig.len);
	QVariantList values_QList;
	values_QList.reserve(values.len);
	QVariant** values_arr = static_cast<QVariant**>(values.data);
	for(size_t i = 0; i < values.len; ++i) {
		values_QList.push_back(*(values_arr[i]));
	}
	self->saveProperties(repName_QString, repSig_QByteArray, values_QList);
}

struct seaqt_array /* of QVariant* */  QRemoteObjectSettingsStore_restoreProperties(QRemoteObjectSettingsStore* self, struct seaqt_string repName, struct seaqt_string repSig) {
	QString repName_QString = QString::fromUtf8(repName.data, repName.len);
	QByteArray repSig_QByteArray(repSig.data, repSig.len);
	QVariantList _ret = self->restoreProperties(repName_QString, repSig_QByteArray);
	// Convert QList<> from C++ memory to manually-managed C memory
	QVariant** _arr = static_cast<QVariant**>(malloc(sizeof(QVariant*) * _ret.length()));
	for (size_t i = 0, e = _ret.length(); i < e; ++i) {
		_arr[i] = new QVariant(_ret[i]);
	}
	struct seaqt_array _out;
	_out.len = _ret.length();
	_out.data = static_cast<void*>(_arr);
	return _out;
}

struct seaqt_string QRemoteObjectSettingsStore_tr_s_c(const char* s, const char* c) {
	QString _ret = QRemoteObjectSettingsStore::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QRemoteObjectSettingsStore_tr_s_c_n(const char* s, const char* c, int n) {
	QString _ret = QRemoteObjectSettingsStore::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

const QMetaObject* QRemoteObjectSettingsStore_staticMetaObject() { return &QRemoteObjectSettingsStore::staticMetaObject; }
void* QRemoteObjectSettingsStore_vdata(VirtualQRemoteObjectSettingsStore* self) { return reinterpret_cast<void*>(reinterpret_cast<char*>(self) + seaqt_aligned_sizeof<VirtualQRemoteObjectSettingsStore>()); }
VirtualQRemoteObjectSettingsStore* vdata_QRemoteObjectSettingsStore(void* vdata) { return reinterpret_cast<VirtualQRemoteObjectSettingsStore*>(reinterpret_cast<char*>(vdata) - seaqt_aligned_sizeof<VirtualQRemoteObjectSettingsStore>()); }

QMetaObject* QRemoteObjectSettingsStore_virtualbase_metaObject(const VirtualQRemoteObjectSettingsStore* self) {

	return (QMetaObject*) self->QRemoteObjectSettingsStore::metaObject();
}

void* QRemoteObjectSettingsStore_virtualbase_metacast(VirtualQRemoteObjectSettingsStore* self, const char* param1) {

	return self->QRemoteObjectSettingsStore::qt_metacast(param1);
}

int QRemoteObjectSettingsStore_virtualbase_metacall(VirtualQRemoteObjectSettingsStore* self, int param1, int param2, void** param3) {

	return self->QRemoteObjectSettingsStore::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

void QRemoteObjectSettingsStore_virtualbase_saveProperties(VirtualQRemoteObjectSettingsStore* self, struct seaqt_string repName, struct seaqt_string repSig, struct seaqt_array /* of QVariant* */  values) {
	QString repName_QString = QString::fromUtf8(repName.data, repName.len);
	QByteArray repSig_QByteArray(repSig.data, repSig.len);
	QVariantList values_QList;
	values_QList.reserve(values.len);
	QVariant** values_arr = static_cast<QVariant**>(values.data);
	for(size_t i = 0; i < values.len; ++i) {
		values_QList.push_back(*(values_arr[i]));
	}

	self->QRemoteObjectSettingsStore::saveProperties(repName_QString, repSig_QByteArray, values_QList);
}

struct seaqt_array /* of QVariant* */  QRemoteObjectSettingsStore_virtualbase_restoreProperties(VirtualQRemoteObjectSettingsStore* self, struct seaqt_string repName, struct seaqt_string repSig) {
	QString repName_QString = QString::fromUtf8(repName.data, repName.len);
	QByteArray repSig_QByteArray(repSig.data, repSig.len);

	QVariantList _ret = self->QRemoteObjectSettingsStore::restoreProperties(repName_QString, repSig_QByteArray);
	// Convert QList<> from C++ memory to manually-managed C memory
	QVariant** _arr = static_cast<QVariant**>(malloc(sizeof(QVariant*) * _ret.length()));
	for (size_t i = 0, e = _ret.length(); i < e; ++i) {
		_arr[i] = new QVariant(_ret[i]);
	}
	struct seaqt_array _out;
	_out.len = _ret.length();
	_out.data = static_cast<void*>(_arr);
	return _out;
}

bool QRemoteObjectSettingsStore_virtualbase_event(VirtualQRemoteObjectSettingsStore* self, QEvent* event) {

	return self->QRemoteObjectSettingsStore::event(event);
}

bool QRemoteObjectSettingsStore_virtualbase_eventFilter(VirtualQRemoteObjectSettingsStore* self, QObject* watched, QEvent* event) {

	return self->QRemoteObjectSettingsStore::eventFilter(watched, event);
}

void QRemoteObjectSettingsStore_virtualbase_timerEvent(VirtualQRemoteObjectSettingsStore* self, QTimerEvent* event) {

	self->QRemoteObjectSettingsStore::timerEvent(event);
}

void QRemoteObjectSettingsStore_virtualbase_childEvent(VirtualQRemoteObjectSettingsStore* self, QChildEvent* event) {

	self->QRemoteObjectSettingsStore::childEvent(event);
}

void QRemoteObjectSettingsStore_virtualbase_customEvent(VirtualQRemoteObjectSettingsStore* self, QEvent* event) {

	self->QRemoteObjectSettingsStore::customEvent(event);
}

void QRemoteObjectSettingsStore_virtualbase_connectNotify(VirtualQRemoteObjectSettingsStore* self, QMetaMethod* signal) {

	self->QRemoteObjectSettingsStore::connectNotify(*signal);
}

void QRemoteObjectSettingsStore_virtualbase_disconnectNotify(VirtualQRemoteObjectSettingsStore* self, QMetaMethod* signal) {

	self->QRemoteObjectSettingsStore::disconnectNotify(*signal);
}

QObject* QRemoteObjectSettingsStore_protectedbase_sender(const VirtualQRemoteObjectSettingsStore* self) {
	return self->QRemoteObjectSettingsStore::sender();
}

int QRemoteObjectSettingsStore_protectedbase_senderSignalIndex(const VirtualQRemoteObjectSettingsStore* self) {
	return self->QRemoteObjectSettingsStore::senderSignalIndex();
}

int QRemoteObjectSettingsStore_protectedbase_receivers(const VirtualQRemoteObjectSettingsStore* self, const char* signal) {
	return self->QRemoteObjectSettingsStore::receivers(signal);
}

bool QRemoteObjectSettingsStore_protectedbase_isSignalConnected(const VirtualQRemoteObjectSettingsStore* self, QMetaMethod* signal) {
	return self->QRemoteObjectSettingsStore::isSignalConnected(*signal);
}

void QRemoteObjectSettingsStore_delete(QRemoteObjectSettingsStore* self) {
	delete self;
}

