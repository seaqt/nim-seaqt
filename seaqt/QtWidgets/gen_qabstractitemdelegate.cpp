#include <QAbstractItemDelegate>
#include <QAbstractItemModel>
#include <QAbstractItemView>
#include <QChildEvent>
#include <QEvent>
#include <QHelpEvent>
#include <QList>
#include <QMetaMethod>
#include <QMetaObject>
#include <QModelIndex>
#include <QObject>
#include <QPainter>
#include <QSize>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QStyleOptionViewItem>
#include <QTimerEvent>
#include <QWidget>
#include <qabstractitemdelegate.h>
#include "gen_qabstractitemdelegate.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
} /* extern C */
#endif

class VirtualQAbstractItemDelegate final : public QAbstractItemDelegate {
	struct QAbstractItemDelegate_VTable* vtbl;
public:

	VirtualQAbstractItemDelegate(struct QAbstractItemDelegate_VTable* vtbl): QAbstractItemDelegate(), vtbl(vtbl) {};
	VirtualQAbstractItemDelegate(struct QAbstractItemDelegate_VTable* vtbl, QObject* parent): QAbstractItemDelegate(parent), vtbl(vtbl) {};

	virtual ~VirtualQAbstractItemDelegate() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QAbstractItemDelegate::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(vtbl, this);

