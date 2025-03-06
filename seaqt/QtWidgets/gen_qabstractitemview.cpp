#include <QAbstractItemDelegate>
#include <QAbstractItemModel>
#include <QAbstractItemView>
#include <QAbstractScrollArea>
#include <QActionEvent>
#include <QByteArray>
#include <QChildEvent>
#include <QCloseEvent>
#include <QContextMenuEvent>
#include <QDragEnterEvent>
#include <QDragLeaveEvent>
#include <QDragMoveEvent>
#include <QDropEvent>
#include <QEvent>
#include <QFocusEvent>
#include <QFrame>
#include <QHideEvent>
#include <QInputMethodEvent>
#include <QItemSelection>
#include <QItemSelectionModel>
#include <QKeyEvent>
#include <QList>
#include <QMargins>
#include <QMetaMethod>
#include <QMetaObject>
#include <QModelIndex>
#include <QMouseEvent>
#include <QMoveEvent>
#include <QObject>
#include <QPaintDevice>
#include <QPaintEngine>
#include <QPaintEvent>
#include <QPainter>
#include <QPoint>
#include <QRect>
#include <QRegion>
#include <QResizeEvent>
#include <QShowEvent>
#include <QSize>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QStyleOptionFrame>
#include <QStyleOptionViewItem>
#include <QTabletEvent>
#include <QTimerEvent>
#include <QVariant>
#include <QWheelEvent>
#include <QWidget>
#include <qabstractitemview.h>
#include "gen_qabstractitemview.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
} /* extern C */
#endif

class VirtualQAbstractItemView final : public QAbstractItemView {
	struct QAbstractItemView_VTable* vtbl;
public:

	VirtualQAbstractItemView(struct QAbstractItemView_VTable* vtbl, QWidget* parent): QAbstractItemView(parent), vtbl(vtbl) {};
	VirtualQAbstractItemView(struct QAbstractItemView_VTable* vtbl): QAbstractItemView(), vtbl(vtbl) {};

	virtual ~VirtualQAbstractItemView() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QAbstractItemView::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(vtbl, this);

