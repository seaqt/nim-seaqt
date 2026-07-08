#include <QAction>
#include <QDesignerTaskMenuExtension>
#include <QList>
#include <taskmenu.h>
#include "gen_taskmenu.h"

#ifndef SEAQT_ALIGNED_SIZEOF
#define SEAQT_ALIGNED_SIZEOF 1
#include <cstddef>
template<typename T>
static constexpr std::size_t seaqt_aligned_sizeof() {
	constexpr auto alignment = sizeof(std::max_align_t);
	return (sizeof(T) + alignment - 1) & ~(alignment - 1);
}
#endif

class VirtualQDesignerTaskMenuExtension final : public QDesignerTaskMenuExtension {
	const QDesignerTaskMenuExtension_VTable* vtbl;
public:
	friend void* QDesignerTaskMenuExtension_vdata(VirtualQDesignerTaskMenuExtension* self);
	friend VirtualQDesignerTaskMenuExtension* vdata_QDesignerTaskMenuExtension(void* vdata);

	VirtualQDesignerTaskMenuExtension(const QDesignerTaskMenuExtension_VTable* vtbl): QDesignerTaskMenuExtension(), vtbl(vtbl) {}

	virtual ~VirtualQDesignerTaskMenuExtension() override { if(vtbl->destructor) vtbl->destructor(this); }

	void operator delete(void* p) { ::operator delete(p); }
	virtual QAction* preferredEditAction() const override {
		if (vtbl->preferredEditAction == 0) {
			return QDesignerTaskMenuExtension::preferredEditAction();
		}

		QAction* callback_return_value = vtbl->preferredEditAction(this);
		return callback_return_value;
	}

	friend QAction* QDesignerTaskMenuExtension_virtualbase_preferredEditAction(const VirtualQDesignerTaskMenuExtension* self);

	virtual QList<QAction *> taskActions() const override {
		if (vtbl->taskActions == 0) {
			return QList<QAction *>(); // Pure virtual, there is no base we can call
		}

		struct seaqt_array /* of QAction* */  callback_return_value = vtbl->taskActions(this);
		QList<QAction *> callback_return_value_QList;
		callback_return_value_QList.reserve(callback_return_value.len);
		QAction** callback_return_value_arr = static_cast<QAction**>(callback_return_value.data);
		for(size_t i = 0; i < callback_return_value.len; ++i) {
			callback_return_value_QList.push_back(callback_return_value_arr[i]);
		}
		free(callback_return_value.data);
		return callback_return_value_QList;
	}

};

VirtualQDesignerTaskMenuExtension* QDesignerTaskMenuExtension_new(const QDesignerTaskMenuExtension_VTable* vtbl, size_t vdata) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQDesignerTaskMenuExtension>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQDesignerTaskMenuExtension(vtbl) : nullptr;
}

QAction* QDesignerTaskMenuExtension_preferredEditAction(const QDesignerTaskMenuExtension* self) {
	return self->preferredEditAction();
}

struct seaqt_array /* of QAction* */  QDesignerTaskMenuExtension_taskActions(const QDesignerTaskMenuExtension* self) {
	QList<QAction *> _ret = self->taskActions();
	// Convert QList<> from C++ memory to manually-managed C memory
	QAction** _arr = static_cast<QAction**>(malloc(sizeof(QAction*) * _ret.length()));
	for (size_t i = 0, e = _ret.length(); i < e; ++i) {
		_arr[i] = _ret[i];
	}
	struct seaqt_array _out;
	_out.len = _ret.length();
	_out.data = static_cast<void*>(_arr);
	return _out;
}

void* QDesignerTaskMenuExtension_vdata(VirtualQDesignerTaskMenuExtension* self) { return reinterpret_cast<void*>(reinterpret_cast<char*>(self) + seaqt_aligned_sizeof<VirtualQDesignerTaskMenuExtension>()); }
VirtualQDesignerTaskMenuExtension* vdata_QDesignerTaskMenuExtension(void* vdata) { return reinterpret_cast<VirtualQDesignerTaskMenuExtension*>(reinterpret_cast<char*>(vdata) - seaqt_aligned_sizeof<VirtualQDesignerTaskMenuExtension>()); }

QAction* QDesignerTaskMenuExtension_virtualbase_preferredEditAction(const VirtualQDesignerTaskMenuExtension* self) {

	return self->QDesignerTaskMenuExtension::preferredEditAction();
}

void QDesignerTaskMenuExtension_delete(QDesignerTaskMenuExtension* self) {
	delete self;
}

