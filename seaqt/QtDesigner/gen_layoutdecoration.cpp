#include <QDesignerLayoutDecorationExtension>
#include <QLayout>
#include <QLayoutItem>
#include <QList>
#include <QPair>
#include <QPoint>
#include <QRect>
#include <QWidget>
#include <layoutdecoration.h>
#include "gen_layoutdecoration.h"

#ifndef SEAQT_ALIGNED_SIZEOF
#define SEAQT_ALIGNED_SIZEOF 1
#include <cstddef>
template<typename T>
static constexpr std::size_t seaqt_aligned_sizeof() {
	constexpr auto alignment = sizeof(std::max_align_t);
	return (sizeof(T) + alignment - 1) & ~(alignment - 1);
}
#endif

class VirtualQDesignerLayoutDecorationExtension final : public QDesignerLayoutDecorationExtension {
	const QDesignerLayoutDecorationExtension_VTable* vtbl;
public:
	friend void* QDesignerLayoutDecorationExtension_vdata(VirtualQDesignerLayoutDecorationExtension* self);
	friend VirtualQDesignerLayoutDecorationExtension* vdata_QDesignerLayoutDecorationExtension(void* vdata);

	VirtualQDesignerLayoutDecorationExtension(const QDesignerLayoutDecorationExtension_VTable* vtbl): QDesignerLayoutDecorationExtension(), vtbl(vtbl) {}

	virtual ~VirtualQDesignerLayoutDecorationExtension() override { if(vtbl->destructor) vtbl->destructor(this); }

	void operator delete(void* p) { ::operator delete(p); }
	virtual QList<QWidget *> widgets(QLayout* layout) const override {
		if (vtbl->widgets == 0) {
			return QList<QWidget *>(); // Pure virtual, there is no base we can call
		}

		QLayout* sigval1 = layout;
		struct seaqt_array /* of QWidget* */  callback_return_value = vtbl->widgets(this, sigval1);
		QList<QWidget *> callback_return_value_QList;
		callback_return_value_QList.reserve(callback_return_value.len);
		QWidget** callback_return_value_arr = static_cast<QWidget**>(callback_return_value.data);
		for(size_t i = 0; i < callback_return_value.len; ++i) {
			callback_return_value_QList.push_back(callback_return_value_arr[i]);
		}
		free(callback_return_value.data);
		return callback_return_value_QList;
	}

	virtual QRect itemInfo(int index) const override {
		if (vtbl->itemInfo == 0) {
			return QRect(); // Pure virtual, there is no base we can call
		}

		int sigval1 = index;
		QRect* callback_return_value = vtbl->itemInfo(this, sigval1);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;
		return callback_return_value_Value;
	}

	virtual int indexOf(QWidget* widget) const override {
		if (vtbl->indexOf_widget == 0) {
			return 0; // Pure virtual, there is no base we can call
		}

		QWidget* sigval1 = widget;
		int callback_return_value = vtbl->indexOf_widget(this, sigval1);
		return static_cast<int>(callback_return_value);
	}

	virtual int indexOf(QLayoutItem* item) const override {
		if (vtbl->indexOf_item == 0) {
			return 0; // Pure virtual, there is no base we can call
		}

		QLayoutItem* sigval1 = item;
		int callback_return_value = vtbl->indexOf_item(this, sigval1);
		return static_cast<int>(callback_return_value);
	}

	virtual QDesignerLayoutDecorationExtension::InsertMode currentInsertMode() const override {
		if (vtbl->currentInsertMode == 0) {
			return (QDesignerLayoutDecorationExtension::InsertMode)(0); // Pure virtual, there is no base we can call
		}

		int callback_return_value = vtbl->currentInsertMode(this);
		return static_cast<QDesignerLayoutDecorationExtension::InsertMode>(callback_return_value);
	}

	virtual int currentIndex() const override {
		if (vtbl->currentIndex == 0) {
			return 0; // Pure virtual, there is no base we can call
		}

		int callback_return_value = vtbl->currentIndex(this);
		return static_cast<int>(callback_return_value);
	}

