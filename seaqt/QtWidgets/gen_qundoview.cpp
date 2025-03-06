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
#include <QIcon>
#include <QInputMethodEvent>
#include <QItemSelection>
#include <QItemSelectionModel>
#include <QKeyEvent>
#include <QList>
#include <QListView>
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
#include <QUndoGroup>
#include <QUndoStack>
#include <QUndoView>
#include <QVariant>
#include <QWheelEvent>
#include <QWidget>
#include <qundoview.h>
#include "gen_qundoview.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
} /* extern C */
#endif

class VirtualQUndoView final : public QUndoView {
	struct QUndoView_VTable* vtbl;
public:

	VirtualQUndoView(struct QUndoView_VTable* vtbl, QWidget* parent): QUndoView(parent), vtbl(vtbl) {};
	VirtualQUndoView(struct QUndoView_VTable* vtbl): QUndoView(), vtbl(vtbl) {};
	VirtualQUndoView(struct QUndoView_VTable* vtbl, QUndoStack* stack): QUndoView(stack), vtbl(vtbl) {};
	VirtualQUndoView(struct QUndoView_VTable* vtbl, QUndoGroup* group): QUndoView(group), vtbl(vtbl) {};
	VirtualQUndoView(struct QUndoView_VTable* vtbl, QUndoStack* stack, QWidget* parent): QUndoView(stack, parent), vtbl(vtbl) {};
	VirtualQUndoView(struct QUndoView_VTable* vtbl, QUndoGroup* group, QWidget* parent): QUndoView(group, parent), vtbl(vtbl) {};

	virtual ~VirtualQUndoView() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QUndoView::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(vtbl, this);

