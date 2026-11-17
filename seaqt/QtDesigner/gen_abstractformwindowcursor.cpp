#include <QDesignerFormWindowCursorInterface>
#include <QDesignerFormWindowInterface>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QVariant>
#include <QWidget>
#include <abstractformwindowcursor.h>
#include "gen_abstractformwindowcursor.h"

#ifndef SEAQT_ALIGNED_SIZEOF
#define SEAQT_ALIGNED_SIZEOF 1
#include <cstddef>
template<typename T>
static constexpr std::size_t seaqt_aligned_sizeof() {
	constexpr auto alignment = sizeof(std::max_align_t);
	return (sizeof(T) + alignment - 1) & ~(alignment - 1);
}
#endif

class VirtualQDesignerFormWindowCursorInterface final : public QDesignerFormWindowCursorInterface {
	const QDesignerFormWindowCursorInterface_VTable* vtbl;
public:
	friend void* QDesignerFormWindowCursorInterface_vdata(VirtualQDesignerFormWindowCursorInterface* self);
	friend VirtualQDesignerFormWindowCursorInterface* vdata_QDesignerFormWindowCursorInterface(void* vdata);

	VirtualQDesignerFormWindowCursorInterface(const QDesignerFormWindowCursorInterface_VTable* vtbl): QDesignerFormWindowCursorInterface(), vtbl(vtbl) {}

	virtual ~VirtualQDesignerFormWindowCursorInterface() override { if(vtbl->destructor) vtbl->destructor(this); }

	void operator delete(void* p) { ::operator delete(p); }
	virtual QDesignerFormWindowInterface* formWindow() const override {
		if (vtbl->formWindow == 0) {
			return nullptr; // Pure virtual, there is no base we can call
		}

		QDesignerFormWindowInterface* callback_return_value = vtbl->formWindow(this);
		return callback_return_value;
	}

	virtual bool movePosition(QDesignerFormWindowCursorInterface::MoveOperation op, QDesignerFormWindowCursorInterface::MoveMode mode) override {
		if (vtbl->movePosition == 0) {
			return false; // Pure virtual, there is no base we can call
		}

		QDesignerFormWindowCursorInterface::MoveOperation op_ret = op;
		int sigval1 = static_cast<int>(op_ret);
		QDesignerFormWindowCursorInterface::MoveMode mode_ret = mode;
		int sigval2 = static_cast<int>(mode_ret);
		bool callback_return_value = vtbl->movePosition(this, sigval1, sigval2);
		return callback_return_value;
	}

	virtual int position() const override {
		if (vtbl->position == 0) {
			return 0; // Pure virtual, there is no base we can call
		}

		int callback_return_value = vtbl->position(this);
		return static_cast<int>(callback_return_value);
	}

	virtual void setPosition(int pos, QDesignerFormWindowCursorInterface::MoveMode mode) override {
		if (vtbl->setPosition == 0) {
			return; // Pure virtual, there is no base we can call
		}

		int sigval1 = pos;
		QDesignerFormWindowCursorInterface::MoveMode mode_ret = mode;
		int sigval2 = static_cast<int>(mode_ret);
		vtbl->setPosition(this, sigval1, sigval2);
	}

	virtual QWidget* current() const override {
		if (vtbl->current == 0) {
			return nullptr; // Pure virtual, there is no base we can call
		}

		QWidget* callback_return_value = vtbl->current(this);
		return callback_return_value;
	}

	virtual int widgetCount() const override {
		if (vtbl->widgetCount == 0) {
			return 0; // Pure virtual, there is no base we can call
		}

		int callback_return_value = vtbl->widgetCount(this);
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

	virtual bool hasSelection() const override {
		if (vtbl->hasSelection == 0) {
			return false; // Pure virtual, there is no base we can call
		}

		bool callback_return_value = vtbl->hasSelection(this);
		return callback_return_value;
	}

	virtual int selectedWidgetCount() const override {
		if (vtbl->selectedWidgetCount == 0) {
			return 0; // Pure virtual, there is no base we can call
		}

		int callback_return_value = vtbl->selectedWidgetCount(this);
		return static_cast<int>(callback_return_value);
	}

	virtual QWidget* selectedWidget(int index) const override {
		if (vtbl->selectedWidget == 0) {
			return nullptr; // Pure virtual, there is no base we can call
		}

		int sigval1 = index;
		QWidget* callback_return_value = vtbl->selectedWidget(this, sigval1);
		return callback_return_value;
	}

	virtual void setProperty(const QString& name, const QVariant& value) override {
		if (vtbl->setProperty == 0) {
			return; // Pure virtual, there is no base we can call
		}

		const QString name_ret = name;
		// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
		QByteArray name_b = name_ret.toUtf8();
		struct seaqt_string name_ms;
		name_ms.len = name_b.length();
		name_ms.data = static_cast<char*>(malloc(name_ms.len));
		memcpy(name_ms.data, name_b.data(), name_ms.len);
		struct seaqt_string sigval1 = name_ms;
		const QVariant& value_ret = value;
		// Cast returned reference into pointer
		QVariant* sigval2 = const_cast<QVariant*>(&value_ret);
		vtbl->setProperty(this, sigval1, sigval2);
	}

	virtual void setWidgetProperty(QWidget* widget, const QString& name, const QVariant& value) override {
		if (vtbl->setWidgetProperty == 0) {
			return; // Pure virtual, there is no base we can call
		}

		QWidget* sigval1 = widget;
		const QString name_ret = name;
		// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
		QByteArray name_b = name_ret.toUtf8();
		struct seaqt_string name_ms;
		name_ms.len = name_b.length();
		name_ms.data = static_cast<char*>(malloc(name_ms.len));
		memcpy(name_ms.data, name_b.data(), name_ms.len);
		struct seaqt_string sigval2 = name_ms;
		const QVariant& value_ret = value;
		// Cast returned reference into pointer
		QVariant* sigval3 = const_cast<QVariant*>(&value_ret);
		vtbl->setWidgetProperty(this, sigval1, sigval2, sigval3);
	}

	virtual void resetWidgetProperty(QWidget* widget, const QString& name) override {
		if (vtbl->resetWidgetProperty == 0) {
			return; // Pure virtual, there is no base we can call
		}

		QWidget* sigval1 = widget;
		const QString name_ret = name;
		// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
		QByteArray name_b = name_ret.toUtf8();
		struct seaqt_string name_ms;
		name_ms.len = name_b.length();
		name_ms.data = static_cast<char*>(malloc(name_ms.len));
		memcpy(name_ms.data, name_b.data(), name_ms.len);
		struct seaqt_string sigval2 = name_ms;
		vtbl->resetWidgetProperty(this, sigval1, sigval2);
	}

};

VirtualQDesignerFormWindowCursorInterface* QDesignerFormWindowCursorInterface_new(const QDesignerFormWindowCursorInterface_VTable* vtbl, size_t vdata) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQDesignerFormWindowCursorInterface>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQDesignerFormWindowCursorInterface(vtbl) : nullptr;
}