	virtual QPair<int, int> currentCell() const override {
		if (vtbl->currentCell == 0) {
			return QPair<int, int>(); // Pure virtual, there is no base we can call
		}

		struct seaqt_map /* tuple of int and int */  callback_return_value = vtbl->currentCell(this);
		QPair<int, int> callback_return_value_QPair;
		int* callback_return_value_first_arr = static_cast<int*>(callback_return_value.keys);
		int* callback_return_value_second_arr = static_cast<int*>(callback_return_value.values);
		callback_return_value_QPair.first = static_cast<int>(callback_return_value_first_arr[0]);
		callback_return_value_QPair.second = static_cast<int>(callback_return_value_second_arr[0]);
		free(callback_return_value.keys);
		free(callback_return_value.values);
		return callback_return_value_QPair;
	}

	virtual void insertWidget(QWidget* widget, const QPair<int, int>& cell) override {
		if (vtbl->insertWidget == 0) {
			return; // Pure virtual, there is no base we can call
		}

		QWidget* sigval1 = widget;
		const QPair<int, int>& cell_ret = cell;
		// Convert QPair<> from C++ memory to manually-managed C memory
		int* cell_first_arr = static_cast<int*>(malloc(sizeof(int)));
		int* cell_second_arr = static_cast<int*>(malloc(sizeof(int)));
		cell_first_arr[0] = cell_ret.first;
		cell_second_arr[0] = cell_ret.second;
		struct seaqt_map cell_out;
		cell_out.len = 1;
		cell_out.keys = static_cast<void*>(cell_first_arr);
		cell_out.values = static_cast<void*>(cell_second_arr);
		struct seaqt_map /* tuple of int and int */  sigval2 = cell_out;
		vtbl->insertWidget(this, sigval1, sigval2);
	}

	virtual void removeWidget(QWidget* widget) override {
		if (vtbl->removeWidget == 0) {
			return; // Pure virtual, there is no base we can call
		}

		QWidget* sigval1 = widget;
		vtbl->removeWidget(this, sigval1);
	}

	virtual void insertRow(int row) override {
		if (vtbl->insertRow == 0) {
			return; // Pure virtual, there is no base we can call
		}

		int sigval1 = row;
		vtbl->insertRow(this, sigval1);
	}

	virtual void insertColumn(int column) override {
		if (vtbl->insertColumn == 0) {
			return; // Pure virtual, there is no base we can call
		}

		int sigval1 = column;
		vtbl->insertColumn(this, sigval1);
	}

	virtual void simplify() override {
		if (vtbl->simplify == 0) {
			return; // Pure virtual, there is no base we can call
		}

		vtbl->simplify(this);
	}

	virtual int findItemAt(const QPoint& pos) const override {
		if (vtbl->findItemAt_pos == 0) {
			return 0; // Pure virtual, there is no base we can call
		}

		const QPoint& pos_ret = pos;
		// Cast returned reference into pointer
		QPoint* sigval1 = const_cast<QPoint*>(&pos_ret);
		int callback_return_value = vtbl->findItemAt_pos(this, sigval1);
		return static_cast<int>(callback_return_value);
	}

	virtual int findItemAt(int row, int column) const override {
		if (vtbl->findItemAt_row_column == 0) {
			return 0; // Pure virtual, there is no base we can call
		}

		int sigval1 = row;
		int sigval2 = column;
		int callback_return_value = vtbl->findItemAt_row_column(this, sigval1, sigval2);
		return static_cast<int>(callback_return_value);
	}

	virtual void adjustIndicator(const QPoint& pos, int index) override {
		if (vtbl->adjustIndicator == 0) {
			return; // Pure virtual, there is no base we can call
		}

		const QPoint& pos_ret = pos;
		// Cast returned reference into pointer
		QPoint* sigval1 = const_cast<QPoint*>(&pos_ret);
		int sigval2 = index;
		vtbl->adjustIndicator(this, sigval1, sigval2);
	}

};

VirtualQDesignerLayoutDecorationExtension* QDesignerLayoutDecorationExtension_new(const QDesignerLayoutDecorationExtension_VTable* vtbl, size_t vdata) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQDesignerLayoutDecorationExtension>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQDesignerLayoutDecorationExtension(vtbl) : nullptr;
}

struct seaqt_array /* of QWidget* */  QDesignerLayoutDecorationExtension_widgets(const QDesignerLayoutDecorationExtension* self, QLayout* layout) {
	QList<QWidget *> _ret = self->widgets(layout);
	// Convert QList<> from C++ memory to manually-managed C memory
	QWidget** _arr = static_cast<QWidget**>(malloc(sizeof(QWidget*) * _ret.length()));
	for (size_t i = 0, e = _ret.length(); i < e; ++i) {
		_arr[i] = _ret[i];
	}
	struct seaqt_array _out;
	_out.len = _ret.length();
	_out.data = static_cast<void*>(_arr);
	return _out;
}