		return callback_return_value;
	}

	friend QMetaObject* QAbstractItemDelegate_virtualbase_metaObject(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QAbstractItemDelegate::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend void* QAbstractItemDelegate_virtualbase_metacast(void* self, const char* param1);

	// Subclass to allow providing a Go implementation
	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QAbstractItemDelegate::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(vtbl, this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QAbstractItemDelegate_virtualbase_metacall(void* self, int param1, int param2, void** param3);

	// Subclass to allow providing a Go implementation
	virtual void paint(QPainter* painter, const QStyleOptionViewItem& option, const QModelIndex& index) const override {
		if (vtbl->paint == 0) {
			return; // Pure virtual, there is no base we can call
		}

		QPainter* sigval1 = painter;
		const QStyleOptionViewItem& option_ret = option;
		// Cast returned reference into pointer
		QStyleOptionViewItem* sigval2 = const_cast<QStyleOptionViewItem*>(&option_ret);
		const QModelIndex& index_ret = index;
		// Cast returned reference into pointer
		QModelIndex* sigval3 = const_cast<QModelIndex*>(&index_ret);

		vtbl->paint(vtbl, this, sigval1, sigval2, sigval3);

	}

	// Subclass to allow providing a Go implementation
	virtual QSize sizeHint(const QStyleOptionViewItem& option, const QModelIndex& index) const override {
		if (vtbl->sizeHint == 0) {
			return QSize(); // Pure virtual, there is no base we can call
		}

		const QStyleOptionViewItem& option_ret = option;
		// Cast returned reference into pointer
		QStyleOptionViewItem* sigval1 = const_cast<QStyleOptionViewItem*>(&option_ret);
		const QModelIndex& index_ret = index;
		// Cast returned reference into pointer
		QModelIndex* sigval2 = const_cast<QModelIndex*>(&index_ret);

		QSize* callback_return_value = vtbl->sizeHint(vtbl, this, sigval1, sigval2);

		return *callback_return_value;
	}

	// Subclass to allow providing a Go implementation
	virtual QWidget* createEditor(QWidget* parent, const QStyleOptionViewItem& option, const QModelIndex& index) const override {
		if (vtbl->createEditor == 0) {
			return QAbstractItemDelegate::createEditor(parent, option, index);
		}

		QWidget* sigval1 = parent;
		const QStyleOptionViewItem& option_ret = option;
		// Cast returned reference into pointer
		QStyleOptionViewItem* sigval2 = const_cast<QStyleOptionViewItem*>(&option_ret);
		const QModelIndex& index_ret = index;
		// Cast returned reference into pointer
		QModelIndex* sigval3 = const_cast<QModelIndex*>(&index_ret);

		QWidget* callback_return_value = vtbl->createEditor(vtbl, this, sigval1, sigval2, sigval3);

		return callback_return_value;
	}

	friend QWidget* QAbstractItemDelegate_virtualbase_createEditor(const void* self, QWidget* parent, QStyleOptionViewItem* option, QModelIndex* index);

	// Subclass to allow providing a Go implementation
	virtual void destroyEditor(QWidget* editor, const QModelIndex& index) const override {
		if (vtbl->destroyEditor == 0) {
			QAbstractItemDelegate::destroyEditor(editor, index);
			return;
		}

		QWidget* sigval1 = editor;
		const QModelIndex& index_ret = index;
		// Cast returned reference into pointer
		QModelIndex* sigval2 = const_cast<QModelIndex*>(&index_ret);

		vtbl->destroyEditor(vtbl, this, sigval1, sigval2);

	}

	friend void QAbstractItemDelegate_virtualbase_destroyEditor(const void* self, QWidget* editor, QModelIndex* index);

	// Subclass to allow providing a Go implementation
	virtual void setEditorData(QWidget* editor, const QModelIndex& index) const override {
		if (vtbl->setEditorData == 0) {
			QAbstractItemDelegate::setEditorData(editor, index);
			return;
		}

		QWidget* sigval1 = editor;
		const QModelIndex& index_ret = index;
		// Cast returned reference into pointer
		QModelIndex* sigval2 = const_cast<QModelIndex*>(&index_ret);

		vtbl->setEditorData(vtbl, this, sigval1, sigval2);

	}

	friend void QAbstractItemDelegate_virtualbase_setEditorData(const void* self, QWidget* editor, QModelIndex* index);

	// Subclass to allow providing a Go implementation
	virtual void setModelData(QWidget* editor, QAbstractItemModel* model, const QModelIndex& index) const override {
		if (vtbl->setModelData == 0) {
			QAbstractItemDelegate::setModelData(editor, model, index);
			return;
		}

		QWidget* sigval1 = editor;
		QAbstractItemModel* sigval2 = model;
		const QModelIndex& index_ret = index;
		// Cast returned reference into pointer
		QModelIndex* sigval3 = const_cast<QModelIndex*>(&index_ret);

		vtbl->setModelData(vtbl, this, sigval1, sigval2, sigval3);

	}

	friend void QAbstractItemDelegate_virtualbase_setModelData(const void* self, QWidget* editor, QAbstractItemModel* model, QModelIndex* index);

	// Subclass to allow providing a Go implementation
	virtual void updateEditorGeometry(QWidget* editor, const QStyleOptionViewItem& option, const QModelIndex& index) const override {
		if (vtbl->updateEditorGeometry == 0) {
			QAbstractItemDelegate::updateEditorGeometry(editor, option, index);
			return;
		}

		QWidget* sigval1 = editor;
		const QStyleOptionViewItem& option_ret = option;
		// Cast returned reference into pointer
		QStyleOptionViewItem* sigval2 = const_cast<QStyleOptionViewItem*>(&option_ret);
		const QModelIndex& index_ret = index;
		// Cast returned reference into pointer
		QModelIndex* sigval3 = const_cast<QModelIndex*>(&index_ret);

		vtbl->updateEditorGeometry(vtbl, this, sigval1, sigval2, sigval3);

	}

	friend void QAbstractItemDelegate_virtualbase_updateEditorGeometry(const void* self, QWidget* editor, QStyleOptionViewItem* option, QModelIndex* index);

	// Subclass to allow providing a Go implementation
	virtual bool editorEvent(QEvent* event, QAbstractItemModel* model, const QStyleOptionViewItem& option, const QModelIndex& index) override {
		if (vtbl->editorEvent == 0) {
			return QAbstractItemDelegate::editorEvent(event, model, option, index);
		}

		QEvent* sigval1 = event;
		QAbstractItemModel* sigval2 = model;
		const QStyleOptionViewItem& option_ret = option;
		// Cast returned reference into pointer
		QStyleOptionViewItem* sigval3 = const_cast<QStyleOptionViewItem*>(&option_ret);
		const QModelIndex& index_ret = index;
		// Cast returned reference into pointer
		QModelIndex* sigval4 = const_cast<QModelIndex*>(&index_ret);

		bool callback_return_value = vtbl->editorEvent(vtbl, this, sigval1, sigval2, sigval3, sigval4);

		return callback_return_value;
	}

	friend bool QAbstractItemDelegate_virtualbase_editorEvent(void* self, QEvent* event, QAbstractItemModel* model, QStyleOptionViewItem* option, QModelIndex* index);

	// Subclass to allow providing a Go implementation
	virtual bool helpEvent(QHelpEvent* event, QAbstractItemView* view, const QStyleOptionViewItem& option, const QModelIndex& index) override {
		if (vtbl->helpEvent == 0) {
			return QAbstractItemDelegate::helpEvent(event, view, option, index);
		}

		QHelpEvent* sigval1 = event;
		QAbstractItemView* sigval2 = view;
		const QStyleOptionViewItem& option_ret = option;
		// Cast returned reference into pointer
		QStyleOptionViewItem* sigval3 = const_cast<QStyleOptionViewItem*>(&option_ret);
		const QModelIndex& index_ret = index;
		// Cast returned reference into pointer
		QModelIndex* sigval4 = const_cast<QModelIndex*>(&index_ret);

		bool callback_return_value = vtbl->helpEvent(vtbl, this, sigval1, sigval2, sigval3, sigval4);

		return callback_return_value;
	}

	friend bool QAbstractItemDelegate_virtualbase_helpEvent(void* self, QHelpEvent* event, QAbstractItemView* view, QStyleOptionViewItem* option, QModelIndex* index);

	// Subclass to allow providing a Go implementation
	virtual QList<int> paintingRoles() const override {
		if (vtbl->paintingRoles == 0) {
			return QAbstractItemDelegate::paintingRoles();
		}


		struct miqt_array /* of int */  callback_return_value = vtbl->paintingRoles(vtbl, this);
		QList<int> callback_return_value_QList;
		callback_return_value_QList.reserve(callback_return_value.len);
		int* callback_return_value_arr = static_cast<int*>(callback_return_value.data);
		for(size_t i = 0; i < callback_return_value.len; ++i) {
			callback_return_value_QList.push_back(static_cast<int>(callback_return_value_arr[i]));
		}

		return callback_return_value_QList;
	}

	friend struct miqt_array /* of int */  QAbstractItemDelegate_virtualbase_paintingRoles(const void* self);

	// Subclass to allow providing a Go implementation
	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QAbstractItemDelegate::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend bool QAbstractItemDelegate_virtualbase_event(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QAbstractItemDelegate::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QAbstractItemDelegate_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QAbstractItemDelegate::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(vtbl, this, sigval1);

	}

	friend void QAbstractItemDelegate_virtualbase_timerEvent(void* self, QTimerEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QAbstractItemDelegate::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(vtbl, this, sigval1);

	}

	friend void QAbstractItemDelegate_virtualbase_childEvent(void* self, QChildEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QAbstractItemDelegate::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(vtbl, this, sigval1);

	}

	friend void QAbstractItemDelegate_virtualbase_customEvent(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QAbstractItemDelegate::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(vtbl, this, sigval1);

	}

	friend void QAbstractItemDelegate_virtualbase_connectNotify(void* self, QMetaMethod* signal);

	// Subclass to allow providing a Go implementation
	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QAbstractItemDelegate::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(vtbl, this, sigval1);

	}

	friend void QAbstractItemDelegate_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend QObject* QAbstractItemDelegate_protectedbase_sender(const void* self);
	friend int QAbstractItemDelegate_protectedbase_senderSignalIndex(const void* self);
	friend int QAbstractItemDelegate_protectedbase_receivers(const void* self, const char* signal);
	friend bool QAbstractItemDelegate_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal);
};

