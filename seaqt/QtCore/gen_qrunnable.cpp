#include <QRunnable>
#include <qrunnable.h>
#include "gen_qrunnable.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
} /* extern C */
#endif

class VirtualQRunnable final : public QRunnable {
	struct QRunnable_VTable* vtbl;
public:

	VirtualQRunnable(struct QRunnable_VTable* vtbl): QRunnable(), vtbl(vtbl) {};

	virtual ~VirtualQRunnable() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual void run() override {
		if (vtbl->run == 0) {
			return; // Pure virtual, there is no base we can call
		}


		vtbl->run(vtbl, this);

	}

};

QRunnable* QRunnable_new(struct QRunnable_VTable* vtbl) {
	return new VirtualQRunnable(vtbl);
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

void QRunnable_delete(QRunnable* self) {
	delete self;
}