QRect* QDesignerLayoutDecorationExtension_itemInfo(const QDesignerLayoutDecorationExtension* self, int index) {
	return new QRect(self->itemInfo(static_cast<int>(index)));
}

int QDesignerLayoutDecorationExtension_indexOf_widget(const QDesignerLayoutDecorationExtension* self, QWidget* widget) {
	return self->indexOf(widget);
}

int QDesignerLayoutDecorationExtension_indexOf_item(const QDesignerLayoutDecorationExtension* self, QLayoutItem* item) {
	return self->indexOf(item);
}

int QDesignerLayoutDecorationExtension_currentInsertMode(const QDesignerLayoutDecorationExtension* self) {
	QDesignerLayoutDecorationExtension::InsertMode _ret = self->currentInsertMode();
	return static_cast<int>(_ret);
}

int QDesignerLayoutDecorationExtension_currentIndex(const QDesignerLayoutDecorationExtension* self) {
	return self->currentIndex();
}

struct seaqt_map /* tuple of int and int */  QDesignerLayoutDecorationExtension_currentCell(const QDesignerLayoutDecorationExtension* self) {
	QPair<int, int> _ret = self->currentCell();
	// Convert QPair<> from C++ memory to manually-managed C memory
	int* _first_arr = static_cast<int*>(malloc(sizeof(int)));
	int* _second_arr = static_cast<int*>(malloc(sizeof(int)));
	_first_arr[0] = _ret.first;
	_second_arr[0] = _ret.second;
	struct seaqt_map _out;
	_out.len = 1;
	_out.keys = static_cast<void*>(_first_arr);
	_out.values = static_cast<void*>(_second_arr);
	return _out;
}

void QDesignerLayoutDecorationExtension_insertWidget(QDesignerLayoutDecorationExtension* self, QWidget* widget, struct seaqt_map /* tuple of int and int */  cell) {
	QPair<int, int> cell_QPair;
	int* cell_first_arr = static_cast<int*>(cell.keys);
	int* cell_second_arr = static_cast<int*>(cell.values);
	cell_QPair.first = static_cast<int>(cell_first_arr[0]);
	cell_QPair.second = static_cast<int>(cell_second_arr[0]);
	self->insertWidget(widget, cell_QPair);
}

void QDesignerLayoutDecorationExtension_removeWidget(QDesignerLayoutDecorationExtension* self, QWidget* widget) {
	self->removeWidget(widget);
}

void QDesignerLayoutDecorationExtension_insertRow(QDesignerLayoutDecorationExtension* self, int row) {
	self->insertRow(static_cast<int>(row));
}

void QDesignerLayoutDecorationExtension_insertColumn(QDesignerLayoutDecorationExtension* self, int column) {
	self->insertColumn(static_cast<int>(column));
}

void QDesignerLayoutDecorationExtension_simplify(QDesignerLayoutDecorationExtension* self) {
	self->simplify();
}

int QDesignerLayoutDecorationExtension_findItemAt_pos(const QDesignerLayoutDecorationExtension* self, QPoint* pos) {
	return self->findItemAt(*pos);
}

int QDesignerLayoutDecorationExtension_findItemAt_row_column(const QDesignerLayoutDecorationExtension* self, int row, int column) {
	return self->findItemAt(static_cast<int>(row), static_cast<int>(column));
}

void QDesignerLayoutDecorationExtension_adjustIndicator(QDesignerLayoutDecorationExtension* self, QPoint* pos, int index) {
	self->adjustIndicator(*pos, static_cast<int>(index));
}

void* QDesignerLayoutDecorationExtension_vdata(VirtualQDesignerLayoutDecorationExtension* self) { return reinterpret_cast<void*>(reinterpret_cast<char*>(self) + seaqt_aligned_sizeof<VirtualQDesignerLayoutDecorationExtension>()); }
VirtualQDesignerLayoutDecorationExtension* vdata_QDesignerLayoutDecorationExtension(void* vdata) { return reinterpret_cast<VirtualQDesignerLayoutDecorationExtension*>(reinterpret_cast<char*>(vdata) - seaqt_aligned_sizeof<VirtualQDesignerLayoutDecorationExtension>()); }

void QDesignerLayoutDecorationExtension_delete(QDesignerLayoutDecorationExtension* self) {
	delete self;
}