QAbstractItemDelegate* QAbstractItemDelegate_new(struct QAbstractItemDelegate_VTable* vtbl) {
	return new VirtualQAbstractItemDelegate(vtbl);
}

QAbstractItemDelegate* QAbstractItemDelegate_new2(struct QAbstractItemDelegate_VTable* vtbl, QObject* parent) {
	return new VirtualQAbstractItemDelegate(vtbl, parent);
}

void QAbstractItemDelegate_virtbase(QAbstractItemDelegate* src, QObject** outptr_QObject) {
	*outptr_QObject = static_cast<QObject*>(src);
}

QMetaObject* QAbstractItemDelegate_metaObject(const QAbstractItemDelegate* self) {
	return (QMetaObject*) self->metaObject();
}

void* QAbstractItemDelegate_metacast(QAbstractItemDelegate* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QAbstractItemDelegate_metacall(QAbstractItemDelegate* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QAbstractItemDelegate_tr(const char* s) {
	QString _ret = QAbstractItemDelegate::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QAbstractItemDelegate_paint(const QAbstractItemDelegate* self, QPainter* painter, QStyleOptionViewItem* option, QModelIndex* index) {
	self->paint(painter, *option, *index);
}

QSize* QAbstractItemDelegate_sizeHint(const QAbstractItemDelegate* self, QStyleOptionViewItem* option, QModelIndex* index) {
	return new QSize(self->sizeHint(*option, *index));
}

QWidget* QAbstractItemDelegate_createEditor(const QAbstractItemDelegate* self, QWidget* parent, QStyleOptionViewItem* option, QModelIndex* index) {
	return self->createEditor(parent, *option, *index);
}

void QAbstractItemDelegate_destroyEditor(const QAbstractItemDelegate* self, QWidget* editor, QModelIndex* index) {
	self->destroyEditor(editor, *index);
}

void QAbstractItemDelegate_setEditorData(const QAbstractItemDelegate* self, QWidget* editor, QModelIndex* index) {
	self->setEditorData(editor, *index);
}

void QAbstractItemDelegate_setModelData(const QAbstractItemDelegate* self, QWidget* editor, QAbstractItemModel* model, QModelIndex* index) {
	self->setModelData(editor, model, *index);
}

void QAbstractItemDelegate_updateEditorGeometry(const QAbstractItemDelegate* self, QWidget* editor, QStyleOptionViewItem* option, QModelIndex* index) {
	self->updateEditorGeometry(editor, *option, *index);
}

bool QAbstractItemDelegate_editorEvent(QAbstractItemDelegate* self, QEvent* event, QAbstractItemModel* model, QStyleOptionViewItem* option, QModelIndex* index) {
	return self->editorEvent(event, model, *option, *index);
}

bool QAbstractItemDelegate_helpEvent(QAbstractItemDelegate* self, QHelpEvent* event, QAbstractItemView* view, QStyleOptionViewItem* option, QModelIndex* index) {
	return self->helpEvent(event, view, *option, *index);
}

struct miqt_array /* of int */  QAbstractItemDelegate_paintingRoles(const QAbstractItemDelegate* self) {
	QList<int> _ret = self->paintingRoles();
	// Convert QList<> from C++ memory to manually-managed C memory
	int* _arr = static_cast<int*>(malloc(sizeof(int) * _ret.length()));
	for (size_t i = 0, e = _ret.length(); i < e; ++i) {
		_arr[i] = _ret[i];
	}
	struct miqt_array _out;
	_out.len = _ret.length();
	_out.data = static_cast<void*>(_arr);
	return _out;
}

void QAbstractItemDelegate_commitData(QAbstractItemDelegate* self, QWidget* editor) {
	self->commitData(editor);
}

void QAbstractItemDelegate_connect_commitData(QAbstractItemDelegate* self, intptr_t slot, void (*callback)(intptr_t, QWidget*), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, QWidget*), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, QWidget*);
		void operator()(QWidget* editor) {
			QWidget* sigval1 = editor;
			callback(slot, sigval1);
		}
	};
	VirtualQAbstractItemDelegate::connect(self, static_cast<void (QAbstractItemDelegate::*)(QWidget*)>(&QAbstractItemDelegate::commitData), self, local_caller{slot, callback, release});
}