QDesignerFormWindowInterface* QDesignerFormWindowCursorInterface_formWindow(const QDesignerFormWindowCursorInterface* self) {
	return self->formWindow();
}

bool QDesignerFormWindowCursorInterface_movePosition(QDesignerFormWindowCursorInterface* self, int op, int mode) {
	return self->movePosition(static_cast<QDesignerFormWindowCursorInterface::MoveOperation>(op), static_cast<QDesignerFormWindowCursorInterface::MoveMode>(mode));
}

int QDesignerFormWindowCursorInterface_position(const QDesignerFormWindowCursorInterface* self) {
	return self->position();
}

void QDesignerFormWindowCursorInterface_setPosition(QDesignerFormWindowCursorInterface* self, int pos, int mode) {
	self->setPosition(static_cast<int>(pos), static_cast<QDesignerFormWindowCursorInterface::MoveMode>(mode));
}

QWidget* QDesignerFormWindowCursorInterface_current(const QDesignerFormWindowCursorInterface* self) {
	return self->current();
}

int QDesignerFormWindowCursorInterface_widgetCount(const QDesignerFormWindowCursorInterface* self) {
	return self->widgetCount();
}

QWidget* QDesignerFormWindowCursorInterface_widget(const QDesignerFormWindowCursorInterface* self, int index) {
	return self->widget(static_cast<int>(index));
}

bool QDesignerFormWindowCursorInterface_hasSelection(const QDesignerFormWindowCursorInterface* self) {
	return self->hasSelection();
}

int QDesignerFormWindowCursorInterface_selectedWidgetCount(const QDesignerFormWindowCursorInterface* self) {
	return self->selectedWidgetCount();
}

QWidget* QDesignerFormWindowCursorInterface_selectedWidget(const QDesignerFormWindowCursorInterface* self, int index) {
	return self->selectedWidget(static_cast<int>(index));
}

void QDesignerFormWindowCursorInterface_setProperty(QDesignerFormWindowCursorInterface* self, struct seaqt_string name, QVariant* value) {
	QString name_QString = QString::fromUtf8(name.data, name.len);
	self->setProperty(name_QString, *value);
}

void QDesignerFormWindowCursorInterface_setWidgetProperty(QDesignerFormWindowCursorInterface* self, QWidget* widget, struct seaqt_string name, QVariant* value) {
	QString name_QString = QString::fromUtf8(name.data, name.len);
	self->setWidgetProperty(widget, name_QString, *value);
}

void QDesignerFormWindowCursorInterface_resetWidgetProperty(QDesignerFormWindowCursorInterface* self, QWidget* widget, struct seaqt_string name) {
	QString name_QString = QString::fromUtf8(name.data, name.len);
	self->resetWidgetProperty(widget, name_QString);
}

bool QDesignerFormWindowCursorInterface_isWidgetSelected(const QDesignerFormWindowCursorInterface* self, QWidget* widget) {
	return self->isWidgetSelected(widget);
}

void* QDesignerFormWindowCursorInterface_vdata(VirtualQDesignerFormWindowCursorInterface* self) { return reinterpret_cast<void*>(reinterpret_cast<char*>(self) + seaqt_aligned_sizeof<VirtualQDesignerFormWindowCursorInterface>()); }
VirtualQDesignerFormWindowCursorInterface* vdata_QDesignerFormWindowCursorInterface(void* vdata) { return reinterpret_cast<VirtualQDesignerFormWindowCursorInterface*>(reinterpret_cast<char*>(vdata) - seaqt_aligned_sizeof<VirtualQDesignerFormWindowCursorInterface>()); }

void QDesignerFormWindowCursorInterface_delete(QDesignerFormWindowCursorInterface* self) {
	delete self;
}

