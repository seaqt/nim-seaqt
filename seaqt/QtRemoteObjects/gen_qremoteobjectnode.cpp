#include <QAbstractItemModel>
#include <QAbstractItemModelReplica>
#include <QByteArray>
#include <QChildEvent>
#include <QEvent>
#include <QIODevice>
#include <QItemSelectionModel>
#include <QList>
#include <QMetaMethod>
#include <QMetaObject>
#include <QObject>
#include <QPair>
#include <QRemoteObjectAbstractPersistedStore>
#include <QRemoteObjectDynamicReplica>
#include <QRemoteObjectHost>
#include <QRemoteObjectHostBase>
#include <QRemoteObjectNode>
#include <QRemoteObjectRegistry>
#include <QRemoteObjectRegistryHost>
#include <QRemoteObjectSourceLocationInfo>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QTimerEvent>
#include <QUrl>
#include <QVariant>
#include <qremoteobjectnode.h>
#include "gen_qremoteobjectnode.h"

#ifndef SEAQT_ALIGNED_SIZEOF
#define SEAQT_ALIGNED_SIZEOF 1
#include <cstddef>
template<typename T>
static constexpr std::size_t seaqt_aligned_sizeof() {
	constexpr auto alignment = sizeof(std::max_align_t);
	return (sizeof(T) + alignment - 1) & ~(alignment - 1);
}
#endif

class VirtualQRemoteObjectAbstractPersistedStore final : public QRemoteObjectAbstractPersistedStore {
	const QRemoteObjectAbstractPersistedStore_VTable* vtbl;
public:
	friend void* QRemoteObjectAbstractPersistedStore_vdata(VirtualQRemoteObjectAbstractPersistedStore* self);
	friend VirtualQRemoteObjectAbstractPersistedStore* vdata_QRemoteObjectAbstractPersistedStore(void* vdata);

	VirtualQRemoteObjectAbstractPersistedStore(const QRemoteObjectAbstractPersistedStore_VTable* vtbl): QRemoteObjectAbstractPersistedStore(), vtbl(vtbl) {}
	VirtualQRemoteObjectAbstractPersistedStore(const QRemoteObjectAbstractPersistedStore_VTable* vtbl, QObject* parent): QRemoteObjectAbstractPersistedStore(parent), vtbl(vtbl) {}

	virtual ~VirtualQRemoteObjectAbstractPersistedStore() override { if(vtbl->destructor) vtbl->destructor(this); }

	void operator delete(void* p) { ::operator delete(p); }
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QRemoteObjectAbstractPersistedStore::metaObject();
		}

		QMetaObject* callback_return_value = vtbl->metaObject(this);
		return callback_return_value;
	}

	friend QMetaObject* QRemoteObjectAbstractPersistedStore_virtualbase_metaObject(const VirtualQRemoteObjectAbstractPersistedStore* self);

	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QRemoteObjectAbstractPersistedStore::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;
		void* callback_return_value = vtbl->metacast(this, sigval1);
		return callback_return_value;
	}

	friend void* QRemoteObjectAbstractPersistedStore_virtualbase_metacast(VirtualQRemoteObjectAbstractPersistedStore* self, const char* param1);

	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QRemoteObjectAbstractPersistedStore::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;
		int callback_return_value = vtbl->metacall(this, sigval1, sigval2, sigval3);
		return static_cast<int>(callback_return_value);
	}

	friend int QRemoteObjectAbstractPersistedStore_virtualbase_metacall(VirtualQRemoteObjectAbstractPersistedStore* self, int param1, int param2, void** param3);

	virtual void saveProperties(const QString& repName, const QByteArray& repSig, const QVariantList& values) override {
		if (vtbl->saveProperties == 0) {
			return; // Pure virtual, there is no base we can call
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

	virtual QVariantList restoreProperties(const QString& repName, const QByteArray& repSig) override {
		if (vtbl->restoreProperties == 0) {
			return QVariantList(); // Pure virtual, there is no base we can call
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

	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QRemoteObjectAbstractPersistedStore::event(event);
		}

		QEvent* sigval1 = event;
		bool callback_return_value = vtbl->event(this, sigval1);
		return callback_return_value;
	}

	friend bool QRemoteObjectAbstractPersistedStore_virtualbase_event(VirtualQRemoteObjectAbstractPersistedStore* self, QEvent* event);

	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QRemoteObjectAbstractPersistedStore::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;
		bool callback_return_value = vtbl->eventFilter(this, sigval1, sigval2);
		return callback_return_value;
	}

	friend bool QRemoteObjectAbstractPersistedStore_virtualbase_eventFilter(VirtualQRemoteObjectAbstractPersistedStore* self, QObject* watched, QEvent* event);

	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QRemoteObjectAbstractPersistedStore::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;
		vtbl->timerEvent(this, sigval1);
	}

	friend void QRemoteObjectAbstractPersistedStore_virtualbase_timerEvent(VirtualQRemoteObjectAbstractPersistedStore* self, QTimerEvent* event);

	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QRemoteObjectAbstractPersistedStore::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;
		vtbl->childEvent(this, sigval1);
	}

	friend void QRemoteObjectAbstractPersistedStore_virtualbase_childEvent(VirtualQRemoteObjectAbstractPersistedStore* self, QChildEvent* event);

	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QRemoteObjectAbstractPersistedStore::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;
		vtbl->customEvent(this, sigval1);
	}

	friend void QRemoteObjectAbstractPersistedStore_virtualbase_customEvent(VirtualQRemoteObjectAbstractPersistedStore* self, QEvent* event);

	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QRemoteObjectAbstractPersistedStore::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);
		vtbl->connectNotify(this, sigval1);
	}

	friend void QRemoteObjectAbstractPersistedStore_virtualbase_connectNotify(VirtualQRemoteObjectAbstractPersistedStore* self, QMetaMethod* signal);

	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QRemoteObjectAbstractPersistedStore::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);
		vtbl->disconnectNotify(this, sigval1);
	}

	friend void QRemoteObjectAbstractPersistedStore_virtualbase_disconnectNotify(VirtualQRemoteObjectAbstractPersistedStore* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend QObject* QRemoteObjectAbstractPersistedStore_protectedbase_sender(const VirtualQRemoteObjectAbstractPersistedStore* self);
	friend int QRemoteObjectAbstractPersistedStore_protectedbase_senderSignalIndex(const VirtualQRemoteObjectAbstractPersistedStore* self);
	friend int QRemoteObjectAbstractPersistedStore_protectedbase_receivers(const VirtualQRemoteObjectAbstractPersistedStore* self, const char* signal);
	friend bool QRemoteObjectAbstractPersistedStore_protectedbase_isSignalConnected(const VirtualQRemoteObjectAbstractPersistedStore* self, QMetaMethod* signal);
};

VirtualQRemoteObjectAbstractPersistedStore* QRemoteObjectAbstractPersistedStore_new(const QRemoteObjectAbstractPersistedStore_VTable* vtbl, size_t vdata) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQRemoteObjectAbstractPersistedStore>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQRemoteObjectAbstractPersistedStore(vtbl) : nullptr;
}

VirtualQRemoteObjectAbstractPersistedStore* QRemoteObjectAbstractPersistedStore_new_parent(const QRemoteObjectAbstractPersistedStore_VTable* vtbl, size_t vdata, QObject* parent) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQRemoteObjectAbstractPersistedStore>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQRemoteObjectAbstractPersistedStore(vtbl, parent) : nullptr;
}

void QRemoteObjectAbstractPersistedStore_virtbase(QRemoteObjectAbstractPersistedStore* src, QObject** outptr_QObject) {
	*outptr_QObject = static_cast<QObject*>(src);
}

QMetaObject* QRemoteObjectAbstractPersistedStore_metaObject(const QRemoteObjectAbstractPersistedStore* self) {
	return (QMetaObject*) self->metaObject();
}