		return callback_return_value;
	}

	friend QMetaObject* QUndoView_virtualbase_metaObject(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QUndoView::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend void* QUndoView_virtualbase_metacast(void* self, const char* param1);

	// Subclass to allow providing a Go implementation
	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QUndoView::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(vtbl, this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QUndoView_virtualbase_metacall(void* self, int param1, int param2, void** param3);

	// Subclass to allow providing a Go implementation
	virtual QRect visualRect(const QModelIndex& index) const override {
		if (vtbl->visualRect == 0) {
			return QUndoView::visualRect(index);
		}

		const QModelIndex& index_ret = index;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&index_ret);

		QRect* callback_return_value = vtbl->visualRect(vtbl, this, sigval1);

		return *callback_return_value;
	}

	friend QRect* QUndoView_virtualbase_visualRect(const void* self, QModelIndex* index);

	// Subclass to allow providing a Go implementation
	virtual void scrollTo(const QModelIndex& index, QAbstractItemView::ScrollHint hint) override {
		if (vtbl->scrollTo == 0) {
			QUndoView::scrollTo(index, hint);
			return;
		}

		const QModelIndex& index_ret = index;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&index_ret);
		QAbstractItemView::ScrollHint hint_ret = hint;
		int sigval2 = static_cast<int>(hint_ret);

		vtbl->scrollTo(vtbl, this, sigval1, sigval2);

	}

	friend void QUndoView_virtualbase_scrollTo(void* self, QModelIndex* index, int hint);

	// Subclass to allow providing a Go implementation
	virtual QModelIndex indexAt(const QPoint& p) const override {
		if (vtbl->indexAt == 0) {
			return QUndoView::indexAt(p);
		}

		const QPoint& p_ret = p;
		// Cast returned reference into pointer
		QPoint* sigval1 = const_cast<QPoint*>(&p_ret);

		QModelIndex* callback_return_value = vtbl->indexAt(vtbl, this, sigval1);

		return *callback_return_value;
	}

	friend QModelIndex* QUndoView_virtualbase_indexAt(const void* self, QPoint* p);

	// Subclass to allow providing a Go implementation
	virtual void doItemsLayout() override {
		if (vtbl->doItemsLayout == 0) {
			QUndoView::doItemsLayout();
			return;
		}


		vtbl->doItemsLayout(vtbl, this);

	}

	friend void QUndoView_virtualbase_doItemsLayout(void* self);

	// Subclass to allow providing a Go implementation
	virtual void reset() override {
		if (vtbl->reset == 0) {
			QUndoView::reset();
			return;
		}


		vtbl->reset(vtbl, this);

	}

	friend void QUndoView_virtualbase_reset(void* self);

	// Subclass to allow providing a Go implementation
	virtual void setRootIndex(const QModelIndex& index) override {
		if (vtbl->setRootIndex == 0) {
			QUndoView::setRootIndex(index);
			return;
		}

		const QModelIndex& index_ret = index;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&index_ret);

		vtbl->setRootIndex(vtbl, this, sigval1);

	}

	friend void QUndoView_virtualbase_setRootIndex(void* self, QModelIndex* index);

	// Subclass to allow providing a Go implementation
	virtual bool event(QEvent* e) override {
		if (vtbl->event == 0) {
			return QUndoView::event(e);
		}

		QEvent* sigval1 = e;

		bool callback_return_value = vtbl->event(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend bool QUndoView_virtualbase_event(void* self, QEvent* e);

	// Subclass to allow providing a Go implementation
	virtual void scrollContentsBy(int dx, int dy) override {
		if (vtbl->scrollContentsBy == 0) {
			QUndoView::scrollContentsBy(dx, dy);
			return;
		}

		int sigval1 = dx;
		int sigval2 = dy;

		vtbl->scrollContentsBy(vtbl, this, sigval1, sigval2);

	}

	friend void QUndoView_virtualbase_scrollContentsBy(void* self, int dx, int dy);

	// Subclass to allow providing a Go implementation
	virtual void dataChanged(const QModelIndex& topLeft, const QModelIndex& bottomRight, const QVector<int>& roles) override {
		if (vtbl->dataChanged == 0) {
			QUndoView::dataChanged(topLeft, bottomRight, roles);
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

	friend void QUndoView_virtualbase_dataChanged(void* self, QModelIndex* topLeft, QModelIndex* bottomRight, struct miqt_array /* of int */  roles);

	// Subclass to allow providing a Go implementation
	virtual void rowsInserted(const QModelIndex& parent, int start, int end) override {
		if (vtbl->rowsInserted == 0) {
			QUndoView::rowsInserted(parent, start, end);
			return;
		}

		const QModelIndex& parent_ret = parent;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&parent_ret);
		int sigval2 = start;
		int sigval3 = end;

		vtbl->rowsInserted(vtbl, this, sigval1, sigval2, sigval3);

	}

	friend void QUndoView_virtualbase_rowsInserted(void* self, QModelIndex* parent, int start, int end);

	// Subclass to allow providing a Go implementation
	virtual void rowsAboutToBeRemoved(const QModelIndex& parent, int start, int end) override {
		if (vtbl->rowsAboutToBeRemoved == 0) {
			QUndoView::rowsAboutToBeRemoved(parent, start, end);
			return;
		}

		const QModelIndex& parent_ret = parent;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&parent_ret);
		int sigval2 = start;
		int sigval3 = end;

		vtbl->rowsAboutToBeRemoved(vtbl, this, sigval1, sigval2, sigval3);

	}

	friend void QUndoView_virtualbase_rowsAboutToBeRemoved(void* self, QModelIndex* parent, int start, int end);

	// Subclass to allow providing a Go implementation
	virtual void mouseMoveEvent(QMouseEvent* e) override {
		if (vtbl->mouseMoveEvent == 0) {
			QUndoView::mouseMoveEvent(e);
			return;
		}

		QMouseEvent* sigval1 = e;

		vtbl->mouseMoveEvent(vtbl, this, sigval1);

	}

	friend void QUndoView_virtualbase_mouseMoveEvent(void* self, QMouseEvent* e);

	// Subclass to allow providing a Go implementation
	virtual void mouseReleaseEvent(QMouseEvent* e) override {
		if (vtbl->mouseReleaseEvent == 0) {
			QUndoView::mouseReleaseEvent(e);
			return;
		}

		QMouseEvent* sigval1 = e;

		vtbl->mouseReleaseEvent(vtbl, this, sigval1);

	}

	friend void QUndoView_virtualbase_mouseReleaseEvent(void* self, QMouseEvent* e);

	// Subclass to allow providing a Go implementation
	virtual void wheelEvent(QWheelEvent* e) override {
		if (vtbl->wheelEvent == 0) {
			QUndoView::wheelEvent(e);
			return;
		}

		QWheelEvent* sigval1 = e;

		vtbl->wheelEvent(vtbl, this, sigval1);

	}

	friend void QUndoView_virtualbase_wheelEvent(void* self, QWheelEvent* e);

	// Subclass to allow providing a Go implementation
	virtual void timerEvent(QTimerEvent* e) override {
		if (vtbl->timerEvent == 0) {
			QUndoView::timerEvent(e);
			return;
		}

		QTimerEvent* sigval1 = e;

		vtbl->timerEvent(vtbl, this, sigval1);

	}

	friend void QUndoView_virtualbase_timerEvent(void* self, QTimerEvent* e);

	// Subclass to allow providing a Go implementation
	virtual void resizeEvent(QResizeEvent* e) override {
		if (vtbl->resizeEvent == 0) {
			QUndoView::resizeEvent(e);
			return;
		}

		QResizeEvent* sigval1 = e;

		vtbl->resizeEvent(vtbl, this, sigval1);

	}

	friend void QUndoView_virtualbase_resizeEvent(void* self, QResizeEvent* e);

	// Subclass to allow providing a Go implementation
	virtual void dragMoveEvent(QDragMoveEvent* e) override {
		if (vtbl->dragMoveEvent == 0) {
			QUndoView::dragMoveEvent(e);
			return;
		}

		QDragMoveEvent* sigval1 = e;

		vtbl->dragMoveEvent(vtbl, this, sigval1);

	}

	friend void QUndoView_virtualbase_dragMoveEvent(void* self, QDragMoveEvent* e);

	// Subclass to allow providing a Go implementation
	virtual void dragLeaveEvent(QDragLeaveEvent* e) override {
		if (vtbl->dragLeaveEvent == 0) {
			QUndoView::dragLeaveEvent(e);
			return;
		}

		QDragLeaveEvent* sigval1 = e;

		vtbl->dragLeaveEvent(vtbl, this, sigval1);

	}

	friend void QUndoView_virtualbase_dragLeaveEvent(void* self, QDragLeaveEvent* e);

	// Subclass to allow providing a Go implementation
	virtual void dropEvent(QDropEvent* e) override {
		if (vtbl->dropEvent == 0) {
			QUndoView::dropEvent(e);
			return;
		}

		QDropEvent* sigval1 = e;

		vtbl->dropEvent(vtbl, this, sigval1);

	}

	friend void QUndoView_virtualbase_dropEvent(void* self, QDropEvent* e);

	// Subclass to allow providing a Go implementation
	virtual void startDrag(Qt::DropActions supportedActions) override {
		if (vtbl->startDrag == 0) {
			QUndoView::startDrag(supportedActions);
			return;
		}

		Qt::DropActions supportedActions_ret = supportedActions;
		int sigval1 = static_cast<int>(supportedActions_ret);

		vtbl->startDrag(vtbl, this, sigval1);

	}

	friend void QUndoView_virtualbase_startDrag(void* self, int supportedActions);

	// Subclass to allow providing a Go implementation
	virtual QStyleOptionViewItem viewOptions() const override {
		if (vtbl->viewOptions == 0) {
			return QUndoView::viewOptions();
		}


		QStyleOptionViewItem* callback_return_value = vtbl->viewOptions(vtbl, this);

		return *callback_return_value;
	}

	friend QStyleOptionViewItem* QUndoView_virtualbase_viewOptions(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void paintEvent(QPaintEvent* e) override {
		if (vtbl->paintEvent == 0) {
			QUndoView::paintEvent(e);
			return;
		}

		QPaintEvent* sigval1 = e;

		vtbl->paintEvent(vtbl, this, sigval1);

	}

	friend void QUndoView_virtualbase_paintEvent(void* self, QPaintEvent* e);

	// Subclass to allow providing a Go implementation
	virtual int horizontalOffset() const override {
		if (vtbl->horizontalOffset == 0) {
			return QUndoView::horizontalOffset();
		}


		int callback_return_value = vtbl->horizontalOffset(vtbl, this);

		return static_cast<int>(callback_return_value);
	}

	friend int QUndoView_virtualbase_horizontalOffset(const void* self);

	// Subclass to allow providing a Go implementation
	virtual int verticalOffset() const override {
		if (vtbl->verticalOffset == 0) {
			return QUndoView::verticalOffset();
		}


		int callback_return_value = vtbl->verticalOffset(vtbl, this);

		return static_cast<int>(callback_return_value);
	}

	friend int QUndoView_virtualbase_verticalOffset(const void* self);

	// Subclass to allow providing a Go implementation
	virtual QModelIndex moveCursor(QAbstractItemView::CursorAction cursorAction, Qt::KeyboardModifiers modifiers) override {
		if (vtbl->moveCursor == 0) {
			return QUndoView::moveCursor(cursorAction, modifiers);
		}

		QAbstractItemView::CursorAction cursorAction_ret = cursorAction;
		int sigval1 = static_cast<int>(cursorAction_ret);
		Qt::KeyboardModifiers modifiers_ret = modifiers;
		int sigval2 = static_cast<int>(modifiers_ret);

		QModelIndex* callback_return_value = vtbl->moveCursor(vtbl, this, sigval1, sigval2);

		return *callback_return_value;
	}

	friend QModelIndex* QUndoView_virtualbase_moveCursor(void* self, int cursorAction, int modifiers);

	// Subclass to allow providing a Go implementation
	virtual void setSelection(const QRect& rect, QItemSelectionModel::SelectionFlags command) override {
		if (vtbl->setSelection == 0) {
			QUndoView::setSelection(rect, command);
			return;
		}

		const QRect& rect_ret = rect;
		// Cast returned reference into pointer
		QRect* sigval1 = const_cast<QRect*>(&rect_ret);
		QItemSelectionModel::SelectionFlags command_ret = command;
		int sigval2 = static_cast<int>(command_ret);

		vtbl->setSelection(vtbl, this, sigval1, sigval2);

	}

	friend void QUndoView_virtualbase_setSelection(void* self, QRect* rect, int command);

	// Subclass to allow providing a Go implementation
	virtual QRegion visualRegionForSelection(const QItemSelection& selection) const override {
		if (vtbl->visualRegionForSelection == 0) {
			return QUndoView::visualRegionForSelection(selection);
		}

		const QItemSelection& selection_ret = selection;
		// Cast returned reference into pointer
		QItemSelection* sigval1 = const_cast<QItemSelection*>(&selection_ret);

		QRegion* callback_return_value = vtbl->visualRegionForSelection(vtbl, this, sigval1);

		return *callback_return_value;
	}

	friend QRegion* QUndoView_virtualbase_visualRegionForSelection(const void* self, QItemSelection* selection);

	// Subclass to allow providing a Go implementation
	virtual QModelIndexList selectedIndexes() const override {
		if (vtbl->selectedIndexes == 0) {
			return QUndoView::selectedIndexes();
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

	friend struct miqt_array /* of QModelIndex* */  QUndoView_virtualbase_selectedIndexes(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void updateGeometries() override {
		if (vtbl->updateGeometries == 0) {
			QUndoView::updateGeometries();
			return;
		}


		vtbl->updateGeometries(vtbl, this);

	}

	friend void QUndoView_virtualbase_updateGeometries(void* self);

	// Subclass to allow providing a Go implementation
	virtual bool isIndexHidden(const QModelIndex& index) const override {
		if (vtbl->isIndexHidden == 0) {
			return QUndoView::isIndexHidden(index);
		}

		const QModelIndex& index_ret = index;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&index_ret);

		bool callback_return_value = vtbl->isIndexHidden(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend bool QUndoView_virtualbase_isIndexHidden(const void* self, QModelIndex* index);

	// Subclass to allow providing a Go implementation
	virtual void selectionChanged(const QItemSelection& selected, const QItemSelection& deselected) override {
		if (vtbl->selectionChanged == 0) {
			QUndoView::selectionChanged(selected, deselected);
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

	friend void QUndoView_virtualbase_selectionChanged(void* self, QItemSelection* selected, QItemSelection* deselected);

	// Subclass to allow providing a Go implementation
	virtual void currentChanged(const QModelIndex& current, const QModelIndex& previous) override {
		if (vtbl->currentChanged == 0) {
			QUndoView::currentChanged(current, previous);
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

	friend void QUndoView_virtualbase_currentChanged(void* self, QModelIndex* current, QModelIndex* previous);

	// Subclass to allow providing a Go implementation
	virtual QSize viewportSizeHint() const override {
		if (vtbl->viewportSizeHint == 0) {
			return QUndoView::viewportSizeHint();
		}


		QSize* callback_return_value = vtbl->viewportSizeHint(vtbl, this);

		return *callback_return_value;
	}

	friend QSize* QUndoView_virtualbase_viewportSizeHint(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void setModel(QAbstractItemModel* model) override {
		if (vtbl->setModel == 0) {
			QUndoView::setModel(model);
			return;
		}

		QAbstractItemModel* sigval1 = model;

		vtbl->setModel(vtbl, this, sigval1);

	}

	friend void QUndoView_virtualbase_setModel(void* self, QAbstractItemModel* model);

	// Subclass to allow providing a Go implementation
	virtual void setSelectionModel(QItemSelectionModel* selectionModel) override {
		if (vtbl->setSelectionModel == 0) {
			QUndoView::setSelectionModel(selectionModel);
			return;
		}

		QItemSelectionModel* sigval1 = selectionModel;

		vtbl->setSelectionModel(vtbl, this, sigval1);

	}

	friend void QUndoView_virtualbase_setSelectionModel(void* self, QItemSelectionModel* selectionModel);

	// Subclass to allow providing a Go implementation
	virtual void keyboardSearch(const QString& search) override {
		if (vtbl->keyboardSearch == 0) {
			QUndoView::keyboardSearch(search);
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

	friend void QUndoView_virtualbase_keyboardSearch(void* self, struct miqt_string search);

	// Subclass to allow providing a Go implementation
	virtual int sizeHintForRow(int row) const override {
		if (vtbl->sizeHintForRow == 0) {
			return QUndoView::sizeHintForRow(row);
		}

		int sigval1 = row;

		int callback_return_value = vtbl->sizeHintForRow(vtbl, this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QUndoView_virtualbase_sizeHintForRow(const void* self, int row);

	// Subclass to allow providing a Go implementation
	virtual int sizeHintForColumn(int column) const override {
		if (vtbl->sizeHintForColumn == 0) {
			return QUndoView::sizeHintForColumn(column);
		}

		int sigval1 = column;

		int callback_return_value = vtbl->sizeHintForColumn(vtbl, this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QUndoView_virtualbase_sizeHintForColumn(const void* self, int column);

	// Subclass to allow providing a Go implementation
	virtual QVariant inputMethodQuery(Qt::InputMethodQuery query) const override {
		if (vtbl->inputMethodQuery == 0) {
			return QUndoView::inputMethodQuery(query);
		}

		Qt::InputMethodQuery query_ret = query;
		int sigval1 = static_cast<int>(query_ret);

		QVariant* callback_return_value = vtbl->inputMethodQuery(vtbl, this, sigval1);

		return *callback_return_value;
	}

	friend QVariant* QUndoView_virtualbase_inputMethodQuery(const void* self, int query);

	// Subclass to allow providing a Go implementation
	virtual void selectAll() override {
		if (vtbl->selectAll == 0) {
			QUndoView::selectAll();
			return;
		}


		vtbl->selectAll(vtbl, this);

	}

	friend void QUndoView_virtualbase_selectAll(void* self);

	// Subclass to allow providing a Go implementation
	virtual void updateEditorData() override {
		if (vtbl->updateEditorData == 0) {
			QUndoView::updateEditorData();
			return;
		}


		vtbl->updateEditorData(vtbl, this);

	}

	friend void QUndoView_virtualbase_updateEditorData(void* self);

	// Subclass to allow providing a Go implementation
	virtual void updateEditorGeometries() override {
		if (vtbl->updateEditorGeometries == 0) {
			QUndoView::updateEditorGeometries();
			return;
		}


		vtbl->updateEditorGeometries(vtbl, this);

	}

	friend void QUndoView_virtualbase_updateEditorGeometries(void* self);

	// Subclass to allow providing a Go implementation
	virtual void verticalScrollbarAction(int action) override {
		if (vtbl->verticalScrollbarAction == 0) {
			QUndoView::verticalScrollbarAction(action);
			return;
		}

		int sigval1 = action;

		vtbl->verticalScrollbarAction(vtbl, this, sigval1);

	}

	friend void QUndoView_virtualbase_verticalScrollbarAction(void* self, int action);

	// Subclass to allow providing a Go implementation
	virtual void horizontalScrollbarAction(int action) override {
		if (vtbl->horizontalScrollbarAction == 0) {
			QUndoView::horizontalScrollbarAction(action);
			return;
		}

		int sigval1 = action;

		vtbl->horizontalScrollbarAction(vtbl, this, sigval1);

	}

	friend void QUndoView_virtualbase_horizontalScrollbarAction(void* self, int action);

	// Subclass to allow providing a Go implementation
	virtual void verticalScrollbarValueChanged(int value) override {
		if (vtbl->verticalScrollbarValueChanged == 0) {
			QUndoView::verticalScrollbarValueChanged(value);
			return;
		}

		int sigval1 = value;

		vtbl->verticalScrollbarValueChanged(vtbl, this, sigval1);

	}

	friend void QUndoView_virtualbase_verticalScrollbarValueChanged(void* self, int value);

	// Subclass to allow providing a Go implementation
	virtual void horizontalScrollbarValueChanged(int value) override {
		if (vtbl->horizontalScrollbarValueChanged == 0) {
			QUndoView::horizontalScrollbarValueChanged(value);
			return;
		}

		int sigval1 = value;

		vtbl->horizontalScrollbarValueChanged(vtbl, this, sigval1);

	}

	friend void QUndoView_virtualbase_horizontalScrollbarValueChanged(void* self, int value);

	// Subclass to allow providing a Go implementation
	virtual void closeEditor(QWidget* editor, QAbstractItemDelegate::EndEditHint hint) override {
		if (vtbl->closeEditor == 0) {
			QUndoView::closeEditor(editor, hint);
			return;
		}

		QWidget* sigval1 = editor;
		QAbstractItemDelegate::EndEditHint hint_ret = hint;
		int sigval2 = static_cast<int>(hint_ret);

		vtbl->closeEditor(vtbl, this, sigval1, sigval2);

	}

	friend void QUndoView_virtualbase_closeEditor(void* self, QWidget* editor, int hint);

	// Subclass to allow providing a Go implementation
	virtual void commitData(QWidget* editor) override {
		if (vtbl->commitData == 0) {
			QUndoView::commitData(editor);
			return;
		}

		QWidget* sigval1 = editor;

		vtbl->commitData(vtbl, this, sigval1);

	}

	friend void QUndoView_virtualbase_commitData(void* self, QWidget* editor);

	// Subclass to allow providing a Go implementation
	virtual void editorDestroyed(QObject* editor) override {
		if (vtbl->editorDestroyed == 0) {
			QUndoView::editorDestroyed(editor);
			return;
		}

		QObject* sigval1 = editor;

		vtbl->editorDestroyed(vtbl, this, sigval1);

	}

	friend void QUndoView_virtualbase_editorDestroyed(void* self, QObject* editor);

	// Subclass to allow providing a Go implementation
	virtual bool edit(const QModelIndex& index, QAbstractItemView::EditTrigger trigger, QEvent* event) override {
		if (vtbl->edit2 == 0) {
			return QUndoView::edit(index, trigger, event);
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

	friend bool QUndoView_virtualbase_edit2(void* self, QModelIndex* index, int trigger, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual QItemSelectionModel::SelectionFlags selectionCommand(const QModelIndex& index, const QEvent* event) const override {
		if (vtbl->selectionCommand == 0) {
			return QUndoView::selectionCommand(index, event);
		}

		const QModelIndex& index_ret = index;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&index_ret);
		QEvent* sigval2 = (QEvent*) event;

		int callback_return_value = vtbl->selectionCommand(vtbl, this, sigval1, sigval2);

		return static_cast<QItemSelectionModel::SelectionFlags>(callback_return_value);
	}

	friend int QUndoView_virtualbase_selectionCommand(const void* self, QModelIndex* index, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual bool focusNextPrevChild(bool next) override {
		if (vtbl->focusNextPrevChild == 0) {
			return QUndoView::focusNextPrevChild(next);
		}

		bool sigval1 = next;

		bool callback_return_value = vtbl->focusNextPrevChild(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend bool QUndoView_virtualbase_focusNextPrevChild(void* self, bool next);

	// Subclass to allow providing a Go implementation
	virtual bool viewportEvent(QEvent* event) override {
		if (vtbl->viewportEvent == 0) {
			return QUndoView::viewportEvent(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->viewportEvent(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend bool QUndoView_virtualbase_viewportEvent(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void mousePressEvent(QMouseEvent* event) override {
		if (vtbl->mousePressEvent == 0) {
			QUndoView::mousePressEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mousePressEvent(vtbl, this, sigval1);

	}

	friend void QUndoView_virtualbase_mousePressEvent(void* self, QMouseEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void mouseDoubleClickEvent(QMouseEvent* event) override {
		if (vtbl->mouseDoubleClickEvent == 0) {
			QUndoView::mouseDoubleClickEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseDoubleClickEvent(vtbl, this, sigval1);

	}

	friend void QUndoView_virtualbase_mouseDoubleClickEvent(void* self, QMouseEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void dragEnterEvent(QDragEnterEvent* event) override {
		if (vtbl->dragEnterEvent == 0) {
			QUndoView::dragEnterEvent(event);
			return;
		}

		QDragEnterEvent* sigval1 = event;

		vtbl->dragEnterEvent(vtbl, this, sigval1);

	}

	friend void QUndoView_virtualbase_dragEnterEvent(void* self, QDragEnterEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void focusInEvent(QFocusEvent* event) override {
		if (vtbl->focusInEvent == 0) {
			QUndoView::focusInEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;

		vtbl->focusInEvent(vtbl, this, sigval1);

	}

	friend void QUndoView_virtualbase_focusInEvent(void* self, QFocusEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void focusOutEvent(QFocusEvent* event) override {
		if (vtbl->focusOutEvent == 0) {
			QUndoView::focusOutEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;

		vtbl->focusOutEvent(vtbl, this, sigval1);

	}

	friend void QUndoView_virtualbase_focusOutEvent(void* self, QFocusEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void keyPressEvent(QKeyEvent* event) override {
		if (vtbl->keyPressEvent == 0) {
			QUndoView::keyPressEvent(event);
			return;
		}

		QKeyEvent* sigval1 = event;

		vtbl->keyPressEvent(vtbl, this, sigval1);

	}

	friend void QUndoView_virtualbase_keyPressEvent(void* self, QKeyEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void inputMethodEvent(QInputMethodEvent* event) override {
		if (vtbl->inputMethodEvent == 0) {
			QUndoView::inputMethodEvent(event);
			return;
		}

		QInputMethodEvent* sigval1 = event;

		vtbl->inputMethodEvent(vtbl, this, sigval1);

	}

	friend void QUndoView_virtualbase_inputMethodEvent(void* self, QInputMethodEvent* event);

	// Subclass to allow providing a Go implementation
	virtual bool eventFilter(QObject* object, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QUndoView::eventFilter(object, event);
		}

		QObject* sigval1 = object;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QUndoView_virtualbase_eventFilter(void* self, QObject* object, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual QSize minimumSizeHint() const override {
		if (vtbl->minimumSizeHint == 0) {
			return QUndoView::minimumSizeHint();
		}


		QSize* callback_return_value = vtbl->minimumSizeHint(vtbl, this);

		return *callback_return_value;
	}

	friend QSize* QUndoView_virtualbase_minimumSizeHint(const void* self);

	// Subclass to allow providing a Go implementation
	virtual QSize sizeHint() const override {
		if (vtbl->sizeHint == 0) {
			return QUndoView::sizeHint();
		}


		QSize* callback_return_value = vtbl->sizeHint(vtbl, this);

		return *callback_return_value;
	}

	friend QSize* QUndoView_virtualbase_sizeHint(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void setupViewport(QWidget* viewport) override {
		if (vtbl->setupViewport == 0) {
			QUndoView::setupViewport(viewport);
			return;
		}

		QWidget* sigval1 = viewport;

		vtbl->setupViewport(vtbl, this, sigval1);

	}

	friend void QUndoView_virtualbase_setupViewport(void* self, QWidget* viewport);

	// Subclass to allow providing a Go implementation
	virtual void contextMenuEvent(QContextMenuEvent* param1) override {
		if (vtbl->contextMenuEvent == 0) {
			QUndoView::contextMenuEvent(param1);
			return;
		}

		QContextMenuEvent* sigval1 = param1;

		vtbl->contextMenuEvent(vtbl, this, sigval1);

	}

	friend void QUndoView_virtualbase_contextMenuEvent(void* self, QContextMenuEvent* param1);

	// Subclass to allow providing a Go implementation
	virtual void changeEvent(QEvent* param1) override {
		if (vtbl->changeEvent == 0) {
			QUndoView::changeEvent(param1);
			return;
		}

		QEvent* sigval1 = param1;

		vtbl->changeEvent(vtbl, this, sigval1);

	}

	friend void QUndoView_virtualbase_changeEvent(void* self, QEvent* param1);

	// Subclass to allow providing a Go implementation
	virtual int devType() const override {
		if (vtbl->devType == 0) {
			return QUndoView::devType();
		}


		int callback_return_value = vtbl->devType(vtbl, this);

		return static_cast<int>(callback_return_value);
	}

	friend int QUndoView_virtualbase_devType(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void setVisible(bool visible) override {
		if (vtbl->setVisible == 0) {
			QUndoView::setVisible(visible);
			return;
		}

		bool sigval1 = visible;

		vtbl->setVisible(vtbl, this, sigval1);

	}

	friend void QUndoView_virtualbase_setVisible(void* self, bool visible);

	// Subclass to allow providing a Go implementation
	virtual int heightForWidth(int param1) const override {
		if (vtbl->heightForWidth == 0) {
			return QUndoView::heightForWidth(param1);
		}

		int sigval1 = param1;

		int callback_return_value = vtbl->heightForWidth(vtbl, this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QUndoView_virtualbase_heightForWidth(const void* self, int param1);

	// Subclass to allow providing a Go implementation
	virtual bool hasHeightForWidth() const override {
		if (vtbl->hasHeightForWidth == 0) {
			return QUndoView::hasHeightForWidth();
		}


		bool callback_return_value = vtbl->hasHeightForWidth(vtbl, this);

		return callback_return_value;
	}

	friend bool QUndoView_virtualbase_hasHeightForWidth(const void* self);

	// Subclass to allow providing a Go implementation
	virtual QPaintEngine* paintEngine() const override {
		if (vtbl->paintEngine == 0) {
			return QUndoView::paintEngine();
		}


		QPaintEngine* callback_return_value = vtbl->paintEngine(vtbl, this);

		return callback_return_value;
	}

	friend QPaintEngine* QUndoView_virtualbase_paintEngine(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void keyReleaseEvent(QKeyEvent* event) override {
		if (vtbl->keyReleaseEvent == 0) {
			QUndoView::keyReleaseEvent(event);
			return;
		}

		QKeyEvent* sigval1 = event;

		vtbl->keyReleaseEvent(vtbl, this, sigval1);

	}

	friend void QUndoView_virtualbase_keyReleaseEvent(void* self, QKeyEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void enterEvent(QEvent* event) override {
		if (vtbl->enterEvent == 0) {
			QUndoView::enterEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->enterEvent(vtbl, this, sigval1);

	}

	friend void QUndoView_virtualbase_enterEvent(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void leaveEvent(QEvent* event) override {
		if (vtbl->leaveEvent == 0) {
			QUndoView::leaveEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->leaveEvent(vtbl, this, sigval1);

	}

	friend void QUndoView_virtualbase_leaveEvent(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void moveEvent(QMoveEvent* event) override {
		if (vtbl->moveEvent == 0) {
			QUndoView::moveEvent(event);
			return;
		}

		QMoveEvent* sigval1 = event;

		vtbl->moveEvent(vtbl, this, sigval1);

	}

	friend void QUndoView_virtualbase_moveEvent(void* self, QMoveEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void closeEvent(QCloseEvent* event) override {
		if (vtbl->closeEvent == 0) {
			QUndoView::closeEvent(event);
			return;
		}

		QCloseEvent* sigval1 = event;

		vtbl->closeEvent(vtbl, this, sigval1);

	}

	friend void QUndoView_virtualbase_closeEvent(void* self, QCloseEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void tabletEvent(QTabletEvent* event) override {
		if (vtbl->tabletEvent == 0) {
			QUndoView::tabletEvent(event);
			return;
		}

		QTabletEvent* sigval1 = event;

		vtbl->tabletEvent(vtbl, this, sigval1);

	}

	friend void QUndoView_virtualbase_tabletEvent(void* self, QTabletEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void actionEvent(QActionEvent* event) override {
		if (vtbl->actionEvent == 0) {
			QUndoView::actionEvent(event);
			return;
		}

		QActionEvent* sigval1 = event;

		vtbl->actionEvent(vtbl, this, sigval1);

	}

	friend void QUndoView_virtualbase_actionEvent(void* self, QActionEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void showEvent(QShowEvent* event) override {
		if (vtbl->showEvent == 0) {
			QUndoView::showEvent(event);
			return;
		}

		QShowEvent* sigval1 = event;

		vtbl->showEvent(vtbl, this, sigval1);

	}

	friend void QUndoView_virtualbase_showEvent(void* self, QShowEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void hideEvent(QHideEvent* event) override {
		if (vtbl->hideEvent == 0) {
			QUndoView::hideEvent(event);
			return;
		}

		QHideEvent* sigval1 = event;

		vtbl->hideEvent(vtbl, this, sigval1);

	}

	friend void QUndoView_virtualbase_hideEvent(void* self, QHideEvent* event);

	// Subclass to allow providing a Go implementation
	virtual bool nativeEvent(const QByteArray& eventType, void* message, long* result) override {
		if (vtbl->nativeEvent == 0) {
			return QUndoView::nativeEvent(eventType, message, result);
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

	friend bool QUndoView_virtualbase_nativeEvent(void* self, struct miqt_string eventType, void* message, long* result);

	// Subclass to allow providing a Go implementation
	virtual int metric(QPaintDevice::PaintDeviceMetric param1) const override {
		if (vtbl->metric == 0) {
			return QUndoView::metric(param1);
		}

		QPaintDevice::PaintDeviceMetric param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);

		int callback_return_value = vtbl->metric(vtbl, this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QUndoView_virtualbase_metric(const void* self, int param1);

	// Subclass to allow providing a Go implementation
	virtual void initPainter(QPainter* painter) const override {
		if (vtbl->initPainter == 0) {
			QUndoView::initPainter(painter);
			return;
		}

		QPainter* sigval1 = painter;

		vtbl->initPainter(vtbl, this, sigval1);

	}

	friend void QUndoView_virtualbase_initPainter(const void* self, QPainter* painter);

	// Subclass to allow providing a Go implementation
	virtual QPaintDevice* redirected(QPoint* offset) const override {
		if (vtbl->redirected == 0) {
			return QUndoView::redirected(offset);
		}

		QPoint* sigval1 = offset;

		QPaintDevice* callback_return_value = vtbl->redirected(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend QPaintDevice* QUndoView_virtualbase_redirected(const void* self, QPoint* offset);

	// Subclass to allow providing a Go implementation
	virtual QPainter* sharedPainter() const override {
		if (vtbl->sharedPainter == 0) {
			return QUndoView::sharedPainter();
		}


		QPainter* callback_return_value = vtbl->sharedPainter(vtbl, this);

		return callback_return_value;
	}

	friend QPainter* QUndoView_virtualbase_sharedPainter(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QUndoView::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(vtbl, this, sigval1);

	}

	friend void QUndoView_virtualbase_childEvent(void* self, QChildEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QUndoView::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(vtbl, this, sigval1);

	}

	friend void QUndoView_virtualbase_customEvent(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QUndoView::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(vtbl, this, sigval1);

	}

	friend void QUndoView_virtualbase_connectNotify(void* self, QMetaMethod* signal);

	// Subclass to allow providing a Go implementation
	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QUndoView::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(vtbl, this, sigval1);

	}

	friend void QUndoView_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend void QUndoView_protectedbase_resizeContents(bool* _dynamic_cast_ok, void* self, int width, int height);
	friend QSize* QUndoView_protectedbase_contentsSize(bool* _dynamic_cast_ok, const void* self);
	friend QRect* QUndoView_protectedbase_rectForIndex(bool* _dynamic_cast_ok, const void* self, QModelIndex* index);
	friend void QUndoView_protectedbase_setPositionForIndex(bool* _dynamic_cast_ok, void* self, QPoint* position, QModelIndex* index);
	friend void QUndoView_protectedbase_setHorizontalStepsPerItem(bool* _dynamic_cast_ok, void* self, int steps);
	friend int QUndoView_protectedbase_horizontalStepsPerItem(bool* _dynamic_cast_ok, const void* self);
	friend void QUndoView_protectedbase_setVerticalStepsPerItem(bool* _dynamic_cast_ok, void* self, int steps);
	friend int QUndoView_protectedbase_verticalStepsPerItem(bool* _dynamic_cast_ok, const void* self);
	friend int QUndoView_protectedbase_state(bool* _dynamic_cast_ok, const void* self);
	friend void QUndoView_protectedbase_setState(bool* _dynamic_cast_ok, void* self, int state);
	friend void QUndoView_protectedbase_scheduleDelayedItemsLayout(bool* _dynamic_cast_ok, void* self);
	friend void QUndoView_protectedbase_executeDelayedItemsLayout(bool* _dynamic_cast_ok, void* self);
	friend void QUndoView_protectedbase_setDirtyRegion(bool* _dynamic_cast_ok, void* self, QRegion* region);
	friend void QUndoView_protectedbase_scrollDirtyRegion(bool* _dynamic_cast_ok, void* self, int dx, int dy);
	friend QPoint* QUndoView_protectedbase_dirtyRegionOffset(bool* _dynamic_cast_ok, const void* self);
	friend void QUndoView_protectedbase_startAutoScroll(bool* _dynamic_cast_ok, void* self);
	friend void QUndoView_protectedbase_stopAutoScroll(bool* _dynamic_cast_ok, void* self);
	friend void QUndoView_protectedbase_doAutoScroll(bool* _dynamic_cast_ok, void* self);
	friend int QUndoView_protectedbase_dropIndicatorPosition(bool* _dynamic_cast_ok, const void* self);
	friend void QUndoView_protectedbase_setViewportMargins(bool* _dynamic_cast_ok, void* self, int left, int top, int right, int bottom);
	friend QMargins* QUndoView_protectedbase_viewportMargins(bool* _dynamic_cast_ok, const void* self);
	friend void QUndoView_protectedbase_drawFrame(bool* _dynamic_cast_ok, void* self, QPainter* param1);
	friend void QUndoView_protectedbase_initStyleOption(bool* _dynamic_cast_ok, const void* self, QStyleOptionFrame* option);
	friend void QUndoView_protectedbase_updateMicroFocus(bool* _dynamic_cast_ok, void* self);
	friend void QUndoView_protectedbase_create(bool* _dynamic_cast_ok, void* self);
	friend void QUndoView_protectedbase_destroy(bool* _dynamic_cast_ok, void* self);
	friend bool QUndoView_protectedbase_focusNextChild(bool* _dynamic_cast_ok, void* self);
	friend bool QUndoView_protectedbase_focusPreviousChild(bool* _dynamic_cast_ok, void* self);
	friend QObject* QUndoView_protectedbase_sender(bool* _dynamic_cast_ok, const void* self);
	friend int QUndoView_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self);
	friend int QUndoView_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal);
	friend bool QUndoView_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal);
};

QUndoView* QUndoView_new(struct QUndoView_VTable* vtbl, QWidget* parent) {
	return new VirtualQUndoView(vtbl, parent);
}

QUndoView* QUndoView_new2(struct QUndoView_VTable* vtbl) {
	return new VirtualQUndoView(vtbl);
}

QUndoView* QUndoView_new3(struct QUndoView_VTable* vtbl, QUndoStack* stack) {
	return new VirtualQUndoView(vtbl, stack);
}

QUndoView* QUndoView_new4(struct QUndoView_VTable* vtbl, QUndoGroup* group) {
	return new VirtualQUndoView(vtbl, group);
}

QUndoView* QUndoView_new5(struct QUndoView_VTable* vtbl, QUndoStack* stack, QWidget* parent) {
	return new VirtualQUndoView(vtbl, stack, parent);
}

QUndoView* QUndoView_new6(struct QUndoView_VTable* vtbl, QUndoGroup* group, QWidget* parent) {
	return new VirtualQUndoView(vtbl, group, parent);
}

void QUndoView_virtbase(QUndoView* src, QListView** outptr_QListView) {
	*outptr_QListView = static_cast<QListView*>(src);
}

QMetaObject* QUndoView_metaObject(const QUndoView* self) {
	return (QMetaObject*) self->metaObject();
}

void* QUndoView_metacast(QUndoView* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QUndoView_metacall(QUndoView* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QUndoView_tr(const char* s) {
	QString _ret = QUndoView::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QUndoView_trUtf8(const char* s) {
	QString _ret = QUndoView::trUtf8(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QUndoStack* QUndoView_stack(const QUndoView* self) {
	return self->stack();
}

QUndoGroup* QUndoView_group(const QUndoView* self) {
	return self->group();
}

void QUndoView_setEmptyLabel(QUndoView* self, struct miqt_string label) {
	QString label_QString = QString::fromUtf8(label.data, label.len);
	self->setEmptyLabel(label_QString);
}

struct miqt_string QUndoView_emptyLabel(const QUndoView* self) {
	QString _ret = self->emptyLabel();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QUndoView_setCleanIcon(QUndoView* self, QIcon* icon) {
	self->setCleanIcon(*icon);
}

QIcon* QUndoView_cleanIcon(const QUndoView* self) {
	return new QIcon(self->cleanIcon());
}

void QUndoView_setStack(QUndoView* self, QUndoStack* stack) {
	self->setStack(stack);
}

void QUndoView_setGroup(QUndoView* self, QUndoGroup* group) {
	self->setGroup(group);
}

struct miqt_string QUndoView_tr2(const char* s, const char* c) {
	QString _ret = QUndoView::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QUndoView_tr3(const char* s, const char* c, int n) {
	QString _ret = QUndoView::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QUndoView_trUtf82(const char* s, const char* c) {
	QString _ret = QUndoView::trUtf8(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QUndoView_trUtf83(const char* s, const char* c, int n) {
	QString _ret = QUndoView::trUtf8(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QMetaObject* QUndoView_virtualbase_metaObject(const void* self) {

	return (QMetaObject*) ( (const VirtualQUndoView*)(self) )->QUndoView::metaObject();

}

void* QUndoView_virtualbase_metacast(void* self, const char* param1) {

	return ( (VirtualQUndoView*)(self) )->QUndoView::qt_metacast(param1);

}

int QUndoView_virtualbase_metacall(void* self, int param1, int param2, void** param3) {

	return ( (VirtualQUndoView*)(self) )->QUndoView::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);

}

QRect* QUndoView_virtualbase_visualRect(const void* self, QModelIndex* index) {

	return new QRect(( (const VirtualQUndoView*)(self) )->QUndoView::visualRect(*index));

}

void QUndoView_virtualbase_scrollTo(void* self, QModelIndex* index, int hint) {

	( (VirtualQUndoView*)(self) )->QUndoView::scrollTo(*index, static_cast<VirtualQUndoView::ScrollHint>(hint));

}

QModelIndex* QUndoView_virtualbase_indexAt(const void* self, QPoint* p) {

	return new QModelIndex(( (const VirtualQUndoView*)(self) )->QUndoView::indexAt(*p));

}

void QUndoView_virtualbase_doItemsLayout(void* self) {

	( (VirtualQUndoView*)(self) )->QUndoView::doItemsLayout();

}

void QUndoView_virtualbase_reset(void* self) {

	( (VirtualQUndoView*)(self) )->QUndoView::reset();

}

void QUndoView_virtualbase_setRootIndex(void* self, QModelIndex* index) {

	( (VirtualQUndoView*)(self) )->QUndoView::setRootIndex(*index);

}

bool QUndoView_virtualbase_event(void* self, QEvent* e) {

	return ( (VirtualQUndoView*)(self) )->QUndoView::event(e);

}

void QUndoView_virtualbase_scrollContentsBy(void* self, int dx, int dy) {

	( (VirtualQUndoView*)(self) )->QUndoView::scrollContentsBy(static_cast<int>(dx), static_cast<int>(dy));

}

void QUndoView_virtualbase_dataChanged(void* self, QModelIndex* topLeft, QModelIndex* bottomRight, struct miqt_array /* of int */  roles) {
	QVector<int> roles_QList;
	roles_QList.reserve(roles.len);
	int* roles_arr = static_cast<int*>(roles.data);
	for(size_t i = 0; i < roles.len; ++i) {
		roles_QList.push_back(static_cast<int>(roles_arr[i]));
	}

	( (VirtualQUndoView*)(self) )->QUndoView::dataChanged(*topLeft, *bottomRight, roles_QList);

}

void QUndoView_virtualbase_rowsInserted(void* self, QModelIndex* parent, int start, int end) {

	( (VirtualQUndoView*)(self) )->QUndoView::rowsInserted(*parent, static_cast<int>(start), static_cast<int>(end));

}

void QUndoView_virtualbase_rowsAboutToBeRemoved(void* self, QModelIndex* parent, int start, int end) {

	( (VirtualQUndoView*)(self) )->QUndoView::rowsAboutToBeRemoved(*parent, static_cast<int>(start), static_cast<int>(end));

}

void QUndoView_virtualbase_mouseMoveEvent(void* self, QMouseEvent* e) {

	( (VirtualQUndoView*)(self) )->QUndoView::mouseMoveEvent(e);

}

void QUndoView_virtualbase_mouseReleaseEvent(void* self, QMouseEvent* e) {

	( (VirtualQUndoView*)(self) )->QUndoView::mouseReleaseEvent(e);

}

void QUndoView_virtualbase_wheelEvent(void* self, QWheelEvent* e) {

	( (VirtualQUndoView*)(self) )->QUndoView::wheelEvent(e);

}

void QUndoView_virtualbase_timerEvent(void* self, QTimerEvent* e) {

	( (VirtualQUndoView*)(self) )->QUndoView::timerEvent(e);

}

void QUndoView_virtualbase_resizeEvent(void* self, QResizeEvent* e) {

	( (VirtualQUndoView*)(self) )->QUndoView::resizeEvent(e);

}

void QUndoView_virtualbase_dragMoveEvent(void* self, QDragMoveEvent* e) {

	( (VirtualQUndoView*)(self) )->QUndoView::dragMoveEvent(e);

}

void QUndoView_virtualbase_dragLeaveEvent(void* self, QDragLeaveEvent* e) {

	( (VirtualQUndoView*)(self) )->QUndoView::dragLeaveEvent(e);

}

void QUndoView_virtualbase_dropEvent(void* self, QDropEvent* e) {

	( (VirtualQUndoView*)(self) )->QUndoView::dropEvent(e);

}

void QUndoView_virtualbase_startDrag(void* self, int supportedActions) {

	( (VirtualQUndoView*)(self) )->QUndoView::startDrag(static_cast<Qt::DropActions>(supportedActions));

}

QStyleOptionViewItem* QUndoView_virtualbase_viewOptions(const void* self) {

	return new QStyleOptionViewItem(( (const VirtualQUndoView*)(self) )->QUndoView::viewOptions());

}

void QUndoView_virtualbase_paintEvent(void* self, QPaintEvent* e) {

	( (VirtualQUndoView*)(self) )->QUndoView::paintEvent(e);

}

int QUndoView_virtualbase_horizontalOffset(const void* self) {

	return ( (const VirtualQUndoView*)(self) )->QUndoView::horizontalOffset();

}

int QUndoView_virtualbase_verticalOffset(const void* self) {

	return ( (const VirtualQUndoView*)(self) )->QUndoView::verticalOffset();

}

QModelIndex* QUndoView_virtualbase_moveCursor(void* self, int cursorAction, int modifiers) {

	return new QModelIndex(( (VirtualQUndoView*)(self) )->QUndoView::moveCursor(static_cast<VirtualQUndoView::CursorAction>(cursorAction), static_cast<Qt::KeyboardModifiers>(modifiers)));

}

void QUndoView_virtualbase_setSelection(void* self, QRect* rect, int command) {

	( (VirtualQUndoView*)(self) )->QUndoView::setSelection(*rect, static_cast<QItemSelectionModel::SelectionFlags>(command));

}

QRegion* QUndoView_virtualbase_visualRegionForSelection(const void* self, QItemSelection* selection) {

	return new QRegion(( (const VirtualQUndoView*)(self) )->QUndoView::visualRegionForSelection(*selection));

}

struct miqt_array /* of QModelIndex* */  QUndoView_virtualbase_selectedIndexes(const void* self) {

	QModelIndexList _ret = ( (const VirtualQUndoView*)(self) )->QUndoView::selectedIndexes();
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

void QUndoView_virtualbase_updateGeometries(void* self) {

	( (VirtualQUndoView*)(self) )->QUndoView::updateGeometries();

}

bool QUndoView_virtualbase_isIndexHidden(const void* self, QModelIndex* index) {

	return ( (const VirtualQUndoView*)(self) )->QUndoView::isIndexHidden(*index);

}

void QUndoView_virtualbase_selectionChanged(void* self, QItemSelection* selected, QItemSelection* deselected) {

	( (VirtualQUndoView*)(self) )->QUndoView::selectionChanged(*selected, *deselected);

}

void QUndoView_virtualbase_currentChanged(void* self, QModelIndex* current, QModelIndex* previous) {

	( (VirtualQUndoView*)(self) )->QUndoView::currentChanged(*current, *previous);

}

QSize* QUndoView_virtualbase_viewportSizeHint(const void* self) {

	return new QSize(( (const VirtualQUndoView*)(self) )->QUndoView::viewportSizeHint());

}

void QUndoView_virtualbase_setModel(void* self, QAbstractItemModel* model) {

	( (VirtualQUndoView*)(self) )->QUndoView::setModel(model);

}

void QUndoView_virtualbase_setSelectionModel(void* self, QItemSelectionModel* selectionModel) {

	( (VirtualQUndoView*)(self) )->QUndoView::setSelectionModel(selectionModel);

}

void QUndoView_virtualbase_keyboardSearch(void* self, struct miqt_string search) {
	QString search_QString = QString::fromUtf8(search.data, search.len);

	( (VirtualQUndoView*)(self) )->QUndoView::keyboardSearch(search_QString);

}

int QUndoView_virtualbase_sizeHintForRow(const void* self, int row) {

	return ( (const VirtualQUndoView*)(self) )->QUndoView::sizeHintForRow(static_cast<int>(row));

}

int QUndoView_virtualbase_sizeHintForColumn(const void* self, int column) {

	return ( (const VirtualQUndoView*)(self) )->QUndoView::sizeHintForColumn(static_cast<int>(column));

}

QVariant* QUndoView_virtualbase_inputMethodQuery(const void* self, int query) {

	return new QVariant(( (const VirtualQUndoView*)(self) )->QUndoView::inputMethodQuery(static_cast<Qt::InputMethodQuery>(query)));

}

void QUndoView_virtualbase_selectAll(void* self) {

	( (VirtualQUndoView*)(self) )->QUndoView::selectAll();

}

void QUndoView_virtualbase_updateEditorData(void* self) {

	( (VirtualQUndoView*)(self) )->QUndoView::updateEditorData();

}

void QUndoView_virtualbase_updateEditorGeometries(void* self) {

	( (VirtualQUndoView*)(self) )->QUndoView::updateEditorGeometries();

}

void QUndoView_virtualbase_verticalScrollbarAction(void* self, int action) {

	( (VirtualQUndoView*)(self) )->QUndoView::verticalScrollbarAction(static_cast<int>(action));

}

void QUndoView_virtualbase_horizontalScrollbarAction(void* self, int action) {

	( (VirtualQUndoView*)(self) )->QUndoView::horizontalScrollbarAction(static_cast<int>(action));

}

void QUndoView_virtualbase_verticalScrollbarValueChanged(void* self, int value) {

	( (VirtualQUndoView*)(self) )->QUndoView::verticalScrollbarValueChanged(static_cast<int>(value));

}

void QUndoView_virtualbase_horizontalScrollbarValueChanged(void* self, int value) {

	( (VirtualQUndoView*)(self) )->QUndoView::horizontalScrollbarValueChanged(static_cast<int>(value));

}

void QUndoView_virtualbase_closeEditor(void* self, QWidget* editor, int hint) {

	( (VirtualQUndoView*)(self) )->QUndoView::closeEditor(editor, static_cast<QAbstractItemDelegate::EndEditHint>(hint));

}

void QUndoView_virtualbase_commitData(void* self, QWidget* editor) {

	( (VirtualQUndoView*)(self) )->QUndoView::commitData(editor);

}

void QUndoView_virtualbase_editorDestroyed(void* self, QObject* editor) {

	( (VirtualQUndoView*)(self) )->QUndoView::editorDestroyed(editor);

}

bool QUndoView_virtualbase_edit2(void* self, QModelIndex* index, int trigger, QEvent* event) {

	return ( (VirtualQUndoView*)(self) )->QUndoView::edit(*index, static_cast<VirtualQUndoView::EditTrigger>(trigger), event);

}

int QUndoView_virtualbase_selectionCommand(const void* self, QModelIndex* index, QEvent* event) {

	QItemSelectionModel::SelectionFlags _ret = ( (const VirtualQUndoView*)(self) )->QUndoView::selectionCommand(*index, event);
	return static_cast<int>(_ret);

}

bool QUndoView_virtualbase_focusNextPrevChild(void* self, bool next) {

	return ( (VirtualQUndoView*)(self) )->QUndoView::focusNextPrevChild(next);

}

bool QUndoView_virtualbase_viewportEvent(void* self, QEvent* event) {

	return ( (VirtualQUndoView*)(self) )->QUndoView::viewportEvent(event);

}

void QUndoView_virtualbase_mousePressEvent(void* self, QMouseEvent* event) {

	( (VirtualQUndoView*)(self) )->QUndoView::mousePressEvent(event);

}

void QUndoView_virtualbase_mouseDoubleClickEvent(void* self, QMouseEvent* event) {

	( (VirtualQUndoView*)(self) )->QUndoView::mouseDoubleClickEvent(event);

}

void QUndoView_virtualbase_dragEnterEvent(void* self, QDragEnterEvent* event) {

	( (VirtualQUndoView*)(self) )->QUndoView::dragEnterEvent(event);

}

void QUndoView_virtualbase_focusInEvent(void* self, QFocusEvent* event) {

	( (VirtualQUndoView*)(self) )->QUndoView::focusInEvent(event);

}

void QUndoView_virtualbase_focusOutEvent(void* self, QFocusEvent* event) {

	( (VirtualQUndoView*)(self) )->QUndoView::focusOutEvent(event);

}

void QUndoView_virtualbase_keyPressEvent(void* self, QKeyEvent* event) {

	( (VirtualQUndoView*)(self) )->QUndoView::keyPressEvent(event);

}

void QUndoView_virtualbase_inputMethodEvent(void* self, QInputMethodEvent* event) {

	( (VirtualQUndoView*)(self) )->QUndoView::inputMethodEvent(event);

}

bool QUndoView_virtualbase_eventFilter(void* self, QObject* object, QEvent* event) {

	return ( (VirtualQUndoView*)(self) )->QUndoView::eventFilter(object, event);

}

QSize* QUndoView_virtualbase_minimumSizeHint(const void* self) {

	return new QSize(( (const VirtualQUndoView*)(self) )->QUndoView::minimumSizeHint());

}

QSize* QUndoView_virtualbase_sizeHint(const void* self) {

	return new QSize(( (const VirtualQUndoView*)(self) )->QUndoView::sizeHint());

}

void QUndoView_virtualbase_setupViewport(void* self, QWidget* viewport) {

	( (VirtualQUndoView*)(self) )->QUndoView::setupViewport(viewport);

}

void QUndoView_virtualbase_contextMenuEvent(void* self, QContextMenuEvent* param1) {

	( (VirtualQUndoView*)(self) )->QUndoView::contextMenuEvent(param1);

}

void QUndoView_virtualbase_changeEvent(void* self, QEvent* param1) {

	( (VirtualQUndoView*)(self) )->QUndoView::changeEvent(param1);

}

int QUndoView_virtualbase_devType(const void* self) {

	return ( (const VirtualQUndoView*)(self) )->QUndoView::devType();

}

void QUndoView_virtualbase_setVisible(void* self, bool visible) {

	( (VirtualQUndoView*)(self) )->QUndoView::setVisible(visible);

}

int QUndoView_virtualbase_heightForWidth(const void* self, int param1) {

	return ( (const VirtualQUndoView*)(self) )->QUndoView::heightForWidth(static_cast<int>(param1));

}

bool QUndoView_virtualbase_hasHeightForWidth(const void* self) {

	return ( (const VirtualQUndoView*)(self) )->QUndoView::hasHeightForWidth();

}

QPaintEngine* QUndoView_virtualbase_paintEngine(const void* self) {

	return ( (const VirtualQUndoView*)(self) )->QUndoView::paintEngine();

}

void QUndoView_virtualbase_keyReleaseEvent(void* self, QKeyEvent* event) {

	( (VirtualQUndoView*)(self) )->QUndoView::keyReleaseEvent(event);

}

void QUndoView_virtualbase_enterEvent(void* self, QEvent* event) {

	( (VirtualQUndoView*)(self) )->QUndoView::enterEvent(event);

}

void QUndoView_virtualbase_leaveEvent(void* self, QEvent* event) {

	( (VirtualQUndoView*)(self) )->QUndoView::leaveEvent(event);

}

void QUndoView_virtualbase_moveEvent(void* self, QMoveEvent* event) {

	( (VirtualQUndoView*)(self) )->QUndoView::moveEvent(event);

}

void QUndoView_virtualbase_closeEvent(void* self, QCloseEvent* event) {

	( (VirtualQUndoView*)(self) )->QUndoView::closeEvent(event);

}

void QUndoView_virtualbase_tabletEvent(void* self, QTabletEvent* event) {

	( (VirtualQUndoView*)(self) )->QUndoView::tabletEvent(event);

}

void QUndoView_virtualbase_actionEvent(void* self, QActionEvent* event) {

	( (VirtualQUndoView*)(self) )->QUndoView::actionEvent(event);

}

void QUndoView_virtualbase_showEvent(void* self, QShowEvent* event) {

	( (VirtualQUndoView*)(self) )->QUndoView::showEvent(event);

}

void QUndoView_virtualbase_hideEvent(void* self, QHideEvent* event) {

	( (VirtualQUndoView*)(self) )->QUndoView::hideEvent(event);

}

bool QUndoView_virtualbase_nativeEvent(void* self, struct miqt_string eventType, void* message, long* result) {
	QByteArray eventType_QByteArray(eventType.data, eventType.len);

	return ( (VirtualQUndoView*)(self) )->QUndoView::nativeEvent(eventType_QByteArray, message, static_cast<long*>(result));

}

int QUndoView_virtualbase_metric(const void* self, int param1) {

	return ( (const VirtualQUndoView*)(self) )->QUndoView::metric(static_cast<VirtualQUndoView::PaintDeviceMetric>(param1));

}

void QUndoView_virtualbase_initPainter(const void* self, QPainter* painter) {

	( (const VirtualQUndoView*)(self) )->QUndoView::initPainter(painter);

}

QPaintDevice* QUndoView_virtualbase_redirected(const void* self, QPoint* offset) {

	return ( (const VirtualQUndoView*)(self) )->QUndoView::redirected(offset);

}

QPainter* QUndoView_virtualbase_sharedPainter(const void* self) {

	return ( (const VirtualQUndoView*)(self) )->QUndoView::sharedPainter();

}

void QUndoView_virtualbase_childEvent(void* self, QChildEvent* event) {

	( (VirtualQUndoView*)(self) )->QUndoView::childEvent(event);

}

void QUndoView_virtualbase_customEvent(void* self, QEvent* event) {

	( (VirtualQUndoView*)(self) )->QUndoView::customEvent(event);

}

void QUndoView_virtualbase_connectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQUndoView*)(self) )->QUndoView::connectNotify(*signal);

}

void QUndoView_virtualbase_disconnectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQUndoView*)(self) )->QUndoView::disconnectNotify(*signal);

}

const QMetaObject* QUndoView_staticMetaObject() { return &QUndoView::staticMetaObject; }
void QUndoView_protectedbase_resizeContents(bool* _dynamic_cast_ok, void* self, int width, int height) {
	VirtualQUndoView* self_cast = dynamic_cast<VirtualQUndoView*>( (QUndoView*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->resizeContents(static_cast<int>(width), static_cast<int>(height));

}

QSize* QUndoView_protectedbase_contentsSize(bool* _dynamic_cast_ok, const void* self) {
	VirtualQUndoView* self_cast = dynamic_cast<VirtualQUndoView*>( (QUndoView*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return nullptr;
	}
	
	*_dynamic_cast_ok = true;
	
	return new QSize(self_cast->contentsSize());

}

QRect* QUndoView_protectedbase_rectForIndex(bool* _dynamic_cast_ok, const void* self, QModelIndex* index) {
	VirtualQUndoView* self_cast = dynamic_cast<VirtualQUndoView*>( (QUndoView*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return nullptr;
	}
	
	*_dynamic_cast_ok = true;
	
	return new QRect(self_cast->rectForIndex(*index));

}

void QUndoView_protectedbase_setPositionForIndex(bool* _dynamic_cast_ok, void* self, QPoint* position, QModelIndex* index) {
	VirtualQUndoView* self_cast = dynamic_cast<VirtualQUndoView*>( (QUndoView*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->setPositionForIndex(*position, *index);

}

void QUndoView_protectedbase_setHorizontalStepsPerItem(bool* _dynamic_cast_ok, void* self, int steps) {
	VirtualQUndoView* self_cast = dynamic_cast<VirtualQUndoView*>( (QUndoView*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->setHorizontalStepsPerItem(static_cast<int>(steps));

}

int QUndoView_protectedbase_horizontalStepsPerItem(bool* _dynamic_cast_ok, const void* self) {
	VirtualQUndoView* self_cast = dynamic_cast<VirtualQUndoView*>( (QUndoView*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return 0;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->horizontalStepsPerItem();

}

void QUndoView_protectedbase_setVerticalStepsPerItem(bool* _dynamic_cast_ok, void* self, int steps) {
	VirtualQUndoView* self_cast = dynamic_cast<VirtualQUndoView*>( (QUndoView*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->setVerticalStepsPerItem(static_cast<int>(steps));

}

int QUndoView_protectedbase_verticalStepsPerItem(bool* _dynamic_cast_ok, const void* self) {
	VirtualQUndoView* self_cast = dynamic_cast<VirtualQUndoView*>( (QUndoView*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return 0;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->verticalStepsPerItem();

}

int QUndoView_protectedbase_state(bool* _dynamic_cast_ok, const void* self) {
	VirtualQUndoView* self_cast = dynamic_cast<VirtualQUndoView*>( (QUndoView*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return (int)(0);
	}
	
	*_dynamic_cast_ok = true;
	
	VirtualQUndoView::State _ret = self_cast->state();
	return static_cast<int>(_ret);

}

void QUndoView_protectedbase_setState(bool* _dynamic_cast_ok, void* self, int state) {
	VirtualQUndoView* self_cast = dynamic_cast<VirtualQUndoView*>( (QUndoView*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->setState(static_cast<VirtualQUndoView::State>(state));

}

void QUndoView_protectedbase_scheduleDelayedItemsLayout(bool* _dynamic_cast_ok, void* self) {
	VirtualQUndoView* self_cast = dynamic_cast<VirtualQUndoView*>( (QUndoView*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->scheduleDelayedItemsLayout();

}

void QUndoView_protectedbase_executeDelayedItemsLayout(bool* _dynamic_cast_ok, void* self) {
	VirtualQUndoView* self_cast = dynamic_cast<VirtualQUndoView*>( (QUndoView*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->executeDelayedItemsLayout();

}

void QUndoView_protectedbase_setDirtyRegion(bool* _dynamic_cast_ok, void* self, QRegion* region) {
	VirtualQUndoView* self_cast = dynamic_cast<VirtualQUndoView*>( (QUndoView*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->setDirtyRegion(*region);

}

void QUndoView_protectedbase_scrollDirtyRegion(bool* _dynamic_cast_ok, void* self, int dx, int dy) {
	VirtualQUndoView* self_cast = dynamic_cast<VirtualQUndoView*>( (QUndoView*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->scrollDirtyRegion(static_cast<int>(dx), static_cast<int>(dy));

}

QPoint* QUndoView_protectedbase_dirtyRegionOffset(bool* _dynamic_cast_ok, const void* self) {
	VirtualQUndoView* self_cast = dynamic_cast<VirtualQUndoView*>( (QUndoView*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return nullptr;
	}
	
	*_dynamic_cast_ok = true;
	
	return new QPoint(self_cast->dirtyRegionOffset());

}

void QUndoView_protectedbase_startAutoScroll(bool* _dynamic_cast_ok, void* self) {
	VirtualQUndoView* self_cast = dynamic_cast<VirtualQUndoView*>( (QUndoView*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->startAutoScroll();

}

void QUndoView_protectedbase_stopAutoScroll(bool* _dynamic_cast_ok, void* self) {
	VirtualQUndoView* self_cast = dynamic_cast<VirtualQUndoView*>( (QUndoView*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->stopAutoScroll();

}

void QUndoView_protectedbase_doAutoScroll(bool* _dynamic_cast_ok, void* self) {
	VirtualQUndoView* self_cast = dynamic_cast<VirtualQUndoView*>( (QUndoView*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->doAutoScroll();

}

int QUndoView_protectedbase_dropIndicatorPosition(bool* _dynamic_cast_ok, const void* self) {
	VirtualQUndoView* self_cast = dynamic_cast<VirtualQUndoView*>( (QUndoView*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return (int)(0);
	}
	
	*_dynamic_cast_ok = true;
	
	VirtualQUndoView::DropIndicatorPosition _ret = self_cast->dropIndicatorPosition();
	return static_cast<int>(_ret);

}

void QUndoView_protectedbase_setViewportMargins(bool* _dynamic_cast_ok, void* self, int left, int top, int right, int bottom) {
	VirtualQUndoView* self_cast = dynamic_cast<VirtualQUndoView*>( (QUndoView*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->setViewportMargins(static_cast<int>(left), static_cast<int>(top), static_cast<int>(right), static_cast<int>(bottom));

}

QMargins* QUndoView_protectedbase_viewportMargins(bool* _dynamic_cast_ok, const void* self) {
	VirtualQUndoView* self_cast = dynamic_cast<VirtualQUndoView*>( (QUndoView*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return nullptr;
	}
	
	*_dynamic_cast_ok = true;
	
	return new QMargins(self_cast->viewportMargins());

}

void QUndoView_protectedbase_drawFrame(bool* _dynamic_cast_ok, void* self, QPainter* param1) {
	VirtualQUndoView* self_cast = dynamic_cast<VirtualQUndoView*>( (QUndoView*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->drawFrame(param1);

}

void QUndoView_protectedbase_initStyleOption(bool* _dynamic_cast_ok, const void* self, QStyleOptionFrame* option) {
	VirtualQUndoView* self_cast = dynamic_cast<VirtualQUndoView*>( (QUndoView*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->initStyleOption(option);

}

void QUndoView_protectedbase_updateMicroFocus(bool* _dynamic_cast_ok, void* self) {
	VirtualQUndoView* self_cast = dynamic_cast<VirtualQUndoView*>( (QUndoView*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->updateMicroFocus();

}

void QUndoView_protectedbase_create(bool* _dynamic_cast_ok, void* self) {
	VirtualQUndoView* self_cast = dynamic_cast<VirtualQUndoView*>( (QUndoView*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->create();

}

void QUndoView_protectedbase_destroy(bool* _dynamic_cast_ok, void* self) {
	VirtualQUndoView* self_cast = dynamic_cast<VirtualQUndoView*>( (QUndoView*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->destroy();

}

bool QUndoView_protectedbase_focusNextChild(bool* _dynamic_cast_ok, void* self) {
	VirtualQUndoView* self_cast = dynamic_cast<VirtualQUndoView*>( (QUndoView*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return false;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->focusNextChild();

}

bool QUndoView_protectedbase_focusPreviousChild(bool* _dynamic_cast_ok, void* self) {
	VirtualQUndoView* self_cast = dynamic_cast<VirtualQUndoView*>( (QUndoView*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return false;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->focusPreviousChild();

}

QObject* QUndoView_protectedbase_sender(bool* _dynamic_cast_ok, const void* self) {
	VirtualQUndoView* self_cast = dynamic_cast<VirtualQUndoView*>( (QUndoView*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return nullptr;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->sender();

}

int QUndoView_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self) {
	VirtualQUndoView* self_cast = dynamic_cast<VirtualQUndoView*>( (QUndoView*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return 0;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->senderSignalIndex();

}

int QUndoView_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal) {
	VirtualQUndoView* self_cast = dynamic_cast<VirtualQUndoView*>( (QUndoView*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return 0;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->receivers(signal);

}

bool QUndoView_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal) {
	VirtualQUndoView* self_cast = dynamic_cast<VirtualQUndoView*>( (QUndoView*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return false;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->isSignalConnected(*signal);

}

void QUndoView_delete(QUndoView* self) {
	delete self;
}

