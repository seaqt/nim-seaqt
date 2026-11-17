#include <QChildEvent>
#include <QEvent>
#include <QMaskGenerator>
#include <QMetaMethod>
#include <QMetaObject>
#include <QObject>
#include <QTimerEvent>
#include <qmaskgenerator.h>
#include "gen_qmaskgenerator.h"

#ifndef SEAQT_ALIGNED_SIZEOF
#define SEAQT_ALIGNED_SIZEOF 1
#include <cstddef>
template<typename T>
static constexpr std::size_t seaqt_aligned_sizeof() {
	constexpr auto alignment = sizeof(std::max_align_t);
	return (sizeof(T) + alignment - 1) & ~(alignment - 1);
}
#endif

class VirtualQMaskGenerator final : public QMaskGenerator {
	const QMaskGenerator_VTable* vtbl;
public:
	friend void* QMaskGenerator_vdata(VirtualQMaskGenerator* self);
	friend VirtualQMaskGenerator* vdata_QMaskGenerator(void* vdata);

	VirtualQMaskGenerator(const QMaskGenerator_VTable* vtbl): QMaskGenerator(), vtbl(vtbl) {}
	VirtualQMaskGenerator(const QMaskGenerator_VTable* vtbl, QObject* parent): QMaskGenerator(parent), vtbl(vtbl) {}

	virtual ~VirtualQMaskGenerator() override { if(vtbl->destructor) vtbl->destructor(this); }

	void operator delete(void* p) { ::operator delete(p); }
	virtual bool seed() override {
		if (vtbl->seed == 0) {
			return false; // Pure virtual, there is no base we can call
		}

		bool callback_return_value = vtbl->seed(this);
		return callback_return_value;
	}

	virtual quint32 nextMask() override {
		if (vtbl->nextMask == 0) {
			return 0; // Pure virtual, there is no base we can call
		}

		unsigned int callback_return_value = vtbl->nextMask(this);
		return static_cast<quint32>(callback_return_value);
	}

	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QMaskGenerator::metaObject();
		}

		QMetaObject* callback_return_value = vtbl->metaObject(this);
		return callback_return_value;
	}

	friend QMetaObject* QMaskGenerator_virtualbase_metaObject(const VirtualQMaskGenerator* self);

	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QMaskGenerator::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;
		void* callback_return_value = vtbl->metacast(this, sigval1);
		return callback_return_value;
	}

	friend void* QMaskGenerator_virtualbase_metacast(VirtualQMaskGenerator* self, const char* param1);

	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QMaskGenerator::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;
		int callback_return_value = vtbl->metacall(this, sigval1, sigval2, sigval3);
		return static_cast<int>(callback_return_value);
	}

	friend int QMaskGenerator_virtualbase_metacall(VirtualQMaskGenerator* self, int param1, int param2, void** param3);

	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QMaskGenerator::event(event);
		}

		QEvent* sigval1 = event;
		bool callback_return_value = vtbl->event(this, sigval1);
		return callback_return_value;
	}

	friend bool QMaskGenerator_virtualbase_event(VirtualQMaskGenerator* self, QEvent* event);

	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QMaskGenerator::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;
		bool callback_return_value = vtbl->eventFilter(this, sigval1, sigval2);
		return callback_return_value;
	}

	friend bool QMaskGenerator_virtualbase_eventFilter(VirtualQMaskGenerator* self, QObject* watched, QEvent* event);

	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QMaskGenerator::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;
		vtbl->timerEvent(this, sigval1);
	}

	friend void QMaskGenerator_virtualbase_timerEvent(VirtualQMaskGenerator* self, QTimerEvent* event);

	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QMaskGenerator::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;
		vtbl->childEvent(this, sigval1);
	}

	friend void QMaskGenerator_virtualbase_childEvent(VirtualQMaskGenerator* self, QChildEvent* event);

	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QMaskGenerator::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;
		vtbl->customEvent(this, sigval1);
	}

	friend void QMaskGenerator_virtualbase_customEvent(VirtualQMaskGenerator* self, QEvent* event);

	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QMaskGenerator::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);
		vtbl->connectNotify(this, sigval1);
	}

	friend void QMaskGenerator_virtualbase_connectNotify(VirtualQMaskGenerator* self, QMetaMethod* signal);

	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QMaskGenerator::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);
		vtbl->disconnectNotify(this, sigval1);
	}

	friend void QMaskGenerator_virtualbase_disconnectNotify(VirtualQMaskGenerator* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend QObject* QMaskGenerator_protectedbase_sender(const VirtualQMaskGenerator* self);
	friend int QMaskGenerator_protectedbase_senderSignalIndex(const VirtualQMaskGenerator* self);
	friend int QMaskGenerator_protectedbase_receivers(const VirtualQMaskGenerator* self, const char* signal);
	friend bool QMaskGenerator_protectedbase_isSignalConnected(const VirtualQMaskGenerator* self, QMetaMethod* signal);
};