void* QRemoteObjectAbstractPersistedStore_metacast(QRemoteObjectAbstractPersistedStore* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QRemoteObjectAbstractPersistedStore_metacall(QRemoteObjectAbstractPersistedStore* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct seaqt_string QRemoteObjectAbstractPersistedStore_tr_s(const char* s) {
	QString _ret = QRemoteObjectAbstractPersistedStore::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QRemoteObjectAbstractPersistedStore_saveProperties(QRemoteObjectAbstractPersistedStore* self, struct seaqt_string repName, struct seaqt_string repSig, struct seaqt_array /* of QVariant* */  values) {
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

struct seaqt_array /* of QVariant* */  QRemoteObjectAbstractPersistedStore_restoreProperties(QRemoteObjectAbstractPersistedStore* self, struct seaqt_string repName, struct seaqt_string repSig) {
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

struct seaqt_string QRemoteObjectAbstractPersistedStore_tr_s_c(const char* s, const char* c) {
	QString _ret = QRemoteObjectAbstractPersistedStore::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QRemoteObjectAbstractPersistedStore_tr_s_c_n(const char* s, const char* c, int n) {
	QString _ret = QRemoteObjectAbstractPersistedStore::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

const QMetaObject* QRemoteObjectAbstractPersistedStore_staticMetaObject() { return &QRemoteObjectAbstractPersistedStore::staticMetaObject; }
void* QRemoteObjectAbstractPersistedStore_vdata(VirtualQRemoteObjectAbstractPersistedStore* self) { return reinterpret_cast<void*>(reinterpret_cast<char*>(self) + seaqt_aligned_sizeof<VirtualQRemoteObjectAbstractPersistedStore>()); }
VirtualQRemoteObjectAbstractPersistedStore* vdata_QRemoteObjectAbstractPersistedStore(void* vdata) { return reinterpret_cast<VirtualQRemoteObjectAbstractPersistedStore*>(reinterpret_cast<char*>(vdata) - seaqt_aligned_sizeof<VirtualQRemoteObjectAbstractPersistedStore>()); }

QMetaObject* QRemoteObjectAbstractPersistedStore_virtualbase_metaObject(const VirtualQRemoteObjectAbstractPersistedStore* self) {

	return (QMetaObject*) self->QRemoteObjectAbstractPersistedStore::metaObject();
}

void* QRemoteObjectAbstractPersistedStore_virtualbase_metacast(VirtualQRemoteObjectAbstractPersistedStore* self, const char* param1) {

	return self->QRemoteObjectAbstractPersistedStore::qt_metacast(param1);
}

int QRemoteObjectAbstractPersistedStore_virtualbase_metacall(VirtualQRemoteObjectAbstractPersistedStore* self, int param1, int param2, void** param3) {

	return self->QRemoteObjectAbstractPersistedStore::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

bool QRemoteObjectAbstractPersistedStore_virtualbase_event(VirtualQRemoteObjectAbstractPersistedStore* self, QEvent* event) {

	return self->QRemoteObjectAbstractPersistedStore::event(event);
}

bool QRemoteObjectAbstractPersistedStore_virtualbase_eventFilter(VirtualQRemoteObjectAbstractPersistedStore* self, QObject* watched, QEvent* event) {

	return self->QRemoteObjectAbstractPersistedStore::eventFilter(watched, event);
}

void QRemoteObjectAbstractPersistedStore_virtualbase_timerEvent(VirtualQRemoteObjectAbstractPersistedStore* self, QTimerEvent* event) {

	self->QRemoteObjectAbstractPersistedStore::timerEvent(event);
}

void QRemoteObjectAbstractPersistedStore_virtualbase_childEvent(VirtualQRemoteObjectAbstractPersistedStore* self, QChildEvent* event) {

	self->QRemoteObjectAbstractPersistedStore::childEvent(event);
}

void QRemoteObjectAbstractPersistedStore_virtualbase_customEvent(VirtualQRemoteObjectAbstractPersistedStore* self, QEvent* event) {

	self->QRemoteObjectAbstractPersistedStore::customEvent(event);
}

void QRemoteObjectAbstractPersistedStore_virtualbase_connectNotify(VirtualQRemoteObjectAbstractPersistedStore* self, QMetaMethod* signal) {

	self->QRemoteObjectAbstractPersistedStore::connectNotify(*signal);
}

void QRemoteObjectAbstractPersistedStore_virtualbase_disconnectNotify(VirtualQRemoteObjectAbstractPersistedStore* self, QMetaMethod* signal) {

	self->QRemoteObjectAbstractPersistedStore::disconnectNotify(*signal);
}

QObject* QRemoteObjectAbstractPersistedStore_protectedbase_sender(const VirtualQRemoteObjectAbstractPersistedStore* self) {
	return self->QRemoteObjectAbstractPersistedStore::sender();
}

int QRemoteObjectAbstractPersistedStore_protectedbase_senderSignalIndex(const VirtualQRemoteObjectAbstractPersistedStore* self) {
	return self->QRemoteObjectAbstractPersistedStore::senderSignalIndex();
}

int QRemoteObjectAbstractPersistedStore_protectedbase_receivers(const VirtualQRemoteObjectAbstractPersistedStore* self, const char* signal) {
	return self->QRemoteObjectAbstractPersistedStore::receivers(signal);
}

bool QRemoteObjectAbstractPersistedStore_protectedbase_isSignalConnected(const VirtualQRemoteObjectAbstractPersistedStore* self, QMetaMethod* signal) {
	return self->QRemoteObjectAbstractPersistedStore::isSignalConnected(*signal);
}

void QRemoteObjectAbstractPersistedStore_delete(QRemoteObjectAbstractPersistedStore* self) {
	delete self;
}

class VirtualQRemoteObjectNode final : public QRemoteObjectNode {
	const QRemoteObjectNode_VTable* vtbl;
public:
	friend void* QRemoteObjectNode_vdata(VirtualQRemoteObjectNode* self);
	friend VirtualQRemoteObjectNode* vdata_QRemoteObjectNode(void* vdata);

	VirtualQRemoteObjectNode(const QRemoteObjectNode_VTable* vtbl): QRemoteObjectNode(), vtbl(vtbl) {}
	VirtualQRemoteObjectNode(const QRemoteObjectNode_VTable* vtbl, const QUrl& registryAddress): QRemoteObjectNode(registryAddress), vtbl(vtbl) {}
	VirtualQRemoteObjectNode(const QRemoteObjectNode_VTable* vtbl, QObject* parent): QRemoteObjectNode(parent), vtbl(vtbl) {}
	VirtualQRemoteObjectNode(const QRemoteObjectNode_VTable* vtbl, const QUrl& registryAddress, QObject* parent): QRemoteObjectNode(registryAddress, parent), vtbl(vtbl) {}

	virtual ~VirtualQRemoteObjectNode() override { if(vtbl->destructor) vtbl->destructor(this); }

	void operator delete(void* p) { ::operator delete(p); }
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QRemoteObjectNode::metaObject();
		}

		QMetaObject* callback_return_value = vtbl->metaObject(this);
		return callback_return_value;
	}

	friend QMetaObject* QRemoteObjectNode_virtualbase_metaObject(const VirtualQRemoteObjectNode* self);

	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QRemoteObjectNode::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;
		void* callback_return_value = vtbl->metacast(this, sigval1);
		return callback_return_value;
	}

	friend void* QRemoteObjectNode_virtualbase_metacast(VirtualQRemoteObjectNode* self, const char* param1);

	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QRemoteObjectNode::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;
		int callback_return_value = vtbl->metacall(this, sigval1, sigval2, sigval3);
		return static_cast<int>(callback_return_value);
	}

	friend int QRemoteObjectNode_virtualbase_metacall(VirtualQRemoteObjectNode* self, int param1, int param2, void** param3);

	virtual void setName(const QString& name) override {
		if (vtbl->setName == 0) {
			QRemoteObjectNode::setName(name);
			return;
		}

		const QString name_ret = name;
		// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
		QByteArray name_b = name_ret.toUtf8();
		struct seaqt_string name_ms;
		name_ms.len = name_b.length();
		name_ms.data = static_cast<char*>(malloc(name_ms.len));
		memcpy(name_ms.data, name_b.data(), name_ms.len);
		struct seaqt_string sigval1 = name_ms;
		vtbl->setName(this, sigval1);
	}

	friend void QRemoteObjectNode_virtualbase_setName(VirtualQRemoteObjectNode* self, struct seaqt_string name);

	virtual bool setRegistryUrl(const QUrl& registryAddress) override {
		if (vtbl->setRegistryUrl == 0) {
			return QRemoteObjectNode::setRegistryUrl(registryAddress);
		}

		const QUrl& registryAddress_ret = registryAddress;
		// Cast returned reference into pointer
		QUrl* sigval1 = const_cast<QUrl*>(&registryAddress_ret);
		bool callback_return_value = vtbl->setRegistryUrl(this, sigval1);
		return callback_return_value;
	}

	friend bool QRemoteObjectNode_virtualbase_setRegistryUrl(VirtualQRemoteObjectNode* self, QUrl* registryAddress);

	virtual void timerEvent(QTimerEvent* param1) override {
		if (vtbl->timerEvent == 0) {
			QRemoteObjectNode::timerEvent(param1);
			return;
		}

		QTimerEvent* sigval1 = param1;
		vtbl->timerEvent(this, sigval1);
	}

	friend void QRemoteObjectNode_virtualbase_timerEvent(VirtualQRemoteObjectNode* self, QTimerEvent* param1);

	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QRemoteObjectNode::event(event);
		}

		QEvent* sigval1 = event;
		bool callback_return_value = vtbl->event(this, sigval1);
		return callback_return_value;
	}

	friend bool QRemoteObjectNode_virtualbase_event(VirtualQRemoteObjectNode* self, QEvent* event);

	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QRemoteObjectNode::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;
		bool callback_return_value = vtbl->eventFilter(this, sigval1, sigval2);
		return callback_return_value;
	}

	friend bool QRemoteObjectNode_virtualbase_eventFilter(VirtualQRemoteObjectNode* self, QObject* watched, QEvent* event);

	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QRemoteObjectNode::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;
		vtbl->childEvent(this, sigval1);
	}

	friend void QRemoteObjectNode_virtualbase_childEvent(VirtualQRemoteObjectNode* self, QChildEvent* event);

	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QRemoteObjectNode::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;
		vtbl->customEvent(this, sigval1);
	}

	friend void QRemoteObjectNode_virtualbase_customEvent(VirtualQRemoteObjectNode* self, QEvent* event);

	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QRemoteObjectNode::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);
		vtbl->connectNotify(this, sigval1);
	}

	friend void QRemoteObjectNode_virtualbase_connectNotify(VirtualQRemoteObjectNode* self, QMetaMethod* signal);

	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QRemoteObjectNode::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);
		vtbl->disconnectNotify(this, sigval1);
	}

	friend void QRemoteObjectNode_virtualbase_disconnectNotify(VirtualQRemoteObjectNode* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend QObject* QRemoteObjectNode_protectedbase_sender(const VirtualQRemoteObjectNode* self);
	friend int QRemoteObjectNode_protectedbase_senderSignalIndex(const VirtualQRemoteObjectNode* self);
	friend int QRemoteObjectNode_protectedbase_receivers(const VirtualQRemoteObjectNode* self, const char* signal);
	friend bool QRemoteObjectNode_protectedbase_isSignalConnected(const VirtualQRemoteObjectNode* self, QMetaMethod* signal);
};

