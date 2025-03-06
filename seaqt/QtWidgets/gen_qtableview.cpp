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
#include <QHeaderView>
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
#include <QTableView>
#include <QTabletEvent>
#include <QTimerEvent>
#include <QVariant>
#include <QWheelEvent>
#include <QWidget>
#include <qtableview.h>
#include "gen_qtableview.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
} /* extern C */
#endif

class VirtualQTableView final : public QTableView {
	struct QTableView_VTable* vtbl;
public:

	VirtualQTableView(struct QTableView_VTable* vtbl, QWidget* parent): QTableView(parent), vtbl(vtbl) {};
	VirtualQTableView(struct QTableView_VTable* vtbl): QTableView(), vtbl(vtbl) {};

	virtual ~VirtualQTableView() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QTableView::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(vtbl, this);

		return callback_return_value;
	}

	friend QMetaObject* QTableView_virtualbase_metaObject(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QTableView::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend void* QTableView_virtualbase_metacast(void* self, const char* param1);

	// Subclass to allow providing a Go implementation
	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QTableView::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(vtbl, this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QTableView_virtualbase_metacall(void* self, int param1, int param2, void** param3);

	// Subclass to allow providing a Go implementation
	virtual void setModel(QAbstractItemModel* model) override {
		if (vtbl->setModel == 0) {
			QTableView::setModel(model);
			return;
		}

		QAbstractItemModel* sigval1 = model;

		vtbl->setModel(vtbl, this, sigval1);

	}

	friend void QTableView_virtualbase_setModel(void* self, QAbstractItemModel* model);

	// Subclass to allow providing a Go implementation
	virtual void setRootIndex(const QModelIndex& index) override {
		if (vtbl->setRootIndex == 0) {
			QTableView::setRootIndex(index);
			return;
		}

		const QModelIndex& index_ret = index;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&index_ret);

		vtbl->setRootIndex(vtbl, this, sigval1);

	}

	friend void QTableView_virtualbase_setRootIndex(void* self, QModelIndex* index);

	// Subclass to allow providing a Go implementation
	virtual void setSelectionModel(QItemSelectionModel* selectionModel) override {
		if (vtbl->setSelectionModel == 0) {
			QTableView::setSelectionModel(selectionModel);
			return;
		}

		QItemSelectionModel* sigval1 = selectionModel;

		vtbl->setSelectionModel(vtbl, this, sigval1);

	}

	friend void QTableView_virtualbase_setSelectionModel(void* self, QItemSelectionModel* selectionModel);

	// Subclass to allow providing a Go implementation
	virtual void doItemsLayout() override {
		if (vtbl->doItemsLayout == 0) {
			QTableView::doItemsLayout();
			return;
		}


		vtbl->doItemsLayout(vtbl, this);

	}

	friend void QTableView_virtualbase_doItemsLayout(void* self);

	// Subclass to allow providing a Go implementation
	virtual QRect visualRect(const QModelIndex& index) const override {
		if (vtbl->visualRect == 0) {
			return QTableView::visualRect(index);
		}

		const QModelIndex& index_ret = index;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&index_ret);

		QRect* callback_return_value = vtbl->visualRect(vtbl, this, sigval1);

		return *callback_return_value;
	}

	friend QRect* QTableView_virtualbase_visualRect(const void* self, QModelIndex* index);

	// Subclass to allow providing a Go implementation
	virtual void scrollTo(const QModelIndex& index, QAbstractItemView::ScrollHint hint) override {
		if (vtbl->scrollTo == 0) {
			QTableView::scrollTo(index, hint);
			return;
		}

		const QModelIndex& index_ret = index;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&index_ret);
		QAbstractItemView::ScrollHint hint_ret = hint;
		int sigval2 = static_cast<int>(hint_ret);

		vtbl->scrollTo(vtbl, this, sigval1, sigval2);

	}

	friend void QTableView_virtualbase_scrollTo(void* self, QModelIndex* index, int hint);

	// Subclass to allow providing a Go implementation
	virtual QModelIndex indexAt(const QPoint& p) const override {
		if (vtbl->indexAt == 0) {
			return QTableView::indexAt(p);
		}

		const QPoint& p_ret = p;
		// Cast returned reference into pointer
		QPoint* sigval1 = const_cast<QPoint*>(&p_ret);

		QModelIndex* callback_return_value = vtbl->indexAt(vtbl, this, sigval1);

		return *callback_return_value;
	}

	friend QModelIndex* QTableView_virtualbase_indexAt(const void* self, QPoint* p);

	// Subclass to allow providing a Go implementation
	virtual void scrollContentsBy(int dx, int dy) override {
		if (vtbl->scrollContentsBy == 0) {
			QTableView::scrollContentsBy(dx, dy);
			return;
		}

		int sigval1 = dx;
		int sigval2 = dy;

		vtbl->scrollContentsBy(vtbl, this, sigval1, sigval2);

	}

	friend void QTableView_virtualbase_scrollContentsBy(void* self, int dx, int dy);

	// Subclass to allow providing a Go implementation
	virtual QStyleOptionViewItem viewOptions() const override {
		if (vtbl->viewOptions == 0) {
			return QTableView::viewOptions();
		}


		QStyleOptionViewItem* callback_return_value = vtbl->viewOptions(vtbl, this);

		return *callback_return_value;
	}

	friend QStyleOptionViewItem* QTableView_virtualbase_viewOptions(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void paintEvent(QPaintEvent* e) override {
		if (vtbl->paintEvent == 0) {
			QTableView::paintEvent(e);
			return;
		}

		QPaintEvent* sigval1 = e;

		vtbl->paintEvent(vtbl, this, sigval1);

	}

	friend void QTableView_virtualbase_paintEvent(void* self, QPaintEvent* e);

	// Subclass to allow providing a Go implementation
	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QTableView::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(vtbl, this, sigval1);

	}

	friend void QTableView_virtualbase_timerEvent(void* self, QTimerEvent* event);

	// Subclass to allow providing a Go implementation
	virtual int horizontalOffset() const override {
		if (vtbl->horizontalOffset == 0) {
			return QTableView::horizontalOffset();
		}


		int callback_return_value = vtbl->horizontalOffset(vtbl, this);

		return static_cast<int>(callback_return_value);
	}

	friend int QTableView_virtualbase_horizontalOffset(const void* self);

	// Subclass to allow providing a Go implementation
	virtual int verticalOffset() const override {
		if (vtbl->verticalOffset == 0) {
			return QTableView::verticalOffset();
		}


		int callback_return_value = vtbl->verticalOffset(vtbl, this);

		return static_cast<int>(callback_return_value);
	}

	friend int QTableView_virtualbase_verticalOffset(const void* self);

	// Subclass to allow providing a Go implementation
	virtual QModelIndex moveCursor(QAbstractItemView::CursorAction cursorAction, Qt::KeyboardModifiers modifiers) override {
		if (vtbl->moveCursor == 0) {
			return QTableView::moveCursor(cursorAction, modifiers);
		}

		QAbstractItemView::CursorAction cursorAction_ret = cursorAction;
		int sigval1 = static_cast<int>(cursorAction_ret);
		Qt::KeyboardModifiers modifiers_ret = modifiers;
		int sigval2 = static_cast<int>(modifiers_ret);

		QModelIndex* callback_return_value = vtbl->moveCursor(vtbl, this, sigval1, sigval2);

		return *callback_return_value;
	}

	friend QModelIndex* QTableView_virtualbase_moveCursor(void* self, int cursorAction, int modifiers);

	// Subclass to allow providing a Go implementation
	virtual void setSelection(const QRect& rect, QItemSelectionModel::SelectionFlags command) override {
		if (vtbl->setSelection == 0) {
			QTableView::setSelection(rect, command);
			return;
		}

		const QRect& rect_ret = rect;
		// Cast returned reference into pointer
		QRect* sigval1 = const_cast<QRect*>(&rect_ret);
		QItemSelectionModel::SelectionFlags command_ret = command;
		int sigval2 = static_cast<int>(command_ret);

		vtbl->setSelection(vtbl, this, sigval1, sigval2);

	}

	friend void QTableView_virtualbase_setSelection(void* self, QRect* rect, int command);

	// Subclass to allow providing a Go implementation
	virtual QRegion visualRegionForSelection(const QItemSelection& selection) const override {
		if (vtbl->visualRegionForSelection == 0) {
			return QTableView::visualRegionForSelection(selection);
		}

		const QItemSelection& selection_ret = selection;
		// Cast returned reference into pointer
		QItemSelection* sigval1 = const_cast<QItemSelection*>(&selection_ret);

		QRegion* callback_return_value = vtbl->visualRegionForSelection(vtbl, this, sigval1);

		return *callback_return_value;
	}

	friend QRegion* QTableView_virtualbase_visualRegionForSelection(const void* self, QItemSelection* selection);

	// Subclass to allow providing a Go implementation
	virtual QModelIndexList selectedIndexes() const override {
		if (vtbl->selectedIndexes == 0) {
			return QTableView::selectedIndexes();
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

	friend struct miqt_array /* of QModelIndex* */  QTableView_virtualbase_selectedIndexes(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void updateGeometries() override {
		if (vtbl->updateGeometries == 0) {
			QTableView::updateGeometries();
			return;
		}


		vtbl->updateGeometries(vtbl, this);

	}

	friend void QTableView_virtualbase_updateGeometries(void* self);

	// Subclass to allow providing a Go implementation
	virtual QSize viewportSizeHint() const override {
		if (vtbl->viewportSizeHint == 0) {
			return QTableView::viewportSizeHint();
		}


		QSize* callback_return_value = vtbl->viewportSizeHint(vtbl, this);

		return *callback_return_value;
	}

	friend QSize* QTableView_virtualbase_viewportSizeHint(const void* self);

	// Subclass to allow providing a Go implementation
	virtual int sizeHintForRow(int row) const override {
		if (vtbl->sizeHintForRow == 0) {
			return QTableView::sizeHintForRow(row);
		}

		int sigval1 = row;

		int callback_return_value = vtbl->sizeHintForRow(vtbl, this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QTableView_virtualbase_sizeHintForRow(const void* self, int row);

	// Subclass to allow providing a Go implementation
	virtual int sizeHintForColumn(int column) const override {
		if (vtbl->sizeHintForColumn == 0) {
			return QTableView::sizeHintForColumn(column);
		}

		int sigval1 = column;

		int callback_return_value = vtbl->sizeHintForColumn(vtbl, this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QTableView_virtualbase_sizeHintForColumn(const void* self, int column);

	// Subclass to allow providing a Go implementation
	virtual void verticalScrollbarAction(int action) override {
		if (vtbl->verticalScrollbarAction == 0) {
			QTableView::verticalScrollbarAction(action);
			return;
		}

		int sigval1 = action;

		vtbl->verticalScrollbarAction(vtbl, this, sigval1);

	}

	friend void QTableView_virtualbase_verticalScrollbarAction(void* self, int action);

	// Subclass to allow providing a Go implementation
	virtual void horizontalScrollbarAction(int action) override {
		if (vtbl->horizontalScrollbarAction == 0) {
			QTableView::horizontalScrollbarAction(action);
			return;
		}

		int sigval1 = action;

		vtbl->horizontalScrollbarAction(vtbl, this, sigval1);

	}

	friend void QTableView_virtualbase_horizontalScrollbarAction(void* self, int action);

	// Subclass to allow providing a Go implementation
	virtual bool isIndexHidden(const QModelIndex& index) const override {
		if (vtbl->isIndexHidden == 0) {
			return QTableView::isIndexHidden(index);
		}

		const QModelIndex& index_ret = index;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&index_ret);

		bool callback_return_value = vtbl->isIndexHidden(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend bool QTableView_virtualbase_isIndexHidden(const void* self, QModelIndex* index);

	// Subclass to allow providing a Go implementation
	virtual void selectionChanged(const QItemSelection& selected, const QItemSelection& deselected) override {
		if (vtbl->selectionChanged == 0) {
			QTableView::selectionChanged(selected, deselected);
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

	friend void QTableView_virtualbase_selectionChanged(void* self, QItemSelection* selected, QItemSelection* deselected);

	// Subclass to allow providing a Go implementation
	virtual void currentChanged(const QModelIndex& current, const QModelIndex& previous) override {
		if (vtbl->currentChanged == 0) {
			QTableView::currentChanged(current, previous);
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

	friend void QTableView_virtualbase_currentChanged(void* self, QModelIndex* current, QModelIndex* previous);

	// Subclass to allow providing a Go implementation
	virtual void keyboardSearch(const QString& search) override {
		if (vtbl->keyboardSearch == 0) {
			QTableView::keyboardSearch(search);
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

	friend void QTableView_virtualbase_keyboardSearch(void* self, struct miqt_string search);

	// Subclass to allow providing a Go implementation
	virtual QVariant inputMethodQuery(Qt::InputMethodQuery query) const override {
		if (vtbl->inputMethodQuery == 0) {
			return QTableView::inputMethodQuery(query);
		}

		Qt::InputMethodQuery query_ret = query;
		int sigval1 = static_cast<int>(query_ret);

		QVariant* callback_return_value = vtbl->inputMethodQuery(vtbl, this, sigval1);

		return *callback_return_value;
	}

	friend QVariant* QTableView_virtualbase_inputMethodQuery(const void* self, int query);

	// Subclass to allow providing a Go implementation
	virtual void reset() override {
		if (vtbl->reset == 0) {
			QTableView::reset();
			return;
		}


		vtbl->reset(vtbl, this);

	}

	friend void QTableView_virtualbase_reset(void* self);

	// Subclass to allow providing a Go implementation
	virtual void selectAll() override {
		if (vtbl->selectAll == 0) {
			QTableView::selectAll();
			return;
		}


		vtbl->selectAll(vtbl, this);

	}

	friend void QTableView_virtualbase_selectAll(void* self);

	// Subclass to allow providing a Go implementation
	virtual void dataChanged(const QModelIndex& topLeft, const QModelIndex& bottomRight, const QVector<int>& roles) override {
		if (vtbl->dataChanged == 0) {
			QTableView::dataChanged(topLeft, bottomRight, roles);
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

	friend void QTableView_virtualbase_dataChanged(void* self, QModelIndex* topLeft, QModelIndex* bottomRight, struct miqt_array /* of int */  roles);

	// Subclass to allow providing a Go implementation
	virtual void rowsInserted(const QModelIndex& parent, int start, int end) override {
		if (vtbl->rowsInserted == 0) {
			QTableView::rowsInserted(parent, start, end);
			return;
		}

		const QModelIndex& parent_ret = parent;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&parent_ret);
		int sigval2 = start;
		int sigval3 = end;

		vtbl->rowsInserted(vtbl, this, sigval1, sigval2, sigval3);

	}

	friend void QTableView_virtualbase_rowsInserted(void* self, QModelIndex* parent, int start, int end);

	// Subclass to allow providing a Go implementation
	virtual void rowsAboutToBeRemoved(const QModelIndex& parent, int start, int end) override {
		if (vtbl->rowsAboutToBeRemoved == 0) {
			QTableView::rowsAboutToBeRemoved(parent, start, end);
			return;
		}

		const QModelIndex& parent_ret = parent;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&parent_ret);
		int sigval2 = start;
		int sigval3 = end;

		vtbl->rowsAboutToBeRemoved(vtbl, this, sigval1, sigval2, sigval3);

	}

	friend void QTableView_virtualbase_rowsAboutToBeRemoved(void* self, QModelIndex* parent, int start, int end);

	// Subclass to allow providing a Go implementation
	virtual void updateEditorData() override {
		if (vtbl->updateEditorData == 0) {
			QTableView::updateEditorData();
			return;
		}


		vtbl->updateEditorData(vtbl, this);

	}

	friend void QTableView_virtualbase_updateEditorData(void* self);

	// Subclass to allow providing a Go implementation
	virtual void updateEditorGeometries() override {
		if (vtbl->updateEditorGeometries == 0) {
			QTableView::updateEditorGeometries();
			return;
		}


		vtbl->updateEditorGeometries(vtbl, this);

	}

	friend void QTableView_virtualbase_updateEditorGeometries(void* self);

	// Subclass to allow providing a Go implementation
	virtual void verticalScrollbarValueChanged(int value) override {
		if (vtbl->verticalScrollbarValueChanged == 0) {
			QTableView::verticalScrollbarValueChanged(value);
			return;
		}

		int sigval1 = value;

		vtbl->verticalScrollbarValueChanged(vtbl, this, sigval1);

	}

	friend void QTableView_virtualbase_verticalScrollbarValueChanged(void* self, int value);

	// Subclass to allow providing a Go implementation
	virtual void horizontalScrollbarValueChanged(int value) override {
		if (vtbl->horizontalScrollbarValueChanged == 0) {
			QTableView::horizontalScrollbarValueChanged(value);
			return;
		}

		int sigval1 = value;

		vtbl->horizontalScrollbarValueChanged(vtbl, this, sigval1);

	}

	friend void QTableView_virtualbase_horizontalScrollbarValueChanged(void* self, int value);

	// Subclass to allow providing a Go implementation
	virtual void closeEditor(QWidget* editor, QAbstractItemDelegate::EndEditHint hint) override {
		if (vtbl->closeEditor == 0) {
			QTableView::closeEditor(editor, hint);
			return;
		}

		QWidget* sigval1 = editor;
		QAbstractItemDelegate::EndEditHint hint_ret = hint;
		int sigval2 = static_cast<int>(hint_ret);

		vtbl->closeEditor(vtbl, this, sigval1, sigval2);

	}

	friend void QTableView_virtualbase_closeEditor(void* self, QWidget* editor, int hint);

	// Subclass to allow providing a Go implementation
	virtual void commitData(QWidget* editor) override {
		if (vtbl->commitData == 0) {
			QTableView::commitData(editor);
			return;
		}

		QWidget* sigval1 = editor;

		vtbl->commitData(vtbl, this, sigval1);

	}

	friend void QTableView_virtualbase_commitData(void* self, QWidget* editor);

	// Subclass to allow providing a Go implementation
	virtual void editorDestroyed(QObject* editor) override {
		if (vtbl->editorDestroyed == 0) {
			QTableView::editorDestroyed(editor);
			return;
		}

		QObject* sigval1 = editor;

		vtbl->editorDestroyed(vtbl, this, sigval1);

	}

	friend void QTableView_virtualbase_editorDestroyed(void* self, QObject* editor);

	// Subclass to allow providing a Go implementation
	virtual bool edit(const QModelIndex& index, QAbstractItemView::EditTrigger trigger, QEvent* event) override {
		if (vtbl->edit2 == 0) {
			return QTableView::edit(index, trigger, event);
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

	friend bool QTableView_virtualbase_edit2(void* self, QModelIndex* index, int trigger, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual QItemSelectionModel::SelectionFlags selectionCommand(const QModelIndex& index, const QEvent* event) const override {
		if (vtbl->selectionCommand == 0) {
			return QTableView::selectionCommand(index, event);
		}

		const QModelIndex& index_ret = index;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&index_ret);
		QEvent* sigval2 = (QEvent*) event;

		int callback_return_value = vtbl->selectionCommand(vtbl, this, sigval1, sigval2);

		return static_cast<QItemSelectionModel::SelectionFlags>(callback_return_value);
	}

	friend int QTableView_virtualbase_selectionCommand(const void* self, QModelIndex* index, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void startDrag(Qt::DropActions supportedActions) override {
		if (vtbl->startDrag == 0) {
			QTableView::startDrag(supportedActions);
			return;
		}

		Qt::DropActions supportedActions_ret = supportedActions;
		int sigval1 = static_cast<int>(supportedActions_ret);

		vtbl->startDrag(vtbl, this, sigval1);

	}

	friend void QTableView_virtualbase_startDrag(void* self, int supportedActions);

	// Subclass to allow providing a Go implementation
	virtual bool focusNextPrevChild(bool next) override {
		if (vtbl->focusNextPrevChild == 0) {
			return QTableView::focusNextPrevChild(next);
		}

		bool sigval1 = next;

		bool callback_return_value = vtbl->focusNextPrevChild(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend bool QTableView_virtualbase_focusNextPrevChild(void* self, bool next);

	// Subclass to allow providing a Go implementation
	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QTableView::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend bool QTableView_virtualbase_event(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual bool viewportEvent(QEvent* event) override {
		if (vtbl->viewportEvent == 0) {
			return QTableView::viewportEvent(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->viewportEvent(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend bool QTableView_virtualbase_viewportEvent(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void mousePressEvent(QMouseEvent* event) override {
		if (vtbl->mousePressEvent == 0) {
			QTableView::mousePressEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mousePressEvent(vtbl, this, sigval1);

	}

	friend void QTableView_virtualbase_mousePressEvent(void* self, QMouseEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void mouseMoveEvent(QMouseEvent* event) override {
		if (vtbl->mouseMoveEvent == 0) {
			QTableView::mouseMoveEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseMoveEvent(vtbl, this, sigval1);

	}

	friend void QTableView_virtualbase_mouseMoveEvent(void* self, QMouseEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void mouseReleaseEvent(QMouseEvent* event) override {
		if (vtbl->mouseReleaseEvent == 0) {
			QTableView::mouseReleaseEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseReleaseEvent(vtbl, this, sigval1);

	}

	friend void QTableView_virtualbase_mouseReleaseEvent(void* self, QMouseEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void mouseDoubleClickEvent(QMouseEvent* event) override {
		if (vtbl->mouseDoubleClickEvent == 0) {
			QTableView::mouseDoubleClickEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseDoubleClickEvent(vtbl, this, sigval1);

	}

	friend void QTableView_virtualbase_mouseDoubleClickEvent(void* self, QMouseEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void dragEnterEvent(QDragEnterEvent* event) override {
		if (vtbl->dragEnterEvent == 0) {
			QTableView::dragEnterEvent(event);
			return;
		}

		QDragEnterEvent* sigval1 = event;

		vtbl->dragEnterEvent(vtbl, this, sigval1);

	}

	friend void QTableView_virtualbase_dragEnterEvent(void* self, QDragEnterEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void dragMoveEvent(QDragMoveEvent* event) override {
		if (vtbl->dragMoveEvent == 0) {
			QTableView::dragMoveEvent(event);
			return;
		}

		QDragMoveEvent* sigval1 = event;

		vtbl->dragMoveEvent(vtbl, this, sigval1);

	}

	friend void QTableView_virtualbase_dragMoveEvent(void* self, QDragMoveEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void dragLeaveEvent(QDragLeaveEvent* event) override {
		if (vtbl->dragLeaveEvent == 0) {
			QTableView::dragLeaveEvent(event);
			return;
		}

		QDragLeaveEvent* sigval1 = event;

		vtbl->dragLeaveEvent(vtbl, this, sigval1);

	}

	friend void QTableView_virtualbase_dragLeaveEvent(void* self, QDragLeaveEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void dropEvent(QDropEvent* event) override {
		if (vtbl->dropEvent == 0) {
			QTableView::dropEvent(event);
			return;
		}

		QDropEvent* sigval1 = event;

		vtbl->dropEvent(vtbl, this, sigval1);

	}

	friend void QTableView_virtualbase_dropEvent(void* self, QDropEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void focusInEvent(QFocusEvent* event) override {
		if (vtbl->focusInEvent == 0) {
			QTableView::focusInEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;

		vtbl->focusInEvent(vtbl, this, sigval1);

	}

	friend void QTableView_virtualbase_focusInEvent(void* self, QFocusEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void focusOutEvent(QFocusEvent* event) override {
		if (vtbl->focusOutEvent == 0) {
			QTableView::focusOutEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;

		vtbl->focusOutEvent(vtbl, this, sigval1);

	}

	friend void QTableView_virtualbase_focusOutEvent(void* self, QFocusEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void keyPressEvent(QKeyEvent* event) override {
		if (vtbl->keyPressEvent == 0) {
			QTableView::keyPressEvent(event);
			return;
		}

		QKeyEvent* sigval1 = event;

		vtbl->keyPressEvent(vtbl, this, sigval1);

	}

	friend void QTableView_virtualbase_keyPressEvent(void* self, QKeyEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void resizeEvent(QResizeEvent* event) override {
		if (vtbl->resizeEvent == 0) {
			QTableView::resizeEvent(event);
			return;
		}

		QResizeEvent* sigval1 = event;

		vtbl->resizeEvent(vtbl, this, sigval1);

	}

	friend void QTableView_virtualbase_resizeEvent(void* self, QResizeEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void inputMethodEvent(QInputMethodEvent* event) override {
		if (vtbl->inputMethodEvent == 0) {
			QTableView::inputMethodEvent(event);
			return;
		}

		QInputMethodEvent* sigval1 = event;

		vtbl->inputMethodEvent(vtbl, this, sigval1);

	}

	friend void QTableView_virtualbase_inputMethodEvent(void* self, QInputMethodEvent* event);

	// Subclass to allow providing a Go implementation
	virtual bool eventFilter(QObject* object, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QTableView::eventFilter(object, event);
		}

		QObject* sigval1 = object;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QTableView_virtualbase_eventFilter(void* self, QObject* object, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual QSize minimumSizeHint() const override {
		if (vtbl->minimumSizeHint == 0) {
			return QTableView::minimumSizeHint();
		}


		QSize* callback_return_value = vtbl->minimumSizeHint(vtbl, this);

		return *callback_return_value;
	}

	friend QSize* QTableView_virtualbase_minimumSizeHint(const void* self);

	// Subclass to allow providing a Go implementation
	virtual QSize sizeHint() const override {
		if (vtbl->sizeHint == 0) {
			return QTableView::sizeHint();
		}


		QSize* callback_return_value = vtbl->sizeHint(vtbl, this);

		return *callback_return_value;
	}

	friend QSize* QTableView_virtualbase_sizeHint(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void setupViewport(QWidget* viewport) override {
		if (vtbl->setupViewport == 0) {
			QTableView::setupViewport(viewport);
			return;
		}

		QWidget* sigval1 = viewport;

		vtbl->setupViewport(vtbl, this, sigval1);

	}

	friend void QTableView_virtualbase_setupViewport(void* self, QWidget* viewport);

	// Subclass to allow providing a Go implementation
	virtual void wheelEvent(QWheelEvent* param1) override {
		if (vtbl->wheelEvent == 0) {
			QTableView::wheelEvent(param1);
			return;
		}

		QWheelEvent* sigval1 = param1;

		vtbl->wheelEvent(vtbl, this, sigval1);

	}

	friend void QTableView_virtualbase_wheelEvent(void* self, QWheelEvent* param1);

	// Subclass to allow providing a Go implementation
	virtual void contextMenuEvent(QContextMenuEvent* param1) override {
		if (vtbl->contextMenuEvent == 0) {
			QTableView::contextMenuEvent(param1);
			return;
		}

		QContextMenuEvent* sigval1 = param1;

		vtbl->contextMenuEvent(vtbl, this, sigval1);

	}

	friend void QTableView_virtualbase_contextMenuEvent(void* self, QContextMenuEvent* param1);

	// Subclass to allow providing a Go implementation
	virtual void changeEvent(QEvent* param1) override {
		if (vtbl->changeEvent == 0) {
			QTableView::changeEvent(param1);
			return;
		}

		QEvent* sigval1 = param1;

		vtbl->changeEvent(vtbl, this, sigval1);

	}

	friend void QTableView_virtualbase_changeEvent(void* self, QEvent* param1);

	// Subclass to allow providing a Go implementation
	virtual int devType() const override {
		if (vtbl->devType == 0) {
			return QTableView::devType();
		}


		int callback_return_value = vtbl->devType(vtbl, this);

		return static_cast<int>(callback_return_value);
	}

	friend int QTableView_virtualbase_devType(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void setVisible(bool visible) override {
		if (vtbl->setVisible == 0) {
			QTableView::setVisible(visible);
			return;
		}

		bool sigval1 = visible;

		vtbl->setVisible(vtbl, this, sigval1);

	}

	friend void QTableView_virtualbase_setVisible(void* self, bool visible);

	// Subclass to allow providing a Go implementation
	virtual int heightForWidth(int param1) const override {
		if (vtbl->heightForWidth == 0) {
			return QTableView::heightForWidth(param1);
		}

		int sigval1 = param1;

		int callback_return_value = vtbl->heightForWidth(vtbl, this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QTableView_virtualbase_heightForWidth(const void* self, int param1);

	// Subclass to allow providing a Go implementation
	virtual bool hasHeightForWidth() const override {
		if (vtbl->hasHeightForWidth == 0) {
			return QTableView::hasHeightForWidth();
		}


		bool callback_return_value = vtbl->hasHeightForWidth(vtbl, this);

		return callback_return_value;
	}

	friend bool QTableView_virtualbase_hasHeightForWidth(const void* self);

	// Subclass to allow providing a Go implementation
	virtual QPaintEngine* paintEngine() const override {
		if (vtbl->paintEngine == 0) {
			return QTableView::paintEngine();
		}


		QPaintEngine* callback_return_value = vtbl->paintEngine(vtbl, this);

		return callback_return_value;
	}

	friend QPaintEngine* QTableView_virtualbase_paintEngine(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void keyReleaseEvent(QKeyEvent* event) override {
		if (vtbl->keyReleaseEvent == 0) {
			QTableView::keyReleaseEvent(event);
			return;
		}

		QKeyEvent* sigval1 = event;

		vtbl->keyReleaseEvent(vtbl, this, sigval1);

	}

	friend void QTableView_virtualbase_keyReleaseEvent(void* self, QKeyEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void enterEvent(QEvent* event) override {
		if (vtbl->enterEvent == 0) {
			QTableView::enterEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->enterEvent(vtbl, this, sigval1);

	}

	friend void QTableView_virtualbase_enterEvent(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void leaveEvent(QEvent* event) override {
		if (vtbl->leaveEvent == 0) {
			QTableView::leaveEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->leaveEvent(vtbl, this, sigval1);

	}

	friend void QTableView_virtualbase_leaveEvent(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void moveEvent(QMoveEvent* event) override {
		if (vtbl->moveEvent == 0) {
			QTableView::moveEvent(event);
			return;
		}

		QMoveEvent* sigval1 = event;

		vtbl->moveEvent(vtbl, this, sigval1);

	}

	friend void QTableView_virtualbase_moveEvent(void* self, QMoveEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void closeEvent(QCloseEvent* event) override {
		if (vtbl->closeEvent == 0) {
			QTableView::closeEvent(event);
			return;
		}

		QCloseEvent* sigval1 = event;

		vtbl->closeEvent(vtbl, this, sigval1);

	}

	friend void QTableView_virtualbase_closeEvent(void* self, QCloseEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void tabletEvent(QTabletEvent* event) override {
		if (vtbl->tabletEvent == 0) {
			QTableView::tabletEvent(event);
			return;
		}

		QTabletEvent* sigval1 = event;

		vtbl->tabletEvent(vtbl, this, sigval1);

	}

	friend void QTableView_virtualbase_tabletEvent(void* self, QTabletEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void actionEvent(QActionEvent* event) override {
		if (vtbl->actionEvent == 0) {
			QTableView::actionEvent(event);
			return;
		}

		QActionEvent* sigval1 = event;

		vtbl->actionEvent(vtbl, this, sigval1);

	}

	friend void QTableView_virtualbase_actionEvent(void* self, QActionEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void showEvent(QShowEvent* event) override {
		if (vtbl->showEvent == 0) {
			QTableView::showEvent(event);
			return;
		}

		QShowEvent* sigval1 = event;

		vtbl->showEvent(vtbl, this, sigval1);

	}

	friend void QTableView_virtualbase_showEvent(void* self, QShowEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void hideEvent(QHideEvent* event) override {
		if (vtbl->hideEvent == 0) {
			QTableView::hideEvent(event);
			return;
		}

		QHideEvent* sigval1 = event;

		vtbl->hideEvent(vtbl, this, sigval1);

	}

	friend void QTableView_virtualbase_hideEvent(void* self, QHideEvent* event);

	// Subclass to allow providing a Go implementation
	virtual bool nativeEvent(const QByteArray& eventType, void* message, long* result) override {
		if (vtbl->nativeEvent == 0) {
			return QTableView::nativeEvent(eventType, message, result);
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

	friend bool QTableView_virtualbase_nativeEvent(void* self, struct miqt_string eventType, void* message, long* result);

	// Subclass to allow providing a Go implementation
	virtual int metric(QPaintDevice::PaintDeviceMetric param1) const override {
		if (vtbl->metric == 0) {
			return QTableView::metric(param1);
		}

		QPaintDevice::PaintDeviceMetric param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);

		int callback_return_value = vtbl->metric(vtbl, this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QTableView_virtualbase_metric(const void* self, int param1);

	// Subclass to allow providing a Go implementation
	virtual void initPainter(QPainter* painter) const override {
		if (vtbl->initPainter == 0) {
			QTableView::initPainter(painter);
			return;
		}

		QPainter* sigval1 = painter;

		vtbl->initPainter(vtbl, this, sigval1);

	}

	friend void QTableView_virtualbase_initPainter(const void* self, QPainter* painter);

	// Subclass to allow providing a Go implementation
	virtual QPaintDevice* redirected(QPoint* offset) const override {
		if (vtbl->redirected == 0) {
			return QTableView::redirected(offset);
		}

		QPoint* sigval1 = offset;

		QPaintDevice* callback_return_value = vtbl->redirected(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend QPaintDevice* QTableView_virtualbase_redirected(const void* self, QPoint* offset);

	// Subclass to allow providing a Go implementation
	virtual QPainter* sharedPainter() const override {
		if (vtbl->sharedPainter == 0) {
			return QTableView::sharedPainter();
		}


		QPainter* callback_return_value = vtbl->sharedPainter(vtbl, this);

		return callback_return_value;
	}

	friend QPainter* QTableView_virtualbase_sharedPainter(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QTableView::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(vtbl, this, sigval1);

	}

	friend void QTableView_virtualbase_childEvent(void* self, QChildEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QTableView::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(vtbl, this, sigval1);

	}

	friend void QTableView_virtualbase_customEvent(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QTableView::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(vtbl, this, sigval1);

	}

	friend void QTableView_virtualbase_connectNotify(void* self, QMetaMethod* signal);

	// Subclass to allow providing a Go implementation
	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QTableView::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(vtbl, this, sigval1);

	}

	friend void QTableView_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend void QTableView_protectedbase_rowMoved(void* self, int row, int oldIndex, int newIndex);
	friend void QTableView_protectedbase_columnMoved(void* self, int column, int oldIndex, int newIndex);
	friend void QTableView_protectedbase_rowResized(void* self, int row, int oldHeight, int newHeight);
	friend void QTableView_protectedbase_columnResized(void* self, int column, int oldWidth, int newWidth);
	friend void QTableView_protectedbase_rowCountChanged(void* self, int oldCount, int newCount);
	friend void QTableView_protectedbase_columnCountChanged(void* self, int oldCount, int newCount);
	friend void QTableView_protectedbase_setHorizontalStepsPerItem(void* self, int steps);
	friend int QTableView_protectedbase_horizontalStepsPerItem(const void* self);
	friend void QTableView_protectedbase_setVerticalStepsPerItem(void* self, int steps);
	friend int QTableView_protectedbase_verticalStepsPerItem(const void* self);
	friend int QTableView_protectedbase_state(const void* self);
	friend void QTableView_protectedbase_setState(void* self, int state);
	friend void QTableView_protectedbase_scheduleDelayedItemsLayout(void* self);
	friend void QTableView_protectedbase_executeDelayedItemsLayout(void* self);
	friend void QTableView_protectedbase_setDirtyRegion(void* self, QRegion* region);
	friend void QTableView_protectedbase_scrollDirtyRegion(void* self, int dx, int dy);
	friend QPoint* QTableView_protectedbase_dirtyRegionOffset(const void* self);
	friend void QTableView_protectedbase_startAutoScroll(void* self);
	friend void QTableView_protectedbase_stopAutoScroll(void* self);
	friend void QTableView_protectedbase_doAutoScroll(void* self);
	friend int QTableView_protectedbase_dropIndicatorPosition(const void* self);
	friend void QTableView_protectedbase_setViewportMargins(void* self, int left, int top, int right, int bottom);
	friend QMargins* QTableView_protectedbase_viewportMargins(const void* self);
	friend void QTableView_protectedbase_drawFrame(void* self, QPainter* param1);
	friend void QTableView_protectedbase_initStyleOption(const void* self, QStyleOptionFrame* option);
	friend void QTableView_protectedbase_updateMicroFocus(void* self);
	friend void QTableView_protectedbase_create(void* self);
	friend void QTableView_protectedbase_destroy(void* self);
	friend bool QTableView_protectedbase_focusNextChild(void* self);
	friend bool QTableView_protectedbase_focusPreviousChild(void* self);
	friend QObject* QTableView_protectedbase_sender(const void* self);
	friend int QTableView_protectedbase_senderSignalIndex(const void* self);
	friend int QTableView_protectedbase_receivers(const void* self, const char* signal);
	friend bool QTableView_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal);
};

QTableView* QTableView_new(struct QTableView_VTable* vtbl, QWidget* parent) {
	return new VirtualQTableView(vtbl, parent);
}

QTableView* QTableView_new2(struct QTableView_VTable* vtbl) {
	return new VirtualQTableView(vtbl);
}

void QTableView_virtbase(QTableView* src, QAbstractItemView** outptr_QAbstractItemView) {
	*outptr_QAbstractItemView = static_cast<QAbstractItemView*>(src);
}

QMetaObject* QTableView_metaObject(const QTableView* self) {
	return (QMetaObject*) self->metaObject();
}

void* QTableView_metacast(QTableView* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QTableView_metacall(QTableView* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QTableView_tr(const char* s) {
	QString _ret = QTableView::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QTableView_trUtf8(const char* s) {
	QString _ret = QTableView::trUtf8(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QTableView_setModel(QTableView* self, QAbstractItemModel* model) {
	self->setModel(model);
}

void QTableView_setRootIndex(QTableView* self, QModelIndex* index) {
	self->setRootIndex(*index);
}

void QTableView_setSelectionModel(QTableView* self, QItemSelectionModel* selectionModel) {
	self->setSelectionModel(selectionModel);
}

void QTableView_doItemsLayout(QTableView* self) {
	self->doItemsLayout();
}

QHeaderView* QTableView_horizontalHeader(const QTableView* self) {
	return self->horizontalHeader();
}

QHeaderView* QTableView_verticalHeader(const QTableView* self) {
	return self->verticalHeader();
}

void QTableView_setHorizontalHeader(QTableView* self, QHeaderView* header) {
	self->setHorizontalHeader(header);
}

void QTableView_setVerticalHeader(QTableView* self, QHeaderView* header) {
	self->setVerticalHeader(header);
}

int QTableView_rowViewportPosition(const QTableView* self, int row) {
	return self->rowViewportPosition(static_cast<int>(row));
}

int QTableView_rowAt(const QTableView* self, int y) {
	return self->rowAt(static_cast<int>(y));
}

void QTableView_setRowHeight(QTableView* self, int row, int height) {
	self->setRowHeight(static_cast<int>(row), static_cast<int>(height));
}

int QTableView_rowHeight(const QTableView* self, int row) {
	return self->rowHeight(static_cast<int>(row));
}

int QTableView_columnViewportPosition(const QTableView* self, int column) {
	return self->columnViewportPosition(static_cast<int>(column));
}

int QTableView_columnAt(const QTableView* self, int x) {
	return self->columnAt(static_cast<int>(x));
}

void QTableView_setColumnWidth(QTableView* self, int column, int width) {
	self->setColumnWidth(static_cast<int>(column), static_cast<int>(width));
}

int QTableView_columnWidth(const QTableView* self, int column) {
	return self->columnWidth(static_cast<int>(column));
}

bool QTableView_isRowHidden(const QTableView* self, int row) {
	return self->isRowHidden(static_cast<int>(row));
}

void QTableView_setRowHidden(QTableView* self, int row, bool hide) {
	self->setRowHidden(static_cast<int>(row), hide);
}

bool QTableView_isColumnHidden(const QTableView* self, int column) {
	return self->isColumnHidden(static_cast<int>(column));
}

void QTableView_setColumnHidden(QTableView* self, int column, bool hide) {
	self->setColumnHidden(static_cast<int>(column), hide);
}

void QTableView_setSortingEnabled(QTableView* self, bool enable) {
	self->setSortingEnabled(enable);
}

bool QTableView_isSortingEnabled(const QTableView* self) {
	return self->isSortingEnabled();
}

bool QTableView_showGrid(const QTableView* self) {
	return self->showGrid();
}

int QTableView_gridStyle(const QTableView* self) {
	Qt::PenStyle _ret = self->gridStyle();
	return static_cast<int>(_ret);
}

void QTableView_setGridStyle(QTableView* self, int style) {
	self->setGridStyle(static_cast<Qt::PenStyle>(style));
}

void QTableView_setWordWrap(QTableView* self, bool on) {
	self->setWordWrap(on);
}

bool QTableView_wordWrap(const QTableView* self) {
	return self->wordWrap();
}

void QTableView_setCornerButtonEnabled(QTableView* self, bool enable) {
	self->setCornerButtonEnabled(enable);
}

bool QTableView_isCornerButtonEnabled(const QTableView* self) {
	return self->isCornerButtonEnabled();
}

QRect* QTableView_visualRect(const QTableView* self, QModelIndex* index) {
	return new QRect(self->visualRect(*index));
}

void QTableView_scrollTo(QTableView* self, QModelIndex* index, int hint) {
	self->scrollTo(*index, static_cast<QAbstractItemView::ScrollHint>(hint));
}

QModelIndex* QTableView_indexAt(const QTableView* self, QPoint* p) {
	return new QModelIndex(self->indexAt(*p));
}

void QTableView_setSpan(QTableView* self, int row, int column, int rowSpan, int columnSpan) {
	self->setSpan(static_cast<int>(row), static_cast<int>(column), static_cast<int>(rowSpan), static_cast<int>(columnSpan));
}

int QTableView_rowSpan(const QTableView* self, int row, int column) {
	return self->rowSpan(static_cast<int>(row), static_cast<int>(column));
}

int QTableView_columnSpan(const QTableView* self, int row, int column) {
	return self->columnSpan(static_cast<int>(row), static_cast<int>(column));
}

void QTableView_clearSpans(QTableView* self) {
	self->clearSpans();
}

void QTableView_selectRow(QTableView* self, int row) {
	self->selectRow(static_cast<int>(row));
}

void QTableView_selectColumn(QTableView* self, int column) {
	self->selectColumn(static_cast<int>(column));
}

void QTableView_hideRow(QTableView* self, int row) {
	self->hideRow(static_cast<int>(row));
}

void QTableView_hideColumn(QTableView* self, int column) {
	self->hideColumn(static_cast<int>(column));
}

void QTableView_showRow(QTableView* self, int row) {
	self->showRow(static_cast<int>(row));
}

void QTableView_showColumn(QTableView* self, int column) {
	self->showColumn(static_cast<int>(column));
}

void QTableView_resizeRowToContents(QTableView* self, int row) {
	self->resizeRowToContents(static_cast<int>(row));
}

void QTableView_resizeRowsToContents(QTableView* self) {
	self->resizeRowsToContents();
}

void QTableView_resizeColumnToContents(QTableView* self, int column) {
	self->resizeColumnToContents(static_cast<int>(column));
}

void QTableView_resizeColumnsToContents(QTableView* self) {
	self->resizeColumnsToContents();
}

void QTableView_sortByColumn(QTableView* self, int column) {
	self->sortByColumn(static_cast<int>(column));
}

void QTableView_sortByColumn2(QTableView* self, int column, int order) {
	self->sortByColumn(static_cast<int>(column), static_cast<Qt::SortOrder>(order));
}

void QTableView_setShowGrid(QTableView* self, bool show) {
	self->setShowGrid(show);
}

struct miqt_string QTableView_tr2(const char* s, const char* c) {
	QString _ret = QTableView::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QTableView_tr3(const char* s, const char* c, int n) {
	QString _ret = QTableView::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QTableView_trUtf82(const char* s, const char* c) {
	QString _ret = QTableView::trUtf8(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QTableView_trUtf83(const char* s, const char* c, int n) {
	QString _ret = QTableView::trUtf8(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QMetaObject* QTableView_virtualbase_metaObject(const void* self) {

	return (QMetaObject*) ( (const VirtualQTableView*)(self) )->QTableView::metaObject();

}

void* QTableView_virtualbase_metacast(void* self, const char* param1) {

	return ( (VirtualQTableView*)(self) )->QTableView::qt_metacast(param1);

}

int QTableView_virtualbase_metacall(void* self, int param1, int param2, void** param3) {

	return ( (VirtualQTableView*)(self) )->QTableView::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);

}

void QTableView_virtualbase_setModel(void* self, QAbstractItemModel* model) {

	( (VirtualQTableView*)(self) )->QTableView::setModel(model);

}

void QTableView_virtualbase_setRootIndex(void* self, QModelIndex* index) {

	( (VirtualQTableView*)(self) )->QTableView::setRootIndex(*index);

}

void QTableView_virtualbase_setSelectionModel(void* self, QItemSelectionModel* selectionModel) {

	( (VirtualQTableView*)(self) )->QTableView::setSelectionModel(selectionModel);

}

void QTableView_virtualbase_doItemsLayout(void* self) {

	( (VirtualQTableView*)(self) )->QTableView::doItemsLayout();

}

QRect* QTableView_virtualbase_visualRect(const void* self, QModelIndex* index) {

	return new QRect(( (const VirtualQTableView*)(self) )->QTableView::visualRect(*index));

}

void QTableView_virtualbase_scrollTo(void* self, QModelIndex* index, int hint) {

	( (VirtualQTableView*)(self) )->QTableView::scrollTo(*index, static_cast<VirtualQTableView::ScrollHint>(hint));

}

QModelIndex* QTableView_virtualbase_indexAt(const void* self, QPoint* p) {

	return new QModelIndex(( (const VirtualQTableView*)(self) )->QTableView::indexAt(*p));

}

void QTableView_virtualbase_scrollContentsBy(void* self, int dx, int dy) {

	( (VirtualQTableView*)(self) )->QTableView::scrollContentsBy(static_cast<int>(dx), static_cast<int>(dy));

}

QStyleOptionViewItem* QTableView_virtualbase_viewOptions(const void* self) {

	return new QStyleOptionViewItem(( (const VirtualQTableView*)(self) )->QTableView::viewOptions());

}

void QTableView_virtualbase_paintEvent(void* self, QPaintEvent* e) {

	( (VirtualQTableView*)(self) )->QTableView::paintEvent(e);

}

void QTableView_virtualbase_timerEvent(void* self, QTimerEvent* event) {

	( (VirtualQTableView*)(self) )->QTableView::timerEvent(event);

}

int QTableView_virtualbase_horizontalOffset(const void* self) {

	return ( (const VirtualQTableView*)(self) )->QTableView::horizontalOffset();

}

int QTableView_virtualbase_verticalOffset(const void* self) {

	return ( (const VirtualQTableView*)(self) )->QTableView::verticalOffset();

}

QModelIndex* QTableView_virtualbase_moveCursor(void* self, int cursorAction, int modifiers) {

	return new QModelIndex(( (VirtualQTableView*)(self) )->QTableView::moveCursor(static_cast<VirtualQTableView::CursorAction>(cursorAction), static_cast<Qt::KeyboardModifiers>(modifiers)));

}

void QTableView_virtualbase_setSelection(void* self, QRect* rect, int command) {

	( (VirtualQTableView*)(self) )->QTableView::setSelection(*rect, static_cast<QItemSelectionModel::SelectionFlags>(command));

}

QRegion* QTableView_virtualbase_visualRegionForSelection(const void* self, QItemSelection* selection) {

	return new QRegion(( (const VirtualQTableView*)(self) )->QTableView::visualRegionForSelection(*selection));

}

struct miqt_array /* of QModelIndex* */  QTableView_virtualbase_selectedIndexes(const void* self) {

	QModelIndexList _ret = ( (const VirtualQTableView*)(self) )->QTableView::selectedIndexes();
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

void QTableView_virtualbase_updateGeometries(void* self) {

	( (VirtualQTableView*)(self) )->QTableView::updateGeometries();

}

QSize* QTableView_virtualbase_viewportSizeHint(const void* self) {

	return new QSize(( (const VirtualQTableView*)(self) )->QTableView::viewportSizeHint());

}

int QTableView_virtualbase_sizeHintForRow(const void* self, int row) {

	return ( (const VirtualQTableView*)(self) )->QTableView::sizeHintForRow(static_cast<int>(row));

}

int QTableView_virtualbase_sizeHintForColumn(const void* self, int column) {

	return ( (const VirtualQTableView*)(self) )->QTableView::sizeHintForColumn(static_cast<int>(column));

}

void QTableView_virtualbase_verticalScrollbarAction(void* self, int action) {

	( (VirtualQTableView*)(self) )->QTableView::verticalScrollbarAction(static_cast<int>(action));

}

void QTableView_virtualbase_horizontalScrollbarAction(void* self, int action) {

	( (VirtualQTableView*)(self) )->QTableView::horizontalScrollbarAction(static_cast<int>(action));

}

bool QTableView_virtualbase_isIndexHidden(const void* self, QModelIndex* index) {

	return ( (const VirtualQTableView*)(self) )->QTableView::isIndexHidden(*index);

}

void QTableView_virtualbase_selectionChanged(void* self, QItemSelection* selected, QItemSelection* deselected) {

	( (VirtualQTableView*)(self) )->QTableView::selectionChanged(*selected, *deselected);

}

void QTableView_virtualbase_currentChanged(void* self, QModelIndex* current, QModelIndex* previous) {

	( (VirtualQTableView*)(self) )->QTableView::currentChanged(*current, *previous);

}

void QTableView_virtualbase_keyboardSearch(void* self, struct miqt_string search) {
	QString search_QString = QString::fromUtf8(search.data, search.len);

	( (VirtualQTableView*)(self) )->QTableView::keyboardSearch(search_QString);

}

QVariant* QTableView_virtualbase_inputMethodQuery(const void* self, int query) {

	return new QVariant(( (const VirtualQTableView*)(self) )->QTableView::inputMethodQuery(static_cast<Qt::InputMethodQuery>(query)));

}

void QTableView_virtualbase_reset(void* self) {

	( (VirtualQTableView*)(self) )->QTableView::reset();

}

void QTableView_virtualbase_selectAll(void* self) {

	( (VirtualQTableView*)(self) )->QTableView::selectAll();

}

void QTableView_virtualbase_dataChanged(void* self, QModelIndex* topLeft, QModelIndex* bottomRight, struct miqt_array /* of int */  roles) {
	QVector<int> roles_QList;
	roles_QList.reserve(roles.len);
	int* roles_arr = static_cast<int*>(roles.data);
	for(size_t i = 0; i < roles.len; ++i) {
		roles_QList.push_back(static_cast<int>(roles_arr[i]));
	}

	( (VirtualQTableView*)(self) )->QTableView::dataChanged(*topLeft, *bottomRight, roles_QList);

}

void QTableView_virtualbase_rowsInserted(void* self, QModelIndex* parent, int start, int end) {

	( (VirtualQTableView*)(self) )->QTableView::rowsInserted(*parent, static_cast<int>(start), static_cast<int>(end));

}

void QTableView_virtualbase_rowsAboutToBeRemoved(void* self, QModelIndex* parent, int start, int end) {

	( (VirtualQTableView*)(self) )->QTableView::rowsAboutToBeRemoved(*parent, static_cast<int>(start), static_cast<int>(end));

}

void QTableView_virtualbase_updateEditorData(void* self) {

	( (VirtualQTableView*)(self) )->QTableView::updateEditorData();

}

void QTableView_virtualbase_updateEditorGeometries(void* self) {

	( (VirtualQTableView*)(self) )->QTableView::updateEditorGeometries();

}

void QTableView_virtualbase_verticalScrollbarValueChanged(void* self, int value) {

	( (VirtualQTableView*)(self) )->QTableView::verticalScrollbarValueChanged(static_cast<int>(value));

}

void QTableView_virtualbase_horizontalScrollbarValueChanged(void* self, int value) {

	( (VirtualQTableView*)(self) )->QTableView::horizontalScrollbarValueChanged(static_cast<int>(value));

}

void QTableView_virtualbase_closeEditor(void* self, QWidget* editor, int hint) {

	( (VirtualQTableView*)(self) )->QTableView::closeEditor(editor, static_cast<QAbstractItemDelegate::EndEditHint>(hint));

}

void QTableView_virtualbase_commitData(void* self, QWidget* editor) {

	( (VirtualQTableView*)(self) )->QTableView::commitData(editor);

}

void QTableView_virtualbase_editorDestroyed(void* self, QObject* editor) {

	( (VirtualQTableView*)(self) )->QTableView::editorDestroyed(editor);

}

bool QTableView_virtualbase_edit2(void* self, QModelIndex* index, int trigger, QEvent* event) {

	return ( (VirtualQTableView*)(self) )->QTableView::edit(*index, static_cast<VirtualQTableView::EditTrigger>(trigger), event);

}

int QTableView_virtualbase_selectionCommand(const void* self, QModelIndex* index, QEvent* event) {

	QItemSelectionModel::SelectionFlags _ret = ( (const VirtualQTableView*)(self) )->QTableView::selectionCommand(*index, event);
	return static_cast<int>(_ret);

}

void QTableView_virtualbase_startDrag(void* self, int supportedActions) {

	( (VirtualQTableView*)(self) )->QTableView::startDrag(static_cast<Qt::DropActions>(supportedActions));

}

bool QTableView_virtualbase_focusNextPrevChild(void* self, bool next) {

	return ( (VirtualQTableView*)(self) )->QTableView::focusNextPrevChild(next);

}

bool QTableView_virtualbase_event(void* self, QEvent* event) {

	return ( (VirtualQTableView*)(self) )->QTableView::event(event);

}

bool QTableView_virtualbase_viewportEvent(void* self, QEvent* event) {

	return ( (VirtualQTableView*)(self) )->QTableView::viewportEvent(event);

}

void QTableView_virtualbase_mousePressEvent(void* self, QMouseEvent* event) {

	( (VirtualQTableView*)(self) )->QTableView::mousePressEvent(event);

}

void QTableView_virtualbase_mouseMoveEvent(void* self, QMouseEvent* event) {

	( (VirtualQTableView*)(self) )->QTableView::mouseMoveEvent(event);

}

void QTableView_virtualbase_mouseReleaseEvent(void* self, QMouseEvent* event) {

	( (VirtualQTableView*)(self) )->QTableView::mouseReleaseEvent(event);

}

void QTableView_virtualbase_mouseDoubleClickEvent(void* self, QMouseEvent* event) {

	( (VirtualQTableView*)(self) )->QTableView::mouseDoubleClickEvent(event);

}

void QTableView_virtualbase_dragEnterEvent(void* self, QDragEnterEvent* event) {

	( (VirtualQTableView*)(self) )->QTableView::dragEnterEvent(event);

}

void QTableView_virtualbase_dragMoveEvent(void* self, QDragMoveEvent* event) {

	( (VirtualQTableView*)(self) )->QTableView::dragMoveEvent(event);

}

void QTableView_virtualbase_dragLeaveEvent(void* self, QDragLeaveEvent* event) {

	( (VirtualQTableView*)(self) )->QTableView::dragLeaveEvent(event);

}

void QTableView_virtualbase_dropEvent(void* self, QDropEvent* event) {

	( (VirtualQTableView*)(self) )->QTableView::dropEvent(event);

}

void QTableView_virtualbase_focusInEvent(void* self, QFocusEvent* event) {

	( (VirtualQTableView*)(self) )->QTableView::focusInEvent(event);

}

void QTableView_virtualbase_focusOutEvent(void* self, QFocusEvent* event) {

	( (VirtualQTableView*)(self) )->QTableView::focusOutEvent(event);

}

void QTableView_virtualbase_keyPressEvent(void* self, QKeyEvent* event) {

	( (VirtualQTableView*)(self) )->QTableView::keyPressEvent(event);

}

void QTableView_virtualbase_resizeEvent(void* self, QResizeEvent* event) {

	( (VirtualQTableView*)(self) )->QTableView::resizeEvent(event);

}

void QTableView_virtualbase_inputMethodEvent(void* self, QInputMethodEvent* event) {

	( (VirtualQTableView*)(self) )->QTableView::inputMethodEvent(event);

}

bool QTableView_virtualbase_eventFilter(void* self, QObject* object, QEvent* event) {

	return ( (VirtualQTableView*)(self) )->QTableView::eventFilter(object, event);

}

QSize* QTableView_virtualbase_minimumSizeHint(const void* self) {

	return new QSize(( (const VirtualQTableView*)(self) )->QTableView::minimumSizeHint());

}

QSize* QTableView_virtualbase_sizeHint(const void* self) {

	return new QSize(( (const VirtualQTableView*)(self) )->QTableView::sizeHint());

}

void QTableView_virtualbase_setupViewport(void* self, QWidget* viewport) {

	( (VirtualQTableView*)(self) )->QTableView::setupViewport(viewport);

}

void QTableView_virtualbase_wheelEvent(void* self, QWheelEvent* param1) {

	( (VirtualQTableView*)(self) )->QTableView::wheelEvent(param1);

}

void QTableView_virtualbase_contextMenuEvent(void* self, QContextMenuEvent* param1) {

	( (VirtualQTableView*)(self) )->QTableView::contextMenuEvent(param1);

}

void QTableView_virtualbase_changeEvent(void* self, QEvent* param1) {

	( (VirtualQTableView*)(self) )->QTableView::changeEvent(param1);

}

int QTableView_virtualbase_devType(const void* self) {

	return ( (const VirtualQTableView*)(self) )->QTableView::devType();

}

void QTableView_virtualbase_setVisible(void* self, bool visible) {

	( (VirtualQTableView*)(self) )->QTableView::setVisible(visible);

}

int QTableView_virtualbase_heightForWidth(const void* self, int param1) {

	return ( (const VirtualQTableView*)(self) )->QTableView::heightForWidth(static_cast<int>(param1));

}

bool QTableView_virtualbase_hasHeightForWidth(const void* self) {

	return ( (const VirtualQTableView*)(self) )->QTableView::hasHeightForWidth();

}

QPaintEngine* QTableView_virtualbase_paintEngine(const void* self) {

	return ( (const VirtualQTableView*)(self) )->QTableView::paintEngine();

}

void QTableView_virtualbase_keyReleaseEvent(void* self, QKeyEvent* event) {

	( (VirtualQTableView*)(self) )->QTableView::keyReleaseEvent(event);

}

void QTableView_virtualbase_enterEvent(void* self, QEvent* event) {

	( (VirtualQTableView*)(self) )->QTableView::enterEvent(event);

}

void QTableView_virtualbase_leaveEvent(void* self, QEvent* event) {

	( (VirtualQTableView*)(self) )->QTableView::leaveEvent(event);

}

void QTableView_virtualbase_moveEvent(void* self, QMoveEvent* event) {

	( (VirtualQTableView*)(self) )->QTableView::moveEvent(event);

}

void QTableView_virtualbase_closeEvent(void* self, QCloseEvent* event) {

	( (VirtualQTableView*)(self) )->QTableView::closeEvent(event);

}

void QTableView_virtualbase_tabletEvent(void* self, QTabletEvent* event) {

	( (VirtualQTableView*)(self) )->QTableView::tabletEvent(event);

}

void QTableView_virtualbase_actionEvent(void* self, QActionEvent* event) {

	( (VirtualQTableView*)(self) )->QTableView::actionEvent(event);

}

void QTableView_virtualbase_showEvent(void* self, QShowEvent* event) {

	( (VirtualQTableView*)(self) )->QTableView::showEvent(event);

}

void QTableView_virtualbase_hideEvent(void* self, QHideEvent* event) {

	( (VirtualQTableView*)(self) )->QTableView::hideEvent(event);

}

bool QTableView_virtualbase_nativeEvent(void* self, struct miqt_string eventType, void* message, long* result) {
	QByteArray eventType_QByteArray(eventType.data, eventType.len);

	return ( (VirtualQTableView*)(self) )->QTableView::nativeEvent(eventType_QByteArray, message, static_cast<long*>(result));

}

int QTableView_virtualbase_metric(const void* self, int param1) {

	return ( (const VirtualQTableView*)(self) )->QTableView::metric(static_cast<VirtualQTableView::PaintDeviceMetric>(param1));

}

void QTableView_virtualbase_initPainter(const void* self, QPainter* painter) {

	( (const VirtualQTableView*)(self) )->QTableView::initPainter(painter);

}

QPaintDevice* QTableView_virtualbase_redirected(const void* self, QPoint* offset) {

	return ( (const VirtualQTableView*)(self) )->QTableView::redirected(offset);

}

QPainter* QTableView_virtualbase_sharedPainter(const void* self) {

	return ( (const VirtualQTableView*)(self) )->QTableView::sharedPainter();

}

void QTableView_virtualbase_childEvent(void* self, QChildEvent* event) {

	( (VirtualQTableView*)(self) )->QTableView::childEvent(event);

}

void QTableView_virtualbase_customEvent(void* self, QEvent* event) {

	( (VirtualQTableView*)(self) )->QTableView::customEvent(event);

}

void QTableView_virtualbase_connectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQTableView*)(self) )->QTableView::connectNotify(*signal);

}

void QTableView_virtualbase_disconnectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQTableView*)(self) )->QTableView::disconnectNotify(*signal);

}

const QMetaObject* QTableView_staticMetaObject() { return &QTableView::staticMetaObject; }
void QTableView_protectedbase_rowMoved(void* self, int row, int oldIndex, int newIndex) {
	VirtualQTableView* self_cast = static_cast<VirtualQTableView*>( (QTableView*)(self) );
	
	self_cast->rowMoved(static_cast<int>(row), static_cast<int>(oldIndex), static_cast<int>(newIndex));

}

void QTableView_protectedbase_columnMoved(void* self, int column, int oldIndex, int newIndex) {
	VirtualQTableView* self_cast = static_cast<VirtualQTableView*>( (QTableView*)(self) );
	
	self_cast->columnMoved(static_cast<int>(column), static_cast<int>(oldIndex), static_cast<int>(newIndex));

}

void QTableView_protectedbase_rowResized(void* self, int row, int oldHeight, int newHeight) {
	VirtualQTableView* self_cast = static_cast<VirtualQTableView*>( (QTableView*)(self) );
	
	self_cast->rowResized(static_cast<int>(row), static_cast<int>(oldHeight), static_cast<int>(newHeight));

}

void QTableView_protectedbase_columnResized(void* self, int column, int oldWidth, int newWidth) {
	VirtualQTableView* self_cast = static_cast<VirtualQTableView*>( (QTableView*)(self) );
	
	self_cast->columnResized(static_cast<int>(column), static_cast<int>(oldWidth), static_cast<int>(newWidth));

}

void QTableView_protectedbase_rowCountChanged(void* self, int oldCount, int newCount) {
	VirtualQTableView* self_cast = static_cast<VirtualQTableView*>( (QTableView*)(self) );
	
	self_cast->rowCountChanged(static_cast<int>(oldCount), static_cast<int>(newCount));

}

void QTableView_protectedbase_columnCountChanged(void* self, int oldCount, int newCount) {
	VirtualQTableView* self_cast = static_cast<VirtualQTableView*>( (QTableView*)(self) );
	
	self_cast->columnCountChanged(static_cast<int>(oldCount), static_cast<int>(newCount));

}

void QTableView_protectedbase_setHorizontalStepsPerItem(void* self, int steps) {
	VirtualQTableView* self_cast = static_cast<VirtualQTableView*>( (QTableView*)(self) );
	
	self_cast->setHorizontalStepsPerItem(static_cast<int>(steps));

}

int QTableView_protectedbase_horizontalStepsPerItem(const void* self) {
	VirtualQTableView* self_cast = static_cast<VirtualQTableView*>( (QTableView*)(self) );
	
	return self_cast->horizontalStepsPerItem();

}

void QTableView_protectedbase_setVerticalStepsPerItem(void* self, int steps) {
	VirtualQTableView* self_cast = static_cast<VirtualQTableView*>( (QTableView*)(self) );
	
	self_cast->setVerticalStepsPerItem(static_cast<int>(steps));

}

int QTableView_protectedbase_verticalStepsPerItem(const void* self) {
	VirtualQTableView* self_cast = static_cast<VirtualQTableView*>( (QTableView*)(self) );
	
	return self_cast->verticalStepsPerItem();

}

int QTableView_protectedbase_state(const void* self) {
	VirtualQTableView* self_cast = static_cast<VirtualQTableView*>( (QTableView*)(self) );
	
	VirtualQTableView::State _ret = self_cast->state();
	return static_cast<int>(_ret);

}

void QTableView_protectedbase_setState(void* self, int state) {
	VirtualQTableView* self_cast = static_cast<VirtualQTableView*>( (QTableView*)(self) );
	
	self_cast->setState(static_cast<VirtualQTableView::State>(state));

}

void QTableView_protectedbase_scheduleDelayedItemsLayout(void* self) {
	VirtualQTableView* self_cast = static_cast<VirtualQTableView*>( (QTableView*)(self) );
	
	self_cast->scheduleDelayedItemsLayout();

}

void QTableView_protectedbase_executeDelayedItemsLayout(void* self) {
	VirtualQTableView* self_cast = static_cast<VirtualQTableView*>( (QTableView*)(self) );
	
	self_cast->executeDelayedItemsLayout();

}

void QTableView_protectedbase_setDirtyRegion(void* self, QRegion* region) {
	VirtualQTableView* self_cast = static_cast<VirtualQTableView*>( (QTableView*)(self) );
	
	self_cast->setDirtyRegion(*region);

}

void QTableView_protectedbase_scrollDirtyRegion(void* self, int dx, int dy) {
	VirtualQTableView* self_cast = static_cast<VirtualQTableView*>( (QTableView*)(self) );
	
	self_cast->scrollDirtyRegion(static_cast<int>(dx), static_cast<int>(dy));

}

QPoint* QTableView_protectedbase_dirtyRegionOffset(const void* self) {
	VirtualQTableView* self_cast = static_cast<VirtualQTableView*>( (QTableView*)(self) );
	
	return new QPoint(self_cast->dirtyRegionOffset());

}

void QTableView_protectedbase_startAutoScroll(void* self) {
	VirtualQTableView* self_cast = static_cast<VirtualQTableView*>( (QTableView*)(self) );
	
	self_cast->startAutoScroll();

}

void QTableView_protectedbase_stopAutoScroll(void* self) {
	VirtualQTableView* self_cast = static_cast<VirtualQTableView*>( (QTableView*)(self) );
	
	self_cast->stopAutoScroll();

}

void QTableView_protectedbase_doAutoScroll(void* self) {
	VirtualQTableView* self_cast = static_cast<VirtualQTableView*>( (QTableView*)(self) );
	
	self_cast->doAutoScroll();

}

int QTableView_protectedbase_dropIndicatorPosition(const void* self) {
	VirtualQTableView* self_cast = static_cast<VirtualQTableView*>( (QTableView*)(self) );
	
	VirtualQTableView::DropIndicatorPosition _ret = self_cast->dropIndicatorPosition();
	return static_cast<int>(_ret);

}

void QTableView_protectedbase_setViewportMargins(void* self, int left, int top, int right, int bottom) {
	VirtualQTableView* self_cast = static_cast<VirtualQTableView*>( (QTableView*)(self) );
	
	self_cast->setViewportMargins(static_cast<int>(left), static_cast<int>(top), static_cast<int>(right), static_cast<int>(bottom));

}

QMargins* QTableView_protectedbase_viewportMargins(const void* self) {
	VirtualQTableView* self_cast = static_cast<VirtualQTableView*>( (QTableView*)(self) );
	
	return new QMargins(self_cast->viewportMargins());

}

void QTableView_protectedbase_drawFrame(void* self, QPainter* param1) {
	VirtualQTableView* self_cast = static_cast<VirtualQTableView*>( (QTableView*)(self) );
	
	self_cast->drawFrame(param1);

}

void QTableView_protectedbase_initStyleOption(const void* self, QStyleOptionFrame* option) {
	VirtualQTableView* self_cast = static_cast<VirtualQTableView*>( (QTableView*)(self) );
	
	self_cast->initStyleOption(option);

}

void QTableView_protectedbase_updateMicroFocus(void* self) {
	VirtualQTableView* self_cast = static_cast<VirtualQTableView*>( (QTableView*)(self) );
	
	self_cast->updateMicroFocus();

}

void QTableView_protectedbase_create(void* self) {
	VirtualQTableView* self_cast = static_cast<VirtualQTableView*>( (QTableView*)(self) );
	
	self_cast->create();

}

void QTableView_protectedbase_destroy(void* self) {
	VirtualQTableView* self_cast = static_cast<VirtualQTableView*>( (QTableView*)(self) );
	
	self_cast->destroy();

}

bool QTableView_protectedbase_focusNextChild(void* self) {
	VirtualQTableView* self_cast = static_cast<VirtualQTableView*>( (QTableView*)(self) );
	
	return self_cast->focusNextChild();

}

bool QTableView_protectedbase_focusPreviousChild(void* self) {
	VirtualQTableView* self_cast = static_cast<VirtualQTableView*>( (QTableView*)(self) );
	
	return self_cast->focusPreviousChild();

}

QObject* QTableView_protectedbase_sender(const void* self) {
	VirtualQTableView* self_cast = static_cast<VirtualQTableView*>( (QTableView*)(self) );
	
	return self_cast->sender();

}

int QTableView_protectedbase_senderSignalIndex(const void* self) {
	VirtualQTableView* self_cast = static_cast<VirtualQTableView*>( (QTableView*)(self) );
	
	return self_cast->senderSignalIndex();

}

int QTableView_protectedbase_receivers(const void* self, const char* signal) {
	VirtualQTableView* self_cast = static_cast<VirtualQTableView*>( (QTableView*)(self) );
	
	return self_cast->receivers(signal);

}

bool QTableView_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal) {
	VirtualQTableView* self_cast = static_cast<VirtualQTableView*>( (QTableView*)(self) );
	
	return self_cast->isSignalConnected(*signal);

}

void QTableView_delete(QTableView* self) {
	delete self;
}

