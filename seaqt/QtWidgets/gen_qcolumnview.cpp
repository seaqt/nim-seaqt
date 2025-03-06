#include <QAbstractItemDelegate>
#include <QAbstractItemModel>
#include <QAbstractItemView>
#include <QAbstractScrollArea>
#include <QActionEvent>
#include <QByteArray>
#include <QChildEvent>
#include <QCloseEvent>
#include <QColumnView>
#include <QContextMenuEvent>
#include <QDragEnterEvent>
#include <QDragLeaveEvent>
#include <QDragMoveEvent>
#include <QDropEvent>
#include <QEnterEvent>
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
#include <qcolumnview.h>
#include "gen_qcolumnview.h"

#ifdef __cplusplus
extern "C" {
#endif

void miqt_exec_callback_QColumnView_updatePreviewWidget(intptr_t, QModelIndex*);
#ifdef __cplusplus
} /* extern C */
#endif

class VirtualQColumnView final : public QColumnView {
	struct QColumnView_VTable* vtbl;
public:

	VirtualQColumnView(struct QColumnView_VTable* vtbl, QWidget* parent): QColumnView(parent), vtbl(vtbl) {};
	VirtualQColumnView(struct QColumnView_VTable* vtbl): QColumnView(), vtbl(vtbl) {};

	virtual ~VirtualQColumnView() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QColumnView::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(vtbl, this);