VirtualQRemoteObjectNode* QRemoteObjectNode_new(const QRemoteObjectNode_VTable* vtbl, size_t vdata) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQRemoteObjectNode>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQRemoteObjectNode(vtbl) : nullptr;
}

VirtualQRemoteObjectNode* QRemoteObjectNode_new_registryAddress(const QRemoteObjectNode_VTable* vtbl, size_t vdata, QUrl* registryAddress) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQRemoteObjectNode>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQRemoteObjectNode(vtbl, *registryAddress) : nullptr;
}

VirtualQRemoteObjectNode* QRemoteObjectNode_new_parent(const QRemoteObjectNode_VTable* vtbl, size_t vdata, QObject* parent) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQRemoteObjectNode>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQRemoteObjectNode(vtbl, parent) : nullptr;
}

VirtualQRemoteObjectNode* QRemoteObjectNode_new_registryAddress_parent(const QRemoteObjectNode_VTable* vtbl, size_t vdata, QUrl* registryAddress, QObject* parent) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQRemoteObjectNode>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQRemoteObjectNode(vtbl, *registryAddress, parent) : nullptr;
}

void QRemoteObjectNode_virtbase(QRemoteObjectNode* src, QObject** outptr_QObject) {
	*outptr_QObject = static_cast<QObject*>(src);
}

QMetaObject* QRemoteObjectNode_metaObject(const QRemoteObjectNode* self) {
	return (QMetaObject*) self->metaObject();
}