VirtualQMaskGenerator* QMaskGenerator_new(const QMaskGenerator_VTable* vtbl, size_t vdata) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQMaskGenerator>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQMaskGenerator(vtbl) : nullptr;
}

VirtualQMaskGenerator* QMaskGenerator_new2(const QMaskGenerator_VTable* vtbl, size_t vdata, QObject* parent) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQMaskGenerator>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQMaskGenerator(vtbl, parent) : nullptr;
}

void QMaskGenerator_virtbase(QMaskGenerator* src, QObject** outptr_QObject) {
	*outptr_QObject = static_cast<QObject*>(src);
}

bool QMaskGenerator_seed(QMaskGenerator* self) {
	return self->seed();
}

unsigned int QMaskGenerator_nextMask(QMaskGenerator* self) {
	quint32 _ret = self->nextMask();
	return static_cast<unsigned int>(_ret);
}

void* QMaskGenerator_vdata(VirtualQMaskGenerator* self) { return reinterpret_cast<void*>(reinterpret_cast<char*>(self) + seaqt_aligned_sizeof<VirtualQMaskGenerator>()); }
VirtualQMaskGenerator* vdata_QMaskGenerator(void* vdata) { return reinterpret_cast<VirtualQMaskGenerator*>(reinterpret_cast<char*>(vdata) - seaqt_aligned_sizeof<VirtualQMaskGenerator>()); }

QMetaObject* QMaskGenerator_virtualbase_metaObject(const VirtualQMaskGenerator* self) {

	return (QMetaObject*) self->QMaskGenerator::metaObject();
}

void* QMaskGenerator_virtualbase_metacast(VirtualQMaskGenerator* self, const char* param1) {

	return self->QMaskGenerator::qt_metacast(param1);
}

int QMaskGenerator_virtualbase_metacall(VirtualQMaskGenerator* self, int param1, int param2, void** param3) {

	return self->QMaskGenerator::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

bool QMaskGenerator_virtualbase_event(VirtualQMaskGenerator* self, QEvent* event) {

	return self->QMaskGenerator::event(event);
}

bool QMaskGenerator_virtualbase_eventFilter(VirtualQMaskGenerator* self, QObject* watched, QEvent* event) {

	return self->QMaskGenerator::eventFilter(watched, event);
}

void QMaskGenerator_virtualbase_timerEvent(VirtualQMaskGenerator* self, QTimerEvent* event) {

	self->QMaskGenerator::timerEvent(event);
}

void QMaskGenerator_virtualbase_childEvent(VirtualQMaskGenerator* self, QChildEvent* event) {

	self->QMaskGenerator::childEvent(event);
}

void QMaskGenerator_virtualbase_customEvent(VirtualQMaskGenerator* self, QEvent* event) {

	self->QMaskGenerator::customEvent(event);
}

void QMaskGenerator_virtualbase_connectNotify(VirtualQMaskGenerator* self, QMetaMethod* signal) {

	self->QMaskGenerator::connectNotify(*signal);
}

void QMaskGenerator_virtualbase_disconnectNotify(VirtualQMaskGenerator* self, QMetaMethod* signal) {

	self->QMaskGenerator::disconnectNotify(*signal);
}

QObject* QMaskGenerator_protectedbase_sender(const VirtualQMaskGenerator* self) {
	return self->sender();
}

int QMaskGenerator_protectedbase_senderSignalIndex(const VirtualQMaskGenerator* self) {
	return self->senderSignalIndex();
}

int QMaskGenerator_protectedbase_receivers(const VirtualQMaskGenerator* self, const char* signal) {
	return self->receivers(signal);
}

bool QMaskGenerator_protectedbase_isSignalConnected(const VirtualQMaskGenerator* self, QMetaMethod* signal) {
	return self->isSignalConnected(*signal);
}

void QMaskGenerator_delete(QMaskGenerator* self) {
	delete self;
}

