#include <QRunnable>
#include <qrunnable.h>
#include "gen_qrunnable.h"
class VirtualQRunnable final : public QRunnable {
	const QRunnable_VTable* vtbl;
	void* vdata;
public:
	friend const QRunnable_VTable* QRunnable_vtbl(const VirtualQRunnable* self);
	friend void* QRunnable_vdata(const VirtualQRunnable* self);
	friend void QRunnable_setVdata(VirtualQRunnable* self, void* vdata);

	VirtualQRunnable(const QRunnable_VTable* vtbl, void* vdata): QRunnable(), vtbl(vtbl), vdata(vdata) {}

	virtual ~VirtualQRunnable() override { if(vtbl->destructor) vtbl->destructor(this); }

	virtual void run() override {
		if (vtbl->run == 0) {
			return; // Pure virtual, there is no base we can call
		}


		vtbl->run(this);

	}

};

VirtualQRunnable* QRunnable_new(const QRunnable_VTable* vtbl, void* vdata) {
	return new VirtualQRunnable(vtbl, vdata);
}

void QRunnable_run(QRunnable* self) {
	self->run();
}

bool QRunnable_autoDelete(const QRunnable* self) {
	return self->autoDelete();
}

void QRunnable_setAutoDelete(QRunnable* self, bool _autoDelete) {
	self->setAutoDelete(_autoDelete);
}

void QRunnable_operatorAssign(QRunnable* self, QRunnable* param1) {
	self->operator=(*param1);
}

const QRunnable_VTable* QRunnable_vtbl(const VirtualQRunnable* self) { return self->vtbl; }
void* QRunnable_vdata(const VirtualQRunnable* self) { return self->vdata; }
void QRunnable_setVdata(VirtualQRunnable* self, void* vdata) { self->vdata = vdata; }

void QRunnable_delete(QRunnable* self) {
	delete self;
}