void QAbstractItemDelegate_closeEditor(QAbstractItemDelegate* self, QWidget* editor) {
	self->closeEditor(editor);
}

void QAbstractItemDelegate_connect_closeEditor(QAbstractItemDelegate* self, intptr_t slot, void (*callback)(intptr_t, QWidget*), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, QWidget*), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, QWidget*);
		void operator()(QWidget* editor) {
			QWidget* sigval1 = editor;
			callback(slot, sigval1);
		}
	};
	VirtualQAbstractItemDelegate::connect(self, static_cast<void (QAbstractItemDelegate::*)(QWidget*, QAbstractItemDelegate::EndEditHint)>(&QAbstractItemDelegate::closeEditor), self, local_caller{slot, callback, release});
}

void QAbstractItemDelegate_sizeHintChanged(QAbstractItemDelegate* self, QModelIndex* param1) {
	self->sizeHintChanged(*param1);
}

void QAbstractItemDelegate_connect_sizeHintChanged(QAbstractItemDelegate* self, intptr_t slot, void (*callback)(intptr_t, QModelIndex*), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, QModelIndex*), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, QModelIndex*);
		void operator()(const QModelIndex& param1) {
			const QModelIndex& param1_ret = param1;
			// Cast returned reference into pointer
			QModelIndex* sigval1 = const_cast<QModelIndex*>(&param1_ret);
			callback(slot, sigval1);
		}
	};
	VirtualQAbstractItemDelegate::connect(self, static_cast<void (QAbstractItemDelegate::*)(const QModelIndex&)>(&QAbstractItemDelegate::sizeHintChanged), self, local_caller{slot, callback, release});
}

