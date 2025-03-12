#include <QEvent>
#include <QGesture>
#include <QGestureRecognizer>
#include <QObject>
#include <qgesturerecognizer.h>
#include "gen_qgesturerecognizer.h"
class VirtualQGestureRecognizer final : public QGestureRecognizer {
	const QGestureRecognizer_VTable* vtbl;
	void* vdata;
public:
	friend const QGestureRecognizer_VTable* QGestureRecognizer_vtbl(const VirtualQGestureRecognizer* self);
	friend void* QGestureRecognizer_vdata(const VirtualQGestureRecognizer* self);
	friend void QGestureRecognizer_setVdata(VirtualQGestureRecognizer* self, void* vdata);

	VirtualQGestureRecognizer(const QGestureRecognizer_VTable* vtbl, void* vdata): QGestureRecognizer(), vtbl(vtbl), vdata(vdata) {}

	virtual ~VirtualQGestureRecognizer() override { if(vtbl->destructor) vtbl->destructor(this); }

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

VirtualQGestureRecognizer* QGestureRecognizer_new(const QGestureRecognizer_VTable* vtbl, void* vdata) {
	return new VirtualQGestureRecognizer(vtbl, vdata);
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

void QGestureRecognizer_operatorAssign(QGestureRecognizer* self, QGestureRecognizer* param1) {
	self->operator=(*param1);
}

QGesture* QGestureRecognizer_virtualbase_create(VirtualQGestureRecognizer* self, QObject* target) {

	return self->QGestureRecognizer::create(target);
}

void QGestureRecognizer_virtualbase_reset(VirtualQGestureRecognizer* self, QGesture* state) {

	self->QGestureRecognizer::reset(state);
}

const QGestureRecognizer_VTable* QGestureRecognizer_vtbl(const VirtualQGestureRecognizer* self) { return self->vtbl; }
void* QGestureRecognizer_vdata(const VirtualQGestureRecognizer* self) { return self->vdata; }
void QGestureRecognizer_setVdata(VirtualQGestureRecognizer* self, void* vdata) { self->vdata = vdata; }

void QGestureRecognizer_delete(QGestureRecognizer* self) {
	delete self;
}

