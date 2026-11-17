#include <QDesignerOptionsPageInterface>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QWidget>
#include <abstractoptionspage.h>
#include "gen_abstractoptionspage.h"

#ifndef SEAQT_ALIGNED_SIZEOF
#define SEAQT_ALIGNED_SIZEOF 1
#include <cstddef>
template<typename T>
static constexpr std::size_t seaqt_aligned_sizeof() {
	constexpr auto alignment = sizeof(std::max_align_t);
	return (sizeof(T) + alignment - 1) & ~(alignment - 1);
}
#endif

class VirtualQDesignerOptionsPageInterface final : public QDesignerOptionsPageInterface {
	const QDesignerOptionsPageInterface_VTable* vtbl;
public:
	friend void* QDesignerOptionsPageInterface_vdata(VirtualQDesignerOptionsPageInterface* self);
	friend VirtualQDesignerOptionsPageInterface* vdata_QDesignerOptionsPageInterface(void* vdata);

	VirtualQDesignerOptionsPageInterface(const QDesignerOptionsPageInterface_VTable* vtbl): QDesignerOptionsPageInterface(), vtbl(vtbl) {}

	virtual ~VirtualQDesignerOptionsPageInterface() override { if(vtbl->destructor) vtbl->destructor(this); }

	void operator delete(void* p) { ::operator delete(p); }
	virtual QString name() const override {
		if (vtbl->name == 0) {
			return QString(); // Pure virtual, there is no base we can call
		}

		struct seaqt_string callback_return_value = vtbl->name(this);
		QString callback_return_value_QString = QString::fromUtf8(callback_return_value.data, callback_return_value.len);
		free(callback_return_value.data);
		return callback_return_value_QString;
	}

	virtual QWidget* createPage(QWidget* parent) override {
		if (vtbl->createPage == 0) {
			return nullptr; // Pure virtual, there is no base we can call
		}

		QWidget* sigval1 = parent;
		QWidget* callback_return_value = vtbl->createPage(this, sigval1);
		return callback_return_value;
	}

	virtual void apply() override {
		if (vtbl->apply == 0) {
			return; // Pure virtual, there is no base we can call
		}

		vtbl->apply(this);
	}

	virtual void finish() override {
		if (vtbl->finish == 0) {
			return; // Pure virtual, there is no base we can call
		}

		vtbl->finish(this);
	}

};

VirtualQDesignerOptionsPageInterface* QDesignerOptionsPageInterface_new(const QDesignerOptionsPageInterface_VTable* vtbl, size_t vdata) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQDesignerOptionsPageInterface>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQDesignerOptionsPageInterface(vtbl) : nullptr;
}

struct seaqt_string QDesignerOptionsPageInterface_name(const QDesignerOptionsPageInterface* self) {
	QString _ret = self->name();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QWidget* QDesignerOptionsPageInterface_createPage(QDesignerOptionsPageInterface* self, QWidget* parent) {
	return self->createPage(parent);
}

void QDesignerOptionsPageInterface_apply(QDesignerOptionsPageInterface* self) {
	self->apply();
}

void QDesignerOptionsPageInterface_finish(QDesignerOptionsPageInterface* self) {
	self->finish();
}

void* QDesignerOptionsPageInterface_vdata(VirtualQDesignerOptionsPageInterface* self) { return reinterpret_cast<void*>(reinterpret_cast<char*>(self) + seaqt_aligned_sizeof<VirtualQDesignerOptionsPageInterface>()); }
VirtualQDesignerOptionsPageInterface* vdata_QDesignerOptionsPageInterface(void* vdata) { return reinterpret_cast<VirtualQDesignerOptionsPageInterface*>(reinterpret_cast<char*>(vdata) - seaqt_aligned_sizeof<VirtualQDesignerOptionsPageInterface>()); }

void QDesignerOptionsPageInterface_delete(QDesignerOptionsPageInterface* self) {
	delete self;
}