struct miqt_string QAbstractItemDelegate_tr2(const char* s, const char* c) {
	QString _ret = QAbstractItemDelegate::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QAbstractItemDelegate_tr3(const char* s, const char* c, int n) {
	QString _ret = QAbstractItemDelegate::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QAbstractItemDelegate_closeEditor2(QAbstractItemDelegate* self, QWidget* editor, int hint) {
	self->closeEditor(editor, static_cast<QAbstractItemDelegate::EndEditHint>(hint));
}

void QAbstractItemDelegate_connect_closeEditor2(QAbstractItemDelegate* self, intptr_t slot, void (*callback)(intptr_t, QWidget*, int), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, QWidget*, int), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, QWidget*, int);
		void operator()(QWidget* editor, QAbstractItemDelegate::EndEditHint hint) {
			QWidget* sigval1 = editor;
			QAbstractItemDelegate::EndEditHint hint_ret = hint;
			int sigval2 = static_cast<int>(hint_ret);
			callback(slot, sigval1, sigval2);
		}
	};
	VirtualQAbstractItemDelegate::connect(self, static_cast<void (QAbstractItemDelegate::*)(QWidget*, QAbstractItemDelegate::EndEditHint)>(&QAbstractItemDelegate::closeEditor), self, local_caller{slot, callback, release});
}

QMetaObject* QAbstractItemDelegate_virtualbase_metaObject(const void* self) {

	return (QMetaObject*) ( (const VirtualQAbstractItemDelegate*)(self) )->QAbstractItemDelegate::metaObject();

}

void* QAbstractItemDelegate_virtualbase_metacast(void* self, const char* param1) {

	return ( (VirtualQAbstractItemDelegate*)(self) )->QAbstractItemDelegate::qt_metacast(param1);

}

int QAbstractItemDelegate_virtualbase_metacall(void* self, int param1, int param2, void** param3) {

	return ( (VirtualQAbstractItemDelegate*)(self) )->QAbstractItemDelegate::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);

}

QWidget* QAbstractItemDelegate_virtualbase_createEditor(const void* self, QWidget* parent, QStyleOptionViewItem* option, QModelIndex* index) {

	return ( (const VirtualQAbstractItemDelegate*)(self) )->QAbstractItemDelegate::createEditor(parent, *option, *index);

}

void QAbstractItemDelegate_virtualbase_destroyEditor(const void* self, QWidget* editor, QModelIndex* index) {

	( (const VirtualQAbstractItemDelegate*)(self) )->QAbstractItemDelegate::destroyEditor(editor, *index);

}

void QAbstractItemDelegate_virtualbase_setEditorData(const void* self, QWidget* editor, QModelIndex* index) {

	( (const VirtualQAbstractItemDelegate*)(self) )->QAbstractItemDelegate::setEditorData(editor, *index);

}

void QAbstractItemDelegate_virtualbase_setModelData(const void* self, QWidget* editor, QAbstractItemModel* model, QModelIndex* index) {

	( (const VirtualQAbstractItemDelegate*)(self) )->QAbstractItemDelegate::setModelData(editor, model, *index);

}

void QAbstractItemDelegate_virtualbase_updateEditorGeometry(const void* self, QWidget* editor, QStyleOptionViewItem* option, QModelIndex* index) {

	( (const VirtualQAbstractItemDelegate*)(self) )->QAbstractItemDelegate::updateEditorGeometry(editor, *option, *index);

}

