#include <QEvent>
#include <QGesture>
#include <QGestureRecognizer>
#include <QObject>
#include <qgesturerecognizer.h>
#include "gen_qgesturerecognizer.h"

#ifndef SEAQT_ALIGNED_SIZEOF
#define SEAQT_ALIGNED_SIZEOF 1
#include <cstddef>
template<typename T>
static constexpr std::size_t seaqt_aligned_sizeof() {
	constexpr auto alignment = sizeof(std::max_align_t);
	return (sizeof(T) + alignment - 1) & ~(alignment - 1);
}
#endif

class VirtualQGestureRecognizer final : public QGestureRecognizer {
	const QGestureRecognizer_VTable* vtbl;
public:
	friend void* QGestureRecognizer_vdata(VirtualQGestureRecognizer* self);
	friend VirtualQGestureRecognizer* vdata_QGestureRecognizer(void* vdata);

	VirtualQGestureRecognizer(const QGestureRecognizer_VTable* vtbl): QGestureRecognizer(), vtbl(vtbl) {}

	virtual ~VirtualQGestureRecognizer() override { if(vtbl->destructor) vtbl->destructor(this); }

	void operator delete(void* p) { ::operator delete(p); }
	virtual QGesture* create(QObject* target) override {
		if (vtbl->create == 0) {
			return QGestureRecognizer::create(target);
		}

		QObject* sigval1 = target;
		QGesture* callback_return_value = vtbl->create(this, sigval1);
		return callback_return_value;
	}

	friend QGesture* QGestureRecognizer_virtualbase_create(VirtualQGestureRecognizer* self, QObject* target);

	virtual QGestureRecognizer::Result recognize(QGesture* state, QObject* watched, QEvent* event) override {
		if (vtbl->recognize == 0) {
			return QGestureRecognizer::Result(); // Pure virtual, there is no base we can call
		}

		QGesture* sigval1 = state;
		QObject* sigval2 = watched;
		QEvent* sigval3 = event;
		int callback_return_value = vtbl->recognize(this, sigval1, sigval2, sigval3);
		return static_cast<QGestureRecognizer::Result>(callback_return_value);
	}

	virtual void reset(QGesture* state) override {
		if (vtbl->reset == 0) {
			QGestureRecognizer::reset(state);
			return;
		}

		QGesture* sigval1 = state;
		vtbl->reset(this, sigval1);
	}

	friend void QGestureRecognizer_virtualbase_reset(VirtualQGestureRecognizer* self, QGesture* state);

};

VirtualQGestureRecognizer* QGestureRecognizer_new(const QGestureRecognizer_VTable* vtbl, size_t vdata) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQGestureRecognizer>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQGestureRecognizer(vtbl) : nullptr;
}

QGesture* QGestureRecognizer_create(QGestureRecognizer* self, QObject* target) {
	return self->create(target);
}

int QGestureRecognizer_recognize(QGestureRecognizer* self, QGesture* state, QObject* watched, QEvent* event) {
	QGestureRecognizer::Result _ret = self->recognize(state, watched, event);
	return static_cast<int>(_ret);
}

void QGestureRecognizer_reset(QGestureRecognizer* self, QGesture* state) {
	self->reset(state);
}

int QGestureRecognizer_registerRecognizer(QGestureRecognizer* recognizer) {
	Qt::GestureType _ret = QGestureRecognizer::registerRecognizer(recognizer);
	return static_cast<int>(_ret);
}

void QGestureRecognizer_unregisterRecognizer(int type) {
	QGestureRecognizer::unregisterRecognizer(static_cast<Qt::GestureType>(type));
}

void QGestureRecognizer_operatorAssign(QGestureRecognizer* self, QGestureRecognizer* from) {
	self->operator=(*from);
}

void* QGestureRecognizer_vdata(VirtualQGestureRecognizer* self) { return reinterpret_cast<void*>(reinterpret_cast<char*>(self) + seaqt_aligned_sizeof<VirtualQGestureRecognizer>()); }
VirtualQGestureRecognizer* vdata_QGestureRecognizer(void* vdata) { return reinterpret_cast<VirtualQGestureRecognizer*>(reinterpret_cast<char*>(vdata) - seaqt_aligned_sizeof<VirtualQGestureRecognizer>()); }

QGesture* QGestureRecognizer_virtualbase_create(VirtualQGestureRecognizer* self, QObject* target) {

	return self->QGestureRecognizer::create(target);
}

void QGestureRecognizer_virtualbase_reset(VirtualQGestureRecognizer* self, QGesture* state) {

	self->QGestureRecognizer::reset(state);
}

void QGestureRecognizer_delete(QGestureRecognizer* self) {
	delete self;
}