void* QRemoteObjectNode_metacast(QRemoteObjectNode* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QRemoteObjectNode_metacall(QRemoteObjectNode* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct seaqt_string QRemoteObjectNode_tr_s(const char* s) {
	QString _ret = QRemoteObjectNode::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

bool QRemoteObjectNode_connectToNode(QRemoteObjectNode* self, QUrl* address) {
	return self->connectToNode(*address);
}

void QRemoteObjectNode_addClientSideConnection(QRemoteObjectNode* self, QIODevice* ioDevice) {
	self->addClientSideConnection(ioDevice);
}

void QRemoteObjectNode_setName(QRemoteObjectNode* self, struct seaqt_string name) {
	QString name_QString = QString::fromUtf8(name.data, name.len);
	self->setName(name_QString);
}

QRemoteObjectDynamicReplica* QRemoteObjectNode_acquireDynamic(QRemoteObjectNode* self, struct seaqt_string name) {
	QString name_QString = QString::fromUtf8(name.data, name.len);
	return self->acquireDynamic(name_QString);
}

QAbstractItemModelReplica* QRemoteObjectNode_acquireModel_name(QRemoteObjectNode* self, struct seaqt_string name) {
	QString name_QString = QString::fromUtf8(name.data, name.len);
	return self->acquireModel(name_QString);
}

QUrl* QRemoteObjectNode_registryUrl(const QRemoteObjectNode* self) {
	return new QUrl(self->registryUrl());
}

bool QRemoteObjectNode_setRegistryUrl(QRemoteObjectNode* self, QUrl* registryAddress) {
	return self->setRegistryUrl(*registryAddress);
}

bool QRemoteObjectNode_waitForRegistry(QRemoteObjectNode* self) {
	return self->waitForRegistry();
}

QRemoteObjectRegistry* QRemoteObjectNode_registry(const QRemoteObjectNode* self) {
	return (QRemoteObjectRegistry*) self->registry();
}

QRemoteObjectAbstractPersistedStore* QRemoteObjectNode_persistedStore(const QRemoteObjectNode* self) {
	return self->persistedStore();
}

void QRemoteObjectNode_setPersistedStore(QRemoteObjectNode* self, QRemoteObjectAbstractPersistedStore* persistedStore) {
	self->setPersistedStore(persistedStore);
}

int QRemoteObjectNode_lastError(const QRemoteObjectNode* self) {
	QRemoteObjectNode::ErrorCode _ret = self->lastError();
	return static_cast<int>(_ret);
}

int QRemoteObjectNode_heartbeatInterval(const QRemoteObjectNode* self) {
	return self->heartbeatInterval();
}

void QRemoteObjectNode_setHeartbeatInterval(QRemoteObjectNode* self, int interval) {
	self->setHeartbeatInterval(static_cast<int>(interval));
}

void QRemoteObjectNode_remoteObjectAdded(QRemoteObjectNode* self, struct seaqt_map /* tuple of struct seaqt_string and QRemoteObjectSourceLocationInfo* */  param1) {
	QRemoteObjectSourceLocation param1_QPair;
	struct seaqt_string* param1_first_arr = static_cast<struct seaqt_string*>(param1.keys);
	QRemoteObjectSourceLocationInfo** param1_second_arr = static_cast<QRemoteObjectSourceLocationInfo**>(param1.values);
		QString param1_first_arr_0_QString = QString::fromUtf8(param1_first_arr[0].data, param1_first_arr[0].len);
	param1_QPair.first = param1_first_arr_0_QString;
	param1_QPair.second = *(param1_second_arr[0]);
	self->remoteObjectAdded(param1_QPair);
}

void QRemoteObjectNode_connect_remoteObjectAdded(QRemoteObjectNode* self, intptr_t slot, void (*callback)(intptr_t, struct seaqt_map /* tuple of struct seaqt_string and QRemoteObjectSourceLocationInfo* */ ), void (*release)(intptr_t)) {
	QRemoteObjectNode::connect(self, static_cast<void (QRemoteObjectNode::*)(const QRemoteObjectSourceLocation&)>(&QRemoteObjectNode::remoteObjectAdded), self, [callback, release = seaqt::release_callback{slot,release}](const QRemoteObjectSourceLocation& param1) {
			const QRemoteObjectSourceLocation& param1_ret = param1;
			// Convert QPair<> from C++ memory to manually-managed C memory
			struct seaqt_string* param1_first_arr = static_cast<struct seaqt_string*>(malloc(sizeof(struct seaqt_string)));
			QRemoteObjectSourceLocationInfo** param1_second_arr = static_cast<QRemoteObjectSourceLocationInfo**>(malloc(sizeof(QRemoteObjectSourceLocationInfo*)));
			QString param1_first_ret = param1_ret.first;
			// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
			QByteArray param1_first_b = param1_first_ret.toUtf8();
			struct seaqt_string param1_first_ms;
			param1_first_ms.len = param1_first_b.length();
			param1_first_ms.data = static_cast<char*>(malloc(param1_first_ms.len));
			memcpy(param1_first_ms.data, param1_first_b.data(), param1_first_ms.len);
			param1_first_arr[0] = param1_first_ms;
			param1_second_arr[0] = new QRemoteObjectSourceLocationInfo(param1_ret.second);
			struct seaqt_map param1_out;
			param1_out.len = 1;
			param1_out.keys = static_cast<void*>(param1_first_arr);
			param1_out.values = static_cast<void*>(param1_second_arr);
			struct seaqt_map /* tuple of struct seaqt_string and QRemoteObjectSourceLocationInfo* */  sigval1 = param1_out;
			callback(release.slot, sigval1);
	});
}

void QRemoteObjectNode_remoteObjectRemoved(QRemoteObjectNode* self, struct seaqt_map /* tuple of struct seaqt_string and QRemoteObjectSourceLocationInfo* */  param1) {
	QRemoteObjectSourceLocation param1_QPair;
	struct seaqt_string* param1_first_arr = static_cast<struct seaqt_string*>(param1.keys);
	QRemoteObjectSourceLocationInfo** param1_second_arr = static_cast<QRemoteObjectSourceLocationInfo**>(param1.values);
		QString param1_first_arr_0_QString = QString::fromUtf8(param1_first_arr[0].data, param1_first_arr[0].len);
	param1_QPair.first = param1_first_arr_0_QString;
	param1_QPair.second = *(param1_second_arr[0]);
	self->remoteObjectRemoved(param1_QPair);
}

void QRemoteObjectNode_connect_remoteObjectRemoved(QRemoteObjectNode* self, intptr_t slot, void (*callback)(intptr_t, struct seaqt_map /* tuple of struct seaqt_string and QRemoteObjectSourceLocationInfo* */ ), void (*release)(intptr_t)) {
	QRemoteObjectNode::connect(self, static_cast<void (QRemoteObjectNode::*)(const QRemoteObjectSourceLocation&)>(&QRemoteObjectNode::remoteObjectRemoved), self, [callback, release = seaqt::release_callback{slot,release}](const QRemoteObjectSourceLocation& param1) {
			const QRemoteObjectSourceLocation& param1_ret = param1;
			// Convert QPair<> from C++ memory to manually-managed C memory
			struct seaqt_string* param1_first_arr = static_cast<struct seaqt_string*>(malloc(sizeof(struct seaqt_string)));
			QRemoteObjectSourceLocationInfo** param1_second_arr = static_cast<QRemoteObjectSourceLocationInfo**>(malloc(sizeof(QRemoteObjectSourceLocationInfo*)));
			QString param1_first_ret = param1_ret.first;
			// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
			QByteArray param1_first_b = param1_first_ret.toUtf8();
			struct seaqt_string param1_first_ms;
			param1_first_ms.len = param1_first_b.length();
			param1_first_ms.data = static_cast<char*>(malloc(param1_first_ms.len));
			memcpy(param1_first_ms.data, param1_first_b.data(), param1_first_ms.len);
			param1_first_arr[0] = param1_first_ms;
			param1_second_arr[0] = new QRemoteObjectSourceLocationInfo(param1_ret.second);
			struct seaqt_map param1_out;
			param1_out.len = 1;
			param1_out.keys = static_cast<void*>(param1_first_arr);
			param1_out.values = static_cast<void*>(param1_second_arr);
			struct seaqt_map /* tuple of struct seaqt_string and QRemoteObjectSourceLocationInfo* */  sigval1 = param1_out;
			callback(release.slot, sigval1);
	});
}

void QRemoteObjectNode_error(QRemoteObjectNode* self, int errorCode) {
	self->error(static_cast<QRemoteObjectNode::ErrorCode>(errorCode));
}

void QRemoteObjectNode_connect_error(QRemoteObjectNode* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) {
	QRemoteObjectNode::connect(self, static_cast<void (QRemoteObjectNode::*)(QRemoteObjectNode::ErrorCode)>(&QRemoteObjectNode::error), self, [callback, release = seaqt::release_callback{slot,release}](QRemoteObjectNode::ErrorCode errorCode) {
			QRemoteObjectNode::ErrorCode errorCode_ret = errorCode;
			int sigval1 = static_cast<int>(errorCode_ret);
			callback(release.slot, sigval1);
	});
}

void QRemoteObjectNode_heartbeatIntervalChanged(QRemoteObjectNode* self, int heartbeatInterval) {
	self->heartbeatIntervalChanged(static_cast<int>(heartbeatInterval));
}

void QRemoteObjectNode_connect_heartbeatIntervalChanged(QRemoteObjectNode* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) {
	QRemoteObjectNode::connect(self, static_cast<void (QRemoteObjectNode::*)(int)>(&QRemoteObjectNode::heartbeatIntervalChanged), self, [callback, release = seaqt::release_callback{slot,release}](int heartbeatInterval) {
			int sigval1 = heartbeatInterval;
			callback(release.slot, sigval1);
	});
}

struct seaqt_string QRemoteObjectNode_tr_s_c(const char* s, const char* c) {
	QString _ret = QRemoteObjectNode::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QRemoteObjectNode_tr_s_c_n(const char* s, const char* c, int n) {
	QString _ret = QRemoteObjectNode::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QAbstractItemModelReplica* QRemoteObjectNode_acquireModel_name_action(QRemoteObjectNode* self, struct seaqt_string name, int action) {
	QString name_QString = QString::fromUtf8(name.data, name.len);
	return self->acquireModel(name_QString, static_cast<QtRemoteObjects::InitialAction>(action));
}

QAbstractItemModelReplica* QRemoteObjectNode_acquireModel_name_action_rolesHint(QRemoteObjectNode* self, struct seaqt_string name, int action, struct seaqt_array /* of int */  rolesHint) {
	QString name_QString = QString::fromUtf8(name.data, name.len);
	QList<int> rolesHint_QList;
	rolesHint_QList.reserve(rolesHint.len);
	int* rolesHint_arr = static_cast<int*>(rolesHint.data);
	for(size_t i = 0; i < rolesHint.len; ++i) {
		rolesHint_QList.push_back(static_cast<int>(rolesHint_arr[i]));
	}
	return self->acquireModel(name_QString, static_cast<QtRemoteObjects::InitialAction>(action), rolesHint_QList);
}

bool QRemoteObjectNode_waitForRegistry_timeout(QRemoteObjectNode* self, int timeout) {
	return self->waitForRegistry(static_cast<int>(timeout));
}

const QMetaObject* QRemoteObjectNode_staticMetaObject() { return &QRemoteObjectNode::staticMetaObject; }
void* QRemoteObjectNode_vdata(VirtualQRemoteObjectNode* self) { return reinterpret_cast<void*>(reinterpret_cast<char*>(self) + seaqt_aligned_sizeof<VirtualQRemoteObjectNode>()); }
VirtualQRemoteObjectNode* vdata_QRemoteObjectNode(void* vdata) { return reinterpret_cast<VirtualQRemoteObjectNode*>(reinterpret_cast<char*>(vdata) - seaqt_aligned_sizeof<VirtualQRemoteObjectNode>()); }

QMetaObject* QRemoteObjectNode_virtualbase_metaObject(const VirtualQRemoteObjectNode* self) {

	return (QMetaObject*) self->QRemoteObjectNode::metaObject();
}

void* QRemoteObjectNode_virtualbase_metacast(VirtualQRemoteObjectNode* self, const char* param1) {

	return self->QRemoteObjectNode::qt_metacast(param1);
}

int QRemoteObjectNode_virtualbase_metacall(VirtualQRemoteObjectNode* self, int param1, int param2, void** param3) {

	return self->QRemoteObjectNode::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

void QRemoteObjectNode_virtualbase_setName(VirtualQRemoteObjectNode* self, struct seaqt_string name) {
	QString name_QString = QString::fromUtf8(name.data, name.len);

	self->QRemoteObjectNode::setName(name_QString);
}

bool QRemoteObjectNode_virtualbase_setRegistryUrl(VirtualQRemoteObjectNode* self, QUrl* registryAddress) {

	return self->QRemoteObjectNode::setRegistryUrl(*registryAddress);
}

void QRemoteObjectNode_virtualbase_timerEvent(VirtualQRemoteObjectNode* self, QTimerEvent* param1) {

	self->QRemoteObjectNode::timerEvent(param1);
}

bool QRemoteObjectNode_virtualbase_event(VirtualQRemoteObjectNode* self, QEvent* event) {

	return self->QRemoteObjectNode::event(event);
}

bool QRemoteObjectNode_virtualbase_eventFilter(VirtualQRemoteObjectNode* self, QObject* watched, QEvent* event) {

	return self->QRemoteObjectNode::eventFilter(watched, event);
}

void QRemoteObjectNode_virtualbase_childEvent(VirtualQRemoteObjectNode* self, QChildEvent* event) {

	self->QRemoteObjectNode::childEvent(event);
}

void QRemoteObjectNode_virtualbase_customEvent(VirtualQRemoteObjectNode* self, QEvent* event) {

	self->QRemoteObjectNode::customEvent(event);
}

void QRemoteObjectNode_virtualbase_connectNotify(VirtualQRemoteObjectNode* self, QMetaMethod* signal) {

	self->QRemoteObjectNode::connectNotify(*signal);
}

void QRemoteObjectNode_virtualbase_disconnectNotify(VirtualQRemoteObjectNode* self, QMetaMethod* signal) {

	self->QRemoteObjectNode::disconnectNotify(*signal);
}

QObject* QRemoteObjectNode_protectedbase_sender(const VirtualQRemoteObjectNode* self) {
	return self->QRemoteObjectNode::sender();
}

int QRemoteObjectNode_protectedbase_senderSignalIndex(const VirtualQRemoteObjectNode* self) {
	return self->QRemoteObjectNode::senderSignalIndex();
}

int QRemoteObjectNode_protectedbase_receivers(const VirtualQRemoteObjectNode* self, const char* signal) {
	return self->QRemoteObjectNode::receivers(signal);
}

bool QRemoteObjectNode_protectedbase_isSignalConnected(const VirtualQRemoteObjectNode* self, QMetaMethod* signal) {
	return self->QRemoteObjectNode::isSignalConnected(*signal);
}

void QRemoteObjectNode_delete(QRemoteObjectNode* self) {
	delete self;
}

void QRemoteObjectHostBase_virtbase(QRemoteObjectHostBase* src, QRemoteObjectNode** outptr_QRemoteObjectNode) {
	*outptr_QRemoteObjectNode = static_cast<QRemoteObjectNode*>(src);
}

QMetaObject* QRemoteObjectHostBase_metaObject(const QRemoteObjectHostBase* self) {
	return (QMetaObject*) self->metaObject();
}

void* QRemoteObjectHostBase_metacast(QRemoteObjectHostBase* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QRemoteObjectHostBase_metacall(QRemoteObjectHostBase* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct seaqt_string QRemoteObjectHostBase_tr_s(const char* s) {
	QString _ret = QRemoteObjectHostBase::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QRemoteObjectHostBase_setName(QRemoteObjectHostBase* self, struct seaqt_string name) {
	QString name_QString = QString::fromUtf8(name.data, name.len);
	self->setName(name_QString);
}

bool QRemoteObjectHostBase_enableRemoting_object(QRemoteObjectHostBase* self, QObject* object) {
	return self->enableRemoting(object);
}

bool QRemoteObjectHostBase_enableRemoting_model_name_roles(QRemoteObjectHostBase* self, QAbstractItemModel* model, struct seaqt_string name, struct seaqt_array /* of int */  roles) {
	QString name_QString = QString::fromUtf8(name.data, name.len);
	QList<int> roles_QList;
	roles_QList.reserve(roles.len);
	int* roles_arr = static_cast<int*>(roles.data);
	for(size_t i = 0; i < roles.len; ++i) {
		roles_QList.push_back(static_cast<int>(roles_arr[i]));
	}
	return self->enableRemoting(model, name_QString, roles_QList);
}

bool QRemoteObjectHostBase_disableRemoting(QRemoteObjectHostBase* self, QObject* remoteObject) {
	return self->disableRemoting(remoteObject);
}

void QRemoteObjectHostBase_addHostSideConnection(QRemoteObjectHostBase* self, QIODevice* ioDevice) {
	self->addHostSideConnection(ioDevice);
}

bool QRemoteObjectHostBase_proxy_registryUrl(QRemoteObjectHostBase* self, QUrl* registryUrl) {
	return self->proxy(*registryUrl);
}

bool QRemoteObjectHostBase_reverseProxy(QRemoteObjectHostBase* self) {
	return self->reverseProxy();
}

struct seaqt_string QRemoteObjectHostBase_tr_s_c(const char* s, const char* c) {
	QString _ret = QRemoteObjectHostBase::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QRemoteObjectHostBase_tr_s_c_n(const char* s, const char* c, int n) {
	QString _ret = QRemoteObjectHostBase::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

bool QRemoteObjectHostBase_enableRemoting_object_name(QRemoteObjectHostBase* self, QObject* object, struct seaqt_string name) {
	QString name_QString = QString::fromUtf8(name.data, name.len);
	return self->enableRemoting(object, name_QString);
}

bool QRemoteObjectHostBase_enableRemoting_model_name_roles_selectionModel(QRemoteObjectHostBase* self, QAbstractItemModel* model, struct seaqt_string name, struct seaqt_array /* of int */  roles, QItemSelectionModel* selectionModel) {
	QString name_QString = QString::fromUtf8(name.data, name.len);
	QList<int> roles_QList;
	roles_QList.reserve(roles.len);
	int* roles_arr = static_cast<int*>(roles.data);
	for(size_t i = 0; i < roles.len; ++i) {
		roles_QList.push_back(static_cast<int>(roles_arr[i]));
	}
	return self->enableRemoting(model, name_QString, roles_QList, selectionModel);
}

bool QRemoteObjectHostBase_proxy_registryUrl_hostUrl(QRemoteObjectHostBase* self, QUrl* registryUrl, QUrl* hostUrl) {
	return self->proxy(*registryUrl, *hostUrl);
}

const QMetaObject* QRemoteObjectHostBase_staticMetaObject() { return &QRemoteObjectHostBase::staticMetaObject; }
void QRemoteObjectHostBase_delete(QRemoteObjectHostBase* self) {
	delete self;
}

class VirtualQRemoteObjectHost final : public QRemoteObjectHost {
	const QRemoteObjectHost_VTable* vtbl;
public:
	friend void* QRemoteObjectHost_vdata(VirtualQRemoteObjectHost* self);
	friend VirtualQRemoteObjectHost* vdata_QRemoteObjectHost(void* vdata);

	VirtualQRemoteObjectHost(const QRemoteObjectHost_VTable* vtbl): QRemoteObjectHost(), vtbl(vtbl) {}
	VirtualQRemoteObjectHost(const QRemoteObjectHost_VTable* vtbl, const QUrl& address): QRemoteObjectHost(address), vtbl(vtbl) {}
	VirtualQRemoteObjectHost(const QRemoteObjectHost_VTable* vtbl, const QUrl& address, QObject* parent): QRemoteObjectHost(address, parent), vtbl(vtbl) {}
	VirtualQRemoteObjectHost(const QRemoteObjectHost_VTable* vtbl, QObject* parent): QRemoteObjectHost(parent), vtbl(vtbl) {}
	VirtualQRemoteObjectHost(const QRemoteObjectHost_VTable* vtbl, const QUrl& address, const QUrl& registryAddress): QRemoteObjectHost(address, registryAddress), vtbl(vtbl) {}
	VirtualQRemoteObjectHost(const QRemoteObjectHost_VTable* vtbl, const QUrl& address, const QUrl& registryAddress, QRemoteObjectHostBase::AllowedSchemas allowedSchemas): QRemoteObjectHost(address, registryAddress, allowedSchemas), vtbl(vtbl) {}
	VirtualQRemoteObjectHost(const QRemoteObjectHost_VTable* vtbl, const QUrl& address, const QUrl& registryAddress, QRemoteObjectHostBase::AllowedSchemas allowedSchemas, QObject* parent): QRemoteObjectHost(address, registryAddress, allowedSchemas, parent), vtbl(vtbl) {}

	virtual ~VirtualQRemoteObjectHost() override { if(vtbl->destructor) vtbl->destructor(this); }

	void operator delete(void* p) { ::operator delete(p); }
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QRemoteObjectHost::metaObject();
		}

		QMetaObject* callback_return_value = vtbl->metaObject(this);
		return callback_return_value;
	}

	friend QMetaObject* QRemoteObjectHost_virtualbase_metaObject(const VirtualQRemoteObjectHost* self);

	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QRemoteObjectHost::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;
		void* callback_return_value = vtbl->metacast(this, sigval1);
		return callback_return_value;
	}

	friend void* QRemoteObjectHost_virtualbase_metacast(VirtualQRemoteObjectHost* self, const char* param1);

	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QRemoteObjectHost::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;
		int callback_return_value = vtbl->metacall(this, sigval1, sigval2, sigval3);
		return static_cast<int>(callback_return_value);
	}

	friend int QRemoteObjectHost_virtualbase_metacall(VirtualQRemoteObjectHost* self, int param1, int param2, void** param3);

	virtual QUrl hostUrl() const override {
		if (vtbl->hostUrl == 0) {
			return QRemoteObjectHost::hostUrl();
		}

		QUrl* callback_return_value = vtbl->hostUrl(this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;
		return callback_return_value_Value;
	}

	friend QUrl* QRemoteObjectHost_virtualbase_hostUrl(const VirtualQRemoteObjectHost* self);

	virtual bool setHostUrl(const QUrl& hostAddress, QRemoteObjectHostBase::AllowedSchemas allowedSchemas) override {
		if (vtbl->setHostUrl == 0) {
			return QRemoteObjectHost::setHostUrl(hostAddress, allowedSchemas);
		}

		const QUrl& hostAddress_ret = hostAddress;
		// Cast returned reference into pointer
		QUrl* sigval1 = const_cast<QUrl*>(&hostAddress_ret);
		QRemoteObjectHostBase::AllowedSchemas allowedSchemas_ret = allowedSchemas;
		int sigval2 = static_cast<int>(allowedSchemas_ret);
		bool callback_return_value = vtbl->setHostUrl(this, sigval1, sigval2);
		return callback_return_value;
	}

	friend bool QRemoteObjectHost_virtualbase_setHostUrl(VirtualQRemoteObjectHost* self, QUrl* hostAddress, int allowedSchemas);

	virtual void setName(const QString& name) override {
		if (vtbl->setName == 0) {
			QRemoteObjectHost::setName(name);
			return;
		}

		const QString name_ret = name;
		// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
		QByteArray name_b = name_ret.toUtf8();
		struct seaqt_string name_ms;
		name_ms.len = name_b.length();
		name_ms.data = static_cast<char*>(malloc(name_ms.len));
		memcpy(name_ms.data, name_b.data(), name_ms.len);
		struct seaqt_string sigval1 = name_ms;
		vtbl->setName(this, sigval1);
	}

	friend void QRemoteObjectHost_virtualbase_setName(VirtualQRemoteObjectHost* self, struct seaqt_string name);

	virtual bool setRegistryUrl(const QUrl& registryAddress) override {
		if (vtbl->setRegistryUrl == 0) {
			return QRemoteObjectHost::setRegistryUrl(registryAddress);
		}

		const QUrl& registryAddress_ret = registryAddress;
		// Cast returned reference into pointer
		QUrl* sigval1 = const_cast<QUrl*>(&registryAddress_ret);
		bool callback_return_value = vtbl->setRegistryUrl(this, sigval1);
		return callback_return_value;
	}

	friend bool QRemoteObjectHost_virtualbase_setRegistryUrl(VirtualQRemoteObjectHost* self, QUrl* registryAddress);

	virtual void timerEvent(QTimerEvent* param1) override {
		if (vtbl->timerEvent == 0) {
			QRemoteObjectHost::timerEvent(param1);
			return;
		}

		QTimerEvent* sigval1 = param1;
		vtbl->timerEvent(this, sigval1);
	}

	friend void QRemoteObjectHost_virtualbase_timerEvent(VirtualQRemoteObjectHost* self, QTimerEvent* param1);

	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QRemoteObjectHost::event(event);
		}

		QEvent* sigval1 = event;
		bool callback_return_value = vtbl->event(this, sigval1);
		return callback_return_value;
	}

	friend bool QRemoteObjectHost_virtualbase_event(VirtualQRemoteObjectHost* self, QEvent* event);

	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QRemoteObjectHost::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;
		bool callback_return_value = vtbl->eventFilter(this, sigval1, sigval2);
		return callback_return_value;
	}

	friend bool QRemoteObjectHost_virtualbase_eventFilter(VirtualQRemoteObjectHost* self, QObject* watched, QEvent* event);

	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QRemoteObjectHost::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;
		vtbl->childEvent(this, sigval1);
	}

	friend void QRemoteObjectHost_virtualbase_childEvent(VirtualQRemoteObjectHost* self, QChildEvent* event);

	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QRemoteObjectHost::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;
		vtbl->customEvent(this, sigval1);
	}

	friend void QRemoteObjectHost_virtualbase_customEvent(VirtualQRemoteObjectHost* self, QEvent* event);

	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QRemoteObjectHost::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);
		vtbl->connectNotify(this, sigval1);
	}

	friend void QRemoteObjectHost_virtualbase_connectNotify(VirtualQRemoteObjectHost* self, QMetaMethod* signal);

	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QRemoteObjectHost::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);
		vtbl->disconnectNotify(this, sigval1);
	}

	friend void QRemoteObjectHost_virtualbase_disconnectNotify(VirtualQRemoteObjectHost* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend QObject* QRemoteObjectHost_protectedbase_sender(const VirtualQRemoteObjectHost* self);
	friend int QRemoteObjectHost_protectedbase_senderSignalIndex(const VirtualQRemoteObjectHost* self);
	friend int QRemoteObjectHost_protectedbase_receivers(const VirtualQRemoteObjectHost* self, const char* signal);
	friend bool QRemoteObjectHost_protectedbase_isSignalConnected(const VirtualQRemoteObjectHost* self, QMetaMethod* signal);
};