bool QAbstractItemDelegate_virtualbase_editorEvent(void* self, QEvent* event, QAbstractItemModel* model, QStyleOptionViewItem* option, QModelIndex* index) {

	return ( (VirtualQAbstractItemDelegate*)(self) )->QAbstractItemDelegate::editorEvent(event, model, *option, *index);

}

bool QAbstractItemDelegate_virtualbase_helpEvent(void* self, QHelpEvent* event, QAbstractItemView* view, QStyleOptionViewItem* option, QModelIndex* index) {

	return ( (VirtualQAbstractItemDelegate*)(self) )->QAbstractItemDelegate::helpEvent(event, view, *option, *index);

}

struct miqt_array /* of int */  QAbstractItemDelegate_virtualbase_paintingRoles(const void* self) {

	QList<int> _ret = ( (const VirtualQAbstractItemDelegate*)(self) )->QAbstractItemDelegate::paintingRoles();
	// Convert QList<> from C++ memory to manually-managed C memory
	int* _arr = static_cast<int*>(malloc(sizeof(int) * _ret.length()));
	for (size_t i = 0, e = _ret.length(); i < e; ++i) {
		_arr[i] = _ret[i];
	}
	struct miqt_array _out;
	_out.len = _ret.length();
	_out.data = static_cast<void*>(_arr);
	return _out;

}

bool QAbstractItemDelegate_virtualbase_event(void* self, QEvent* event) {

	return ( (VirtualQAbstractItemDelegate*)(self) )->QAbstractItemDelegate::event(event);

}

bool QAbstractItemDelegate_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event) {

	return ( (VirtualQAbstractItemDelegate*)(self) )->QAbstractItemDelegate::eventFilter(watched, event);

}

void QAbstractItemDelegate_virtualbase_timerEvent(void* self, QTimerEvent* event) {

	( (VirtualQAbstractItemDelegate*)(self) )->QAbstractItemDelegate::timerEvent(event);

}

void QAbstractItemDelegate_virtualbase_childEvent(void* self, QChildEvent* event) {

	( (VirtualQAbstractItemDelegate*)(self) )->QAbstractItemDelegate::childEvent(event);

}

void QAbstractItemDelegate_virtualbase_customEvent(void* self, QEvent* event) {

	( (VirtualQAbstractItemDelegate*)(self) )->QAbstractItemDelegate::customEvent(event);

}

void QAbstractItemDelegate_virtualbase_connectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQAbstractItemDelegate*)(self) )->QAbstractItemDelegate::connectNotify(*signal);

}

void QAbstractItemDelegate_virtualbase_disconnectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQAbstractItemDelegate*)(self) )->QAbstractItemDelegate::disconnectNotify(*signal);

}

const QMetaObject* QAbstractItemDelegate_staticMetaObject() { return &QAbstractItemDelegate::staticMetaObject; }
QObject* QAbstractItemDelegate_protectedbase_sender(const void* self) {
	VirtualQAbstractItemDelegate* self_cast = static_cast<VirtualQAbstractItemDelegate*>( (QAbstractItemDelegate*)(self) );
	
	return self_cast->sender();

}

int QAbstractItemDelegate_protectedbase_senderSignalIndex(const void* self) {
	VirtualQAbstractItemDelegate* self_cast = static_cast<VirtualQAbstractItemDelegate*>( (QAbstractItemDelegate*)(self) );
	
	return self_cast->senderSignalIndex();

}

int QAbstractItemDelegate_protectedbase_receivers(const void* self, const char* signal) {
	VirtualQAbstractItemDelegate* self_cast = static_cast<VirtualQAbstractItemDelegate*>( (QAbstractItemDelegate*)(self) );
	
	return self_cast->receivers(signal);

}

bool QAbstractItemDelegate_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal) {
	VirtualQAbstractItemDelegate* self_cast = static_cast<VirtualQAbstractItemDelegate*>( (QAbstractItemDelegate*)(self) );
	
	return self_cast->isSignalConnected(*signal);

}

void QAbstractItemDelegate_delete(QAbstractItemDelegate* self) {
	delete self;
}

