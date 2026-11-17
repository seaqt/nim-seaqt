#include <QRunnable>
#include <qrunnable.h>
#include "gen_qrunnable.h"

#ifndef SEAQT_ALIGNED_SIZEOF
#define SEAQT_ALIGNED_SIZEOF 1
#include <cstddef>
template<typename T>
static constexpr std::size_t seaqt_aligned_sizeof() {
	constexpr auto alignment = sizeof(std::max_align_t);
	return (sizeof(T) + alignment - 1) & ~(alignment - 1);
}
#endif

class VirtualQRunnable final : public QRunnable {
	const QRunnable_VTable* vtbl;
public:
	friend void* QRunnable_vdata(VirtualQRunnable* self);
	friend VirtualQRunnable* vdata_QRunnable(void* vdata);

	VirtualQRunnable(const QRunnable_VTable* vtbl): QRunnable(), vtbl(vtbl) {}

	virtual ~VirtualQRunnable() override { if(vtbl->destructor) vtbl->destructor(this); }

	void operator delete(void* p) { ::operator delete(p); }
	virtual void run() override {
		if (vtbl->run == 0) {
			return; // Pure virtual, there is no base we can call
		}

		vtbl->run(this);
	}

};

VirtualQRunnable* QRunnable_new(const QRunnable_VTable* vtbl, size_t vdata) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQRunnable>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQRunnable(vtbl) : nullptr;
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

void* QRunnable_vdata(VirtualQRunnable* self) { return reinterpret_cast<void*>(reinterpret_cast<char*>(self) + seaqt_aligned_sizeof<VirtualQRunnable>()); }
VirtualQRunnable* vdata_QRunnable(void* vdata) { return reinterpret_cast<VirtualQRunnable*>(reinterpret_cast<char*>(vdata) - seaqt_aligned_sizeof<VirtualQRunnable>()); }

void QRunnable_delete(QRunnable* self) {
	delete self;
}