VirtualQRemoteObjectHost* QRemoteObjectHost_new(const QRemoteObjectHost_VTable* vtbl, size_t vdata) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQRemoteObjectHost>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQRemoteObjectHost(vtbl) : nullptr;
}

VirtualQRemoteObjectHost* QRemoteObjectHost_new_address(const QRemoteObjectHost_VTable* vtbl, size_t vdata, QUrl* address) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQRemoteObjectHost>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQRemoteObjectHost(vtbl, *address) : nullptr;
}

VirtualQRemoteObjectHost* QRemoteObjectHost_new_address_parent(const QRemoteObjectHost_VTable* vtbl, size_t vdata, QUrl* address, QObject* parent) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQRemoteObjectHost>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQRemoteObjectHost(vtbl, *address, parent) : nullptr;
}

VirtualQRemoteObjectHost* QRemoteObjectHost_new_parent(const QRemoteObjectHost_VTable* vtbl, size_t vdata, QObject* parent) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQRemoteObjectHost>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQRemoteObjectHost(vtbl, parent) : nullptr;
}

VirtualQRemoteObjectHost* QRemoteObjectHost_new_address_registryAddress(const QRemoteObjectHost_VTable* vtbl, size_t vdata, QUrl* address, QUrl* registryAddress) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQRemoteObjectHost>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQRemoteObjectHost(vtbl, *address, *registryAddress) : nullptr;
}

