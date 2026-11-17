#include <QDesignerContainerExtension>
#include <QWidget>
#include <container.h>
#include "gen_container.h"

#ifndef SEAQT_ALIGNED_SIZEOF
#define SEAQT_ALIGNED_SIZEOF 1
#include <cstddef>
template<typename T>
static constexpr std::size_t seaqt_aligned_sizeof() {
	constexpr auto alignment = sizeof(std::max_align_t);
	return (sizeof(T) + alignment - 1) & ~(alignment - 1);
}
#endif

class VirtualQDesignerContainerExtension final : public QDesignerContainerExtension {
	const QDesignerContainerExtension_VTable* vtbl;
public:
	friend void* QDesignerContainerExtension_vdata(VirtualQDesignerContainerExtension* self);
	friend VirtualQDesignerContainerExtension* vdata_QDesignerContainerExtension(void* vdata);

	VirtualQDesignerContainerExtension(const QDesignerContainerExtension_VTable* vtbl): QDesignerContainerExtension(), vtbl(vtbl) {}

	virtual ~VirtualQDesignerContainerExtension() override { if(vtbl->destructor) vtbl->destructor(this); }

	void operator delete(void* p) { ::operator delete(p); }
	virtual int count() const override {
		if (vtbl->count == 0) {
			return 0; // Pure virtual, there is no base we can call
		}

		int callback_return_value = vtbl->count(this);
		return static_cast<int>(callback_return_value);
	}

	virtual QWidget* widget(int index) const override {
		if (vtbl->widget == 0) {
			return nullptr; // Pure virtual, there is no base we can call
		}

		int sigval1 = index;
		QWidget* callback_return_value = vtbl->widget(this, sigval1);
		return callback_return_value;
	}

	virtual int currentIndex() const override {
		if (vtbl->currentIndex == 0) {
			return 0; // Pure virtual, there is no base we can call
		}

		int callback_return_value = vtbl->currentIndex(this);
		return static_cast<int>(callback_return_value);
	}

	virtual void setCurrentIndex(int index) override {
		if (vtbl->setCurrentIndex == 0) {
			return; // Pure virtual, there is no base we can call
		}

		int sigval1 = index;
		vtbl->setCurrentIndex(this, sigval1);
	}

	virtual bool canAddWidget() const override {
		if (vtbl->canAddWidget == 0) {
			return false; // Pure virtual, there is no base we can call
		}

		bool callback_return_value = vtbl->canAddWidget(this);
		return callback_return_value;
	}

	virtual void addWidget(QWidget* widget) override {
		if (vtbl->addWidget == 0) {
			return; // Pure virtual, there is no base we can call
		}

		QWidget* sigval1 = widget;
		vtbl->addWidget(this, sigval1);
	}

	virtual void insertWidget(int index, QWidget* widget) override {
		if (vtbl->insertWidget == 0) {
			return; // Pure virtual, there is no base we can call
		}

		int sigval1 = index;
		QWidget* sigval2 = widget;
		vtbl->insertWidget(this, sigval1, sigval2);
	}

	virtual bool canRemove(int index) const override {
		if (vtbl->canRemove == 0) {
			return false; // Pure virtual, there is no base we can call
		}

		int sigval1 = index;
		bool callback_return_value = vtbl->canRemove(this, sigval1);
		return callback_return_value;
	}

	virtual void remove(int index) override {
		if (vtbl->remove == 0) {
			return; // Pure virtual, there is no base we can call
		}

		int sigval1 = index;
		vtbl->remove(this, sigval1);
	}

};

VirtualQDesignerContainerExtension* QDesignerContainerExtension_new(const QDesignerContainerExtension_VTable* vtbl, size_t vdata) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQDesignerContainerExtension>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQDesignerContainerExtension(vtbl) : nullptr;
}

int QDesignerContainerExtension_count(const QDesignerContainerExtension* self) {
	return self->count();
}

QWidget* QDesignerContainerExtension_widget(const QDesignerContainerExtension* self, int index) {
	return self->widget(static_cast<int>(index));
}

int QDesignerContainerExtension_currentIndex(const QDesignerContainerExtension* self) {
	return self->currentIndex();
}

void QDesignerContainerExtension_setCurrentIndex(QDesignerContainerExtension* self, int index) {
	self->setCurrentIndex(static_cast<int>(index));
}

bool QDesignerContainerExtension_canAddWidget(const QDesignerContainerExtension* self) {
	return self->canAddWidget();
}

void QDesignerContainerExtension_addWidget(QDesignerContainerExtension* self, QWidget* widget) {
	self->addWidget(widget);
}

void QDesignerContainerExtension_insertWidget(QDesignerContainerExtension* self, int index, QWidget* widget) {
	self->insertWidget(static_cast<int>(index), widget);
}

bool QDesignerContainerExtension_canRemove(const QDesignerContainerExtension* self, int index) {
	return self->canRemove(static_cast<int>(index));
}

void QDesignerContainerExtension_remove(QDesignerContainerExtension* self, int index) {
	self->remove(static_cast<int>(index));
}

void* QDesignerContainerExtension_vdata(VirtualQDesignerContainerExtension* self) { return reinterpret_cast<void*>(reinterpret_cast<char*>(self) + seaqt_aligned_sizeof<VirtualQDesignerContainerExtension>()); }
VirtualQDesignerContainerExtension* vdata_QDesignerContainerExtension(void* vdata) { return reinterpret_cast<VirtualQDesignerContainerExtension*>(reinterpret_cast<char*>(vdata) - seaqt_aligned_sizeof<VirtualQDesignerContainerExtension>()); }

void QDesignerContainerExtension_delete(QDesignerContainerExtension* self) {
	delete self;
}