		return callback_return_value;
	}

	friend QMetaObject* QColumnView_virtualbase_metaObject(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QColumnView::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend void* QColumnView_virtualbase_metacast(void* self, const char* param1);

	// Subclass to allow providing a Go implementation
	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QColumnView::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(vtbl, this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QColumnView_virtualbase_metacall(void* self, int param1, int param2, void** param3);

	// Subclass to allow providing a Go implementation
	virtual QModelIndex indexAt(const QPoint& point) const override {
		if (vtbl->indexAt == 0) {
			return QColumnView::indexAt(point);
		}

		const QPoint& point_ret = point;
		// Cast returned reference into pointer
		QPoint* sigval1 = const_cast<QPoint*>(&point_ret);

		QModelIndex* callback_return_value = vtbl->indexAt(vtbl, this, sigval1);

		return *callback_return_value;
	}

	friend QModelIndex* QColumnView_virtualbase_indexAt(const void* self, QPoint* point);

	// Subclass to allow providing a Go implementation
	virtual void scrollTo(const QModelIndex& index, QAbstractItemView::ScrollHint hint) override {
		if (vtbl->scrollTo == 0) {
			QColumnView::scrollTo(index, hint);
			return;
		}

		const QModelIndex& index_ret = index;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&index_ret);
		QAbstractItemView::ScrollHint hint_ret = hint;
		int sigval2 = static_cast<int>(hint_ret);

		vtbl->scrollTo(vtbl, this, sigval1, sigval2);

	}

	friend void QColumnView_virtualbase_scrollTo(void* self, QModelIndex* index, int hint);

	// Subclass to allow providing a Go implementation
	virtual QSize sizeHint() const override {
		if (vtbl->sizeHint == 0) {
			return QColumnView::sizeHint();
		}


		QSize* callback_return_value = vtbl->sizeHint(vtbl, this);

		return *callback_return_value;
	}

	friend QSize* QColumnView_virtualbase_sizeHint(const void* self);

	// Subclass to allow providing a Go implementation
	virtual QRect visualRect(const QModelIndex& index) const override {
		if (vtbl->visualRect == 0) {
			return QColumnView::visualRect(index);
		}

		const QModelIndex& index_ret = index;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&index_ret);

		QRect* callback_return_value = vtbl->visualRect(vtbl, this, sigval1);

		return *callback_return_value;
	}

	friend QRect* QColumnView_virtualbase_visualRect(const void* self, QModelIndex* index);

	// Subclass to allow providing a Go implementation
	virtual void setModel(QAbstractItemModel* model) override {
		if (vtbl->setModel == 0) {
			QColumnView::setModel(model);
			return;
		}

		QAbstractItemModel* sigval1 = model;

		vtbl->setModel(vtbl, this, sigval1);

	}

	friend void QColumnView_virtualbase_setModel(void* self, QAbstractItemModel* model);

	// Subclass to allow providing a Go implementation
	virtual void setSelectionModel(QItemSelectionModel* selectionModel) override {
		if (vtbl->setSelectionModel == 0) {
			QColumnView::setSelectionModel(selectionModel);
			return;
		}

		QItemSelectionModel* sigval1 = selectionModel;

		vtbl->setSelectionModel(vtbl, this, sigval1);

	}

	friend void QColumnView_virtualbase_setSelectionModel(void* self, QItemSelectionModel* selectionModel);

	// Subclass to allow providing a Go implementation
	virtual void setRootIndex(const QModelIndex& index) override {
		if (vtbl->setRootIndex == 0) {
			QColumnView::setRootIndex(index);
			return;
		}

		const QModelIndex& index_ret = index;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&index_ret);

		vtbl->setRootIndex(vtbl, this, sigval1);

	}

	friend void QColumnView_virtualbase_setRootIndex(void* self, QModelIndex* index);

	// Subclass to allow providing a Go implementation
	virtual void selectAll() override {
		if (vtbl->selectAll == 0) {
			QColumnView::selectAll();
			return;
		}


		vtbl->selectAll(vtbl, this);

	}

	friend void QColumnView_virtualbase_selectAll(void* self);

	// Subclass to allow providing a Go implementation
	virtual bool isIndexHidden(const QModelIndex& index) const override {
		if (vtbl->isIndexHidden == 0) {
			return QColumnView::isIndexHidden(index);
		}

		const QModelIndex& index_ret = index;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&index_ret);

		bool callback_return_value = vtbl->isIndexHidden(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend bool QColumnView_virtualbase_isIndexHidden(const void* self, QModelIndex* index);

	// Subclass to allow providing a Go implementation
	virtual QModelIndex moveCursor(QAbstractItemView::CursorAction cursorAction, Qt::KeyboardModifiers modifiers) override {
		if (vtbl->moveCursor == 0) {
			return QColumnView::moveCursor(cursorAction, modifiers);
		}

		QAbstractItemView::CursorAction cursorAction_ret = cursorAction;
		int sigval1 = static_cast<int>(cursorAction_ret);
		Qt::KeyboardModifiers modifiers_ret = modifiers;
		int sigval2 = static_cast<int>(modifiers_ret);

		QModelIndex* callback_return_value = vtbl->moveCursor(vtbl, this, sigval1, sigval2);

		return *callback_return_value;
	}

	friend QModelIndex* QColumnView_virtualbase_moveCursor(void* self, int cursorAction, int modifiers);

	// Subclass to allow providing a Go implementation
	virtual void resizeEvent(QResizeEvent* event) override {
		if (vtbl->resizeEvent == 0) {
			QColumnView::resizeEvent(event);
			return;
		}

		QResizeEvent* sigval1 = event;

		vtbl->resizeEvent(vtbl, this, sigval1);

	}

	friend void QColumnView_virtualbase_resizeEvent(void* self, QResizeEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void setSelection(const QRect& rect, QItemSelectionModel::SelectionFlags command) override {
		if (vtbl->setSelection == 0) {
			QColumnView::setSelection(rect, command);
			return;
		}

		const QRect& rect_ret = rect;
		// Cast returned reference into pointer
		QRect* sigval1 = const_cast<QRect*>(&rect_ret);
		QItemSelectionModel::SelectionFlags command_ret = command;
		int sigval2 = static_cast<int>(command_ret);

		vtbl->setSelection(vtbl, this, sigval1, sigval2);

	}

	friend void QColumnView_virtualbase_setSelection(void* self, QRect* rect, int command);

	// Subclass to allow providing a Go implementation
	virtual QRegion visualRegionForSelection(const QItemSelection& selection) const override {
		if (vtbl->visualRegionForSelection == 0) {
			return QColumnView::visualRegionForSelection(selection);
		}

		const QItemSelection& selection_ret = selection;
		// Cast returned reference into pointer
		QItemSelection* sigval1 = const_cast<QItemSelection*>(&selection_ret);

		QRegion* callback_return_value = vtbl->visualRegionForSelection(vtbl, this, sigval1);

		return *callback_return_value;
	}

	friend QRegion* QColumnView_virtualbase_visualRegionForSelection(const void* self, QItemSelection* selection);

	// Subclass to allow providing a Go implementation
	virtual int horizontalOffset() const override {
		if (vtbl->horizontalOffset == 0) {
			return QColumnView::horizontalOffset();
		}


		int callback_return_value = vtbl->horizontalOffset(vtbl, this);

		return static_cast<int>(callback_return_value);
	}

	friend int QColumnView_virtualbase_horizontalOffset(const void* self);

	// Subclass to allow providing a Go implementation
	virtual int verticalOffset() const override {
		if (vtbl->verticalOffset == 0) {
			return QColumnView::verticalOffset();
		}


		int callback_return_value = vtbl->verticalOffset(vtbl, this);

		return static_cast<int>(callback_return_value);
	}

	friend int QColumnView_virtualbase_verticalOffset(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void rowsInserted(const QModelIndex& parent, int start, int end) override {
		if (vtbl->rowsInserted == 0) {
			QColumnView::rowsInserted(parent, start, end);
			return;
		}

		const QModelIndex& parent_ret = parent;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&parent_ret);
		int sigval2 = start;
		int sigval3 = end;

		vtbl->rowsInserted(vtbl, this, sigval1, sigval2, sigval3);

	}

	friend void QColumnView_virtualbase_rowsInserted(void* self, QModelIndex* parent, int start, int end);

	// Subclass to allow providing a Go implementation
	virtual void currentChanged(const QModelIndex& current, const QModelIndex& previous) override {
		if (vtbl->currentChanged == 0) {
			QColumnView::currentChanged(current, previous);
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

	friend void QColumnView_virtualbase_currentChanged(void* self, QModelIndex* current, QModelIndex* previous);

	// Subclass to allow providing a Go implementation
	virtual void scrollContentsBy(int dx, int dy) override {
		if (vtbl->scrollContentsBy == 0) {
			QColumnView::scrollContentsBy(dx, dy);
			return;
		}

		int sigval1 = dx;
		int sigval2 = dy;

		vtbl->scrollContentsBy(vtbl, this, sigval1, sigval2);

	}

	friend void QColumnView_virtualbase_scrollContentsBy(void* self, int dx, int dy);

	// Subclass to allow providing a Go implementation
	virtual QAbstractItemView* createColumn(const QModelIndex& rootIndex) override {
		if (vtbl->createColumn == 0) {
			return QColumnView::createColumn(rootIndex);
		}

		const QModelIndex& rootIndex_ret = rootIndex;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&rootIndex_ret);

		QAbstractItemView* callback_return_value = vtbl->createColumn(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend QAbstractItemView* QColumnView_virtualbase_createColumn(void* self, QModelIndex* rootIndex);

	// Subclass to allow providing a Go implementation
	virtual void keyboardSearch(const QString& search) override {
		if (vtbl->keyboardSearch == 0) {
			QColumnView::keyboardSearch(search);
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

	friend void QColumnView_virtualbase_keyboardSearch(void* self, struct miqt_string search);

	// Subclass to allow providing a Go implementation
	virtual int sizeHintForRow(int row) const override {
		if (vtbl->sizeHintForRow == 0) {
			return QColumnView::sizeHintForRow(row);
		}

		int sigval1 = row;

		int callback_return_value = vtbl->sizeHintForRow(vtbl, this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QColumnView_virtualbase_sizeHintForRow(const void* self, int row);

	// Subclass to allow providing a Go implementation
	virtual int sizeHintForColumn(int column) const override {
		if (vtbl->sizeHintForColumn == 0) {
			return QColumnView::sizeHintForColumn(column);
		}

		int sigval1 = column;

		int callback_return_value = vtbl->sizeHintForColumn(vtbl, this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QColumnView_virtualbase_sizeHintForColumn(const void* self, int column);

	// Subclass to allow providing a Go implementation
	virtual QAbstractItemDelegate* itemDelegateForIndex(const QModelIndex& index) const override {
		if (vtbl->itemDelegateForIndex == 0) {
			return QColumnView::itemDelegateForIndex(index);
		}

		const QModelIndex& index_ret = index;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&index_ret);

		QAbstractItemDelegate* callback_return_value = vtbl->itemDelegateForIndex(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend QAbstractItemDelegate* QColumnView_virtualbase_itemDelegateForIndex(const void* self, QModelIndex* index);

	// Subclass to allow providing a Go implementation
	virtual QVariant inputMethodQuery(Qt::InputMethodQuery query) const override {
		if (vtbl->inputMethodQuery == 0) {
			return QColumnView::inputMethodQuery(query);
		}

		Qt::InputMethodQuery query_ret = query;
		int sigval1 = static_cast<int>(query_ret);

		QVariant* callback_return_value = vtbl->inputMethodQuery(vtbl, this, sigval1);

		return *callback_return_value;
	}

	friend QVariant* QColumnView_virtualbase_inputMethodQuery(const void* self, int query);

	// Subclass to allow providing a Go implementation
	virtual void reset() override {
		if (vtbl->reset == 0) {
			QColumnView::reset();
			return;
		}


		vtbl->reset(vtbl, this);

	}

	friend void QColumnView_virtualbase_reset(void* self);

	// Subclass to allow providing a Go implementation
	virtual void doItemsLayout() override {
		if (vtbl->doItemsLayout == 0) {
			QColumnView::doItemsLayout();
			return;
		}


		vtbl->doItemsLayout(vtbl, this);

	}

	friend void QColumnView_virtualbase_doItemsLayout(void* self);

	// Subclass to allow providing a Go implementation
	virtual void dataChanged(const QModelIndex& topLeft, const QModelIndex& bottomRight, const QList<int>& roles) override {
		if (vtbl->dataChanged == 0) {
			QColumnView::dataChanged(topLeft, bottomRight, roles);
			return;
		}

		const QModelIndex& topLeft_ret = topLeft;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&topLeft_ret);
		const QModelIndex& bottomRight_ret = bottomRight;
		// Cast returned reference into pointer
		QModelIndex* sigval2 = const_cast<QModelIndex*>(&bottomRight_ret);
		const QList<int>& roles_ret = roles;
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

	friend void QColumnView_virtualbase_dataChanged(void* self, QModelIndex* topLeft, QModelIndex* bottomRight, struct miqt_array /* of int */  roles);

	// Subclass to allow providing a Go implementation
	virtual void rowsAboutToBeRemoved(const QModelIndex& parent, int start, int end) override {
		if (vtbl->rowsAboutToBeRemoved == 0) {
			QColumnView::rowsAboutToBeRemoved(parent, start, end);
			return;
		}

		const QModelIndex& parent_ret = parent;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&parent_ret);
		int sigval2 = start;
		int sigval3 = end;

		vtbl->rowsAboutToBeRemoved(vtbl, this, sigval1, sigval2, sigval3);

	}

	friend void QColumnView_virtualbase_rowsAboutToBeRemoved(void* self, QModelIndex* parent, int start, int end);

	// Subclass to allow providing a Go implementation
	virtual void selectionChanged(const QItemSelection& selected, const QItemSelection& deselected) override {
		if (vtbl->selectionChanged == 0) {
			QColumnView::selectionChanged(selected, deselected);
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

	friend void QColumnView_virtualbase_selectionChanged(void* self, QItemSelection* selected, QItemSelection* deselected);

	// Subclass to allow providing a Go implementation
	virtual void updateEditorData() override {
		if (vtbl->updateEditorData == 0) {
			QColumnView::updateEditorData();
			return;
		}


		vtbl->updateEditorData(vtbl, this);

	}

	friend void QColumnView_virtualbase_updateEditorData(void* self);

	// Subclass to allow providing a Go implementation
	virtual void updateEditorGeometries() override {
		if (vtbl->updateEditorGeometries == 0) {
			QColumnView::updateEditorGeometries();
			return;
		}


		vtbl->updateEditorGeometries(vtbl, this);

	}

	friend void QColumnView_virtualbase_updateEditorGeometries(void* self);

	// Subclass to allow providing a Go implementation
	virtual void updateGeometries() override {
		if (vtbl->updateGeometries == 0) {
			QColumnView::updateGeometries();
			return;
		}


		vtbl->updateGeometries(vtbl, this);

	}

	friend void QColumnView_virtualbase_updateGeometries(void* self);

	// Subclass to allow providing a Go implementation
	virtual void verticalScrollbarAction(int action) override {
		if (vtbl->verticalScrollbarAction == 0) {
			QColumnView::verticalScrollbarAction(action);
			return;
		}

		int sigval1 = action;

		vtbl->verticalScrollbarAction(vtbl, this, sigval1);

	}

	friend void QColumnView_virtualbase_verticalScrollbarAction(void* self, int action);

	// Subclass to allow providing a Go implementation
	virtual void horizontalScrollbarAction(int action) override {
		if (vtbl->horizontalScrollbarAction == 0) {
			QColumnView::horizontalScrollbarAction(action);
			return;
		}

		int sigval1 = action;

		vtbl->horizontalScrollbarAction(vtbl, this, sigval1);

	}

	friend void QColumnView_virtualbase_horizontalScrollbarAction(void* self, int action);

	// Subclass to allow providing a Go implementation
	virtual void verticalScrollbarValueChanged(int value) override {
		if (vtbl->verticalScrollbarValueChanged == 0) {
			QColumnView::verticalScrollbarValueChanged(value);
			return;
		}

		int sigval1 = value;

		vtbl->verticalScrollbarValueChanged(vtbl, this, sigval1);

	}

	friend void QColumnView_virtualbase_verticalScrollbarValueChanged(void* self, int value);

	// Subclass to allow providing a Go implementation
	virtual void horizontalScrollbarValueChanged(int value) override {
		if (vtbl->horizontalScrollbarValueChanged == 0) {
			QColumnView::horizontalScrollbarValueChanged(value);
			return;
		}

		int sigval1 = value;

		vtbl->horizontalScrollbarValueChanged(vtbl, this, sigval1);

	}

	friend void QColumnView_virtualbase_horizontalScrollbarValueChanged(void* self, int value);

	// Subclass to allow providing a Go implementation
	virtual void closeEditor(QWidget* editor, QAbstractItemDelegate::EndEditHint hint) override {
		if (vtbl->closeEditor == 0) {
			QColumnView::closeEditor(editor, hint);
			return;
		}

		QWidget* sigval1 = editor;
		QAbstractItemDelegate::EndEditHint hint_ret = hint;
		int sigval2 = static_cast<int>(hint_ret);

		vtbl->closeEditor(vtbl, this, sigval1, sigval2);

	}

	friend void QColumnView_virtualbase_closeEditor(void* self, QWidget* editor, int hint);

	// Subclass to allow providing a Go implementation
	virtual void commitData(QWidget* editor) override {
		if (vtbl->commitData == 0) {
			QColumnView::commitData(editor);
			return;
		}

		QWidget* sigval1 = editor;

		vtbl->commitData(vtbl, this, sigval1);

	}

	friend void QColumnView_virtualbase_commitData(void* self, QWidget* editor);

	// Subclass to allow providing a Go implementation
	virtual void editorDestroyed(QObject* editor) override {
		if (vtbl->editorDestroyed == 0) {
			QColumnView::editorDestroyed(editor);
			return;
		}

		QObject* sigval1 = editor;

		vtbl->editorDestroyed(vtbl, this, sigval1);

	}

	friend void QColumnView_virtualbase_editorDestroyed(void* self, QObject* editor);

	// Subclass to allow providing a Go implementation
	virtual QModelIndexList selectedIndexes() const override {
		if (vtbl->selectedIndexes == 0) {
			return QColumnView::selectedIndexes();
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

	friend struct miqt_array /* of QModelIndex* */  QColumnView_virtualbase_selectedIndexes(const void* self);

	// Subclass to allow providing a Go implementation
	virtual bool edit(const QModelIndex& index, QAbstractItemView::EditTrigger trigger, QEvent* event) override {
		if (vtbl->edit2 == 0) {
			return QColumnView::edit(index, trigger, event);
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

	friend bool QColumnView_virtualbase_edit2(void* self, QModelIndex* index, int trigger, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual QItemSelectionModel::SelectionFlags selectionCommand(const QModelIndex& index, const QEvent* event) const override {
		if (vtbl->selectionCommand == 0) {
			return QColumnView::selectionCommand(index, event);
		}

		const QModelIndex& index_ret = index;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&index_ret);
		QEvent* sigval2 = (QEvent*) event;

		int callback_return_value = vtbl->selectionCommand(vtbl, this, sigval1, sigval2);

		return static_cast<QItemSelectionModel::SelectionFlags>(callback_return_value);
	}

	friend int QColumnView_virtualbase_selectionCommand(const void* self, QModelIndex* index, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void startDrag(Qt::DropActions supportedActions) override {
		if (vtbl->startDrag == 0) {
			QColumnView::startDrag(supportedActions);
			return;
		}

		Qt::DropActions supportedActions_ret = supportedActions;
		int sigval1 = static_cast<int>(supportedActions_ret);

		vtbl->startDrag(vtbl, this, sigval1);

	}

	friend void QColumnView_virtualbase_startDrag(void* self, int supportedActions);

	// Subclass to allow providing a Go implementation
	virtual void initViewItemOption(QStyleOptionViewItem* option) const override {
		if (vtbl->initViewItemOption == 0) {
			QColumnView::initViewItemOption(option);
			return;
		}

		QStyleOptionViewItem* sigval1 = option;

		vtbl->initViewItemOption(vtbl, this, sigval1);

	}

	friend void QColumnView_virtualbase_initViewItemOption(const void* self, QStyleOptionViewItem* option);

	// Subclass to allow providing a Go implementation
	virtual bool focusNextPrevChild(bool next) override {
		if (vtbl->focusNextPrevChild == 0) {
			return QColumnView::focusNextPrevChild(next);
		}

		bool sigval1 = next;

		bool callback_return_value = vtbl->focusNextPrevChild(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend bool QColumnView_virtualbase_focusNextPrevChild(void* self, bool next);

	// Subclass to allow providing a Go implementation
	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QColumnView::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend bool QColumnView_virtualbase_event(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual bool viewportEvent(QEvent* event) override {
		if (vtbl->viewportEvent == 0) {
			return QColumnView::viewportEvent(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->viewportEvent(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend bool QColumnView_virtualbase_viewportEvent(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void mousePressEvent(QMouseEvent* event) override {
		if (vtbl->mousePressEvent == 0) {
			QColumnView::mousePressEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mousePressEvent(vtbl, this, sigval1);

	}

	friend void QColumnView_virtualbase_mousePressEvent(void* self, QMouseEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void mouseMoveEvent(QMouseEvent* event) override {
		if (vtbl->mouseMoveEvent == 0) {
			QColumnView::mouseMoveEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseMoveEvent(vtbl, this, sigval1);

	}

	friend void QColumnView_virtualbase_mouseMoveEvent(void* self, QMouseEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void mouseReleaseEvent(QMouseEvent* event) override {
		if (vtbl->mouseReleaseEvent == 0) {
			QColumnView::mouseReleaseEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseReleaseEvent(vtbl, this, sigval1);

	}

	friend void QColumnView_virtualbase_mouseReleaseEvent(void* self, QMouseEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void mouseDoubleClickEvent(QMouseEvent* event) override {
		if (vtbl->mouseDoubleClickEvent == 0) {
			QColumnView::mouseDoubleClickEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseDoubleClickEvent(vtbl, this, sigval1);

	}

	friend void QColumnView_virtualbase_mouseDoubleClickEvent(void* self, QMouseEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void dragEnterEvent(QDragEnterEvent* event) override {
		if (vtbl->dragEnterEvent == 0) {
			QColumnView::dragEnterEvent(event);
			return;
		}

		QDragEnterEvent* sigval1 = event;

		vtbl->dragEnterEvent(vtbl, this, sigval1);

	}

	friend void QColumnView_virtualbase_dragEnterEvent(void* self, QDragEnterEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void dragMoveEvent(QDragMoveEvent* event) override {
		if (vtbl->dragMoveEvent == 0) {
			QColumnView::dragMoveEvent(event);
			return;
		}

		QDragMoveEvent* sigval1 = event;

		vtbl->dragMoveEvent(vtbl, this, sigval1);

	}

	friend void QColumnView_virtualbase_dragMoveEvent(void* self, QDragMoveEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void dragLeaveEvent(QDragLeaveEvent* event) override {
		if (vtbl->dragLeaveEvent == 0) {
			QColumnView::dragLeaveEvent(event);
			return;
		}

		QDragLeaveEvent* sigval1 = event;

		vtbl->dragLeaveEvent(vtbl, this, sigval1);

	}

	friend void QColumnView_virtualbase_dragLeaveEvent(void* self, QDragLeaveEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void dropEvent(QDropEvent* event) override {
		if (vtbl->dropEvent == 0) {
			QColumnView::dropEvent(event);
			return;
		}

		QDropEvent* sigval1 = event;

		vtbl->dropEvent(vtbl, this, sigval1);

	}

	friend void QColumnView_virtualbase_dropEvent(void* self, QDropEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void focusInEvent(QFocusEvent* event) override {
		if (vtbl->focusInEvent == 0) {
			QColumnView::focusInEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;

		vtbl->focusInEvent(vtbl, this, sigval1);

	}

	friend void QColumnView_virtualbase_focusInEvent(void* self, QFocusEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void focusOutEvent(QFocusEvent* event) override {
		if (vtbl->focusOutEvent == 0) {
			QColumnView::focusOutEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;

		vtbl->focusOutEvent(vtbl, this, sigval1);

	}

	friend void QColumnView_virtualbase_focusOutEvent(void* self, QFocusEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void keyPressEvent(QKeyEvent* event) override {
		if (vtbl->keyPressEvent == 0) {
			QColumnView::keyPressEvent(event);
			return;
		}

		QKeyEvent* sigval1 = event;

		vtbl->keyPressEvent(vtbl, this, sigval1);

	}

	friend void QColumnView_virtualbase_keyPressEvent(void* self, QKeyEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QColumnView::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(vtbl, this, sigval1);

	}

	friend void QColumnView_virtualbase_timerEvent(void* self, QTimerEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void inputMethodEvent(QInputMethodEvent* event) override {
		if (vtbl->inputMethodEvent == 0) {
			QColumnView::inputMethodEvent(event);
			return;
		}

		QInputMethodEvent* sigval1 = event;

		vtbl->inputMethodEvent(vtbl, this, sigval1);

	}

	friend void QColumnView_virtualbase_inputMethodEvent(void* self, QInputMethodEvent* event);

	// Subclass to allow providing a Go implementation
	virtual bool eventFilter(QObject* object, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QColumnView::eventFilter(object, event);
		}

		QObject* sigval1 = object;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QColumnView_virtualbase_eventFilter(void* self, QObject* object, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual QSize viewportSizeHint() const override {
		if (vtbl->viewportSizeHint == 0) {
			return QColumnView::viewportSizeHint();
		}


		QSize* callback_return_value = vtbl->viewportSizeHint(vtbl, this);

		return *callback_return_value;
	}

	friend QSize* QColumnView_virtualbase_viewportSizeHint(const void* self);

	// Subclass to allow providing a Go implementation
	virtual QSize minimumSizeHint() const override {
		if (vtbl->minimumSizeHint == 0) {
			return QColumnView::minimumSizeHint();
		}


		QSize* callback_return_value = vtbl->minimumSizeHint(vtbl, this);

		return *callback_return_value;
	}

	friend QSize* QColumnView_virtualbase_minimumSizeHint(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void setupViewport(QWidget* viewport) override {
		if (vtbl->setupViewport == 0) {
			QColumnView::setupViewport(viewport);
			return;
		}

		QWidget* sigval1 = viewport;

		vtbl->setupViewport(vtbl, this, sigval1);

	}

	friend void QColumnView_virtualbase_setupViewport(void* self, QWidget* viewport);

	// Subclass to allow providing a Go implementation
	virtual void paintEvent(QPaintEvent* param1) override {
		if (vtbl->paintEvent == 0) {
			QColumnView::paintEvent(param1);
			return;
		}

		QPaintEvent* sigval1 = param1;

		vtbl->paintEvent(vtbl, this, sigval1);

	}

	friend void QColumnView_virtualbase_paintEvent(void* self, QPaintEvent* param1);

	// Subclass to allow providing a Go implementation
	virtual void wheelEvent(QWheelEvent* param1) override {
		if (vtbl->wheelEvent == 0) {
			QColumnView::wheelEvent(param1);
			return;
		}

		QWheelEvent* sigval1 = param1;

		vtbl->wheelEvent(vtbl, this, sigval1);

	}

	friend void QColumnView_virtualbase_wheelEvent(void* self, QWheelEvent* param1);

	// Subclass to allow providing a Go implementation
	virtual void contextMenuEvent(QContextMenuEvent* param1) override {
		if (vtbl->contextMenuEvent == 0) {
			QColumnView::contextMenuEvent(param1);
			return;
		}

		QContextMenuEvent* sigval1 = param1;

		vtbl->contextMenuEvent(vtbl, this, sigval1);

	}

	friend void QColumnView_virtualbase_contextMenuEvent(void* self, QContextMenuEvent* param1);

	// Subclass to allow providing a Go implementation
	virtual void changeEvent(QEvent* param1) override {
		if (vtbl->changeEvent == 0) {
			QColumnView::changeEvent(param1);
			return;
		}

		QEvent* sigval1 = param1;

		vtbl->changeEvent(vtbl, this, sigval1);

	}

	friend void QColumnView_virtualbase_changeEvent(void* self, QEvent* param1);

	// Subclass to allow providing a Go implementation
	virtual void initStyleOption(QStyleOptionFrame* option) const override {
		if (vtbl->initStyleOption == 0) {
			QColumnView::initStyleOption(option);
			return;
		}

		QStyleOptionFrame* sigval1 = option;

		vtbl->initStyleOption(vtbl, this, sigval1);

	}

	friend void QColumnView_virtualbase_initStyleOption(const void* self, QStyleOptionFrame* option);

	// Subclass to allow providing a Go implementation
	virtual int devType() const override {
		if (vtbl->devType == 0) {
			return QColumnView::devType();
		}


		int callback_return_value = vtbl->devType(vtbl, this);

		return static_cast<int>(callback_return_value);
	}

	friend int QColumnView_virtualbase_devType(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void setVisible(bool visible) override {
		if (vtbl->setVisible == 0) {
			QColumnView::setVisible(visible);
			return;
		}

		bool sigval1 = visible;

		vtbl->setVisible(vtbl, this, sigval1);

	}

	friend void QColumnView_virtualbase_setVisible(void* self, bool visible);

	// Subclass to allow providing a Go implementation
	virtual int heightForWidth(int param1) const override {
		if (vtbl->heightForWidth == 0) {
			return QColumnView::heightForWidth(param1);
		}

		int sigval1 = param1;

		int callback_return_value = vtbl->heightForWidth(vtbl, this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QColumnView_virtualbase_heightForWidth(const void* self, int param1);

	// Subclass to allow providing a Go implementation
	virtual bool hasHeightForWidth() const override {
		if (vtbl->hasHeightForWidth == 0) {
			return QColumnView::hasHeightForWidth();
		}


		bool callback_return_value = vtbl->hasHeightForWidth(vtbl, this);

		return callback_return_value;
	}

	friend bool QColumnView_virtualbase_hasHeightForWidth(const void* self);

	// Subclass to allow providing a Go implementation
	virtual QPaintEngine* paintEngine() const override {
		if (vtbl->paintEngine == 0) {
			return QColumnView::paintEngine();
		}


		QPaintEngine* callback_return_value = vtbl->paintEngine(vtbl, this);

		return callback_return_value;
	}

	friend QPaintEngine* QColumnView_virtualbase_paintEngine(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void keyReleaseEvent(QKeyEvent* event) override {
		if (vtbl->keyReleaseEvent == 0) {
			QColumnView::keyReleaseEvent(event);
			return;
		}

		QKeyEvent* sigval1 = event;

		vtbl->keyReleaseEvent(vtbl, this, sigval1);

	}

	friend void QColumnView_virtualbase_keyReleaseEvent(void* self, QKeyEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void enterEvent(QEnterEvent* event) override {
		if (vtbl->enterEvent == 0) {
			QColumnView::enterEvent(event);
			return;
		}

		QEnterEvent* sigval1 = event;

		vtbl->enterEvent(vtbl, this, sigval1);

	}

	friend void QColumnView_virtualbase_enterEvent(void* self, QEnterEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void leaveEvent(QEvent* event) override {
		if (vtbl->leaveEvent == 0) {
			QColumnView::leaveEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->leaveEvent(vtbl, this, sigval1);

	}

	friend void QColumnView_virtualbase_leaveEvent(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void moveEvent(QMoveEvent* event) override {
		if (vtbl->moveEvent == 0) {
			QColumnView::moveEvent(event);
			return;
		}

		QMoveEvent* sigval1 = event;

		vtbl->moveEvent(vtbl, this, sigval1);

	}

	friend void QColumnView_virtualbase_moveEvent(void* self, QMoveEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void closeEvent(QCloseEvent* event) override {
		if (vtbl->closeEvent == 0) {
			QColumnView::closeEvent(event);
			return;
		}

		QCloseEvent* sigval1 = event;

		vtbl->closeEvent(vtbl, this, sigval1);

	}

	friend void QColumnView_virtualbase_closeEvent(void* self, QCloseEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void tabletEvent(QTabletEvent* event) override {
		if (vtbl->tabletEvent == 0) {
			QColumnView::tabletEvent(event);
			return;
		}

		QTabletEvent* sigval1 = event;

		vtbl->tabletEvent(vtbl, this, sigval1);

	}

	friend void QColumnView_virtualbase_tabletEvent(void* self, QTabletEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void actionEvent(QActionEvent* event) override {
		if (vtbl->actionEvent == 0) {
			QColumnView::actionEvent(event);
			return;
		}

		QActionEvent* sigval1 = event;

		vtbl->actionEvent(vtbl, this, sigval1);

	}

	friend void QColumnView_virtualbase_actionEvent(void* self, QActionEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void showEvent(QShowEvent* event) override {
		if (vtbl->showEvent == 0) {
			QColumnView::showEvent(event);
			return;
		}

		QShowEvent* sigval1 = event;

		vtbl->showEvent(vtbl, this, sigval1);

	}

	friend void QColumnView_virtualbase_showEvent(void* self, QShowEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void hideEvent(QHideEvent* event) override {
		if (vtbl->hideEvent == 0) {
			QColumnView::hideEvent(event);
			return;
		}

		QHideEvent* sigval1 = event;

		vtbl->hideEvent(vtbl, this, sigval1);

	}

	friend void QColumnView_virtualbase_hideEvent(void* self, QHideEvent* event);

	// Subclass to allow providing a Go implementation
	virtual bool nativeEvent(const QByteArray& eventType, void* message, qintptr* result) override {
		if (vtbl->nativeEvent == 0) {
			return QColumnView::nativeEvent(eventType, message, result);
		}

		const QByteArray eventType_qb = eventType;
		struct miqt_string eventType_ms;
		eventType_ms.len = eventType_qb.length();
		eventType_ms.data = static_cast<char*>(malloc(eventType_ms.len));
		memcpy(eventType_ms.data, eventType_qb.data(), eventType_ms.len);
		struct miqt_string sigval1 = eventType_ms;
		void* sigval2 = message;
		qintptr* result_ret = result;
		intptr_t* sigval3 = (intptr_t*)(result_ret);

		bool callback_return_value = vtbl->nativeEvent(vtbl, this, sigval1, sigval2, sigval3);

		return callback_return_value;
	}

	friend bool QColumnView_virtualbase_nativeEvent(void* self, struct miqt_string eventType, void* message, intptr_t* result);

	// Subclass to allow providing a Go implementation
	virtual int metric(QPaintDevice::PaintDeviceMetric param1) const override {
		if (vtbl->metric == 0) {
			return QColumnView::metric(param1);
		}

		QPaintDevice::PaintDeviceMetric param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);

		int callback_return_value = vtbl->metric(vtbl, this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QColumnView_virtualbase_metric(const void* self, int param1);

	// Subclass to allow providing a Go implementation
	virtual void initPainter(QPainter* painter) const override {
		if (vtbl->initPainter == 0) {
			QColumnView::initPainter(painter);
			return;
		}

		QPainter* sigval1 = painter;

		vtbl->initPainter(vtbl, this, sigval1);

	}

	friend void QColumnView_virtualbase_initPainter(const void* self, QPainter* painter);

	// Subclass to allow providing a Go implementation
	virtual QPaintDevice* redirected(QPoint* offset) const override {
		if (vtbl->redirected == 0) {
			return QColumnView::redirected(offset);
		}

		QPoint* sigval1 = offset;

		QPaintDevice* callback_return_value = vtbl->redirected(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend QPaintDevice* QColumnView_virtualbase_redirected(const void* self, QPoint* offset);

	// Subclass to allow providing a Go implementation
	virtual QPainter* sharedPainter() const override {
		if (vtbl->sharedPainter == 0) {
			return QColumnView::sharedPainter();
		}


		QPainter* callback_return_value = vtbl->sharedPainter(vtbl, this);

		return callback_return_value;
	}

	friend QPainter* QColumnView_virtualbase_sharedPainter(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QColumnView::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(vtbl, this, sigval1);

	}

	friend void QColumnView_virtualbase_childEvent(void* self, QChildEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QColumnView::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(vtbl, this, sigval1);

	}

	friend void QColumnView_virtualbase_customEvent(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QColumnView::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(vtbl, this, sigval1);

	}

	friend void QColumnView_virtualbase_connectNotify(void* self, QMetaMethod* signal);

	// Subclass to allow providing a Go implementation
	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QColumnView::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(vtbl, this, sigval1);

	}

	friend void QColumnView_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend void QColumnView_protectedbase_initializeColumn(bool* _dynamic_cast_ok, const void* self, QAbstractItemView* column);
	friend int QColumnView_protectedbase_state(bool* _dynamic_cast_ok, const void* self);
	friend void QColumnView_protectedbase_setState(bool* _dynamic_cast_ok, void* self, int state);
	friend void QColumnView_protectedbase_scheduleDelayedItemsLayout(bool* _dynamic_cast_ok, void* self);
	friend void QColumnView_protectedbase_executeDelayedItemsLayout(bool* _dynamic_cast_ok, void* self);
	friend void QColumnView_protectedbase_setDirtyRegion(bool* _dynamic_cast_ok, void* self, QRegion* region);
	friend void QColumnView_protectedbase_scrollDirtyRegion(bool* _dynamic_cast_ok, void* self, int dx, int dy);
	friend QPoint* QColumnView_protectedbase_dirtyRegionOffset(bool* _dynamic_cast_ok, const void* self);
	friend void QColumnView_protectedbase_startAutoScroll(bool* _dynamic_cast_ok, void* self);
	friend void QColumnView_protectedbase_stopAutoScroll(bool* _dynamic_cast_ok, void* self);
	friend void QColumnView_protectedbase_doAutoScroll(bool* _dynamic_cast_ok, void* self);
	friend int QColumnView_protectedbase_dropIndicatorPosition(bool* _dynamic_cast_ok, const void* self);
	friend void QColumnView_protectedbase_setViewportMargins(bool* _dynamic_cast_ok, void* self, int left, int top, int right, int bottom);
	friend QMargins* QColumnView_protectedbase_viewportMargins(bool* _dynamic_cast_ok, const void* self);
	friend void QColumnView_protectedbase_drawFrame(bool* _dynamic_cast_ok, void* self, QPainter* param1);
	friend void QColumnView_protectedbase_updateMicroFocus(bool* _dynamic_cast_ok, void* self);
	friend void QColumnView_protectedbase_create(bool* _dynamic_cast_ok, void* self);
	friend void QColumnView_protectedbase_destroy(bool* _dynamic_cast_ok, void* self);
	friend bool QColumnView_protectedbase_focusNextChild(bool* _dynamic_cast_ok, void* self);
	friend bool QColumnView_protectedbase_focusPreviousChild(bool* _dynamic_cast_ok, void* self);
	friend QObject* QColumnView_protectedbase_sender(bool* _dynamic_cast_ok, const void* self);
	friend int QColumnView_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self);
	friend int QColumnView_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal);
	friend bool QColumnView_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal);
};

QColumnView* QColumnView_new(struct QColumnView_VTable* vtbl, QWidget* parent) {
	return new VirtualQColumnView(vtbl, parent);
}

QColumnView* QColumnView_new2(struct QColumnView_VTable* vtbl) {
	return new VirtualQColumnView(vtbl);
}

void QColumnView_virtbase(QColumnView* src, QAbstractItemView** outptr_QAbstractItemView) {
	*outptr_QAbstractItemView = static_cast<QAbstractItemView*>(src);
}

QMetaObject* QColumnView_metaObject(const QColumnView* self) {
	return (QMetaObject*) self->metaObject();
}

void* QColumnView_metacast(QColumnView* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QColumnView_metacall(QColumnView* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QColumnView_tr(const char* s) {
	QString _ret = QColumnView::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QColumnView_updatePreviewWidget(QColumnView* self, QModelIndex* index) {
	self->updatePreviewWidget(*index);
}

void QColumnView_connect_updatePreviewWidget(QColumnView* self, intptr_t slot) {
	VirtualQColumnView::connect(self, static_cast<void (QColumnView::*)(const QModelIndex&)>(&QColumnView::updatePreviewWidget), self, [=](const QModelIndex& index) {
		const QModelIndex& index_ret = index;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&index_ret);
		miqt_exec_callback_QColumnView_updatePreviewWidget(slot, sigval1);
	});
}

QModelIndex* QColumnView_indexAt(const QColumnView* self, QPoint* point) {
	return new QModelIndex(self->indexAt(*point));
}

void QColumnView_scrollTo(QColumnView* self, QModelIndex* index, int hint) {
	self->scrollTo(*index, static_cast<QAbstractItemView::ScrollHint>(hint));
}

QSize* QColumnView_sizeHint(const QColumnView* self) {
	return new QSize(self->sizeHint());
}

QRect* QColumnView_visualRect(const QColumnView* self, QModelIndex* index) {
	return new QRect(self->visualRect(*index));
}

void QColumnView_setModel(QColumnView* self, QAbstractItemModel* model) {
	self->setModel(model);
}

void QColumnView_setSelectionModel(QColumnView* self, QItemSelectionModel* selectionModel) {
	self->setSelectionModel(selectionModel);
}

void QColumnView_setRootIndex(QColumnView* self, QModelIndex* index) {
	self->setRootIndex(*index);
}

void QColumnView_selectAll(QColumnView* self) {
	self->selectAll();
}

void QColumnView_setResizeGripsVisible(QColumnView* self, bool visible) {
	self->setResizeGripsVisible(visible);
}

bool QColumnView_resizeGripsVisible(const QColumnView* self) {
	return self->resizeGripsVisible();
}

QWidget* QColumnView_previewWidget(const QColumnView* self) {
	return self->previewWidget();
}

void QColumnView_setPreviewWidget(QColumnView* self, QWidget* widget) {
	self->setPreviewWidget(widget);
}

void QColumnView_setColumnWidths(QColumnView* self, struct miqt_array /* of int */  list) {
	QList<int> list_QList;
	list_QList.reserve(list.len);
	int* list_arr = static_cast<int*>(list.data);
	for(size_t i = 0; i < list.len; ++i) {
		list_QList.push_back(static_cast<int>(list_arr[i]));
	}
	self->setColumnWidths(list_QList);
}

struct miqt_array /* of int */  QColumnView_columnWidths(const QColumnView* self) {
	QList<int> _ret = self->columnWidths();
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

struct miqt_string QColumnView_tr2(const char* s, const char* c) {
	QString _ret = QColumnView::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QColumnView_tr3(const char* s, const char* c, int n) {
	QString _ret = QColumnView::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QMetaObject* QColumnView_virtualbase_metaObject(const void* self) {

	return (QMetaObject*) ( (const VirtualQColumnView*)(self) )->QColumnView::metaObject();

}

void* QColumnView_virtualbase_metacast(void* self, const char* param1) {

	return ( (VirtualQColumnView*)(self) )->QColumnView::qt_metacast(param1);

}

int QColumnView_virtualbase_metacall(void* self, int param1, int param2, void** param3) {

	return ( (VirtualQColumnView*)(self) )->QColumnView::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);

}

QModelIndex* QColumnView_virtualbase_indexAt(const void* self, QPoint* point) {

	return new QModelIndex(( (const VirtualQColumnView*)(self) )->QColumnView::indexAt(*point));

}

void QColumnView_virtualbase_scrollTo(void* self, QModelIndex* index, int hint) {

	( (VirtualQColumnView*)(self) )->QColumnView::scrollTo(*index, static_cast<VirtualQColumnView::ScrollHint>(hint));

}

QSize* QColumnView_virtualbase_sizeHint(const void* self) {

	return new QSize(( (const VirtualQColumnView*)(self) )->QColumnView::sizeHint());

}

QRect* QColumnView_virtualbase_visualRect(const void* self, QModelIndex* index) {

	return new QRect(( (const VirtualQColumnView*)(self) )->QColumnView::visualRect(*index));

}

void QColumnView_virtualbase_setModel(void* self, QAbstractItemModel* model) {

	( (VirtualQColumnView*)(self) )->QColumnView::setModel(model);

}

void QColumnView_virtualbase_setSelectionModel(void* self, QItemSelectionModel* selectionModel) {

	( (VirtualQColumnView*)(self) )->QColumnView::setSelectionModel(selectionModel);

}

void QColumnView_virtualbase_setRootIndex(void* self, QModelIndex* index) {

	( (VirtualQColumnView*)(self) )->QColumnView::setRootIndex(*index);

}

void QColumnView_virtualbase_selectAll(void* self) {

	( (VirtualQColumnView*)(self) )->QColumnView::selectAll();

}

bool QColumnView_virtualbase_isIndexHidden(const void* self, QModelIndex* index) {

	return ( (const VirtualQColumnView*)(self) )->QColumnView::isIndexHidden(*index);

}

QModelIndex* QColumnView_virtualbase_moveCursor(void* self, int cursorAction, int modifiers) {

	return new QModelIndex(( (VirtualQColumnView*)(self) )->QColumnView::moveCursor(static_cast<VirtualQColumnView::CursorAction>(cursorAction), static_cast<Qt::KeyboardModifiers>(modifiers)));

}

void QColumnView_virtualbase_resizeEvent(void* self, QResizeEvent* event) {

	( (VirtualQColumnView*)(self) )->QColumnView::resizeEvent(event);

}

void QColumnView_virtualbase_setSelection(void* self, QRect* rect, int command) {

	( (VirtualQColumnView*)(self) )->QColumnView::setSelection(*rect, static_cast<QItemSelectionModel::SelectionFlags>(command));

}

QRegion* QColumnView_virtualbase_visualRegionForSelection(const void* self, QItemSelection* selection) {

	return new QRegion(( (const VirtualQColumnView*)(self) )->QColumnView::visualRegionForSelection(*selection));

}

int QColumnView_virtualbase_horizontalOffset(const void* self) {

	return ( (const VirtualQColumnView*)(self) )->QColumnView::horizontalOffset();

}

int QColumnView_virtualbase_verticalOffset(const void* self) {

	return ( (const VirtualQColumnView*)(self) )->QColumnView::verticalOffset();

}

void QColumnView_virtualbase_rowsInserted(void* self, QModelIndex* parent, int start, int end) {

	( (VirtualQColumnView*)(self) )->QColumnView::rowsInserted(*parent, static_cast<int>(start), static_cast<int>(end));

}

void QColumnView_virtualbase_currentChanged(void* self, QModelIndex* current, QModelIndex* previous) {

	( (VirtualQColumnView*)(self) )->QColumnView::currentChanged(*current, *previous);

}

void QColumnView_virtualbase_scrollContentsBy(void* self, int dx, int dy) {

	( (VirtualQColumnView*)(self) )->QColumnView::scrollContentsBy(static_cast<int>(dx), static_cast<int>(dy));

}

QAbstractItemView* QColumnView_virtualbase_createColumn(void* self, QModelIndex* rootIndex) {

	return ( (VirtualQColumnView*)(self) )->QColumnView::createColumn(*rootIndex);

}

void QColumnView_virtualbase_keyboardSearch(void* self, struct miqt_string search) {
	QString search_QString = QString::fromUtf8(search.data, search.len);

	( (VirtualQColumnView*)(self) )->QColumnView::keyboardSearch(search_QString);

}

int QColumnView_virtualbase_sizeHintForRow(const void* self, int row) {

	return ( (const VirtualQColumnView*)(self) )->QColumnView::sizeHintForRow(static_cast<int>(row));

}

int QColumnView_virtualbase_sizeHintForColumn(const void* self, int column) {

	return ( (const VirtualQColumnView*)(self) )->QColumnView::sizeHintForColumn(static_cast<int>(column));

}

QAbstractItemDelegate* QColumnView_virtualbase_itemDelegateForIndex(const void* self, QModelIndex* index) {

	return ( (const VirtualQColumnView*)(self) )->QColumnView::itemDelegateForIndex(*index);

}

QVariant* QColumnView_virtualbase_inputMethodQuery(const void* self, int query) {

	return new QVariant(( (const VirtualQColumnView*)(self) )->QColumnView::inputMethodQuery(static_cast<Qt::InputMethodQuery>(query)));

}

void QColumnView_virtualbase_reset(void* self) {

	( (VirtualQColumnView*)(self) )->QColumnView::reset();

}

void QColumnView_virtualbase_doItemsLayout(void* self) {

	( (VirtualQColumnView*)(self) )->QColumnView::doItemsLayout();

}

void QColumnView_virtualbase_dataChanged(void* self, QModelIndex* topLeft, QModelIndex* bottomRight, struct miqt_array /* of int */  roles) {
	QList<int> roles_QList;
	roles_QList.reserve(roles.len);
	int* roles_arr = static_cast<int*>(roles.data);
	for(size_t i = 0; i < roles.len; ++i) {
		roles_QList.push_back(static_cast<int>(roles_arr[i]));
	}

	( (VirtualQColumnView*)(self) )->QColumnView::dataChanged(*topLeft, *bottomRight, roles_QList);

}

void QColumnView_virtualbase_rowsAboutToBeRemoved(void* self, QModelIndex* parent, int start, int end) {

	( (VirtualQColumnView*)(self) )->QColumnView::rowsAboutToBeRemoved(*parent, static_cast<int>(start), static_cast<int>(end));

}

void QColumnView_virtualbase_selectionChanged(void* self, QItemSelection* selected, QItemSelection* deselected) {

	( (VirtualQColumnView*)(self) )->QColumnView::selectionChanged(*selected, *deselected);

}

void QColumnView_virtualbase_updateEditorData(void* self) {

	( (VirtualQColumnView*)(self) )->QColumnView::updateEditorData();

}

void QColumnView_virtualbase_updateEditorGeometries(void* self) {

	( (VirtualQColumnView*)(self) )->QColumnView::updateEditorGeometries();

}

void QColumnView_virtualbase_updateGeometries(void* self) {

	( (VirtualQColumnView*)(self) )->QColumnView::updateGeometries();

}

void QColumnView_virtualbase_verticalScrollbarAction(void* self, int action) {

	( (VirtualQColumnView*)(self) )->QColumnView::verticalScrollbarAction(static_cast<int>(action));

}

void QColumnView_virtualbase_horizontalScrollbarAction(void* self, int action) {

	( (VirtualQColumnView*)(self) )->QColumnView::horizontalScrollbarAction(static_cast<int>(action));

}

void QColumnView_virtualbase_verticalScrollbarValueChanged(void* self, int value) {

	( (VirtualQColumnView*)(self) )->QColumnView::verticalScrollbarValueChanged(static_cast<int>(value));

}

void QColumnView_virtualbase_horizontalScrollbarValueChanged(void* self, int value) {

	( (VirtualQColumnView*)(self) )->QColumnView::horizontalScrollbarValueChanged(static_cast<int>(value));

}

void QColumnView_virtualbase_closeEditor(void* self, QWidget* editor, int hint) {

	( (VirtualQColumnView*)(self) )->QColumnView::closeEditor(editor, static_cast<QAbstractItemDelegate::EndEditHint>(hint));

}

void QColumnView_virtualbase_commitData(void* self, QWidget* editor) {

	( (VirtualQColumnView*)(self) )->QColumnView::commitData(editor);

}

void QColumnView_virtualbase_editorDestroyed(void* self, QObject* editor) {

	( (VirtualQColumnView*)(self) )->QColumnView::editorDestroyed(editor);

}

struct miqt_array /* of QModelIndex* */  QColumnView_virtualbase_selectedIndexes(const void* self) {

	QModelIndexList _ret = ( (const VirtualQColumnView*)(self) )->QColumnView::selectedIndexes();
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

bool QColumnView_virtualbase_edit2(void* self, QModelIndex* index, int trigger, QEvent* event) {

	return ( (VirtualQColumnView*)(self) )->QColumnView::edit(*index, static_cast<VirtualQColumnView::EditTrigger>(trigger), event);

}

int QColumnView_virtualbase_selectionCommand(const void* self, QModelIndex* index, QEvent* event) {

	QItemSelectionModel::SelectionFlags _ret = ( (const VirtualQColumnView*)(self) )->QColumnView::selectionCommand(*index, event);
	return static_cast<int>(_ret);

}

void QColumnView_virtualbase_startDrag(void* self, int supportedActions) {

	( (VirtualQColumnView*)(self) )->QColumnView::startDrag(static_cast<Qt::DropActions>(supportedActions));

}

void QColumnView_virtualbase_initViewItemOption(const void* self, QStyleOptionViewItem* option) {

	( (const VirtualQColumnView*)(self) )->QColumnView::initViewItemOption(option);

}

bool QColumnView_virtualbase_focusNextPrevChild(void* self, bool next) {

	return ( (VirtualQColumnView*)(self) )->QColumnView::focusNextPrevChild(next);

}

bool QColumnView_virtualbase_event(void* self, QEvent* event) {

	return ( (VirtualQColumnView*)(self) )->QColumnView::event(event);

}

bool QColumnView_virtualbase_viewportEvent(void* self, QEvent* event) {

	return ( (VirtualQColumnView*)(self) )->QColumnView::viewportEvent(event);

}

void QColumnView_virtualbase_mousePressEvent(void* self, QMouseEvent* event) {

	( (VirtualQColumnView*)(self) )->QColumnView::mousePressEvent(event);

}

void QColumnView_virtualbase_mouseMoveEvent(void* self, QMouseEvent* event) {

	( (VirtualQColumnView*)(self) )->QColumnView::mouseMoveEvent(event);

}

void QColumnView_virtualbase_mouseReleaseEvent(void* self, QMouseEvent* event) {

	( (VirtualQColumnView*)(self) )->QColumnView::mouseReleaseEvent(event);

}

void QColumnView_virtualbase_mouseDoubleClickEvent(void* self, QMouseEvent* event) {

	( (VirtualQColumnView*)(self) )->QColumnView::mouseDoubleClickEvent(event);

}

void QColumnView_virtualbase_dragEnterEvent(void* self, QDragEnterEvent* event) {

	( (VirtualQColumnView*)(self) )->QColumnView::dragEnterEvent(event);

}

void QColumnView_virtualbase_dragMoveEvent(void* self, QDragMoveEvent* event) {

	( (VirtualQColumnView*)(self) )->QColumnView::dragMoveEvent(event);

}

void QColumnView_virtualbase_dragLeaveEvent(void* self, QDragLeaveEvent* event) {

	( (VirtualQColumnView*)(self) )->QColumnView::dragLeaveEvent(event);

}

void QColumnView_virtualbase_dropEvent(void* self, QDropEvent* event) {

	( (VirtualQColumnView*)(self) )->QColumnView::dropEvent(event);

}

void QColumnView_virtualbase_focusInEvent(void* self, QFocusEvent* event) {

	( (VirtualQColumnView*)(self) )->QColumnView::focusInEvent(event);

}

void QColumnView_virtualbase_focusOutEvent(void* self, QFocusEvent* event) {

	( (VirtualQColumnView*)(self) )->QColumnView::focusOutEvent(event);

}

void QColumnView_virtualbase_keyPressEvent(void* self, QKeyEvent* event) {

	( (VirtualQColumnView*)(self) )->QColumnView::keyPressEvent(event);

}

void QColumnView_virtualbase_timerEvent(void* self, QTimerEvent* event) {

	( (VirtualQColumnView*)(self) )->QColumnView::timerEvent(event);

}

void QColumnView_virtualbase_inputMethodEvent(void* self, QInputMethodEvent* event) {

	( (VirtualQColumnView*)(self) )->QColumnView::inputMethodEvent(event);

}

bool QColumnView_virtualbase_eventFilter(void* self, QObject* object, QEvent* event) {

	return ( (VirtualQColumnView*)(self) )->QColumnView::eventFilter(object, event);

}

QSize* QColumnView_virtualbase_viewportSizeHint(const void* self) {

	return new QSize(( (const VirtualQColumnView*)(self) )->QColumnView::viewportSizeHint());

}

QSize* QColumnView_virtualbase_minimumSizeHint(const void* self) {

	return new QSize(( (const VirtualQColumnView*)(self) )->QColumnView::minimumSizeHint());

}

void QColumnView_virtualbase_setupViewport(void* self, QWidget* viewport) {

	( (VirtualQColumnView*)(self) )->QColumnView::setupViewport(viewport);

}

void QColumnView_virtualbase_paintEvent(void* self, QPaintEvent* param1) {

	( (VirtualQColumnView*)(self) )->QColumnView::paintEvent(param1);

}

void QColumnView_virtualbase_wheelEvent(void* self, QWheelEvent* param1) {

	( (VirtualQColumnView*)(self) )->QColumnView::wheelEvent(param1);

}

void QColumnView_virtualbase_contextMenuEvent(void* self, QContextMenuEvent* param1) {

	( (VirtualQColumnView*)(self) )->QColumnView::contextMenuEvent(param1);

}

void QColumnView_virtualbase_changeEvent(void* self, QEvent* param1) {

	( (VirtualQColumnView*)(self) )->QColumnView::changeEvent(param1);

}

void QColumnView_virtualbase_initStyleOption(const void* self, QStyleOptionFrame* option) {

	( (const VirtualQColumnView*)(self) )->QColumnView::initStyleOption(option);

}

int QColumnView_virtualbase_devType(const void* self) {

	return ( (const VirtualQColumnView*)(self) )->QColumnView::devType();

}

void QColumnView_virtualbase_setVisible(void* self, bool visible) {

	( (VirtualQColumnView*)(self) )->QColumnView::setVisible(visible);

}

int QColumnView_virtualbase_heightForWidth(const void* self, int param1) {

	return ( (const VirtualQColumnView*)(self) )->QColumnView::heightForWidth(static_cast<int>(param1));

}

bool QColumnView_virtualbase_hasHeightForWidth(const void* self) {

	return ( (const VirtualQColumnView*)(self) )->QColumnView::hasHeightForWidth();

}

QPaintEngine* QColumnView_virtualbase_paintEngine(const void* self) {

	return ( (const VirtualQColumnView*)(self) )->QColumnView::paintEngine();

}

void QColumnView_virtualbase_keyReleaseEvent(void* self, QKeyEvent* event) {

	( (VirtualQColumnView*)(self) )->QColumnView::keyReleaseEvent(event);

}

void QColumnView_virtualbase_enterEvent(void* self, QEnterEvent* event) {

	( (VirtualQColumnView*)(self) )->QColumnView::enterEvent(event);

}

void QColumnView_virtualbase_leaveEvent(void* self, QEvent* event) {

	( (VirtualQColumnView*)(self) )->QColumnView::leaveEvent(event);

}

void QColumnView_virtualbase_moveEvent(void* self, QMoveEvent* event) {

	( (VirtualQColumnView*)(self) )->QColumnView::moveEvent(event);

}

void QColumnView_virtualbase_closeEvent(void* self, QCloseEvent* event) {

	( (VirtualQColumnView*)(self) )->QColumnView::closeEvent(event);

}

void QColumnView_virtualbase_tabletEvent(void* self, QTabletEvent* event) {

	( (VirtualQColumnView*)(self) )->QColumnView::tabletEvent(event);

}

void QColumnView_virtualbase_actionEvent(void* self, QActionEvent* event) {

	( (VirtualQColumnView*)(self) )->QColumnView::actionEvent(event);

}

void QColumnView_virtualbase_showEvent(void* self, QShowEvent* event) {

	( (VirtualQColumnView*)(self) )->QColumnView::showEvent(event);

}

void QColumnView_virtualbase_hideEvent(void* self, QHideEvent* event) {

	( (VirtualQColumnView*)(self) )->QColumnView::hideEvent(event);

}

bool QColumnView_virtualbase_nativeEvent(void* self, struct miqt_string eventType, void* message, intptr_t* result) {
	QByteArray eventType_QByteArray(eventType.data, eventType.len);

	return ( (VirtualQColumnView*)(self) )->QColumnView::nativeEvent(eventType_QByteArray, message, (qintptr*)(result));

}

int QColumnView_virtualbase_metric(const void* self, int param1) {

	return ( (const VirtualQColumnView*)(self) )->QColumnView::metric(static_cast<VirtualQColumnView::PaintDeviceMetric>(param1));

}

void QColumnView_virtualbase_initPainter(const void* self, QPainter* painter) {

	( (const VirtualQColumnView*)(self) )->QColumnView::initPainter(painter);

}

QPaintDevice* QColumnView_virtualbase_redirected(const void* self, QPoint* offset) {

	return ( (const VirtualQColumnView*)(self) )->QColumnView::redirected(offset);

}

QPainter* QColumnView_virtualbase_sharedPainter(const void* self) {

	return ( (const VirtualQColumnView*)(self) )->QColumnView::sharedPainter();

}

void QColumnView_virtualbase_childEvent(void* self, QChildEvent* event) {

	( (VirtualQColumnView*)(self) )->QColumnView::childEvent(event);

}

void QColumnView_virtualbase_customEvent(void* self, QEvent* event) {

	( (VirtualQColumnView*)(self) )->QColumnView::customEvent(event);

}

void QColumnView_virtualbase_connectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQColumnView*)(self) )->QColumnView::connectNotify(*signal);

}

void QColumnView_virtualbase_disconnectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQColumnView*)(self) )->QColumnView::disconnectNotify(*signal);

}

const QMetaObject* QColumnView_staticMetaObject() { return &QColumnView::staticMetaObject; }
void QColumnView_protectedbase_initializeColumn(bool* _dynamic_cast_ok, const void* self, QAbstractItemView* column) {
	VirtualQColumnView* self_cast = dynamic_cast<VirtualQColumnView*>( (QColumnView*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->initializeColumn(column);

}

int QColumnView_protectedbase_state(bool* _dynamic_cast_ok, const void* self) {
	VirtualQColumnView* self_cast = dynamic_cast<VirtualQColumnView*>( (QColumnView*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return (int)(0);
	}
	
	*_dynamic_cast_ok = true;
	
	VirtualQColumnView::State _ret = self_cast->state();
	return static_cast<int>(_ret);

}

void QColumnView_protectedbase_setState(bool* _dynamic_cast_ok, void* self, int state) {
	VirtualQColumnView* self_cast = dynamic_cast<VirtualQColumnView*>( (QColumnView*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->setState(static_cast<VirtualQColumnView::State>(state));

}

void QColumnView_protectedbase_scheduleDelayedItemsLayout(bool* _dynamic_cast_ok, void* self) {
	VirtualQColumnView* self_cast = dynamic_cast<VirtualQColumnView*>( (QColumnView*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->scheduleDelayedItemsLayout();

}

void QColumnView_protectedbase_executeDelayedItemsLayout(bool* _dynamic_cast_ok, void* self) {
	VirtualQColumnView* self_cast = dynamic_cast<VirtualQColumnView*>( (QColumnView*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->executeDelayedItemsLayout();

}

void QColumnView_protectedbase_setDirtyRegion(bool* _dynamic_cast_ok, void* self, QRegion* region) {
	VirtualQColumnView* self_cast = dynamic_cast<VirtualQColumnView*>( (QColumnView*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->setDirtyRegion(*region);

}

void QColumnView_protectedbase_scrollDirtyRegion(bool* _dynamic_cast_ok, void* self, int dx, int dy) {
	VirtualQColumnView* self_cast = dynamic_cast<VirtualQColumnView*>( (QColumnView*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->scrollDirtyRegion(static_cast<int>(dx), static_cast<int>(dy));

}

QPoint* QColumnView_protectedbase_dirtyRegionOffset(bool* _dynamic_cast_ok, const void* self) {
	VirtualQColumnView* self_cast = dynamic_cast<VirtualQColumnView*>( (QColumnView*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return nullptr;
	}
	
	*_dynamic_cast_ok = true;
	
	return new QPoint(self_cast->dirtyRegionOffset());

}

void QColumnView_protectedbase_startAutoScroll(bool* _dynamic_cast_ok, void* self) {
	VirtualQColumnView* self_cast = dynamic_cast<VirtualQColumnView*>( (QColumnView*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->startAutoScroll();

}

void QColumnView_protectedbase_stopAutoScroll(bool* _dynamic_cast_ok, void* self) {
	VirtualQColumnView* self_cast = dynamic_cast<VirtualQColumnView*>( (QColumnView*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->stopAutoScroll();

}

void QColumnView_protectedbase_doAutoScroll(bool* _dynamic_cast_ok, void* self) {
	VirtualQColumnView* self_cast = dynamic_cast<VirtualQColumnView*>( (QColumnView*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->doAutoScroll();

}

int QColumnView_protectedbase_dropIndicatorPosition(bool* _dynamic_cast_ok, const void* self) {
	VirtualQColumnView* self_cast = dynamic_cast<VirtualQColumnView*>( (QColumnView*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return (int)(0);
	}
	
	*_dynamic_cast_ok = true;
	
	VirtualQColumnView::DropIndicatorPosition _ret = self_cast->dropIndicatorPosition();
	return static_cast<int>(_ret);

}

void QColumnView_protectedbase_setViewportMargins(bool* _dynamic_cast_ok, void* self, int left, int top, int right, int bottom) {
	VirtualQColumnView* self_cast = dynamic_cast<VirtualQColumnView*>( (QColumnView*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->setViewportMargins(static_cast<int>(left), static_cast<int>(top), static_cast<int>(right), static_cast<int>(bottom));

}

QMargins* QColumnView_protectedbase_viewportMargins(bool* _dynamic_cast_ok, const void* self) {
	VirtualQColumnView* self_cast = dynamic_cast<VirtualQColumnView*>( (QColumnView*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return nullptr;
	}
	
	*_dynamic_cast_ok = true;
	
	return new QMargins(self_cast->viewportMargins());

}

void QColumnView_protectedbase_drawFrame(bool* _dynamic_cast_ok, void* self, QPainter* param1) {
	VirtualQColumnView* self_cast = dynamic_cast<VirtualQColumnView*>( (QColumnView*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->drawFrame(param1);

}

void QColumnView_protectedbase_updateMicroFocus(bool* _dynamic_cast_ok, void* self) {
	VirtualQColumnView* self_cast = dynamic_cast<VirtualQColumnView*>( (QColumnView*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->updateMicroFocus();

}

void QColumnView_protectedbase_create(bool* _dynamic_cast_ok, void* self) {
	VirtualQColumnView* self_cast = dynamic_cast<VirtualQColumnView*>( (QColumnView*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->create();

}

void QColumnView_protectedbase_destroy(bool* _dynamic_cast_ok, void* self) {
	VirtualQColumnView* self_cast = dynamic_cast<VirtualQColumnView*>( (QColumnView*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->destroy();

}

bool QColumnView_protectedbase_focusNextChild(bool* _dynamic_cast_ok, void* self) {
	VirtualQColumnView* self_cast = dynamic_cast<VirtualQColumnView*>( (QColumnView*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return false;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->focusNextChild();

}

bool QColumnView_protectedbase_focusPreviousChild(bool* _dynamic_cast_ok, void* self) {
	VirtualQColumnView* self_cast = dynamic_cast<VirtualQColumnView*>( (QColumnView*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return false;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->focusPreviousChild();

}

QObject* QColumnView_protectedbase_sender(bool* _dynamic_cast_ok, const void* self) {
	VirtualQColumnView* self_cast = dynamic_cast<VirtualQColumnView*>( (QColumnView*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return nullptr;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->sender();

}

int QColumnView_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self) {
	VirtualQColumnView* self_cast = dynamic_cast<VirtualQColumnView*>( (QColumnView*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return 0;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->senderSignalIndex();

}

int QColumnView_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal) {
	VirtualQColumnView* self_cast = dynamic_cast<VirtualQColumnView*>( (QColumnView*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return 0;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->receivers(signal);

}

bool QColumnView_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal) {
	VirtualQColumnView* self_cast = dynamic_cast<VirtualQColumnView*>( (QColumnView*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return false;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->isSignalConnected(*signal);

}

void QColumnView_delete(QColumnView* self) {
	delete self;
}