VirtualQRemoteObjectHost* QRemoteObjectHost_new_address_registryAddress_allowedSchemas(const QRemoteObjectHost_VTable* vtbl, size_t vdata, QUrl* address, QUrl* registryAddress, int allowedSchemas) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQRemoteObjectHost>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQRemoteObjectHost(vtbl, *address, *registryAddress, static_cast<QRemoteObjectHostBase::AllowedSchemas>(allowedSchemas)) : nullptr;
}

VirtualQRemoteObjectHost* QRemoteObjectHost_new_address_registryAddress_allowedSchemas_parent(const QRemoteObjectHost_VTable* vtbl, size_t vdata, QUrl* address, QUrl* registryAddress, int allowedSchemas, QObject* parent) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQRemoteObjectHost>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQRemoteObjectHost(vtbl, *address, *registryAddress, static_cast<QRemoteObjectHostBase::AllowedSchemas>(allowedSchemas), parent) : nullptr;
}

void QRemoteObjectHost_virtbase(QRemoteObjectHost* src, QRemoteObjectHostBase** outptr_QRemoteObjectHostBase) {
	*outptr_QRemoteObjectHostBase = static_cast<QRemoteObjectHostBase*>(src);
}

QMetaObject* QRemoteObjectHost_metaObject(const QRemoteObjectHost* self) {
	return (QMetaObject*) self->metaObject();
}