		return callback_return_value;
	}

	friend QMetaObject* QAbstractItemView_virtualbase_metaObject(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QAbstractItemView::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend void* QAbstractItemView_virtualbase_metacast(void* self, const char* param1);

	// Subclass to allow providing a Go implementation
	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QAbstractItemView::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(vtbl, this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QAbstractItemView_virtualbase_metacall(void* self, int param1, int param2, void** param3);

	// Subclass to allow providing a Go implementation
	virtual void setModel(QAbstractItemModel* model) override {
		if (vtbl->setModel == 0) {
			QAbstractItemView::setModel(model);
			return;
		}

		QAbstractItemModel* sigval1 = model;

		vtbl->setModel(vtbl, this, sigval1);

	}

	friend void QAbstractItemView_virtualbase_setModel(void* self, QAbstractItemModel* model);

	// Subclass to allow providing a Go implementation
	virtual void setSelectionModel(QItemSelectionModel* selectionModel) override {
		if (vtbl->setSelectionModel == 0) {
			QAbstractItemView::setSelectionModel(selectionModel);
			return;
		}

		QItemSelectionModel* sigval1 = selectionModel;

		vtbl->setSelectionModel(vtbl, this, sigval1);

	}

	friend void QAbstractItemView_virtualbase_setSelectionModel(void* self, QItemSelectionModel* selectionModel);

	// Subclass to allow providing a Go implementation
	virtual void keyboardSearch(const QString& search) override {
		if (vtbl->keyboardSearch == 0) {
			QAbstractItemView::keyboardSearch(search);
			return;
		}

		const QString search_ret = search;
		// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
		QByteArray search_b = search_ret.toUtf8();
		struct miqt_string search_ms;
		search_ms.len = search_b.length();
		search_ms.data = static_cast<char*>(malloc(search_ms.len));
		memcpy(search_ms.data, search_b.data(), search_ms.len);
		struct miqt_string sigval1 = search_ms;

		vtbl->keyboardSearch(vtbl, this, sigval1);

	}

	friend void QAbstractItemView_virtualbase_keyboardSearch(void* self, struct miqt_string search);

	// Subclass to allow providing a Go implementation
	virtual QRect visualRect(const QModelIndex& index) const override {
		if (vtbl->visualRect == 0) {
			return QRect(); // Pure virtual, there is no base we can call
		}

		const QModelIndex& index_ret = index;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&index_ret);

		QRect* callback_return_value = vtbl->visualRect(vtbl, this, sigval1);

		return *callback_return_value;
	}

	// Subclass to allow providing a Go implementation
	virtual void scrollTo(const QModelIndex& index, QAbstractItemView::ScrollHint hint) override {
		if (vtbl->scrollTo == 0) {
			return; // Pure virtual, there is no base we can call
		}

		const QModelIndex& index_ret = index;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&index_ret);
		QAbstractItemView::ScrollHint hint_ret = hint;
		int sigval2 = static_cast<int>(hint_ret);

		vtbl->scrollTo(vtbl, this, sigval1, sigval2);

	}

	// Subclass to allow providing a Go implementation
	virtual QModelIndex indexAt(const QPoint& point) const override {
		if (vtbl->indexAt == 0) {
			return QModelIndex(); // Pure virtual, there is no base we can call
		}

		const QPoint& point_ret = point;
		// Cast returned reference into pointer
		QPoint* sigval1 = const_cast<QPoint*>(&point_ret);

		QModelIndex* callback_return_value = vtbl->indexAt(vtbl, this, sigval1);

		return *callback_return_value;
	}

	// Subclass to allow providing a Go implementation
	virtual int sizeHintForRow(int row) const override {
		if (vtbl->sizeHintForRow == 0) {
			return QAbstractItemView::sizeHintForRow(row);
		}

		int sigval1 = row;

		int callback_return_value = vtbl->sizeHintForRow(vtbl, this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QAbstractItemView_virtualbase_sizeHintForRow(const void* self, int row);

	// Subclass to allow providing a Go implementation
	virtual int sizeHintForColumn(int column) const override {
		if (vtbl->sizeHintForColumn == 0) {
			return QAbstractItemView::sizeHintForColumn(column);
		}

		int sigval1 = column;

		int callback_return_value = vtbl->sizeHintForColumn(vtbl, this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QAbstractItemView_virtualbase_sizeHintForColumn(const void* self, int column);

	// Subclass to allow providing a Go implementation
	virtual QVariant inputMethodQuery(Qt::InputMethodQuery query) const override {
		if (vtbl->inputMethodQuery == 0) {
			return QAbstractItemView::inputMethodQuery(query);
		}

		Qt::InputMethodQuery query_ret = query;
		int sigval1 = static_cast<int>(query_ret);

		QVariant* callback_return_value = vtbl->inputMethodQuery(vtbl, this, sigval1);

		return *callback_return_value;
	}

	friend QVariant* QAbstractItemView_virtualbase_inputMethodQuery(const void* self, int query);

	// Subclass to allow providing a Go implementation
	virtual void reset() override {
		if (vtbl->reset == 0) {
			QAbstractItemView::reset();
			return;
		}


		vtbl->reset(vtbl, this);

	}

	friend void QAbstractItemView_virtualbase_reset(void* self);

	// Subclass to allow providing a Go implementation
	virtual void setRootIndex(const QModelIndex& index) override {
		if (vtbl->setRootIndex == 0) {
			QAbstractItemView::setRootIndex(index);
			return;
		}

		const QModelIndex& index_ret = index;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&index_ret);

		vtbl->setRootIndex(vtbl, this, sigval1);

	}

	friend void QAbstractItemView_virtualbase_setRootIndex(void* self, QModelIndex* index);

	// Subclass to allow providing a Go implementation
	virtual void doItemsLayout() override {
		if (vtbl->doItemsLayout == 0) {
			QAbstractItemView::doItemsLayout();
			return;
		}


		vtbl->doItemsLayout(vtbl, this);

	}

	friend void QAbstractItemView_virtualbase_doItemsLayout(void* self);

	// Subclass to allow providing a Go implementation
	virtual void selectAll() override {
		if (vtbl->selectAll == 0) {
			QAbstractItemView::selectAll();
			return;
		}


		vtbl->selectAll(vtbl, this);

	}

	friend void QAbstractItemView_virtualbase_selectAll(void* self);

	// Subclass to allow providing a Go implementation
	virtual void dataChanged(const QModelIndex& topLeft, const QModelIndex& bottomRight, const QVector<int>& roles) override {
		if (vtbl->dataChanged == 0) {
			QAbstractItemView::dataChanged(topLeft, bottomRight, roles);
			return;
		}

		const QModelIndex& topLeft_ret = topLeft;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&topLeft_ret);
		const QModelIndex& bottomRight_ret = bottomRight;
		// Cast returned reference into pointer
		QModelIndex* sigval2 = const_cast<QModelIndex*>(&bottomRight_ret);
		const QVector<int>& roles_ret = roles;
		// Convert QList<> from C++ memory to manually-managed C memory
		int* roles_arr = static_cast<int*>(malloc(sizeof(int) * roles_ret.length()));
		for (size_t i = 0, e = roles_ret.length(); i < e; ++i) {
			roles_arr[i] = roles_ret[i];
		}
		struct miqt_array roles_out;
		roles_out.len = roles_ret.length();
		roles_out.data = static_cast<void*>(roles_arr);
		struct miqt_array /* of int */  sigval3 = roles_out;

		vtbl->dataChanged(vtbl, this, sigval1, sigval2, sigval3);

	}

	friend void QAbstractItemView_virtualbase_dataChanged(void* self, QModelIndex* topLeft, QModelIndex* bottomRight, struct miqt_array /* of int */  roles);

	// Subclass to allow providing a Go implementation
	virtual void rowsInserted(const QModelIndex& parent, int start, int end) override {
		if (vtbl->rowsInserted == 0) {
			QAbstractItemView::rowsInserted(parent, start, end);
			return;
		}

		const QModelIndex& parent_ret = parent;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&parent_ret);
		int sigval2 = start;
		int sigval3 = end;

		vtbl->rowsInserted(vtbl, this, sigval1, sigval2, sigval3);

	}

	friend void QAbstractItemView_virtualbase_rowsInserted(void* self, QModelIndex* parent, int start, int end);

	// Subclass to allow providing a Go implementation
	virtual void rowsAboutToBeRemoved(const QModelIndex& parent, int start, int end) override {
		if (vtbl->rowsAboutToBeRemoved == 0) {
			QAbstractItemView::rowsAboutToBeRemoved(parent, start, end);
			return;
		}

		const QModelIndex& parent_ret = parent;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&parent_ret);
		int sigval2 = start;
		int sigval3 = end;

		vtbl->rowsAboutToBeRemoved(vtbl, this, sigval1, sigval2, sigval3);

	}

	friend void QAbstractItemView_virtualbase_rowsAboutToBeRemoved(void* self, QModelIndex* parent, int start, int end);

	// Subclass to allow providing a Go implementation
	virtual void selectionChanged(const QItemSelection& selected, const QItemSelection& deselected) override {
		if (vtbl->selectionChanged == 0) {
			QAbstractItemView::selectionChanged(selected, deselected);
			return;
		}

		const QItemSelection& selected_ret = selected;
		// Cast returned reference into pointer
		QItemSelection* sigval1 = const_cast<QItemSelection*>(&selected_ret);
		const QItemSelection& deselected_ret = deselected;
		// Cast returned reference into pointer
		QItemSelection* sigval2 = const_cast<QItemSelection*>(&deselected_ret);

		vtbl->selectionChanged(vtbl, this, sigval1, sigval2);

	}

	friend void QAbstractItemView_virtualbase_selectionChanged(void* self, QItemSelection* selected, QItemSelection* deselected);

	// Subclass to allow providing a Go implementation
	virtual void currentChanged(const QModelIndex& current, const QModelIndex& previous) override {
		if (vtbl->currentChanged == 0) {
			QAbstractItemView::currentChanged(current, previous);
			return;
		}

		const QModelIndex& current_ret = current;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&current_ret);
		const QModelIndex& previous_ret = previous;
		// Cast returned reference into pointer
		QModelIndex* sigval2 = const_cast<QModelIndex*>(&previous_ret);

		vtbl->currentChanged(vtbl, this, sigval1, sigval2);

	}

	friend void QAbstractItemView_virtualbase_currentChanged(void* self, QModelIndex* current, QModelIndex* previous);

	// Subclass to allow providing a Go implementation
	virtual void updateEditorData() override {
		if (vtbl->updateEditorData == 0) {
			QAbstractItemView::updateEditorData();
			return;
		}


		vtbl->updateEditorData(vtbl, this);

	}

	friend void QAbstractItemView_virtualbase_updateEditorData(void* self);

	// Subclass to allow providing a Go implementation
	virtual void updateEditorGeometries() override {
		if (vtbl->updateEditorGeometries == 0) {
			QAbstractItemView::updateEditorGeometries();
			return;
		}


		vtbl->updateEditorGeometries(vtbl, this);

	}

	friend void QAbstractItemView_virtualbase_updateEditorGeometries(void* self);

	// Subclass to allow providing a Go implementation
	virtual void updateGeometries() override {
		if (vtbl->updateGeometries == 0) {
			QAbstractItemView::updateGeometries();
			return;
		}


		vtbl->updateGeometries(vtbl, this);

	}

	friend void QAbstractItemView_virtualbase_updateGeometries(void* self);

	// Subclass to allow providing a Go implementation
	virtual void verticalScrollbarAction(int action) override {
		if (vtbl->verticalScrollbarAction == 0) {
			QAbstractItemView::verticalScrollbarAction(action);
			return;
		}

		int sigval1 = action;

		vtbl->verticalScrollbarAction(vtbl, this, sigval1);

	}

	friend void QAbstractItemView_virtualbase_verticalScrollbarAction(void* self, int action);

	// Subclass to allow providing a Go implementation
	virtual void horizontalScrollbarAction(int action) override {
		if (vtbl->horizontalScrollbarAction == 0) {
			QAbstractItemView::horizontalScrollbarAction(action);
			return;
		}

		int sigval1 = action;

		vtbl->horizontalScrollbarAction(vtbl, this, sigval1);

	}

	friend void QAbstractItemView_virtualbase_horizontalScrollbarAction(void* self, int action);

	// Subclass to allow providing a Go implementation
	virtual void verticalScrollbarValueChanged(int value) override {
		if (vtbl->verticalScrollbarValueChanged == 0) {
			QAbstractItemView::verticalScrollbarValueChanged(value);
			return;
		}

		int sigval1 = value;

		vtbl->verticalScrollbarValueChanged(vtbl, this, sigval1);

	}

	friend void QAbstractItemView_virtualbase_verticalScrollbarValueChanged(void* self, int value);

	// Subclass to allow providing a Go implementation
	virtual void horizontalScrollbarValueChanged(int value) override {
		if (vtbl->horizontalScrollbarValueChanged == 0) {
			QAbstractItemView::horizontalScrollbarValueChanged(value);
			return;
		}

		int sigval1 = value;

		vtbl->horizontalScrollbarValueChanged(vtbl, this, sigval1);

	}

	friend void QAbstractItemView_virtualbase_horizontalScrollbarValueChanged(void* self, int value);

	// Subclass to allow providing a Go implementation
	virtual void closeEditor(QWidget* editor, QAbstractItemDelegate::EndEditHint hint) override {
		if (vtbl->closeEditor == 0) {
			QAbstractItemView::closeEditor(editor, hint);
			return;
		}

		QWidget* sigval1 = editor;
		QAbstractItemDelegate::EndEditHint hint_ret = hint;
		int sigval2 = static_cast<int>(hint_ret);

		vtbl->closeEditor(vtbl, this, sigval1, sigval2);

	}

	friend void QAbstractItemView_virtualbase_closeEditor(void* self, QWidget* editor, int hint);

	// Subclass to allow providing a Go implementation
	virtual void commitData(QWidget* editor) override {
		if (vtbl->commitData == 0) {
			QAbstractItemView::commitData(editor);
			return;
		}

		QWidget* sigval1 = editor;

		vtbl->commitData(vtbl, this, sigval1);

	}

	friend void QAbstractItemView_virtualbase_commitData(void* self, QWidget* editor);

	// Subclass to allow providing a Go implementation
	virtual void editorDestroyed(QObject* editor) override {
		if (vtbl->editorDestroyed == 0) {
			QAbstractItemView::editorDestroyed(editor);
			return;
		}

		QObject* sigval1 = editor;

		vtbl->editorDestroyed(vtbl, this, sigval1);

	}

	friend void QAbstractItemView_virtualbase_editorDestroyed(void* self, QObject* editor);

	// Subclass to allow providing a Go implementation
	virtual QModelIndex moveCursor(QAbstractItemView::CursorAction cursorAction, Qt::KeyboardModifiers modifiers) override {
		if (vtbl->moveCursor == 0) {
			return QModelIndex(); // Pure virtual, there is no base we can call
		}

		QAbstractItemView::CursorAction cursorAction_ret = cursorAction;
		int sigval1 = static_cast<int>(cursorAction_ret);
		Qt::KeyboardModifiers modifiers_ret = modifiers;
		int sigval2 = static_cast<int>(modifiers_ret);

		QModelIndex* callback_return_value = vtbl->moveCursor(vtbl, this, sigval1, sigval2);

		return *callback_return_value;
	}

	// Subclass to allow providing a Go implementation
	virtual int horizontalOffset() const override {
		if (vtbl->horizontalOffset == 0) {
			return 0; // Pure virtual, there is no base we can call
		}


		int callback_return_value = vtbl->horizontalOffset(vtbl, this);

		return static_cast<int>(callback_return_value);
	}

	// Subclass to allow providing a Go implementation
	virtual int verticalOffset() const override {
		if (vtbl->verticalOffset == 0) {
			return 0; // Pure virtual, there is no base we can call
		}


		int callback_return_value = vtbl->verticalOffset(vtbl, this);

		return static_cast<int>(callback_return_value);
	}

	// Subclass to allow providing a Go implementation
	virtual bool isIndexHidden(const QModelIndex& index) const override {
		if (vtbl->isIndexHidden == 0) {
			return false; // Pure virtual, there is no base we can call
		}

		const QModelIndex& index_ret = index;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&index_ret);

		bool callback_return_value = vtbl->isIndexHidden(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Subclass to allow providing a Go implementation
	virtual void setSelection(const QRect& rect, QItemSelectionModel::SelectionFlags command) override {
		if (vtbl->setSelection == 0) {
			return; // Pure virtual, there is no base we can call
		}

		const QRect& rect_ret = rect;
		// Cast returned reference into pointer
		QRect* sigval1 = const_cast<QRect*>(&rect_ret);
		QItemSelectionModel::SelectionFlags command_ret = command;
		int sigval2 = static_cast<int>(command_ret);

		vtbl->setSelection(vtbl, this, sigval1, sigval2);

	}

	// Subclass to allow providing a Go implementation
	virtual QRegion visualRegionForSelection(const QItemSelection& selection) const override {
		if (vtbl->visualRegionForSelection == 0) {
			return QRegion(); // Pure virtual, there is no base we can call
		}

		const QItemSelection& selection_ret = selection;
		// Cast returned reference into pointer
		QItemSelection* sigval1 = const_cast<QItemSelection*>(&selection_ret);

		QRegion* callback_return_value = vtbl->visualRegionForSelection(vtbl, this, sigval1);

		return *callback_return_value;
	}

	// Subclass to allow providing a Go implementation
	virtual QModelIndexList selectedIndexes() const override {
		if (vtbl->selectedIndexes == 0) {
			return QAbstractItemView::selectedIndexes();
		}


		struct miqt_array /* of QModelIndex* */  callback_return_value = vtbl->selectedIndexes(vtbl, this);
		QModelIndexList callback_return_value_QList;
		callback_return_value_QList.reserve(callback_return_value.len);
		QModelIndex** callback_return_value_arr = static_cast<QModelIndex**>(callback_return_value.data);
		for(size_t i = 0; i < callback_return_value.len; ++i) {
			callback_return_value_QList.push_back(*(callback_return_value_arr[i]));
		}

		return callback_return_value_QList;
	}

	friend struct miqt_array /* of QModelIndex* */  QAbstractItemView_virtualbase_selectedIndexes(const void* self);

	// Subclass to allow providing a Go implementation
	virtual bool edit(const QModelIndex& index, QAbstractItemView::EditTrigger trigger, QEvent* event) override {
		if (vtbl->edit2 == 0) {
			return QAbstractItemView::edit(index, trigger, event);
		}

		const QModelIndex& index_ret = index;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&index_ret);
		QAbstractItemView::EditTrigger trigger_ret = trigger;
		int sigval2 = static_cast<int>(trigger_ret);
		QEvent* sigval3 = event;

		bool callback_return_value = vtbl->edit2(vtbl, this, sigval1, sigval2, sigval3);

		return callback_return_value;
	}

	friend bool QAbstractItemView_virtualbase_edit2(void* self, QModelIndex* index, int trigger, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual QItemSelectionModel::SelectionFlags selectionCommand(const QModelIndex& index, const QEvent* event) const override {
		if (vtbl->selectionCommand == 0) {
			return QAbstractItemView::selectionCommand(index, event);
		}

		const QModelIndex& index_ret = index;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&index_ret);
		QEvent* sigval2 = (QEvent*) event;

		int callback_return_value = vtbl->selectionCommand(vtbl, this, sigval1, sigval2);

		return static_cast<QItemSelectionModel::SelectionFlags>(callback_return_value);
	}

	friend int QAbstractItemView_virtualbase_selectionCommand(const void* self, QModelIndex* index, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void startDrag(Qt::DropActions supportedActions) override {
		if (vtbl->startDrag == 0) {
			QAbstractItemView::startDrag(supportedActions);
			return;
		}

		Qt::DropActions supportedActions_ret = supportedActions;
		int sigval1 = static_cast<int>(supportedActions_ret);

		vtbl->startDrag(vtbl, this, sigval1);

	}

	friend void QAbstractItemView_virtualbase_startDrag(void* self, int supportedActions);

	// Subclass to allow providing a Go implementation
	virtual QStyleOptionViewItem viewOptions() const override {
		if (vtbl->viewOptions == 0) {
			return QAbstractItemView::viewOptions();
		}


		QStyleOptionViewItem* callback_return_value = vtbl->viewOptions(vtbl, this);

		return *callback_return_value;
	}

	friend QStyleOptionViewItem* QAbstractItemView_virtualbase_viewOptions(const void* self);

	// Subclass to allow providing a Go implementation
	virtual bool focusNextPrevChild(bool next) override {
		if (vtbl->focusNextPrevChild == 0) {
			return QAbstractItemView::focusNextPrevChild(next);
		}

		bool sigval1 = next;

		bool callback_return_value = vtbl->focusNextPrevChild(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend bool QAbstractItemView_virtualbase_focusNextPrevChild(void* self, bool next);

	// Subclass to allow providing a Go implementation
	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QAbstractItemView::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend bool QAbstractItemView_virtualbase_event(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual bool viewportEvent(QEvent* event) override {
		if (vtbl->viewportEvent == 0) {
			return QAbstractItemView::viewportEvent(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->viewportEvent(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend bool QAbstractItemView_virtualbase_viewportEvent(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void mousePressEvent(QMouseEvent* event) override {
		if (vtbl->mousePressEvent == 0) {
			QAbstractItemView::mousePressEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mousePressEvent(vtbl, this, sigval1);

	}

	friend void QAbstractItemView_virtualbase_mousePressEvent(void* self, QMouseEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void mouseMoveEvent(QMouseEvent* event) override {
		if (vtbl->mouseMoveEvent == 0) {
			QAbstractItemView::mouseMoveEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseMoveEvent(vtbl, this, sigval1);

	}

	friend void QAbstractItemView_virtualbase_mouseMoveEvent(void* self, QMouseEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void mouseReleaseEvent(QMouseEvent* event) override {
		if (vtbl->mouseReleaseEvent == 0) {
			QAbstractItemView::mouseReleaseEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseReleaseEvent(vtbl, this, sigval1);

	}

	friend void QAbstractItemView_virtualbase_mouseReleaseEvent(void* self, QMouseEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void mouseDoubleClickEvent(QMouseEvent* event) override {
		if (vtbl->mouseDoubleClickEvent == 0) {
			QAbstractItemView::mouseDoubleClickEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseDoubleClickEvent(vtbl, this, sigval1);

	}

	friend void QAbstractItemView_virtualbase_mouseDoubleClickEvent(void* self, QMouseEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void dragEnterEvent(QDragEnterEvent* event) override {
		if (vtbl->dragEnterEvent == 0) {
			QAbstractItemView::dragEnterEvent(event);
			return;
		}

		QDragEnterEvent* sigval1 = event;

		vtbl->dragEnterEvent(vtbl, this, sigval1);

	}

	friend void QAbstractItemView_virtualbase_dragEnterEvent(void* self, QDragEnterEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void dragMoveEvent(QDragMoveEvent* event) override {
		if (vtbl->dragMoveEvent == 0) {
			QAbstractItemView::dragMoveEvent(event);
			return;
		}

		QDragMoveEvent* sigval1 = event;

		vtbl->dragMoveEvent(vtbl, this, sigval1);

	}

	friend void QAbstractItemView_virtualbase_dragMoveEvent(void* self, QDragMoveEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void dragLeaveEvent(QDragLeaveEvent* event) override {
		if (vtbl->dragLeaveEvent == 0) {
			QAbstractItemView::dragLeaveEvent(event);
			return;
		}

		QDragLeaveEvent* sigval1 = event;

		vtbl->dragLeaveEvent(vtbl, this, sigval1);

	}

	friend void QAbstractItemView_virtualbase_dragLeaveEvent(void* self, QDragLeaveEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void dropEvent(QDropEvent* event) override {
		if (vtbl->dropEvent == 0) {
			QAbstractItemView::dropEvent(event);
			return;
		}

		QDropEvent* sigval1 = event;

		vtbl->dropEvent(vtbl, this, sigval1);

	}

	friend void QAbstractItemView_virtualbase_dropEvent(void* self, QDropEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void focusInEvent(QFocusEvent* event) override {
		if (vtbl->focusInEvent == 0) {
			QAbstractItemView::focusInEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;

		vtbl->focusInEvent(vtbl, this, sigval1);

	}

	friend void QAbstractItemView_virtualbase_focusInEvent(void* self, QFocusEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void focusOutEvent(QFocusEvent* event) override {
		if (vtbl->focusOutEvent == 0) {
			QAbstractItemView::focusOutEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;

		vtbl->focusOutEvent(vtbl, this, sigval1);

	}

	friend void QAbstractItemView_virtualbase_focusOutEvent(void* self, QFocusEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void keyPressEvent(QKeyEvent* event) override {
		if (vtbl->keyPressEvent == 0) {
			QAbstractItemView::keyPressEvent(event);
			return;
		}

		QKeyEvent* sigval1 = event;

		vtbl->keyPressEvent(vtbl, this, sigval1);

	}

	friend void QAbstractItemView_virtualbase_keyPressEvent(void* self, QKeyEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void resizeEvent(QResizeEvent* event) override {
		if (vtbl->resizeEvent == 0) {
			QAbstractItemView::resizeEvent(event);
			return;
		}

		QResizeEvent* sigval1 = event;

		vtbl->resizeEvent(vtbl, this, sigval1);

	}

	friend void QAbstractItemView_virtualbase_resizeEvent(void* self, QResizeEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QAbstractItemView::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(vtbl, this, sigval1);

	}

	friend void QAbstractItemView_virtualbase_timerEvent(void* self, QTimerEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void inputMethodEvent(QInputMethodEvent* event) override {
		if (vtbl->inputMethodEvent == 0) {
			QAbstractItemView::inputMethodEvent(event);
			return;
		}

		QInputMethodEvent* sigval1 = event;

		vtbl->inputMethodEvent(vtbl, this, sigval1);

	}

	friend void QAbstractItemView_virtualbase_inputMethodEvent(void* self, QInputMethodEvent* event);

	// Subclass to allow providing a Go implementation
	virtual bool eventFilter(QObject* object, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QAbstractItemView::eventFilter(object, event);
		}

		QObject* sigval1 = object;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QAbstractItemView_virtualbase_eventFilter(void* self, QObject* object, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual QSize viewportSizeHint() const override {
		if (vtbl->viewportSizeHint == 0) {
			return QAbstractItemView::viewportSizeHint();
		}


		QSize* callback_return_value = vtbl->viewportSizeHint(vtbl, this);

		return *callback_return_value;
	}

	friend QSize* QAbstractItemView_virtualbase_viewportSizeHint(const void* self);

	// Subclass to allow providing a Go implementation
	virtual QSize minimumSizeHint() const override {
		if (vtbl->minimumSizeHint == 0) {
			return QAbstractItemView::minimumSizeHint();
		}


		QSize* callback_return_value = vtbl->minimumSizeHint(vtbl, this);

		return *callback_return_value;
	}

	friend QSize* QAbstractItemView_virtualbase_minimumSizeHint(const void* self);

	// Subclass to allow providing a Go implementation
	virtual QSize sizeHint() const override {
		if (vtbl->sizeHint == 0) {
			return QAbstractItemView::sizeHint();
		}


		QSize* callback_return_value = vtbl->sizeHint(vtbl, this);

		return *callback_return_value;
	}

	friend QSize* QAbstractItemView_virtualbase_sizeHint(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void setupViewport(QWidget* viewport) override {
		if (vtbl->setupViewport == 0) {
			QAbstractItemView::setupViewport(viewport);
			return;
		}

		QWidget* sigval1 = viewport;

		vtbl->setupViewport(vtbl, this, sigval1);

	}

	friend void QAbstractItemView_virtualbase_setupViewport(void* self, QWidget* viewport);

	// Subclass to allow providing a Go implementation
	virtual void paintEvent(QPaintEvent* param1) override {
		if (vtbl->paintEvent == 0) {
			QAbstractItemView::paintEvent(param1);
			return;
		}

		QPaintEvent* sigval1 = param1;

		vtbl->paintEvent(vtbl, this, sigval1);

	}

	friend void QAbstractItemView_virtualbase_paintEvent(void* self, QPaintEvent* param1);

	// Subclass to allow providing a Go implementation
	virtual void wheelEvent(QWheelEvent* param1) override {
		if (vtbl->wheelEvent == 0) {
			QAbstractItemView::wheelEvent(param1);
			return;
		}

		QWheelEvent* sigval1 = param1;

		vtbl->wheelEvent(vtbl, this, sigval1);

	}

	friend void QAbstractItemView_virtualbase_wheelEvent(void* self, QWheelEvent* param1);

	// Subclass to allow providing a Go implementation
	virtual void contextMenuEvent(QContextMenuEvent* param1) override {
		if (vtbl->contextMenuEvent == 0) {
			QAbstractItemView::contextMenuEvent(param1);
			return;
		}

		QContextMenuEvent* sigval1 = param1;

		vtbl->contextMenuEvent(vtbl, this, sigval1);

	}

	friend void QAbstractItemView_virtualbase_contextMenuEvent(void* self, QContextMenuEvent* param1);

	// Subclass to allow providing a Go implementation
	virtual void scrollContentsBy(int dx, int dy) override {
		if (vtbl->scrollContentsBy == 0) {
			QAbstractItemView::scrollContentsBy(dx, dy);
			return;
		}

		int sigval1 = dx;
		int sigval2 = dy;

		vtbl->scrollContentsBy(vtbl, this, sigval1, sigval2);

	}

	friend void QAbstractItemView_virtualbase_scrollContentsBy(void* self, int dx, int dy);

	// Subclass to allow providing a Go implementation
	virtual void changeEvent(QEvent* param1) override {
		if (vtbl->changeEvent == 0) {
			QAbstractItemView::changeEvent(param1);
			return;
		}

		QEvent* sigval1 = param1;

		vtbl->changeEvent(vtbl, this, sigval1);

	}

	friend void QAbstractItemView_virtualbase_changeEvent(void* self, QEvent* param1);

	// Subclass to allow providing a Go implementation
	virtual int devType() const override {
		if (vtbl->devType == 0) {
			return QAbstractItemView::devType();
		}


		int callback_return_value = vtbl->devType(vtbl, this);

		return static_cast<int>(callback_return_value);
	}

	friend int QAbstractItemView_virtualbase_devType(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void setVisible(bool visible) override {
		if (vtbl->setVisible == 0) {
			QAbstractItemView::setVisible(visible);
			return;
		}

		bool sigval1 = visible;

		vtbl->setVisible(vtbl, this, sigval1);

	}

	friend void QAbstractItemView_virtualbase_setVisible(void* self, bool visible);

	// Subclass to allow providing a Go implementation
	virtual int heightForWidth(int param1) const override {
		if (vtbl->heightForWidth == 0) {
			return QAbstractItemView::heightForWidth(param1);
		}

		int sigval1 = param1;

		int callback_return_value = vtbl->heightForWidth(vtbl, this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QAbstractItemView_virtualbase_heightForWidth(const void* self, int param1);

	// Subclass to allow providing a Go implementation
	virtual bool hasHeightForWidth() const override {
		if (vtbl->hasHeightForWidth == 0) {
			return QAbstractItemView::hasHeightForWidth();
		}


		bool callback_return_value = vtbl->hasHeightForWidth(vtbl, this);

		return callback_return_value;
	}

	friend bool QAbstractItemView_virtualbase_hasHeightForWidth(const void* self);

	// Subclass to allow providing a Go implementation
	virtual QPaintEngine* paintEngine() const override {
		if (vtbl->paintEngine == 0) {
			return QAbstractItemView::paintEngine();
		}


		QPaintEngine* callback_return_value = vtbl->paintEngine(vtbl, this);

		return callback_return_value;
	}

	friend QPaintEngine* QAbstractItemView_virtualbase_paintEngine(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void keyReleaseEvent(QKeyEvent* event) override {
		if (vtbl->keyReleaseEvent == 0) {
			QAbstractItemView::keyReleaseEvent(event);
			return;
		}

		QKeyEvent* sigval1 = event;

		vtbl->keyReleaseEvent(vtbl, this, sigval1);

	}

	friend void QAbstractItemView_virtualbase_keyReleaseEvent(void* self, QKeyEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void enterEvent(QEvent* event) override {
		if (vtbl->enterEvent == 0) {
			QAbstractItemView::enterEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->enterEvent(vtbl, this, sigval1);

	}

	friend void QAbstractItemView_virtualbase_enterEvent(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void leaveEvent(QEvent* event) override {
		if (vtbl->leaveEvent == 0) {
			QAbstractItemView::leaveEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->leaveEvent(vtbl, this, sigval1);

	}

	friend void QAbstractItemView_virtualbase_leaveEvent(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void moveEvent(QMoveEvent* event) override {
		if (vtbl->moveEvent == 0) {
			QAbstractItemView::moveEvent(event);
			return;
		}

		QMoveEvent* sigval1 = event;

		vtbl->moveEvent(vtbl, this, sigval1);

	}

	friend void QAbstractItemView_virtualbase_moveEvent(void* self, QMoveEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void closeEvent(QCloseEvent* event) override {
		if (vtbl->closeEvent == 0) {
			QAbstractItemView::closeEvent(event);
			return;
		}

		QCloseEvent* sigval1 = event;

		vtbl->closeEvent(vtbl, this, sigval1);

	}

	friend void QAbstractItemView_virtualbase_closeEvent(void* self, QCloseEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void tabletEvent(QTabletEvent* event) override {
		if (vtbl->tabletEvent == 0) {
			QAbstractItemView::tabletEvent(event);
			return;
		}

		QTabletEvent* sigval1 = event;

		vtbl->tabletEvent(vtbl, this, sigval1);

	}

	friend void QAbstractItemView_virtualbase_tabletEvent(void* self, QTabletEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void actionEvent(QActionEvent* event) override {
		if (vtbl->actionEvent == 0) {
			QAbstractItemView::actionEvent(event);
			return;
		}

		QActionEvent* sigval1 = event;

		vtbl->actionEvent(vtbl, this, sigval1);

	}

	friend void QAbstractItemView_virtualbase_actionEvent(void* self, QActionEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void showEvent(QShowEvent* event) override {
		if (vtbl->showEvent == 0) {
			QAbstractItemView::showEvent(event);
			return;
		}

		QShowEvent* sigval1 = event;

		vtbl->showEvent(vtbl, this, sigval1);

	}

	friend void QAbstractItemView_virtualbase_showEvent(void* self, QShowEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void hideEvent(QHideEvent* event) override {
		if (vtbl->hideEvent == 0) {
			QAbstractItemView::hideEvent(event);
			return;
		}

		QHideEvent* sigval1 = event;

		vtbl->hideEvent(vtbl, this, sigval1);

	}

	friend void QAbstractItemView_virtualbase_hideEvent(void* self, QHideEvent* event);

	// Subclass to allow providing a Go implementation
	virtual bool nativeEvent(const QByteArray& eventType, void* message, long* result) override {
		if (vtbl->nativeEvent == 0) {
			return QAbstractItemView::nativeEvent(eventType, message, result);
		}

		const QByteArray eventType_qb = eventType;
		struct miqt_string eventType_ms;
		eventType_ms.len = eventType_qb.length();
		eventType_ms.data = static_cast<char*>(malloc(eventType_ms.len));
		memcpy(eventType_ms.data, eventType_qb.data(), eventType_ms.len);
		struct miqt_string sigval1 = eventType_ms;
		void* sigval2 = message;
		long* sigval3 = result;

		bool callback_return_value = vtbl->nativeEvent(vtbl, this, sigval1, sigval2, sigval3);

		return callback_return_value;
	}

	friend bool QAbstractItemView_virtualbase_nativeEvent(void* self, struct miqt_string eventType, void* message, long* result);

	// Subclass to allow providing a Go implementation
	virtual int metric(QPaintDevice::PaintDeviceMetric param1) const override {
		if (vtbl->metric == 0) {
			return QAbstractItemView::metric(param1);
		}

		QPaintDevice::PaintDeviceMetric param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);

		int callback_return_value = vtbl->metric(vtbl, this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QAbstractItemView_virtualbase_metric(const void* self, int param1);

	// Subclass to allow providing a Go implementation
	virtual void initPainter(QPainter* painter) const override {
		if (vtbl->initPainter == 0) {
			QAbstractItemView::initPainter(painter);
			return;
		}

		QPainter* sigval1 = painter;

		vtbl->initPainter(vtbl, this, sigval1);

	}

	friend void QAbstractItemView_virtualbase_initPainter(const void* self, QPainter* painter);

	// Subclass to allow providing a Go implementation
	virtual QPaintDevice* redirected(QPoint* offset) const override {
		if (vtbl->redirected == 0) {
			return QAbstractItemView::redirected(offset);
		}

		QPoint* sigval1 = offset;

		QPaintDevice* callback_return_value = vtbl->redirected(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend QPaintDevice* QAbstractItemView_virtualbase_redirected(const void* self, QPoint* offset);

	// Subclass to allow providing a Go implementation
	virtual QPainter* sharedPainter() const override {
		if (vtbl->sharedPainter == 0) {
			return QAbstractItemView::sharedPainter();
		}


		QPainter* callback_return_value = vtbl->sharedPainter(vtbl, this);

		return callback_return_value;
	}

	friend QPainter* QAbstractItemView_virtualbase_sharedPainter(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QAbstractItemView::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(vtbl, this, sigval1);

	}

	friend void QAbstractItemView_virtualbase_childEvent(void* self, QChildEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QAbstractItemView::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(vtbl, this, sigval1);

	}

	friend void QAbstractItemView_virtualbase_customEvent(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QAbstractItemView::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(vtbl, this, sigval1);

	}

	friend void QAbstractItemView_virtualbase_connectNotify(void* self, QMetaMethod* signal);

	// Subclass to allow providing a Go implementation
	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QAbstractItemView::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(vtbl, this, sigval1);

	}

	friend void QAbstractItemView_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend void QAbstractItemView_protectedbase_setHorizontalStepsPerItem(bool* _dynamic_cast_ok, void* self, int steps);
	friend int QAbstractItemView_protectedbase_horizontalStepsPerItem(bool* _dynamic_cast_ok, const void* self);
	friend void QAbstractItemView_protectedbase_setVerticalStepsPerItem(bool* _dynamic_cast_ok, void* self, int steps);
	friend int QAbstractItemView_protectedbase_verticalStepsPerItem(bool* _dynamic_cast_ok, const void* self);
	friend int QAbstractItemView_protectedbase_state(bool* _dynamic_cast_ok, const void* self);
	friend void QAbstractItemView_protectedbase_setState(bool* _dynamic_cast_ok, void* self, int state);
	friend void QAbstractItemView_protectedbase_scheduleDelayedItemsLayout(bool* _dynamic_cast_ok, void* self);
	friend void QAbstractItemView_protectedbase_executeDelayedItemsLayout(bool* _dynamic_cast_ok, void* self);
	friend void QAbstractItemView_protectedbase_setDirtyRegion(bool* _dynamic_cast_ok, void* self, QRegion* region);
	friend void QAbstractItemView_protectedbase_scrollDirtyRegion(bool* _dynamic_cast_ok, void* self, int dx, int dy);
	friend QPoint* QAbstractItemView_protectedbase_dirtyRegionOffset(bool* _dynamic_cast_ok, const void* self);
	friend void QAbstractItemView_protectedbase_startAutoScroll(bool* _dynamic_cast_ok, void* self);
	friend void QAbstractItemView_protectedbase_stopAutoScroll(bool* _dynamic_cast_ok, void* self);
	friend void QAbstractItemView_protectedbase_doAutoScroll(bool* _dynamic_cast_ok, void* self);
	friend int QAbstractItemView_protectedbase_dropIndicatorPosition(bool* _dynamic_cast_ok, const void* self);
	friend void QAbstractItemView_protectedbase_setViewportMargins(bool* _dynamic_cast_ok, void* self, int left, int top, int right, int bottom);
	friend QMargins* QAbstractItemView_protectedbase_viewportMargins(bool* _dynamic_cast_ok, const void* self);
	friend void QAbstractItemView_protectedbase_drawFrame(bool* _dynamic_cast_ok, void* self, QPainter* param1);
	friend void QAbstractItemView_protectedbase_initStyleOption(bool* _dynamic_cast_ok, const void* self, QStyleOptionFrame* option);
	friend void QAbstractItemView_protectedbase_updateMicroFocus(bool* _dynamic_cast_ok, void* self);
	friend void QAbstractItemView_protectedbase_create(bool* _dynamic_cast_ok, void* self);
	friend void QAbstractItemView_protectedbase_destroy(bool* _dynamic_cast_ok, void* self);
	friend bool QAbstractItemView_protectedbase_focusNextChild(bool* _dynamic_cast_ok, void* self);
	friend bool QAbstractItemView_protectedbase_focusPreviousChild(bool* _dynamic_cast_ok, void* self);
	friend QObject* QAbstractItemView_protectedbase_sender(bool* _dynamic_cast_ok, const void* self);
	friend int QAbstractItemView_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self);
	friend int QAbstractItemView_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal);
	friend bool QAbstractItemView_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal);
};

QAbstractItemView* QAbstractItemView_new(struct QAbstractItemView_VTable* vtbl, QWidget* parent) {
	return new VirtualQAbstractItemView(vtbl, parent);
}

QAbstractItemView* QAbstractItemView_new2(struct QAbstractItemView_VTable* vtbl) {
	return new VirtualQAbstractItemView(vtbl);
}

void QAbstractItemView_virtbase(QAbstractItemView* src, QAbstractScrollArea** outptr_QAbstractScrollArea) {
	*outptr_QAbstractScrollArea = static_cast<QAbstractScrollArea*>(src);
}

QMetaObject* QAbstractItemView_metaObject(const QAbstractItemView* self) {
	return (QMetaObject*) self->metaObject();
}

void* QAbstractItemView_metacast(QAbstractItemView* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QAbstractItemView_metacall(QAbstractItemView* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QAbstractItemView_tr(const char* s) {
	QString _ret = QAbstractItemView::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QAbstractItemView_trUtf8(const char* s) {
	QString _ret = QAbstractItemView::trUtf8(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QAbstractItemView_setModel(QAbstractItemView* self, QAbstractItemModel* model) {
	self->setModel(model);
}

QAbstractItemModel* QAbstractItemView_model(const QAbstractItemView* self) {
	return self->model();
}

void QAbstractItemView_setSelectionModel(QAbstractItemView* self, QItemSelectionModel* selectionModel) {
	self->setSelectionModel(selectionModel);
}

QItemSelectionModel* QAbstractItemView_selectionModel(const QAbstractItemView* self) {
	return self->selectionModel();
}

void QAbstractItemView_setItemDelegate(QAbstractItemView* self, QAbstractItemDelegate* delegate) {
	self->setItemDelegate(delegate);
}

QAbstractItemDelegate* QAbstractItemView_itemDelegate(const QAbstractItemView* self) {
	return self->itemDelegate();
}

void QAbstractItemView_setSelectionMode(QAbstractItemView* self, int mode) {
	self->setSelectionMode(static_cast<QAbstractItemView::SelectionMode>(mode));
}

int QAbstractItemView_selectionMode(const QAbstractItemView* self) {
	QAbstractItemView::SelectionMode _ret = self->selectionMode();
	return static_cast<int>(_ret);
}

void QAbstractItemView_setSelectionBehavior(QAbstractItemView* self, int behavior) {
	self->setSelectionBehavior(static_cast<QAbstractItemView::SelectionBehavior>(behavior));
}

int QAbstractItemView_selectionBehavior(const QAbstractItemView* self) {
	QAbstractItemView::SelectionBehavior _ret = self->selectionBehavior();
	return static_cast<int>(_ret);
}

QModelIndex* QAbstractItemView_currentIndex(const QAbstractItemView* self) {
	return new QModelIndex(self->currentIndex());
}

QModelIndex* QAbstractItemView_rootIndex(const QAbstractItemView* self) {
	return new QModelIndex(self->rootIndex());
}

void QAbstractItemView_setEditTriggers(QAbstractItemView* self, int triggers) {
	self->setEditTriggers(static_cast<QAbstractItemView::EditTriggers>(triggers));
}

int QAbstractItemView_editTriggers(const QAbstractItemView* self) {
	QAbstractItemView::EditTriggers _ret = self->editTriggers();
	return static_cast<int>(_ret);
}

void QAbstractItemView_setVerticalScrollMode(QAbstractItemView* self, int mode) {
	self->setVerticalScrollMode(static_cast<QAbstractItemView::ScrollMode>(mode));
}

int QAbstractItemView_verticalScrollMode(const QAbstractItemView* self) {
	QAbstractItemView::ScrollMode _ret = self->verticalScrollMode();
	return static_cast<int>(_ret);
}

void QAbstractItemView_resetVerticalScrollMode(QAbstractItemView* self) {
	self->resetVerticalScrollMode();
}

void QAbstractItemView_setHorizontalScrollMode(QAbstractItemView* self, int mode) {
	self->setHorizontalScrollMode(static_cast<QAbstractItemView::ScrollMode>(mode));
}

int QAbstractItemView_horizontalScrollMode(const QAbstractItemView* self) {
	QAbstractItemView::ScrollMode _ret = self->horizontalScrollMode();
	return static_cast<int>(_ret);
}

void QAbstractItemView_resetHorizontalScrollMode(QAbstractItemView* self) {
	self->resetHorizontalScrollMode();
}

void QAbstractItemView_setAutoScroll(QAbstractItemView* self, bool enable) {
	self->setAutoScroll(enable);
}

bool QAbstractItemView_hasAutoScroll(const QAbstractItemView* self) {
	return self->hasAutoScroll();
}

void QAbstractItemView_setAutoScrollMargin(QAbstractItemView* self, int margin) {
	self->setAutoScrollMargin(static_cast<int>(margin));
}

int QAbstractItemView_autoScrollMargin(const QAbstractItemView* self) {
	return self->autoScrollMargin();
}

void QAbstractItemView_setTabKeyNavigation(QAbstractItemView* self, bool enable) {
	self->setTabKeyNavigation(enable);
}

bool QAbstractItemView_tabKeyNavigation(const QAbstractItemView* self) {
	return self->tabKeyNavigation();
}

void QAbstractItemView_setDropIndicatorShown(QAbstractItemView* self, bool enable) {
	self->setDropIndicatorShown(enable);
}

bool QAbstractItemView_showDropIndicator(const QAbstractItemView* self) {
	return self->showDropIndicator();
}

void QAbstractItemView_setDragEnabled(QAbstractItemView* self, bool enable) {
	self->setDragEnabled(enable);
}

bool QAbstractItemView_dragEnabled(const QAbstractItemView* self) {
	return self->dragEnabled();
}

void QAbstractItemView_setDragDropOverwriteMode(QAbstractItemView* self, bool overwrite) {
	self->setDragDropOverwriteMode(overwrite);
}

bool QAbstractItemView_dragDropOverwriteMode(const QAbstractItemView* self) {
	return self->dragDropOverwriteMode();
}

void QAbstractItemView_setDragDropMode(QAbstractItemView* self, int behavior) {
	self->setDragDropMode(static_cast<QAbstractItemView::DragDropMode>(behavior));
}

int QAbstractItemView_dragDropMode(const QAbstractItemView* self) {
	QAbstractItemView::DragDropMode _ret = self->dragDropMode();
	return static_cast<int>(_ret);
}

void QAbstractItemView_setDefaultDropAction(QAbstractItemView* self, int dropAction) {
	self->setDefaultDropAction(static_cast<Qt::DropAction>(dropAction));
}

int QAbstractItemView_defaultDropAction(const QAbstractItemView* self) {
	Qt::DropAction _ret = self->defaultDropAction();
	return static_cast<int>(_ret);
}

void QAbstractItemView_setAlternatingRowColors(QAbstractItemView* self, bool enable) {
	self->setAlternatingRowColors(enable);
}

bool QAbstractItemView_alternatingRowColors(const QAbstractItemView* self) {
	return self->alternatingRowColors();
}

void QAbstractItemView_setIconSize(QAbstractItemView* self, QSize* size) {
	self->setIconSize(*size);
}

QSize* QAbstractItemView_iconSize(const QAbstractItemView* self) {
	return new QSize(self->iconSize());
}

void QAbstractItemView_setTextElideMode(QAbstractItemView* self, int mode) {
	self->setTextElideMode(static_cast<Qt::TextElideMode>(mode));
}

int QAbstractItemView_textElideMode(const QAbstractItemView* self) {
	Qt::TextElideMode _ret = self->textElideMode();
	return static_cast<int>(_ret);
}

void QAbstractItemView_keyboardSearch(QAbstractItemView* self, struct miqt_string search) {
	QString search_QString = QString::fromUtf8(search.data, search.len);
	self->keyboardSearch(search_QString);
}

QRect* QAbstractItemView_visualRect(const QAbstractItemView* self, QModelIndex* index) {
	return new QRect(self->visualRect(*index));
}

void QAbstractItemView_scrollTo(QAbstractItemView* self, QModelIndex* index, int hint) {
	self->scrollTo(*index, static_cast<QAbstractItemView::ScrollHint>(hint));
}

QModelIndex* QAbstractItemView_indexAt(const QAbstractItemView* self, QPoint* point) {
	return new QModelIndex(self->indexAt(*point));
}

QSize* QAbstractItemView_sizeHintForIndex(const QAbstractItemView* self, QModelIndex* index) {
	return new QSize(self->sizeHintForIndex(*index));
}

int QAbstractItemView_sizeHintForRow(const QAbstractItemView* self, int row) {
	return self->sizeHintForRow(static_cast<int>(row));
}

int QAbstractItemView_sizeHintForColumn(const QAbstractItemView* self, int column) {
	return self->sizeHintForColumn(static_cast<int>(column));
}

void QAbstractItemView_openPersistentEditor(QAbstractItemView* self, QModelIndex* index) {
	self->openPersistentEditor(*index);
}

void QAbstractItemView_closePersistentEditor(QAbstractItemView* self, QModelIndex* index) {
	self->closePersistentEditor(*index);
}

bool QAbstractItemView_isPersistentEditorOpen(const QAbstractItemView* self, QModelIndex* index) {
	return self->isPersistentEditorOpen(*index);
}

void QAbstractItemView_setIndexWidget(QAbstractItemView* self, QModelIndex* index, QWidget* widget) {
	self->setIndexWidget(*index, widget);
}

QWidget* QAbstractItemView_indexWidget(const QAbstractItemView* self, QModelIndex* index) {
	return self->indexWidget(*index);
}

void QAbstractItemView_setItemDelegateForRow(QAbstractItemView* self, int row, QAbstractItemDelegate* delegate) {
	self->setItemDelegateForRow(static_cast<int>(row), delegate);
}

QAbstractItemDelegate* QAbstractItemView_itemDelegateForRow(const QAbstractItemView* self, int row) {
	return self->itemDelegateForRow(static_cast<int>(row));
}

void QAbstractItemView_setItemDelegateForColumn(QAbstractItemView* self, int column, QAbstractItemDelegate* delegate) {
	self->setItemDelegateForColumn(static_cast<int>(column), delegate);
}

QAbstractItemDelegate* QAbstractItemView_itemDelegateForColumn(const QAbstractItemView* self, int column) {
	return self->itemDelegateForColumn(static_cast<int>(column));
}

QAbstractItemDelegate* QAbstractItemView_itemDelegateWithIndex(const QAbstractItemView* self, QModelIndex* index) {
	return self->itemDelegate(*index);
}

QVariant* QAbstractItemView_inputMethodQuery(const QAbstractItemView* self, int query) {
	return new QVariant(self->inputMethodQuery(static_cast<Qt::InputMethodQuery>(query)));
}

void QAbstractItemView_reset(QAbstractItemView* self) {
	self->reset();
}

void QAbstractItemView_setRootIndex(QAbstractItemView* self, QModelIndex* index) {
	self->setRootIndex(*index);
}

void QAbstractItemView_doItemsLayout(QAbstractItemView* self) {
	self->doItemsLayout();
}

void QAbstractItemView_selectAll(QAbstractItemView* self) {
	self->selectAll();
}

void QAbstractItemView_edit(QAbstractItemView* self, QModelIndex* index) {
	self->edit(*index);
}

void QAbstractItemView_clearSelection(QAbstractItemView* self) {
	self->clearSelection();
}

void QAbstractItemView_setCurrentIndex(QAbstractItemView* self, QModelIndex* index) {
	self->setCurrentIndex(*index);
}

void QAbstractItemView_scrollToTop(QAbstractItemView* self) {
	self->scrollToTop();
}

void QAbstractItemView_scrollToBottom(QAbstractItemView* self) {
	self->scrollToBottom();
}

void QAbstractItemView_update(QAbstractItemView* self, QModelIndex* index) {
	self->update(*index);
}

void QAbstractItemView_pressed(QAbstractItemView* self, QModelIndex* index) {
	self->pressed(*index);
}

void QAbstractItemView_connect_pressed(QAbstractItemView* self, intptr_t slot, void (*callback)(intptr_t, QModelIndex*), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, QModelIndex*), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, QModelIndex*);
		void operator()(const QModelIndex& index) {
			const QModelIndex& index_ret = index;
			// Cast returned reference into pointer
			QModelIndex* sigval1 = const_cast<QModelIndex*>(&index_ret);
			callback(slot, sigval1);
		}
	};
	VirtualQAbstractItemView::connect(self, static_cast<void (QAbstractItemView::*)(const QModelIndex&)>(&QAbstractItemView::pressed), self, local_caller{slot, callback, release});
}

void QAbstractItemView_clicked(QAbstractItemView* self, QModelIndex* index) {
	self->clicked(*index);
}

void QAbstractItemView_connect_clicked(QAbstractItemView* self, intptr_t slot, void (*callback)(intptr_t, QModelIndex*), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, QModelIndex*), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, QModelIndex*);
		void operator()(const QModelIndex& index) {
			const QModelIndex& index_ret = index;
			// Cast returned reference into pointer
			QModelIndex* sigval1 = const_cast<QModelIndex*>(&index_ret);
			callback(slot, sigval1);
		}
	};
	VirtualQAbstractItemView::connect(self, static_cast<void (QAbstractItemView::*)(const QModelIndex&)>(&QAbstractItemView::clicked), self, local_caller{slot, callback, release});
}

void QAbstractItemView_doubleClicked(QAbstractItemView* self, QModelIndex* index) {
	self->doubleClicked(*index);
}

void QAbstractItemView_connect_doubleClicked(QAbstractItemView* self, intptr_t slot, void (*callback)(intptr_t, QModelIndex*), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, QModelIndex*), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, QModelIndex*);
		void operator()(const QModelIndex& index) {
			const QModelIndex& index_ret = index;
			// Cast returned reference into pointer
			QModelIndex* sigval1 = const_cast<QModelIndex*>(&index_ret);
			callback(slot, sigval1);
		}
	};
	VirtualQAbstractItemView::connect(self, static_cast<void (QAbstractItemView::*)(const QModelIndex&)>(&QAbstractItemView::doubleClicked), self, local_caller{slot, callback, release});
}

void QAbstractItemView_activated(QAbstractItemView* self, QModelIndex* index) {
	self->activated(*index);
}

void QAbstractItemView_connect_activated(QAbstractItemView* self, intptr_t slot, void (*callback)(intptr_t, QModelIndex*), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, QModelIndex*), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, QModelIndex*);
		void operator()(const QModelIndex& index) {
			const QModelIndex& index_ret = index;
			// Cast returned reference into pointer
			QModelIndex* sigval1 = const_cast<QModelIndex*>(&index_ret);
			callback(slot, sigval1);
		}
	};
	VirtualQAbstractItemView::connect(self, static_cast<void (QAbstractItemView::*)(const QModelIndex&)>(&QAbstractItemView::activated), self, local_caller{slot, callback, release});
}

void QAbstractItemView_entered(QAbstractItemView* self, QModelIndex* index) {
	self->entered(*index);
}

void QAbstractItemView_connect_entered(QAbstractItemView* self, intptr_t slot, void (*callback)(intptr_t, QModelIndex*), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, QModelIndex*), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, QModelIndex*);
		void operator()(const QModelIndex& index) {
			const QModelIndex& index_ret = index;
			// Cast returned reference into pointer
			QModelIndex* sigval1 = const_cast<QModelIndex*>(&index_ret);
			callback(slot, sigval1);
		}
	};
	VirtualQAbstractItemView::connect(self, static_cast<void (QAbstractItemView::*)(const QModelIndex&)>(&QAbstractItemView::entered), self, local_caller{slot, callback, release});
}

void QAbstractItemView_viewportEntered(QAbstractItemView* self) {
	self->viewportEntered();
}

void QAbstractItemView_connect_viewportEntered(QAbstractItemView* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t);
		void operator()() {
			callback(slot);
		}
	};
	VirtualQAbstractItemView::connect(self, static_cast<void (QAbstractItemView::*)()>(&QAbstractItemView::viewportEntered), self, local_caller{slot, callback, release});
}

void QAbstractItemView_iconSizeChanged(QAbstractItemView* self, QSize* size) {
	self->iconSizeChanged(*size);
}

void QAbstractItemView_connect_iconSizeChanged(QAbstractItemView* self, intptr_t slot, void (*callback)(intptr_t, QSize*), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, QSize*), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, QSize*);
		void operator()(const QSize& size) {
			const QSize& size_ret = size;
			// Cast returned reference into pointer
			QSize* sigval1 = const_cast<QSize*>(&size_ret);
			callback(slot, sigval1);
		}
	};
	VirtualQAbstractItemView::connect(self, static_cast<void (QAbstractItemView::*)(const QSize&)>(&QAbstractItemView::iconSizeChanged), self, local_caller{slot, callback, release});
}

struct miqt_string QAbstractItemView_tr2(const char* s, const char* c) {
	QString _ret = QAbstractItemView::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QAbstractItemView_tr3(const char* s, const char* c, int n) {
	QString _ret = QAbstractItemView::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QAbstractItemView_trUtf82(const char* s, const char* c) {
	QString _ret = QAbstractItemView::trUtf8(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QAbstractItemView_trUtf83(const char* s, const char* c, int n) {
	QString _ret = QAbstractItemView::trUtf8(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QMetaObject* QAbstractItemView_virtualbase_metaObject(const void* self) {

	return (QMetaObject*) ( (const VirtualQAbstractItemView*)(self) )->QAbstractItemView::metaObject();

}

void* QAbstractItemView_virtualbase_metacast(void* self, const char* param1) {

	return ( (VirtualQAbstractItemView*)(self) )->QAbstractItemView::qt_metacast(param1);

}

int QAbstractItemView_virtualbase_metacall(void* self, int param1, int param2, void** param3) {

	return ( (VirtualQAbstractItemView*)(self) )->QAbstractItemView::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);

}

void QAbstractItemView_virtualbase_setModel(void* self, QAbstractItemModel* model) {

	( (VirtualQAbstractItemView*)(self) )->QAbstractItemView::setModel(model);

}

void QAbstractItemView_virtualbase_setSelectionModel(void* self, QItemSelectionModel* selectionModel) {

	( (VirtualQAbstractItemView*)(self) )->QAbstractItemView::setSelectionModel(selectionModel);

}

void QAbstractItemView_virtualbase_keyboardSearch(void* self, struct miqt_string search) {
	QString search_QString = QString::fromUtf8(search.data, search.len);

	( (VirtualQAbstractItemView*)(self) )->QAbstractItemView::keyboardSearch(search_QString);

}

int QAbstractItemView_virtualbase_sizeHintForRow(const void* self, int row) {

	return ( (const VirtualQAbstractItemView*)(self) )->QAbstractItemView::sizeHintForRow(static_cast<int>(row));

}

int QAbstractItemView_virtualbase_sizeHintForColumn(const void* self, int column) {

	return ( (const VirtualQAbstractItemView*)(self) )->QAbstractItemView::sizeHintForColumn(static_cast<int>(column));

}

QVariant* QAbstractItemView_virtualbase_inputMethodQuery(const void* self, int query) {

	return new QVariant(( (const VirtualQAbstractItemView*)(self) )->QAbstractItemView::inputMethodQuery(static_cast<Qt::InputMethodQuery>(query)));

}

void QAbstractItemView_virtualbase_reset(void* self) {

	( (VirtualQAbstractItemView*)(self) )->QAbstractItemView::reset();

}

void QAbstractItemView_virtualbase_setRootIndex(void* self, QModelIndex* index) {

	( (VirtualQAbstractItemView*)(self) )->QAbstractItemView::setRootIndex(*index);

}

void QAbstractItemView_virtualbase_doItemsLayout(void* self) {

	( (VirtualQAbstractItemView*)(self) )->QAbstractItemView::doItemsLayout();

}

void QAbstractItemView_virtualbase_selectAll(void* self) {

	( (VirtualQAbstractItemView*)(self) )->QAbstractItemView::selectAll();

}

void QAbstractItemView_virtualbase_dataChanged(void* self, QModelIndex* topLeft, QModelIndex* bottomRight, struct miqt_array /* of int */  roles) {
	QVector<int> roles_QList;
	roles_QList.reserve(roles.len);
	int* roles_arr = static_cast<int*>(roles.data);
	for(size_t i = 0; i < roles.len; ++i) {
		roles_QList.push_back(static_cast<int>(roles_arr[i]));
	}

	( (VirtualQAbstractItemView*)(self) )->QAbstractItemView::dataChanged(*topLeft, *bottomRight, roles_QList);

}

void QAbstractItemView_virtualbase_rowsInserted(void* self, QModelIndex* parent, int start, int end) {

	( (VirtualQAbstractItemView*)(self) )->QAbstractItemView::rowsInserted(*parent, static_cast<int>(start), static_cast<int>(end));

}

void QAbstractItemView_virtualbase_rowsAboutToBeRemoved(void* self, QModelIndex* parent, int start, int end) {

	( (VirtualQAbstractItemView*)(self) )->QAbstractItemView::rowsAboutToBeRemoved(*parent, static_cast<int>(start), static_cast<int>(end));

}

void QAbstractItemView_virtualbase_selectionChanged(void* self, QItemSelection* selected, QItemSelection* deselected) {

	( (VirtualQAbstractItemView*)(self) )->QAbstractItemView::selectionChanged(*selected, *deselected);

}

void QAbstractItemView_virtualbase_currentChanged(void* self, QModelIndex* current, QModelIndex* previous) {

	( (VirtualQAbstractItemView*)(self) )->QAbstractItemView::currentChanged(*current, *previous);

}

void QAbstractItemView_virtualbase_updateEditorData(void* self) {

	( (VirtualQAbstractItemView*)(self) )->QAbstractItemView::updateEditorData();

}

void QAbstractItemView_virtualbase_updateEditorGeometries(void* self) {

	( (VirtualQAbstractItemView*)(self) )->QAbstractItemView::updateEditorGeometries();

}

void QAbstractItemView_virtualbase_updateGeometries(void* self) {

	( (VirtualQAbstractItemView*)(self) )->QAbstractItemView::updateGeometries();

}

void QAbstractItemView_virtualbase_verticalScrollbarAction(void* self, int action) {

	( (VirtualQAbstractItemView*)(self) )->QAbstractItemView::verticalScrollbarAction(static_cast<int>(action));

}

void QAbstractItemView_virtualbase_horizontalScrollbarAction(void* self, int action) {

	( (VirtualQAbstractItemView*)(self) )->QAbstractItemView::horizontalScrollbarAction(static_cast<int>(action));

}

void QAbstractItemView_virtualbase_verticalScrollbarValueChanged(void* self, int value) {

	( (VirtualQAbstractItemView*)(self) )->QAbstractItemView::verticalScrollbarValueChanged(static_cast<int>(value));

}

void QAbstractItemView_virtualbase_horizontalScrollbarValueChanged(void* self, int value) {

	( (VirtualQAbstractItemView*)(self) )->QAbstractItemView::horizontalScrollbarValueChanged(static_cast<int>(value));

}

void QAbstractItemView_virtualbase_closeEditor(void* self, QWidget* editor, int hint) {

	( (VirtualQAbstractItemView*)(self) )->QAbstractItemView::closeEditor(editor, static_cast<QAbstractItemDelegate::EndEditHint>(hint));

}

void QAbstractItemView_virtualbase_commitData(void* self, QWidget* editor) {

	( (VirtualQAbstractItemView*)(self) )->QAbstractItemView::commitData(editor);

}

void QAbstractItemView_virtualbase_editorDestroyed(void* self, QObject* editor) {

	( (VirtualQAbstractItemView*)(self) )->QAbstractItemView::editorDestroyed(editor);

}

struct miqt_array /* of QModelIndex* */  QAbstractItemView_virtualbase_selectedIndexes(const void* self) {

	QModelIndexList _ret = ( (const VirtualQAbstractItemView*)(self) )->QAbstractItemView::selectedIndexes();
	// Convert QList<> from C++ memory to manually-managed C memory
	QModelIndex** _arr = static_cast<QModelIndex**>(malloc(sizeof(QModelIndex*) * _ret.length()));
	for (size_t i = 0, e = _ret.length(); i < e; ++i) {
		_arr[i] = new QModelIndex(_ret[i]);
	}
	struct miqt_array _out;
	_out.len = _ret.length();
	_out.data = static_cast<void*>(_arr);
	return _out;

}

bool QAbstractItemView_virtualbase_edit2(void* self, QModelIndex* index, int trigger, QEvent* event) {

	return ( (VirtualQAbstractItemView*)(self) )->QAbstractItemView::edit(*index, static_cast<VirtualQAbstractItemView::EditTrigger>(trigger), event);

}

int QAbstractItemView_virtualbase_selectionCommand(const void* self, QModelIndex* index, QEvent* event) {

	QItemSelectionModel::SelectionFlags _ret = ( (const VirtualQAbstractItemView*)(self) )->QAbstractItemView::selectionCommand(*index, event);
	return static_cast<int>(_ret);

}

void QAbstractItemView_virtualbase_startDrag(void* self, int supportedActions) {

	( (VirtualQAbstractItemView*)(self) )->QAbstractItemView::startDrag(static_cast<Qt::DropActions>(supportedActions));

}

QStyleOptionViewItem* QAbstractItemView_virtualbase_viewOptions(const void* self) {

	return new QStyleOptionViewItem(( (const VirtualQAbstractItemView*)(self) )->QAbstractItemView::viewOptions());

}

bool QAbstractItemView_virtualbase_focusNextPrevChild(void* self, bool next) {

	return ( (VirtualQAbstractItemView*)(self) )->QAbstractItemView::focusNextPrevChild(next);

}

bool QAbstractItemView_virtualbase_event(void* self, QEvent* event) {

	return ( (VirtualQAbstractItemView*)(self) )->QAbstractItemView::event(event);

}

bool QAbstractItemView_virtualbase_viewportEvent(void* self, QEvent* event) {

	return ( (VirtualQAbstractItemView*)(self) )->QAbstractItemView::viewportEvent(event);

}

void QAbstractItemView_virtualbase_mousePressEvent(void* self, QMouseEvent* event) {

	( (VirtualQAbstractItemView*)(self) )->QAbstractItemView::mousePressEvent(event);

}

void QAbstractItemView_virtualbase_mouseMoveEvent(void* self, QMouseEvent* event) {

	( (VirtualQAbstractItemView*)(self) )->QAbstractItemView::mouseMoveEvent(event);

}

void QAbstractItemView_virtualbase_mouseReleaseEvent(void* self, QMouseEvent* event) {

	( (VirtualQAbstractItemView*)(self) )->QAbstractItemView::mouseReleaseEvent(event);

}

void QAbstractItemView_virtualbase_mouseDoubleClickEvent(void* self, QMouseEvent* event) {

	( (VirtualQAbstractItemView*)(self) )->QAbstractItemView::mouseDoubleClickEvent(event);

}

void QAbstractItemView_virtualbase_dragEnterEvent(void* self, QDragEnterEvent* event) {

	( (VirtualQAbstractItemView*)(self) )->QAbstractItemView::dragEnterEvent(event);

}

void QAbstractItemView_virtualbase_dragMoveEvent(void* self, QDragMoveEvent* event) {

	( (VirtualQAbstractItemView*)(self) )->QAbstractItemView::dragMoveEvent(event);

}

void QAbstractItemView_virtualbase_dragLeaveEvent(void* self, QDragLeaveEvent* event) {

	( (VirtualQAbstractItemView*)(self) )->QAbstractItemView::dragLeaveEvent(event);

}

void QAbstractItemView_virtualbase_dropEvent(void* self, QDropEvent* event) {

	( (VirtualQAbstractItemView*)(self) )->QAbstractItemView::dropEvent(event);

}

void QAbstractItemView_virtualbase_focusInEvent(void* self, QFocusEvent* event) {

	( (VirtualQAbstractItemView*)(self) )->QAbstractItemView::focusInEvent(event);

}

void QAbstractItemView_virtualbase_focusOutEvent(void* self, QFocusEvent* event) {

	( (VirtualQAbstractItemView*)(self) )->QAbstractItemView::focusOutEvent(event);

}

void QAbstractItemView_virtualbase_keyPressEvent(void* self, QKeyEvent* event) {

	( (VirtualQAbstractItemView*)(self) )->QAbstractItemView::keyPressEvent(event);

}

void QAbstractItemView_virtualbase_resizeEvent(void* self, QResizeEvent* event) {

	( (VirtualQAbstractItemView*)(self) )->QAbstractItemView::resizeEvent(event);

}

void QAbstractItemView_virtualbase_timerEvent(void* self, QTimerEvent* event) {

	( (VirtualQAbstractItemView*)(self) )->QAbstractItemView::timerEvent(event);

}

void QAbstractItemView_virtualbase_inputMethodEvent(void* self, QInputMethodEvent* event) {

	( (VirtualQAbstractItemView*)(self) )->QAbstractItemView::inputMethodEvent(event);

}

bool QAbstractItemView_virtualbase_eventFilter(void* self, QObject* object, QEvent* event) {

	return ( (VirtualQAbstractItemView*)(self) )->QAbstractItemView::eventFilter(object, event);

}

QSize* QAbstractItemView_virtualbase_viewportSizeHint(const void* self) {

	return new QSize(( (const VirtualQAbstractItemView*)(self) )->QAbstractItemView::viewportSizeHint());

}

QSize* QAbstractItemView_virtualbase_minimumSizeHint(const void* self) {

	return new QSize(( (const VirtualQAbstractItemView*)(self) )->QAbstractItemView::minimumSizeHint());

}

QSize* QAbstractItemView_virtualbase_sizeHint(const void* self) {

	return new QSize(( (const VirtualQAbstractItemView*)(self) )->QAbstractItemView::sizeHint());

}

void QAbstractItemView_virtualbase_setupViewport(void* self, QWidget* viewport) {

	( (VirtualQAbstractItemView*)(self) )->QAbstractItemView::setupViewport(viewport);

}

void QAbstractItemView_virtualbase_paintEvent(void* self, QPaintEvent* param1) {

	( (VirtualQAbstractItemView*)(self) )->QAbstractItemView::paintEvent(param1);

}

void QAbstractItemView_virtualbase_wheelEvent(void* self, QWheelEvent* param1) {

	( (VirtualQAbstractItemView*)(self) )->QAbstractItemView::wheelEvent(param1);

}

void QAbstractItemView_virtualbase_contextMenuEvent(void* self, QContextMenuEvent* param1) {

	( (VirtualQAbstractItemView*)(self) )->QAbstractItemView::contextMenuEvent(param1);

}

void QAbstractItemView_virtualbase_scrollContentsBy(void* self, int dx, int dy) {

	( (VirtualQAbstractItemView*)(self) )->QAbstractItemView::scrollContentsBy(static_cast<int>(dx), static_cast<int>(dy));

}

void QAbstractItemView_virtualbase_changeEvent(void* self, QEvent* param1) {

	( (VirtualQAbstractItemView*)(self) )->QAbstractItemView::changeEvent(param1);

}

int QAbstractItemView_virtualbase_devType(const void* self) {

	return ( (const VirtualQAbstractItemView*)(self) )->QAbstractItemView::devType();

}

void QAbstractItemView_virtualbase_setVisible(void* self, bool visible) {

	( (VirtualQAbstractItemView*)(self) )->QAbstractItemView::setVisible(visible);

}

int QAbstractItemView_virtualbase_heightForWidth(const void* self, int param1) {

	return ( (const VirtualQAbstractItemView*)(self) )->QAbstractItemView::heightForWidth(static_cast<int>(param1));

}

bool QAbstractItemView_virtualbase_hasHeightForWidth(const void* self) {

	return ( (const VirtualQAbstractItemView*)(self) )->QAbstractItemView::hasHeightForWidth();

}

QPaintEngine* QAbstractItemView_virtualbase_paintEngine(const void* self) {

	return ( (const VirtualQAbstractItemView*)(self) )->QAbstractItemView::paintEngine();

}

void QAbstractItemView_virtualbase_keyReleaseEvent(void* self, QKeyEvent* event) {

	( (VirtualQAbstractItemView*)(self) )->QAbstractItemView::keyReleaseEvent(event);

}

void QAbstractItemView_virtualbase_enterEvent(void* self, QEvent* event) {

	( (VirtualQAbstractItemView*)(self) )->QAbstractItemView::enterEvent(event);

}

void QAbstractItemView_virtualbase_leaveEvent(void* self, QEvent* event) {

	( (VirtualQAbstractItemView*)(self) )->QAbstractItemView::leaveEvent(event);

}

void QAbstractItemView_virtualbase_moveEvent(void* self, QMoveEvent* event) {

	( (VirtualQAbstractItemView*)(self) )->QAbstractItemView::moveEvent(event);

}

void QAbstractItemView_virtualbase_closeEvent(void* self, QCloseEvent* event) {

	( (VirtualQAbstractItemView*)(self) )->QAbstractItemView::closeEvent(event);

}

void QAbstractItemView_virtualbase_tabletEvent(void* self, QTabletEvent* event) {

	( (VirtualQAbstractItemView*)(self) )->QAbstractItemView::tabletEvent(event);

}

void QAbstractItemView_virtualbase_actionEvent(void* self, QActionEvent* event) {

	( (VirtualQAbstractItemView*)(self) )->QAbstractItemView::actionEvent(event);

}

void QAbstractItemView_virtualbase_showEvent(void* self, QShowEvent* event) {

	( (VirtualQAbstractItemView*)(self) )->QAbstractItemView::showEvent(event);

}

void QAbstractItemView_virtualbase_hideEvent(void* self, QHideEvent* event) {

	( (VirtualQAbstractItemView*)(self) )->QAbstractItemView::hideEvent(event);

}

bool QAbstractItemView_virtualbase_nativeEvent(void* self, struct miqt_string eventType, void* message, long* result) {
	QByteArray eventType_QByteArray(eventType.data, eventType.len);

	return ( (VirtualQAbstractItemView*)(self) )->QAbstractItemView::nativeEvent(eventType_QByteArray, message, static_cast<long*>(result));

}

int QAbstractItemView_virtualbase_metric(const void* self, int param1) {

	return ( (const VirtualQAbstractItemView*)(self) )->QAbstractItemView::metric(static_cast<VirtualQAbstractItemView::PaintDeviceMetric>(param1));

}

void QAbstractItemView_virtualbase_initPainter(const void* self, QPainter* painter) {

	( (const VirtualQAbstractItemView*)(self) )->QAbstractItemView::initPainter(painter);

}

QPaintDevice* QAbstractItemView_virtualbase_redirected(const void* self, QPoint* offset) {

	return ( (const VirtualQAbstractItemView*)(self) )->QAbstractItemView::redirected(offset);

}

QPainter* QAbstractItemView_virtualbase_sharedPainter(const void* self) {

	return ( (const VirtualQAbstractItemView*)(self) )->QAbstractItemView::sharedPainter();

}

void QAbstractItemView_virtualbase_childEvent(void* self, QChildEvent* event) {

	( (VirtualQAbstractItemView*)(self) )->QAbstractItemView::childEvent(event);

}

void QAbstractItemView_virtualbase_customEvent(void* self, QEvent* event) {

	( (VirtualQAbstractItemView*)(self) )->QAbstractItemView::customEvent(event);

}

void QAbstractItemView_virtualbase_connectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQAbstractItemView*)(self) )->QAbstractItemView::connectNotify(*signal);

}

void QAbstractItemView_virtualbase_disconnectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQAbstractItemView*)(self) )->QAbstractItemView::disconnectNotify(*signal);

}

const QMetaObject* QAbstractItemView_staticMetaObject() { return &QAbstractItemView::staticMetaObject; }
void QAbstractItemView_protectedbase_setHorizontalStepsPerItem(bool* _dynamic_cast_ok, void* self, int steps) {
	VirtualQAbstractItemView* self_cast = dynamic_cast<VirtualQAbstractItemView*>( (QAbstractItemView*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->setHorizontalStepsPerItem(static_cast<int>(steps));

}

int QAbstractItemView_protectedbase_horizontalStepsPerItem(bool* _dynamic_cast_ok, const void* self) {
	VirtualQAbstractItemView* self_cast = dynamic_cast<VirtualQAbstractItemView*>( (QAbstractItemView*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return 0;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->horizontalStepsPerItem();

}

void QAbstractItemView_protectedbase_setVerticalStepsPerItem(bool* _dynamic_cast_ok, void* self, int steps) {
	VirtualQAbstractItemView* self_cast = dynamic_cast<VirtualQAbstractItemView*>( (QAbstractItemView*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->setVerticalStepsPerItem(static_cast<int>(steps));

}

int QAbstractItemView_protectedbase_verticalStepsPerItem(bool* _dynamic_cast_ok, const void* self) {
	VirtualQAbstractItemView* self_cast = dynamic_cast<VirtualQAbstractItemView*>( (QAbstractItemView*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return 0;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->verticalStepsPerItem();

}

int QAbstractItemView_protectedbase_state(bool* _dynamic_cast_ok, const void* self) {
	VirtualQAbstractItemView* self_cast = dynamic_cast<VirtualQAbstractItemView*>( (QAbstractItemView*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return (int)(0);
	}
	
	*_dynamic_cast_ok = true;
	
	VirtualQAbstractItemView::State _ret = self_cast->state();
	return static_cast<int>(_ret);

}

void QAbstractItemView_protectedbase_setState(bool* _dynamic_cast_ok, void* self, int state) {
	VirtualQAbstractItemView* self_cast = dynamic_cast<VirtualQAbstractItemView*>( (QAbstractItemView*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->setState(static_cast<VirtualQAbstractItemView::State>(state));

}

void QAbstractItemView_protectedbase_scheduleDelayedItemsLayout(bool* _dynamic_cast_ok, void* self) {
	VirtualQAbstractItemView* self_cast = dynamic_cast<VirtualQAbstractItemView*>( (QAbstractItemView*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->scheduleDelayedItemsLayout();

}

void QAbstractItemView_protectedbase_executeDelayedItemsLayout(bool* _dynamic_cast_ok, void* self) {
	VirtualQAbstractItemView* self_cast = dynamic_cast<VirtualQAbstractItemView*>( (QAbstractItemView*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->executeDelayedItemsLayout();

}

void QAbstractItemView_protectedbase_setDirtyRegion(bool* _dynamic_cast_ok, void* self, QRegion* region) {
	VirtualQAbstractItemView* self_cast = dynamic_cast<VirtualQAbstractItemView*>( (QAbstractItemView*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->setDirtyRegion(*region);

}

void QAbstractItemView_protectedbase_scrollDirtyRegion(bool* _dynamic_cast_ok, void* self, int dx, int dy) {
	VirtualQAbstractItemView* self_cast = dynamic_cast<VirtualQAbstractItemView*>( (QAbstractItemView*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->scrollDirtyRegion(static_cast<int>(dx), static_cast<int>(dy));

}

QPoint* QAbstractItemView_protectedbase_dirtyRegionOffset(bool* _dynamic_cast_ok, const void* self) {
	VirtualQAbstractItemView* self_cast = dynamic_cast<VirtualQAbstractItemView*>( (QAbstractItemView*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return nullptr;
	}
	
	*_dynamic_cast_ok = true;
	
	return new QPoint(self_cast->dirtyRegionOffset());

}

void QAbstractItemView_protectedbase_startAutoScroll(bool* _dynamic_cast_ok, void* self) {
	VirtualQAbstractItemView* self_cast = dynamic_cast<VirtualQAbstractItemView*>( (QAbstractItemView*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->startAutoScroll();

}

void QAbstractItemView_protectedbase_stopAutoScroll(bool* _dynamic_cast_ok, void* self) {
	VirtualQAbstractItemView* self_cast = dynamic_cast<VirtualQAbstractItemView*>( (QAbstractItemView*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->stopAutoScroll();

}

void QAbstractItemView_protectedbase_doAutoScroll(bool* _dynamic_cast_ok, void* self) {
	VirtualQAbstractItemView* self_cast = dynamic_cast<VirtualQAbstractItemView*>( (QAbstractItemView*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->doAutoScroll();

}

int QAbstractItemView_protectedbase_dropIndicatorPosition(bool* _dynamic_cast_ok, const void* self) {
	VirtualQAbstractItemView* self_cast = dynamic_cast<VirtualQAbstractItemView*>( (QAbstractItemView*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return (int)(0);
	}
	
	*_dynamic_cast_ok = true;
	
	VirtualQAbstractItemView::DropIndicatorPosition _ret = self_cast->dropIndicatorPosition();
	return static_cast<int>(_ret);

}

void QAbstractItemView_protectedbase_setViewportMargins(bool* _dynamic_cast_ok, void* self, int left, int top, int right, int bottom) {
	VirtualQAbstractItemView* self_cast = dynamic_cast<VirtualQAbstractItemView*>( (QAbstractItemView*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->setViewportMargins(static_cast<int>(left), static_cast<int>(top), static_cast<int>(right), static_cast<int>(bottom));

}

QMargins* QAbstractItemView_protectedbase_viewportMargins(bool* _dynamic_cast_ok, const void* self) {
	VirtualQAbstractItemView* self_cast = dynamic_cast<VirtualQAbstractItemView*>( (QAbstractItemView*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return nullptr;
	}
	
	*_dynamic_cast_ok = true;
	
	return new QMargins(self_cast->viewportMargins());

}

void QAbstractItemView_protectedbase_drawFrame(bool* _dynamic_cast_ok, void* self, QPainter* param1) {
	VirtualQAbstractItemView* self_cast = dynamic_cast<VirtualQAbstractItemView*>( (QAbstractItemView*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->drawFrame(param1);

}

void QAbstractItemView_protectedbase_initStyleOption(bool* _dynamic_cast_ok, const void* self, QStyleOptionFrame* option) {
	VirtualQAbstractItemView* self_cast = dynamic_cast<VirtualQAbstractItemView*>( (QAbstractItemView*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->initStyleOption(option);

}

void QAbstractItemView_protectedbase_updateMicroFocus(bool* _dynamic_cast_ok, void* self) {
	VirtualQAbstractItemView* self_cast = dynamic_cast<VirtualQAbstractItemView*>( (QAbstractItemView*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->updateMicroFocus();

}

void QAbstractItemView_protectedbase_create(bool* _dynamic_cast_ok, void* self) {
	VirtualQAbstractItemView* self_cast = dynamic_cast<VirtualQAbstractItemView*>( (QAbstractItemView*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->create();

}

void QAbstractItemView_protectedbase_destroy(bool* _dynamic_cast_ok, void* self) {
	VirtualQAbstractItemView* self_cast = dynamic_cast<VirtualQAbstractItemView*>( (QAbstractItemView*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->destroy();

}

bool QAbstractItemView_protectedbase_focusNextChild(bool* _dynamic_cast_ok, void* self) {
	VirtualQAbstractItemView* self_cast = dynamic_cast<VirtualQAbstractItemView*>( (QAbstractItemView*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return false;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->focusNextChild();

}

bool QAbstractItemView_protectedbase_focusPreviousChild(bool* _dynamic_cast_ok, void* self) {
	VirtualQAbstractItemView* self_cast = dynamic_cast<VirtualQAbstractItemView*>( (QAbstractItemView*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return false;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->focusPreviousChild();

}

QObject* QAbstractItemView_protectedbase_sender(bool* _dynamic_cast_ok, const void* self) {
	VirtualQAbstractItemView* self_cast = dynamic_cast<VirtualQAbstractItemView*>( (QAbstractItemView*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return nullptr;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->sender();

}

int QAbstractItemView_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self) {
	VirtualQAbstractItemView* self_cast = dynamic_cast<VirtualQAbstractItemView*>( (QAbstractItemView*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return 0;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->senderSignalIndex();

}

int QAbstractItemView_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal) {
	VirtualQAbstractItemView* self_cast = dynamic_cast<VirtualQAbstractItemView*>( (QAbstractItemView*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return 0;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->receivers(signal);

}

bool QAbstractItemView_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal) {
	VirtualQAbstractItemView* self_cast = dynamic_cast<VirtualQAbstractItemView*>( (QAbstractItemView*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return false;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->isSignalConnected(*signal);

}

void QAbstractItemView_delete(QAbstractItemView* self) {
	delete self;
}