void* QRemoteObjectHost_metacast(QRemoteObjectHost* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QRemoteObjectHost_metacall(QRemoteObjectHost* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct seaqt_string QRemoteObjectHost_tr_s(const char* s) {
	QString _ret = QRemoteObjectHost::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QUrl* QRemoteObjectHost_hostUrl(const QRemoteObjectHost* self) {
	return new QUrl(self->hostUrl());
}

bool QRemoteObjectHost_setHostUrl(QRemoteObjectHost* self, QUrl* hostAddress, int allowedSchemas) {
	return self->setHostUrl(*hostAddress, static_cast<QRemoteObjectHostBase::AllowedSchemas>(allowedSchemas));
}

void QRemoteObjectHost_hostUrlChanged(QRemoteObjectHost* self) {
	self->hostUrlChanged();
}

void QRemoteObjectHost_connect_hostUrlChanged(QRemoteObjectHost* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	QRemoteObjectHost::connect(self, static_cast<void (QRemoteObjectHost::*)()>(&QRemoteObjectHost::hostUrlChanged), self, [callback, release = seaqt::release_callback{slot,release}]() {
			callback(release.slot);
	});
}

struct seaqt_string QRemoteObjectHost_tr_s_c(const char* s, const char* c) {
	QString _ret = QRemoteObjectHost::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QRemoteObjectHost_tr_s_c_n(const char* s, const char* c, int n) {
	QString _ret = QRemoteObjectHost::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

const QMetaObject* QRemoteObjectHost_staticMetaObject() { return &QRemoteObjectHost::staticMetaObject; }
void* QRemoteObjectHost_vdata(VirtualQRemoteObjectHost* self) { return reinterpret_cast<void*>(reinterpret_cast<char*>(self) + seaqt_aligned_sizeof<VirtualQRemoteObjectHost>()); }
VirtualQRemoteObjectHost* vdata_QRemoteObjectHost(void* vdata) { return reinterpret_cast<VirtualQRemoteObjectHost*>(reinterpret_cast<char*>(vdata) - seaqt_aligned_sizeof<VirtualQRemoteObjectHost>()); }

QMetaObject* QRemoteObjectHost_virtualbase_metaObject(const VirtualQRemoteObjectHost* self) {

	return (QMetaObject*) self->QRemoteObjectHost::metaObject();
}

void* QRemoteObjectHost_virtualbase_metacast(VirtualQRemoteObjectHost* self, const char* param1) {

	return self->QRemoteObjectHost::qt_metacast(param1);
}

int QRemoteObjectHost_virtualbase_metacall(VirtualQRemoteObjectHost* self, int param1, int param2, void** param3) {

	return self->QRemoteObjectHost::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

QUrl* QRemoteObjectHost_virtualbase_hostUrl(const VirtualQRemoteObjectHost* self) {

	return new QUrl(self->QRemoteObjectHost::hostUrl());
}

bool QRemoteObjectHost_virtualbase_setHostUrl(VirtualQRemoteObjectHost* self, QUrl* hostAddress, int allowedSchemas) {

	return self->QRemoteObjectHost::setHostUrl(*hostAddress, static_cast<VirtualQRemoteObjectHost::AllowedSchemas>(allowedSchemas));
}

void QRemoteObjectHost_virtualbase_setName(VirtualQRemoteObjectHost* self, struct seaqt_string name) {
	QString name_QString = QString::fromUtf8(name.data, name.len);

	self->QRemoteObjectHost::setName(name_QString);
}

bool QRemoteObjectHost_virtualbase_setRegistryUrl(VirtualQRemoteObjectHost* self, QUrl* registryAddress) {

	return self->QRemoteObjectHost::setRegistryUrl(*registryAddress);
}

void QRemoteObjectHost_virtualbase_timerEvent(VirtualQRemoteObjectHost* self, QTimerEvent* param1) {

	self->QRemoteObjectHost::timerEvent(param1);
}

bool QRemoteObjectHost_virtualbase_event(VirtualQRemoteObjectHost* self, QEvent* event) {

	return self->QRemoteObjectHost::event(event);
}

bool QRemoteObjectHost_virtualbase_eventFilter(VirtualQRemoteObjectHost* self, QObject* watched, QEvent* event) {

	return self->QRemoteObjectHost::eventFilter(watched, event);
}

void QRemoteObjectHost_virtualbase_childEvent(VirtualQRemoteObjectHost* self, QChildEvent* event) {

	self->QRemoteObjectHost::childEvent(event);
}

void QRemoteObjectHost_virtualbase_customEvent(VirtualQRemoteObjectHost* self, QEvent* event) {

	self->QRemoteObjectHost::customEvent(event);
}

void QRemoteObjectHost_virtualbase_connectNotify(VirtualQRemoteObjectHost* self, QMetaMethod* signal) {

	self->QRemoteObjectHost::connectNotify(*signal);
}

void QRemoteObjectHost_virtualbase_disconnectNotify(VirtualQRemoteObjectHost* self, QMetaMethod* signal) {

	self->QRemoteObjectHost::disconnectNotify(*signal);
}

QObject* QRemoteObjectHost_protectedbase_sender(const VirtualQRemoteObjectHost* self) {
	return self->QRemoteObjectHost::sender();
}

int QRemoteObjectHost_protectedbase_senderSignalIndex(const VirtualQRemoteObjectHost* self) {
	return self->QRemoteObjectHost::senderSignalIndex();
}

int QRemoteObjectHost_protectedbase_receivers(const VirtualQRemoteObjectHost* self, const char* signal) {
	return self->QRemoteObjectHost::receivers(signal);
}

bool QRemoteObjectHost_protectedbase_isSignalConnected(const VirtualQRemoteObjectHost* self, QMetaMethod* signal) {
	return self->QRemoteObjectHost::isSignalConnected(*signal);
}

void QRemoteObjectHost_delete(QRemoteObjectHost* self) {
	delete self;
}

class VirtualQRemoteObjectRegistryHost final : public QRemoteObjectRegistryHost {
	const QRemoteObjectRegistryHost_VTable* vtbl;
public:
	friend void* QRemoteObjectRegistryHost_vdata(VirtualQRemoteObjectRegistryHost* self);
	friend VirtualQRemoteObjectRegistryHost* vdata_QRemoteObjectRegistryHost(void* vdata);

	VirtualQRemoteObjectRegistryHost(const QRemoteObjectRegistryHost_VTable* vtbl): QRemoteObjectRegistryHost(), vtbl(vtbl) {}
	VirtualQRemoteObjectRegistryHost(const QRemoteObjectRegistryHost_VTable* vtbl, const QUrl& registryAddress): QRemoteObjectRegistryHost(registryAddress), vtbl(vtbl) {}
	VirtualQRemoteObjectRegistryHost(const QRemoteObjectRegistryHost_VTable* vtbl, const QUrl& registryAddress, QObject* parent): QRemoteObjectRegistryHost(registryAddress, parent), vtbl(vtbl) {}

	virtual ~VirtualQRemoteObjectRegistryHost() override { if(vtbl->destructor) vtbl->destructor(this); }

	void operator delete(void* p) { ::operator delete(p); }
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QRemoteObjectRegistryHost::metaObject();
		}

		QMetaObject* callback_return_value = vtbl->metaObject(this);
		return callback_return_value;
	}

	friend QMetaObject* QRemoteObjectRegistryHost_virtualbase_metaObject(const VirtualQRemoteObjectRegistryHost* self);

	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QRemoteObjectRegistryHost::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;
		void* callback_return_value = vtbl->metacast(this, sigval1);
		return callback_return_value;
	}

	friend void* QRemoteObjectRegistryHost_virtualbase_metacast(VirtualQRemoteObjectRegistryHost* self, const char* param1);

	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QRemoteObjectRegistryHost::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;
		int callback_return_value = vtbl->metacall(this, sigval1, sigval2, sigval3);
		return static_cast<int>(callback_return_value);
	}

	friend int QRemoteObjectRegistryHost_virtualbase_metacall(VirtualQRemoteObjectRegistryHost* self, int param1, int param2, void** param3);

	virtual bool setRegistryUrl(const QUrl& registryUrl) override {
		if (vtbl->setRegistryUrl == 0) {
			return QRemoteObjectRegistryHost::setRegistryUrl(registryUrl);
		}

		const QUrl& registryUrl_ret = registryUrl;
		// Cast returned reference into pointer
		QUrl* sigval1 = const_cast<QUrl*>(&registryUrl_ret);
		bool callback_return_value = vtbl->setRegistryUrl(this, sigval1);
		return callback_return_value;
	}

	friend bool QRemoteObjectRegistryHost_virtualbase_setRegistryUrl(VirtualQRemoteObjectRegistryHost* self, QUrl* registryUrl);

	virtual void setName(const QString& name) override {
		if (vtbl->setName == 0) {
			QRemoteObjectRegistryHost::setName(name);
			return;
		}

		const QString name_ret = name;
		// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
		QByteArray name_b = name_ret.toUtf8();
		struct seaqt_string name_ms;
		name_ms.len = name_b.length();
		name_ms.data = static_cast<char*>(malloc(name_ms.len));
		memcpy(name_ms.data, name_b.data(), name_ms.len);
		struct seaqt_string sigval1 = name_ms;
		vtbl->setName(this, sigval1);
	}

	friend void QRemoteObjectRegistryHost_virtualbase_setName(VirtualQRemoteObjectRegistryHost* self, struct seaqt_string name);

	virtual QUrl hostUrl() const override {
		if (vtbl->hostUrl == 0) {
			return QRemoteObjectRegistryHost::hostUrl();
		}

		QUrl* callback_return_value = vtbl->hostUrl(this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;
		return callback_return_value_Value;
	}

	friend QUrl* QRemoteObjectRegistryHost_virtualbase_hostUrl(const VirtualQRemoteObjectRegistryHost* self);

	virtual bool setHostUrl(const QUrl& hostAddress, QRemoteObjectHostBase::AllowedSchemas allowedSchemas) override {
		if (vtbl->setHostUrl == 0) {
			return QRemoteObjectRegistryHost::setHostUrl(hostAddress, allowedSchemas);
		}

		const QUrl& hostAddress_ret = hostAddress;
		// Cast returned reference into pointer
		QUrl* sigval1 = const_cast<QUrl*>(&hostAddress_ret);
		QRemoteObjectHostBase::AllowedSchemas allowedSchemas_ret = allowedSchemas;
		int sigval2 = static_cast<int>(allowedSchemas_ret);
		bool callback_return_value = vtbl->setHostUrl(this, sigval1, sigval2);
		return callback_return_value;
	}

	friend bool QRemoteObjectRegistryHost_virtualbase_setHostUrl(VirtualQRemoteObjectRegistryHost* self, QUrl* hostAddress, int allowedSchemas);

	virtual void timerEvent(QTimerEvent* param1) override {
		if (vtbl->timerEvent == 0) {
			QRemoteObjectRegistryHost::timerEvent(param1);
			return;
		}

		QTimerEvent* sigval1 = param1;
		vtbl->timerEvent(this, sigval1);
	}

	friend void QRemoteObjectRegistryHost_virtualbase_timerEvent(VirtualQRemoteObjectRegistryHost* self, QTimerEvent* param1);

	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QRemoteObjectRegistryHost::event(event);
		}

		QEvent* sigval1 = event;
		bool callback_return_value = vtbl->event(this, sigval1);
		return callback_return_value;
	}

	friend bool QRemoteObjectRegistryHost_virtualbase_event(VirtualQRemoteObjectRegistryHost* self, QEvent* event);

	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QRemoteObjectRegistryHost::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;
		bool callback_return_value = vtbl->eventFilter(this, sigval1, sigval2);
		return callback_return_value;
	}

	friend bool QRemoteObjectRegistryHost_virtualbase_eventFilter(VirtualQRemoteObjectRegistryHost* self, QObject* watched, QEvent* event);

	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QRemoteObjectRegistryHost::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;
		vtbl->childEvent(this, sigval1);
	}

	friend void QRemoteObjectRegistryHost_virtualbase_childEvent(VirtualQRemoteObjectRegistryHost* self, QChildEvent* event);

	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QRemoteObjectRegistryHost::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;
		vtbl->customEvent(this, sigval1);
	}

	friend void QRemoteObjectRegistryHost_virtualbase_customEvent(VirtualQRemoteObjectRegistryHost* self, QEvent* event);

	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QRemoteObjectRegistryHost::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);
		vtbl->connectNotify(this, sigval1);
	}

	friend void QRemoteObjectRegistryHost_virtualbase_connectNotify(VirtualQRemoteObjectRegistryHost* self, QMetaMethod* signal);

	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QRemoteObjectRegistryHost::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);
		vtbl->disconnectNotify(this, sigval1);
	}

	friend void QRemoteObjectRegistryHost_virtualbase_disconnectNotify(VirtualQRemoteObjectRegistryHost* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend QObject* QRemoteObjectRegistryHost_protectedbase_sender(const VirtualQRemoteObjectRegistryHost* self);
	friend int QRemoteObjectRegistryHost_protectedbase_senderSignalIndex(const VirtualQRemoteObjectRegistryHost* self);
	friend int QRemoteObjectRegistryHost_protectedbase_receivers(const VirtualQRemoteObjectRegistryHost* self, const char* signal);
	friend bool QRemoteObjectRegistryHost_protectedbase_isSignalConnected(const VirtualQRemoteObjectRegistryHost* self, QMetaMethod* signal);
};

VirtualQRemoteObjectRegistryHost* QRemoteObjectRegistryHost_new(const QRemoteObjectRegistryHost_VTable* vtbl, size_t vdata) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQRemoteObjectRegistryHost>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQRemoteObjectRegistryHost(vtbl) : nullptr;
}

VirtualQRemoteObjectRegistryHost* QRemoteObjectRegistryHost_new_registryAddress(const QRemoteObjectRegistryHost_VTable* vtbl, size_t vdata, QUrl* registryAddress) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQRemoteObjectRegistryHost>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQRemoteObjectRegistryHost(vtbl, *registryAddress) : nullptr;
}

VirtualQRemoteObjectRegistryHost* QRemoteObjectRegistryHost_new_registryAddress_parent(const QRemoteObjectRegistryHost_VTable* vtbl, size_t vdata, QUrl* registryAddress, QObject* parent) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQRemoteObjectRegistryHost>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQRemoteObjectRegistryHost(vtbl, *registryAddress, parent) : nullptr;
}

void QRemoteObjectRegistryHost_virtbase(QRemoteObjectRegistryHost* src, QRemoteObjectHostBase** outptr_QRemoteObjectHostBase) {
	*outptr_QRemoteObjectHostBase = static_cast<QRemoteObjectHostBase*>(src);
}

QMetaObject* QRemoteObjectRegistryHost_metaObject(const QRemoteObjectRegistryHost* self) {
	return (QMetaObject*) self->metaObject();
}

void* QRemoteObjectRegistryHost_metacast(QRemoteObjectRegistryHost* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QRemoteObjectRegistryHost_metacall(QRemoteObjectRegistryHost* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct seaqt_string QRemoteObjectRegistryHost_tr_s(const char* s) {
	QString _ret = QRemoteObjectRegistryHost::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

bool QRemoteObjectRegistryHost_setRegistryUrl(QRemoteObjectRegistryHost* self, QUrl* registryUrl) {
	return self->setRegistryUrl(*registryUrl);
}

struct seaqt_string QRemoteObjectRegistryHost_tr_s_c(const char* s, const char* c) {
	QString _ret = QRemoteObjectRegistryHost::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QRemoteObjectRegistryHost_tr_s_c_n(const char* s, const char* c, int n) {
	QString _ret = QRemoteObjectRegistryHost::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

const QMetaObject* QRemoteObjectRegistryHost_staticMetaObject() { return &QRemoteObjectRegistryHost::staticMetaObject; }
void* QRemoteObjectRegistryHost_vdata(VirtualQRemoteObjectRegistryHost* self) { return reinterpret_cast<void*>(reinterpret_cast<char*>(self) + seaqt_aligned_sizeof<VirtualQRemoteObjectRegistryHost>()); }
VirtualQRemoteObjectRegistryHost* vdata_QRemoteObjectRegistryHost(void* vdata) { return reinterpret_cast<VirtualQRemoteObjectRegistryHost*>(reinterpret_cast<char*>(vdata) - seaqt_aligned_sizeof<VirtualQRemoteObjectRegistryHost>()); }

QMetaObject* QRemoteObjectRegistryHost_virtualbase_metaObject(const VirtualQRemoteObjectRegistryHost* self) {

	return (QMetaObject*) self->QRemoteObjectRegistryHost::metaObject();
}

void* QRemoteObjectRegistryHost_virtualbase_metacast(VirtualQRemoteObjectRegistryHost* self, const char* param1) {

	return self->QRemoteObjectRegistryHost::qt_metacast(param1);
}

int QRemoteObjectRegistryHost_virtualbase_metacall(VirtualQRemoteObjectRegistryHost* self, int param1, int param2, void** param3) {

	return self->QRemoteObjectRegistryHost::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

bool QRemoteObjectRegistryHost_virtualbase_setRegistryUrl(VirtualQRemoteObjectRegistryHost* self, QUrl* registryUrl) {

	return self->QRemoteObjectRegistryHost::setRegistryUrl(*registryUrl);
}

void QRemoteObjectRegistryHost_virtualbase_setName(VirtualQRemoteObjectRegistryHost* self, struct seaqt_string name) {
	QString name_QString = QString::fromUtf8(name.data, name.len);

	self->QRemoteObjectRegistryHost::setName(name_QString);
}

QUrl* QRemoteObjectRegistryHost_virtualbase_hostUrl(const VirtualQRemoteObjectRegistryHost* self) {

	return new QUrl(self->QRemoteObjectRegistryHost::hostUrl());
}

bool QRemoteObjectRegistryHost_virtualbase_setHostUrl(VirtualQRemoteObjectRegistryHost* self, QUrl* hostAddress, int allowedSchemas) {

	return self->QRemoteObjectRegistryHost::setHostUrl(*hostAddress, static_cast<VirtualQRemoteObjectRegistryHost::AllowedSchemas>(allowedSchemas));
}

void QRemoteObjectRegistryHost_virtualbase_timerEvent(VirtualQRemoteObjectRegistryHost* self, QTimerEvent* param1) {

	self->QRemoteObjectRegistryHost::timerEvent(param1);
}

bool QRemoteObjectRegistryHost_virtualbase_event(VirtualQRemoteObjectRegistryHost* self, QEvent* event) {

	return self->QRemoteObjectRegistryHost::event(event);
}

bool QRemoteObjectRegistryHost_virtualbase_eventFilter(VirtualQRemoteObjectRegistryHost* self, QObject* watched, QEvent* event) {

	return self->QRemoteObjectRegistryHost::eventFilter(watched, event);
}

void QRemoteObjectRegistryHost_virtualbase_childEvent(VirtualQRemoteObjectRegistryHost* self, QChildEvent* event) {

	self->QRemoteObjectRegistryHost::childEvent(event);
}

void QRemoteObjectRegistryHost_virtualbase_customEvent(VirtualQRemoteObjectRegistryHost* self, QEvent* event) {

	self->QRemoteObjectRegistryHost::customEvent(event);
}

void QRemoteObjectRegistryHost_virtualbase_connectNotify(VirtualQRemoteObjectRegistryHost* self, QMetaMethod* signal) {

	self->QRemoteObjectRegistryHost::connectNotify(*signal);
}

void QRemoteObjectRegistryHost_virtualbase_disconnectNotify(VirtualQRemoteObjectRegistryHost* self, QMetaMethod* signal) {

	self->QRemoteObjectRegistryHost::disconnectNotify(*signal);
}

QObject* QRemoteObjectRegistryHost_protectedbase_sender(const VirtualQRemoteObjectRegistryHost* self) {
	return self->QRemoteObjectRegistryHost::sender();
}

int QRemoteObjectRegistryHost_protectedbase_senderSignalIndex(const VirtualQRemoteObjectRegistryHost* self) {
	return self->QRemoteObjectRegistryHost::senderSignalIndex();
}

int QRemoteObjectRegistryHost_protectedbase_receivers(const VirtualQRemoteObjectRegistryHost* self, const char* signal) {
	return self->QRemoteObjectRegistryHost::receivers(signal);
}

bool QRemoteObjectRegistryHost_protectedbase_isSignalConnected(const VirtualQRemoteObjectRegistryHost* self, QMetaMethod* signal) {
	return self->QRemoteObjectRegistryHost::isSignalConnected(*signal);
}

void QRemoteObjectRegistryHost_delete(QRemoteObjectRegistryHost* self) {
	delete self;
}

