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
class VirtualQUndoView final : public QUndoView {
	const QUndoView_VTable* vtbl;
	void* vdata;
public:
	friend const QUndoView_VTable* QUndoView_vtbl(const VirtualQUndoView* self);
	friend void* QUndoView_vdata(const VirtualQUndoView* self);
	friend void QUndoView_setVdata(VirtualQUndoView* self, void* vdata);

	VirtualQUndoView(const QUndoView_VTable* vtbl, void* vdata, QWidget* parent): QUndoView(parent), vtbl(vtbl), vdata(vdata) {}
	VirtualQUndoView(const QUndoView_VTable* vtbl, void* vdata): QUndoView(), vtbl(vtbl), vdata(vdata) {}
	VirtualQUndoView(const QUndoView_VTable* vtbl, void* vdata, QUndoStack* stack): QUndoView(stack), vtbl(vtbl), vdata(vdata) {}
	VirtualQUndoView(const QUndoView_VTable* vtbl, void* vdata, QUndoGroup* group): QUndoView(group), vtbl(vtbl), vdata(vdata) {}
	VirtualQUndoView(const QUndoView_VTable* vtbl, void* vdata, QUndoStack* stack, QWidget* parent): QUndoView(stack, parent), vtbl(vtbl), vdata(vdata) {}
	VirtualQUndoView(const QUndoView_VTable* vtbl, void* vdata, QUndoGroup* group, QWidget* parent): QUndoView(group, parent), vtbl(vtbl), vdata(vdata) {}

	virtual ~VirtualQUndoView() override { if(vtbl->destructor) vtbl->destructor(this); }

	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QUndoView::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(this);

		return callback_return_value;
	}

	friend QMetaObject* QUndoView_virtualbase_metaObject(const VirtualQUndoView* self);

	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QUndoView::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(this, sigval1);

		return callback_return_value;
	}

	friend void* QUndoView_virtualbase_metacast(VirtualQUndoView* self, const char* param1);

	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QUndoView::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QUndoView_virtualbase_metacall(VirtualQUndoView* self, int param1, int param2, void** param3);

	virtual QRect visualRect(const QModelIndex& index) const override {
		if (vtbl->visualRect == 0) {
			return QUndoView::visualRect(index);
		}

		const QModelIndex& index_ret = index;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&index_ret);

		QRect* callback_return_value = vtbl->visualRect(this, sigval1);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QRect* QUndoView_virtualbase_visualRect(const VirtualQUndoView* self, QModelIndex* index);

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

		vtbl->scrollTo(this, sigval1, sigval2);

	}

	friend void QUndoView_virtualbase_scrollTo(VirtualQUndoView* self, QModelIndex* index, int hint);

	virtual QModelIndex indexAt(const QPoint& p) const override {
		if (vtbl->indexAt == 0) {
			return QUndoView::indexAt(p);
		}

		const QPoint& p_ret = p;
		// Cast returned reference into pointer
		QPoint* sigval1 = const_cast<QPoint*>(&p_ret);

		QModelIndex* callback_return_value = vtbl->indexAt(this, sigval1);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QModelIndex* QUndoView_virtualbase_indexAt(const VirtualQUndoView* self, QPoint* p);

	virtual void doItemsLayout() override {
		if (vtbl->doItemsLayout == 0) {
			QUndoView::doItemsLayout();
			return;
		}


		vtbl->doItemsLayout(this);

	}

	friend void QUndoView_virtualbase_doItemsLayout(VirtualQUndoView* self);

	virtual void reset() override {
		if (vtbl->reset == 0) {
			QUndoView::reset();
			return;
		}


		vtbl->reset(this);

	}

	friend void QUndoView_virtualbase_reset(VirtualQUndoView* self);

	virtual void setRootIndex(const QModelIndex& index) override {
		if (vtbl->setRootIndex == 0) {
			QUndoView::setRootIndex(index);
			return;
		}

		const QModelIndex& index_ret = index;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&index_ret);

		vtbl->setRootIndex(this, sigval1);

	}

	friend void QUndoView_virtualbase_setRootIndex(VirtualQUndoView* self, QModelIndex* index);

	virtual bool event(QEvent* e) override {
		if (vtbl->event == 0) {
			return QUndoView::event(e);
		}

		QEvent* sigval1 = e;

		bool callback_return_value = vtbl->event(this, sigval1);

		return callback_return_value;
	}

	friend bool QUndoView_virtualbase_event(VirtualQUndoView* self, QEvent* e);

	virtual void scrollContentsBy(int dx, int dy) override {
		if (vtbl->scrollContentsBy == 0) {
			QUndoView::scrollContentsBy(dx, dy);
			return;
		}

		int sigval1 = dx;
		int sigval2 = dy;

		vtbl->scrollContentsBy(this, sigval1, sigval2);

	}

	friend void QUndoView_virtualbase_scrollContentsBy(VirtualQUndoView* self, int dx, int dy);

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

		vtbl->dataChanged(this, sigval1, sigval2, sigval3);

	}

	friend void QUndoView_virtualbase_dataChanged(VirtualQUndoView* self, QModelIndex* topLeft, QModelIndex* bottomRight, struct miqt_array /* of int */  roles);

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

		vtbl->rowsInserted(this, sigval1, sigval2, sigval3);

	}

	friend void QUndoView_virtualbase_rowsInserted(VirtualQUndoView* self, QModelIndex* parent, int start, int end);

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

		vtbl->rowsAboutToBeRemoved(this, sigval1, sigval2, sigval3);

	}

	friend void QUndoView_virtualbase_rowsAboutToBeRemoved(VirtualQUndoView* self, QModelIndex* parent, int start, int end);

	virtual void mouseMoveEvent(QMouseEvent* e) override {
		if (vtbl->mouseMoveEvent == 0) {
			QUndoView::mouseMoveEvent(e);
			return;
		}

		QMouseEvent* sigval1 = e;

		vtbl->mouseMoveEvent(this, sigval1);

	}

	friend void QUndoView_virtualbase_mouseMoveEvent(VirtualQUndoView* self, QMouseEvent* e);

	virtual void mouseReleaseEvent(QMouseEvent* e) override {
		if (vtbl->mouseReleaseEvent == 0) {
			QUndoView::mouseReleaseEvent(e);
			return;
		}

		QMouseEvent* sigval1 = e;

		vtbl->mouseReleaseEvent(this, sigval1);

	}

	friend void QUndoView_virtualbase_mouseReleaseEvent(VirtualQUndoView* self, QMouseEvent* e);

	virtual void wheelEvent(QWheelEvent* e) override {
		if (vtbl->wheelEvent == 0) {
			QUndoView::wheelEvent(e);
			return;
		}

		QWheelEvent* sigval1 = e;

		vtbl->wheelEvent(this, sigval1);

	}

	friend void QUndoView_virtualbase_wheelEvent(VirtualQUndoView* self, QWheelEvent* e);

	virtual void timerEvent(QTimerEvent* e) override {
		if (vtbl->timerEvent == 0) {
			QUndoView::timerEvent(e);
			return;
		}

		QTimerEvent* sigval1 = e;

		vtbl->timerEvent(this, sigval1);

	}

	friend void QUndoView_virtualbase_timerEvent(VirtualQUndoView* self, QTimerEvent* e);

	virtual void resizeEvent(QResizeEvent* e) override {
		if (vtbl->resizeEvent == 0) {
			QUndoView::resizeEvent(e);
			return;
		}

		QResizeEvent* sigval1 = e;

		vtbl->resizeEvent(this, sigval1);

	}

	friend void QUndoView_virtualbase_resizeEvent(VirtualQUndoView* self, QResizeEvent* e);

	virtual void dragMoveEvent(QDragMoveEvent* e) override {
		if (vtbl->dragMoveEvent == 0) {
			QUndoView::dragMoveEvent(e);
			return;
		}

		QDragMoveEvent* sigval1 = e;

		vtbl->dragMoveEvent(this, sigval1);

	}

	friend void QUndoView_virtualbase_dragMoveEvent(VirtualQUndoView* self, QDragMoveEvent* e);

	virtual void dragLeaveEvent(QDragLeaveEvent* e) override {
		if (vtbl->dragLeaveEvent == 0) {
			QUndoView::dragLeaveEvent(e);
			return;
		}

		QDragLeaveEvent* sigval1 = e;

		vtbl->dragLeaveEvent(this, sigval1);

	}

	friend void QUndoView_virtualbase_dragLeaveEvent(VirtualQUndoView* self, QDragLeaveEvent* e);

	virtual void dropEvent(QDropEvent* e) override {
		if (vtbl->dropEvent == 0) {
			QUndoView::dropEvent(e);
			return;
		}

		QDropEvent* sigval1 = e;

		vtbl->dropEvent(this, sigval1);

	}

	friend void QUndoView_virtualbase_dropEvent(VirtualQUndoView* self, QDropEvent* e);

	virtual void startDrag(Qt::DropActions supportedActions) override {
		if (vtbl->startDrag == 0) {
			QUndoView::startDrag(supportedActions);
			return;
		}

		Qt::DropActions supportedActions_ret = supportedActions;
		int sigval1 = static_cast<int>(supportedActions_ret);

		vtbl->startDrag(this, sigval1);

	}

	friend void QUndoView_virtualbase_startDrag(VirtualQUndoView* self, int supportedActions);

	virtual QStyleOptionViewItem viewOptions() const override {
		if (vtbl->viewOptions == 0) {
			return QUndoView::viewOptions();
		}


		QStyleOptionViewItem* callback_return_value = vtbl->viewOptions(this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QStyleOptionViewItem* QUndoView_virtualbase_viewOptions(const VirtualQUndoView* self);

	virtual void paintEvent(QPaintEvent* e) override {
		if (vtbl->paintEvent == 0) {
			QUndoView::paintEvent(e);
			return;
		}

		QPaintEvent* sigval1 = e;

		vtbl->paintEvent(this, sigval1);

	}

	friend void QUndoView_virtualbase_paintEvent(VirtualQUndoView* self, QPaintEvent* e);

	virtual int horizontalOffset() const override {
		if (vtbl->horizontalOffset == 0) {
			return QUndoView::horizontalOffset();
		}


		int callback_return_value = vtbl->horizontalOffset(this);

		return static_cast<int>(callback_return_value);
	}

	friend int QUndoView_virtualbase_horizontalOffset(const VirtualQUndoView* self);

	virtual int verticalOffset() const override {
		if (vtbl->verticalOffset == 0) {
			return QUndoView::verticalOffset();
		}


		int callback_return_value = vtbl->verticalOffset(this);

		return static_cast<int>(callback_return_value);
	}

	friend int QUndoView_virtualbase_verticalOffset(const VirtualQUndoView* self);

	virtual QModelIndex moveCursor(QAbstractItemView::CursorAction cursorAction, Qt::KeyboardModifiers modifiers) override {
		if (vtbl->moveCursor == 0) {
			return QUndoView::moveCursor(cursorAction, modifiers);
		}

		QAbstractItemView::CursorAction cursorAction_ret = cursorAction;
		int sigval1 = static_cast<int>(cursorAction_ret);
		Qt::KeyboardModifiers modifiers_ret = modifiers;
		int sigval2 = static_cast<int>(modifiers_ret);

		QModelIndex* callback_return_value = vtbl->moveCursor(this, sigval1, sigval2);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QModelIndex* QUndoView_virtualbase_moveCursor(VirtualQUndoView* self, int cursorAction, int modifiers);

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

		vtbl->setSelection(this, sigval1, sigval2);

	}

	friend void QUndoView_virtualbase_setSelection(VirtualQUndoView* self, QRect* rect, int command);

	virtual QRegion visualRegionForSelection(const QItemSelection& selection) const override {
		if (vtbl->visualRegionForSelection == 0) {
			return QUndoView::visualRegionForSelection(selection);
		}

		const QItemSelection& selection_ret = selection;
		// Cast returned reference into pointer
		QItemSelection* sigval1 = const_cast<QItemSelection*>(&selection_ret);

		QRegion* callback_return_value = vtbl->visualRegionForSelection(this, sigval1);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QRegion* QUndoView_virtualbase_visualRegionForSelection(const VirtualQUndoView* self, QItemSelection* selection);

	virtual QModelIndexList selectedIndexes() const override {
		if (vtbl->selectedIndexes == 0) {
			return QUndoView::selectedIndexes();
		}


		struct miqt_array /* of QModelIndex* */  callback_return_value = vtbl->selectedIndexes(this);
		QModelIndexList callback_return_value_QList;
		callback_return_value_QList.reserve(callback_return_value.len);
		QModelIndex** callback_return_value_arr = static_cast<QModelIndex**>(callback_return_value.data);
		for(size_t i = 0; i < callback_return_value.len; ++i) {
			callback_return_value_QList.push_back(*(callback_return_value_arr[i]));
		}
		free(callback_return_value.data);

		return callback_return_value_QList;
	}

	friend struct miqt_array /* of QModelIndex* */  QUndoView_virtualbase_selectedIndexes(const VirtualQUndoView* self);

	virtual void updateGeometries() override {
		if (vtbl->updateGeometries == 0) {
			QUndoView::updateGeometries();
			return;
		}


		vtbl->updateGeometries(this);

	}

	friend void QUndoView_virtualbase_updateGeometries(VirtualQUndoView* self);

	virtual bool isIndexHidden(const QModelIndex& index) const override {
		if (vtbl->isIndexHidden == 0) {
			return QUndoView::isIndexHidden(index);
		}

		const QModelIndex& index_ret = index;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&index_ret);

		bool callback_return_value = vtbl->isIndexHidden(this, sigval1);

		return callback_return_value;
	}

	friend bool QUndoView_virtualbase_isIndexHidden(const VirtualQUndoView* self, QModelIndex* index);

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

		vtbl->selectionChanged(this, sigval1, sigval2);

	}

	friend void QUndoView_virtualbase_selectionChanged(VirtualQUndoView* self, QItemSelection* selected, QItemSelection* deselected);

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

		vtbl->currentChanged(this, sigval1, sigval2);

	}

	friend void QUndoView_virtualbase_currentChanged(VirtualQUndoView* self, QModelIndex* current, QModelIndex* previous);

	virtual QSize viewportSizeHint() const override {
		if (vtbl->viewportSizeHint == 0) {
			return QUndoView::viewportSizeHint();
		}


		QSize* callback_return_value = vtbl->viewportSizeHint(this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QSize* QUndoView_virtualbase_viewportSizeHint(const VirtualQUndoView* self);

	virtual void setModel(QAbstractItemModel* model) override {
		if (vtbl->setModel == 0) {
			QUndoView::setModel(model);
			return;
		}

		QAbstractItemModel* sigval1 = model;

		vtbl->setModel(this, sigval1);

	}

	friend void QUndoView_virtualbase_setModel(VirtualQUndoView* self, QAbstractItemModel* model);

	virtual void setSelectionModel(QItemSelectionModel* selectionModel) override {
		if (vtbl->setSelectionModel == 0) {
			QUndoView::setSelectionModel(selectionModel);
			return;
		}

		QItemSelectionModel* sigval1 = selectionModel;

		vtbl->setSelectionModel(this, sigval1);

	}

	friend void QUndoView_virtualbase_setSelectionModel(VirtualQUndoView* self, QItemSelectionModel* selectionModel);

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

		vtbl->keyboardSearch(this, sigval1);

	}

	friend void QUndoView_virtualbase_keyboardSearch(VirtualQUndoView* self, struct miqt_string search);

	virtual int sizeHintForRow(int row) const override {
		if (vtbl->sizeHintForRow == 0) {
			return QUndoView::sizeHintForRow(row);
		}

		int sigval1 = row;

		int callback_return_value = vtbl->sizeHintForRow(this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QUndoView_virtualbase_sizeHintForRow(const VirtualQUndoView* self, int row);

	virtual int sizeHintForColumn(int column) const override {
		if (vtbl->sizeHintForColumn == 0) {
			return QUndoView::sizeHintForColumn(column);
		}

		int sigval1 = column;

		int callback_return_value = vtbl->sizeHintForColumn(this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QUndoView_virtualbase_sizeHintForColumn(const VirtualQUndoView* self, int column);

	virtual QVariant inputMethodQuery(Qt::InputMethodQuery query) const override {
		if (vtbl->inputMethodQuery == 0) {
			return QUndoView::inputMethodQuery(query);
		}

		Qt::InputMethodQuery query_ret = query;
		int sigval1 = static_cast<int>(query_ret);

		QVariant* callback_return_value = vtbl->inputMethodQuery(this, sigval1);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QVariant* QUndoView_virtualbase_inputMethodQuery(const VirtualQUndoView* self, int query);

	virtual void selectAll() override {
		if (vtbl->selectAll == 0) {
			QUndoView::selectAll();
			return;
		}


		vtbl->selectAll(this);

	}

	friend void QUndoView_virtualbase_selectAll(VirtualQUndoView* self);

	virtual void updateEditorData() override {
		if (vtbl->updateEditorData == 0) {
			QUndoView::updateEditorData();
			return;
		}


		vtbl->updateEditorData(this);

	}

	friend void QUndoView_virtualbase_updateEditorData(VirtualQUndoView* self);

	virtual void updateEditorGeometries() override {
		if (vtbl->updateEditorGeometries == 0) {
			QUndoView::updateEditorGeometries();
			return;
		}


		vtbl->updateEditorGeometries(this);

	}

	friend void QUndoView_virtualbase_updateEditorGeometries(VirtualQUndoView* self);

	virtual void verticalScrollbarAction(int action) override {
		if (vtbl->verticalScrollbarAction == 0) {
			QUndoView::verticalScrollbarAction(action);
			return;
		}

		int sigval1 = action;

		vtbl->verticalScrollbarAction(this, sigval1);

	}

	friend void QUndoView_virtualbase_verticalScrollbarAction(VirtualQUndoView* self, int action);

	virtual void horizontalScrollbarAction(int action) override {
		if (vtbl->horizontalScrollbarAction == 0) {
			QUndoView::horizontalScrollbarAction(action);
			return;
		}

		int sigval1 = action;

		vtbl->horizontalScrollbarAction(this, sigval1);

	}

	friend void QUndoView_virtualbase_horizontalScrollbarAction(VirtualQUndoView* self, int action);

	virtual void verticalScrollbarValueChanged(int value) override {
		if (vtbl->verticalScrollbarValueChanged == 0) {
			QUndoView::verticalScrollbarValueChanged(value);
			return;
		}

		int sigval1 = value;

		vtbl->verticalScrollbarValueChanged(this, sigval1);

	}

	friend void QUndoView_virtualbase_verticalScrollbarValueChanged(VirtualQUndoView* self, int value);

	virtual void horizontalScrollbarValueChanged(int value) override {
		if (vtbl->horizontalScrollbarValueChanged == 0) {
			QUndoView::horizontalScrollbarValueChanged(value);
			return;
		}

		int sigval1 = value;

		vtbl->horizontalScrollbarValueChanged(this, sigval1);

	}

	friend void QUndoView_virtualbase_horizontalScrollbarValueChanged(VirtualQUndoView* self, int value);

	virtual void closeEditor(QWidget* editor, QAbstractItemDelegate::EndEditHint hint) override {
		if (vtbl->closeEditor == 0) {
			QUndoView::closeEditor(editor, hint);
			return;
		}

		QWidget* sigval1 = editor;
		QAbstractItemDelegate::EndEditHint hint_ret = hint;
		int sigval2 = static_cast<int>(hint_ret);

		vtbl->closeEditor(this, sigval1, sigval2);

	}

	friend void QUndoView_virtualbase_closeEditor(VirtualQUndoView* self, QWidget* editor, int hint);

	virtual void commitData(QWidget* editor) override {
		if (vtbl->commitData == 0) {
			QUndoView::commitData(editor);
			return;
		}

		QWidget* sigval1 = editor;

		vtbl->commitData(this, sigval1);

	}

	friend void QUndoView_virtualbase_commitData(VirtualQUndoView* self, QWidget* editor);

	virtual void editorDestroyed(QObject* editor) override {
		if (vtbl->editorDestroyed == 0) {
			QUndoView::editorDestroyed(editor);
			return;
		}

		QObject* sigval1 = editor;

		vtbl->editorDestroyed(this, sigval1);

	}

	friend void QUndoView_virtualbase_editorDestroyed(VirtualQUndoView* self, QObject* editor);

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

		bool callback_return_value = vtbl->edit2(this, sigval1, sigval2, sigval3);

		return callback_return_value;
	}

	friend bool QUndoView_virtualbase_edit2(VirtualQUndoView* self, QModelIndex* index, int trigger, QEvent* event);

	virtual QItemSelectionModel::SelectionFlags selectionCommand(const QModelIndex& index, const QEvent* event) const override {
		if (vtbl->selectionCommand == 0) {
			return QUndoView::selectionCommand(index, event);
		}

		const QModelIndex& index_ret = index;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&index_ret);
		QEvent* sigval2 = (QEvent*) event;

		int callback_return_value = vtbl->selectionCommand(this, sigval1, sigval2);

		return static_cast<QItemSelectionModel::SelectionFlags>(callback_return_value);
	}

	friend int QUndoView_virtualbase_selectionCommand(const VirtualQUndoView* self, QModelIndex* index, QEvent* event);

	virtual bool focusNextPrevChild(bool next) override {
		if (vtbl->focusNextPrevChild == 0) {
			return QUndoView::focusNextPrevChild(next);
		}

		bool sigval1 = next;

		bool callback_return_value = vtbl->focusNextPrevChild(this, sigval1);

		return callback_return_value;
	}

	friend bool QUndoView_virtualbase_focusNextPrevChild(VirtualQUndoView* self, bool next);

	virtual bool viewportEvent(QEvent* event) override {
		if (vtbl->viewportEvent == 0) {
			return QUndoView::viewportEvent(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->viewportEvent(this, sigval1);

		return callback_return_value;
	}

	friend bool QUndoView_virtualbase_viewportEvent(VirtualQUndoView* self, QEvent* event);

	virtual void mousePressEvent(QMouseEvent* event) override {
		if (vtbl->mousePressEvent == 0) {
			QUndoView::mousePressEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mousePressEvent(this, sigval1);

	}

	friend void QUndoView_virtualbase_mousePressEvent(VirtualQUndoView* self, QMouseEvent* event);

	virtual void mouseDoubleClickEvent(QMouseEvent* event) override {
		if (vtbl->mouseDoubleClickEvent == 0) {
			QUndoView::mouseDoubleClickEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseDoubleClickEvent(this, sigval1);

	}

	friend void QUndoView_virtualbase_mouseDoubleClickEvent(VirtualQUndoView* self, QMouseEvent* event);

	virtual void dragEnterEvent(QDragEnterEvent* event) override {
		if (vtbl->dragEnterEvent == 0) {
			QUndoView::dragEnterEvent(event);
			return;
		}

		QDragEnterEvent* sigval1 = event;

		vtbl->dragEnterEvent(this, sigval1);

	}

	friend void QUndoView_virtualbase_dragEnterEvent(VirtualQUndoView* self, QDragEnterEvent* event);

	virtual void focusInEvent(QFocusEvent* event) override {
		if (vtbl->focusInEvent == 0) {
			QUndoView::focusInEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;

		vtbl->focusInEvent(this, sigval1);

	}

	friend void QUndoView_virtualbase_focusInEvent(VirtualQUndoView* self, QFocusEvent* event);

	virtual void focusOutEvent(QFocusEvent* event) override {
		if (vtbl->focusOutEvent == 0) {
			QUndoView::focusOutEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;

		vtbl->focusOutEvent(this, sigval1);

	}

	friend void QUndoView_virtualbase_focusOutEvent(VirtualQUndoView* self, QFocusEvent* event);

	virtual void keyPressEvent(QKeyEvent* event) override {
		if (vtbl->keyPressEvent == 0) {
			QUndoView::keyPressEvent(event);
			return;
		}

		QKeyEvent* sigval1 = event;

		vtbl->keyPressEvent(this, sigval1);

	}

	friend void QUndoView_virtualbase_keyPressEvent(VirtualQUndoView* self, QKeyEvent* event);

	virtual void inputMethodEvent(QInputMethodEvent* event) override {
		if (vtbl->inputMethodEvent == 0) {
			QUndoView::inputMethodEvent(event);
			return;
		}

		QInputMethodEvent* sigval1 = event;

		vtbl->inputMethodEvent(this, sigval1);

	}

	friend void QUndoView_virtualbase_inputMethodEvent(VirtualQUndoView* self, QInputMethodEvent* event);

	virtual bool eventFilter(QObject* object, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QUndoView::eventFilter(object, event);
		}

		QObject* sigval1 = object;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QUndoView_virtualbase_eventFilter(VirtualQUndoView* self, QObject* object, QEvent* event);

	virtual QSize minimumSizeHint() const override {
		if (vtbl->minimumSizeHint == 0) {
			return QUndoView::minimumSizeHint();
		}


		QSize* callback_return_value = vtbl->minimumSizeHint(this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QSize* QUndoView_virtualbase_minimumSizeHint(const VirtualQUndoView* self);

	virtual QSize sizeHint() const override {
		if (vtbl->sizeHint == 0) {
			return QUndoView::sizeHint();
		}


		QSize* callback_return_value = vtbl->sizeHint(this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QSize* QUndoView_virtualbase_sizeHint(const VirtualQUndoView* self);

	virtual void setupViewport(QWidget* viewport) override {
		if (vtbl->setupViewport == 0) {
			QUndoView::setupViewport(viewport);
			return;
		}

		QWidget* sigval1 = viewport;

		vtbl->setupViewport(this, sigval1);

	}

	friend void QUndoView_virtualbase_setupViewport(VirtualQUndoView* self, QWidget* viewport);

	virtual void contextMenuEvent(QContextMenuEvent* param1) override {
		if (vtbl->contextMenuEvent == 0) {
			QUndoView::contextMenuEvent(param1);
			return;
		}

		QContextMenuEvent* sigval1 = param1;

		vtbl->contextMenuEvent(this, sigval1);

	}

	friend void QUndoView_virtualbase_contextMenuEvent(VirtualQUndoView* self, QContextMenuEvent* param1);

	virtual void changeEvent(QEvent* param1) override {
		if (vtbl->changeEvent == 0) {
			QUndoView::changeEvent(param1);
			return;
		}

		QEvent* sigval1 = param1;

		vtbl->changeEvent(this, sigval1);

	}

	friend void QUndoView_virtualbase_changeEvent(VirtualQUndoView* self, QEvent* param1);

	virtual int devType() const override {
		if (vtbl->devType == 0) {
			return QUndoView::devType();
		}


		int callback_return_value = vtbl->devType(this);

		return static_cast<int>(callback_return_value);
	}

	friend int QUndoView_virtualbase_devType(const VirtualQUndoView* self);

	virtual void setVisible(bool visible) override {
		if (vtbl->setVisible == 0) {
			QUndoView::setVisible(visible);
			return;
		}

		bool sigval1 = visible;

		vtbl->setVisible(this, sigval1);

	}

	friend void QUndoView_virtualbase_setVisible(VirtualQUndoView* self, bool visible);

	virtual int heightForWidth(int param1) const override {
		if (vtbl->heightForWidth == 0) {
			return QUndoView::heightForWidth(param1);
		}

		int sigval1 = param1;

		int callback_return_value = vtbl->heightForWidth(this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QUndoView_virtualbase_heightForWidth(const VirtualQUndoView* self, int param1);

	virtual bool hasHeightForWidth() const override {
		if (vtbl->hasHeightForWidth == 0) {
			return QUndoView::hasHeightForWidth();
		}


		bool callback_return_value = vtbl->hasHeightForWidth(this);

		return callback_return_value;
	}

	friend bool QUndoView_virtualbase_hasHeightForWidth(const VirtualQUndoView* self);

	virtual QPaintEngine* paintEngine() const override {
		if (vtbl->paintEngine == 0) {
			return QUndoView::paintEngine();
		}


		QPaintEngine* callback_return_value = vtbl->paintEngine(this);

		return callback_return_value;
	}

	friend QPaintEngine* QUndoView_virtualbase_paintEngine(const VirtualQUndoView* self);

	virtual void keyReleaseEvent(QKeyEvent* event) override {
		if (vtbl->keyReleaseEvent == 0) {
			QUndoView::keyReleaseEvent(event);
			return;
		}

		QKeyEvent* sigval1 = event;

		vtbl->keyReleaseEvent(this, sigval1);

	}

	friend void QUndoView_virtualbase_keyReleaseEvent(VirtualQUndoView* self, QKeyEvent* event);

	virtual void enterEvent(QEvent* event) override {
		if (vtbl->enterEvent == 0) {
			QUndoView::enterEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->enterEvent(this, sigval1);

	}

	friend void QUndoView_virtualbase_enterEvent(VirtualQUndoView* self, QEvent* event);

	virtual void leaveEvent(QEvent* event) override {
		if (vtbl->leaveEvent == 0) {
			QUndoView::leaveEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->leaveEvent(this, sigval1);

	}

	friend void QUndoView_virtualbase_leaveEvent(VirtualQUndoView* self, QEvent* event);

	virtual void moveEvent(QMoveEvent* event) override {
		if (vtbl->moveEvent == 0) {
			QUndoView::moveEvent(event);
			return;
		}

		QMoveEvent* sigval1 = event;

		vtbl->moveEvent(this, sigval1);

	}

	friend void QUndoView_virtualbase_moveEvent(VirtualQUndoView* self, QMoveEvent* event);

	virtual void closeEvent(QCloseEvent* event) override {
		if (vtbl->closeEvent == 0) {
			QUndoView::closeEvent(event);
			return;
		}

		QCloseEvent* sigval1 = event;

		vtbl->closeEvent(this, sigval1);

	}

	friend void QUndoView_virtualbase_closeEvent(VirtualQUndoView* self, QCloseEvent* event);

	virtual void tabletEvent(QTabletEvent* event) override {
		if (vtbl->tabletEvent == 0) {
			QUndoView::tabletEvent(event);
			return;
		}

		QTabletEvent* sigval1 = event;

		vtbl->tabletEvent(this, sigval1);

	}

	friend void QUndoView_virtualbase_tabletEvent(VirtualQUndoView* self, QTabletEvent* event);

	virtual void actionEvent(QActionEvent* event) override {
		if (vtbl->actionEvent == 0) {
			QUndoView::actionEvent(event);
			return;
		}

		QActionEvent* sigval1 = event;

		vtbl->actionEvent(this, sigval1);

	}

	friend void QUndoView_virtualbase_actionEvent(VirtualQUndoView* self, QActionEvent* event);

	virtual void showEvent(QShowEvent* event) override {
		if (vtbl->showEvent == 0) {
			QUndoView::showEvent(event);
			return;
		}

		QShowEvent* sigval1 = event;

		vtbl->showEvent(this, sigval1);

	}

	friend void QUndoView_virtualbase_showEvent(VirtualQUndoView* self, QShowEvent* event);

	virtual void hideEvent(QHideEvent* event) override {
		if (vtbl->hideEvent == 0) {
			QUndoView::hideEvent(event);
			return;
		}

		QHideEvent* sigval1 = event;

		vtbl->hideEvent(this, sigval1);

	}

	friend void QUndoView_virtualbase_hideEvent(VirtualQUndoView* self, QHideEvent* event);

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

		bool callback_return_value = vtbl->nativeEvent(this, sigval1, sigval2, sigval3);

		return callback_return_value;
	}

	friend bool QUndoView_virtualbase_nativeEvent(VirtualQUndoView* self, struct miqt_string eventType, void* message, long* result);

	virtual int metric(QPaintDevice::PaintDeviceMetric param1) const override {
		if (vtbl->metric == 0) {
			return QUndoView::metric(param1);
		}

		QPaintDevice::PaintDeviceMetric param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);

		int callback_return_value = vtbl->metric(this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QUndoView_virtualbase_metric(const VirtualQUndoView* self, int param1);

	virtual void initPainter(QPainter* painter) const override {
		if (vtbl->initPainter == 0) {
			QUndoView::initPainter(painter);
			return;
		}

		QPainter* sigval1 = painter;

		vtbl->initPainter(this, sigval1);

	}

	friend void QUndoView_virtualbase_initPainter(const VirtualQUndoView* self, QPainter* painter);

	virtual QPaintDevice* redirected(QPoint* offset) const override {
		if (vtbl->redirected == 0) {
			return QUndoView::redirected(offset);
		}

		QPoint* sigval1 = offset;

		QPaintDevice* callback_return_value = vtbl->redirected(this, sigval1);

		return callback_return_value;
	}

	friend QPaintDevice* QUndoView_virtualbase_redirected(const VirtualQUndoView* self, QPoint* offset);

	virtual QPainter* sharedPainter() const override {
		if (vtbl->sharedPainter == 0) {
			return QUndoView::sharedPainter();
		}


		QPainter* callback_return_value = vtbl->sharedPainter(this);

		return callback_return_value;
	}

	friend QPainter* QUndoView_virtualbase_sharedPainter(const VirtualQUndoView* self);

	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QUndoView::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(this, sigval1);

	}

	friend void QUndoView_virtualbase_childEvent(VirtualQUndoView* self, QChildEvent* event);

	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QUndoView::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(this, sigval1);

	}

	friend void QUndoView_virtualbase_customEvent(VirtualQUndoView* self, QEvent* event);

	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QUndoView::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(this, sigval1);

	}

	friend void QUndoView_virtualbase_connectNotify(VirtualQUndoView* self, QMetaMethod* signal);

	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QUndoView::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(this, sigval1);

	}

	friend void QUndoView_virtualbase_disconnectNotify(VirtualQUndoView* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend void QUndoView_protectedbase_resizeContents(VirtualQUndoView* self, int width, int height);
	friend QSize* QUndoView_protectedbase_contentsSize(const VirtualQUndoView* self);
	friend QRect* QUndoView_protectedbase_rectForIndex(const VirtualQUndoView* self, QModelIndex* index);
	friend void QUndoView_protectedbase_setPositionForIndex(VirtualQUndoView* self, QPoint* position, QModelIndex* index);
	friend void QUndoView_protectedbase_setHorizontalStepsPerItem(VirtualQUndoView* self, int steps);
	friend int QUndoView_protectedbase_horizontalStepsPerItem(const VirtualQUndoView* self);
	friend void QUndoView_protectedbase_setVerticalStepsPerItem(VirtualQUndoView* self, int steps);
	friend int QUndoView_protectedbase_verticalStepsPerItem(const VirtualQUndoView* self);
	friend int QUndoView_protectedbase_state(const VirtualQUndoView* self);
	friend void QUndoView_protectedbase_setState(VirtualQUndoView* self, int state);
	friend void QUndoView_protectedbase_scheduleDelayedItemsLayout(VirtualQUndoView* self);
	friend void QUndoView_protectedbase_executeDelayedItemsLayout(VirtualQUndoView* self);
	friend void QUndoView_protectedbase_setDirtyRegion(VirtualQUndoView* self, QRegion* region);
	friend void QUndoView_protectedbase_scrollDirtyRegion(VirtualQUndoView* self, int dx, int dy);
	friend QPoint* QUndoView_protectedbase_dirtyRegionOffset(const VirtualQUndoView* self);
	friend void QUndoView_protectedbase_startAutoScroll(VirtualQUndoView* self);
	friend void QUndoView_protectedbase_stopAutoScroll(VirtualQUndoView* self);
	friend void QUndoView_protectedbase_doAutoScroll(VirtualQUndoView* self);
	friend int QUndoView_protectedbase_dropIndicatorPosition(const VirtualQUndoView* self);
	friend void QUndoView_protectedbase_setViewportMargins(VirtualQUndoView* self, int left, int top, int right, int bottom);
	friend QMargins* QUndoView_protectedbase_viewportMargins(const VirtualQUndoView* self);
	friend void QUndoView_protectedbase_drawFrame(VirtualQUndoView* self, QPainter* param1);
	friend void QUndoView_protectedbase_initStyleOption(const VirtualQUndoView* self, QStyleOptionFrame* option);
	friend void QUndoView_protectedbase_updateMicroFocus(VirtualQUndoView* self);
	friend void QUndoView_protectedbase_create(VirtualQUndoView* self);
	friend void QUndoView_protectedbase_destroy(VirtualQUndoView* self);
	friend bool QUndoView_protectedbase_focusNextChild(VirtualQUndoView* self);
	friend bool QUndoView_protectedbase_focusPreviousChild(VirtualQUndoView* self);
	friend QObject* QUndoView_protectedbase_sender(const VirtualQUndoView* self);
	friend int QUndoView_protectedbase_senderSignalIndex(const VirtualQUndoView* self);
	friend int QUndoView_protectedbase_receivers(const VirtualQUndoView* self, const char* signal);
	friend bool QUndoView_protectedbase_isSignalConnected(const VirtualQUndoView* self, QMetaMethod* signal);
};

VirtualQUndoView* QUndoView_new(const QUndoView_VTable* vtbl, void* vdata, QWidget* parent) {
	return new VirtualQUndoView(vtbl, vdata, parent);
}

VirtualQUndoView* QUndoView_new2(const QUndoView_VTable* vtbl, void* vdata) {
	return new VirtualQUndoView(vtbl, vdata);
}

VirtualQUndoView* QUndoView_new3(const QUndoView_VTable* vtbl, void* vdata, QUndoStack* stack) {
	return new VirtualQUndoView(vtbl, vdata, stack);
}

VirtualQUndoView* QUndoView_new4(const QUndoView_VTable* vtbl, void* vdata, QUndoGroup* group) {
	return new VirtualQUndoView(vtbl, vdata, group);
}

VirtualQUndoView* QUndoView_new5(const QUndoView_VTable* vtbl, void* vdata, QUndoStack* stack, QWidget* parent) {
	return new VirtualQUndoView(vtbl, vdata, stack, parent);
}

VirtualQUndoView* QUndoView_new6(const QUndoView_VTable* vtbl, void* vdata, QUndoGroup* group, QWidget* parent) {
	return new VirtualQUndoView(vtbl, vdata, group, parent);
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

QMetaObject* QUndoView_virtualbase_metaObject(const VirtualQUndoView* self) {

	return (QMetaObject*) self->QUndoView::metaObject();
}

void* QUndoView_virtualbase_metacast(VirtualQUndoView* self, const char* param1) {

	return self->QUndoView::qt_metacast(param1);
}

int QUndoView_virtualbase_metacall(VirtualQUndoView* self, int param1, int param2, void** param3) {

	return self->QUndoView::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

QRect* QUndoView_virtualbase_visualRect(const VirtualQUndoView* self, QModelIndex* index) {

	return new QRect(self->QUndoView::visualRect(*index));
}

void QUndoView_virtualbase_scrollTo(VirtualQUndoView* self, QModelIndex* index, int hint) {

	self->QUndoView::scrollTo(*index, static_cast<VirtualQUndoView::ScrollHint>(hint));
}

QModelIndex* QUndoView_virtualbase_indexAt(const VirtualQUndoView* self, QPoint* p) {

	return new QModelIndex(self->QUndoView::indexAt(*p));
}

void QUndoView_virtualbase_doItemsLayout(VirtualQUndoView* self) {

	self->QUndoView::doItemsLayout();
}

void QUndoView_virtualbase_reset(VirtualQUndoView* self) {

	self->QUndoView::reset();
}

void QUndoView_virtualbase_setRootIndex(VirtualQUndoView* self, QModelIndex* index) {

	self->QUndoView::setRootIndex(*index);
}

bool QUndoView_virtualbase_event(VirtualQUndoView* self, QEvent* e) {

	return self->QUndoView::event(e);
}

void QUndoView_virtualbase_scrollContentsBy(VirtualQUndoView* self, int dx, int dy) {

	self->QUndoView::scrollContentsBy(static_cast<int>(dx), static_cast<int>(dy));
}

void QUndoView_virtualbase_dataChanged(VirtualQUndoView* self, QModelIndex* topLeft, QModelIndex* bottomRight, struct miqt_array /* of int */  roles) {
	QVector<int> roles_QList;
	roles_QList.reserve(roles.len);
	int* roles_arr = static_cast<int*>(roles.data);
	for(size_t i = 0; i < roles.len; ++i) {
		roles_QList.push_back(static_cast<int>(roles_arr[i]));
	}

	self->QUndoView::dataChanged(*topLeft, *bottomRight, roles_QList);
}

void QUndoView_virtualbase_rowsInserted(VirtualQUndoView* self, QModelIndex* parent, int start, int end) {

	self->QUndoView::rowsInserted(*parent, static_cast<int>(start), static_cast<int>(end));
}

void QUndoView_virtualbase_rowsAboutToBeRemoved(VirtualQUndoView* self, QModelIndex* parent, int start, int end) {

	self->QUndoView::rowsAboutToBeRemoved(*parent, static_cast<int>(start), static_cast<int>(end));
}

void QUndoView_virtualbase_mouseMoveEvent(VirtualQUndoView* self, QMouseEvent* e) {

	self->QUndoView::mouseMoveEvent(e);
}

void QUndoView_virtualbase_mouseReleaseEvent(VirtualQUndoView* self, QMouseEvent* e) {

	self->QUndoView::mouseReleaseEvent(e);
}

void QUndoView_virtualbase_wheelEvent(VirtualQUndoView* self, QWheelEvent* e) {

	self->QUndoView::wheelEvent(e);
}

void QUndoView_virtualbase_timerEvent(VirtualQUndoView* self, QTimerEvent* e) {

	self->QUndoView::timerEvent(e);
}

void QUndoView_virtualbase_resizeEvent(VirtualQUndoView* self, QResizeEvent* e) {

	self->QUndoView::resizeEvent(e);
}

void QUndoView_virtualbase_dragMoveEvent(VirtualQUndoView* self, QDragMoveEvent* e) {

	self->QUndoView::dragMoveEvent(e);
}

void QUndoView_virtualbase_dragLeaveEvent(VirtualQUndoView* self, QDragLeaveEvent* e) {

	self->QUndoView::dragLeaveEvent(e);
}

void QUndoView_virtualbase_dropEvent(VirtualQUndoView* self, QDropEvent* e) {

	self->QUndoView::dropEvent(e);
}

void QUndoView_virtualbase_startDrag(VirtualQUndoView* self, int supportedActions) {

	self->QUndoView::startDrag(static_cast<Qt::DropActions>(supportedActions));
}

QStyleOptionViewItem* QUndoView_virtualbase_viewOptions(const VirtualQUndoView* self) {

	return new QStyleOptionViewItem(self->QUndoView::viewOptions());
}

void QUndoView_virtualbase_paintEvent(VirtualQUndoView* self, QPaintEvent* e) {

	self->QUndoView::paintEvent(e);
}

int QUndoView_virtualbase_horizontalOffset(const VirtualQUndoView* self) {

	return self->QUndoView::horizontalOffset();
}

int QUndoView_virtualbase_verticalOffset(const VirtualQUndoView* self) {

	return self->QUndoView::verticalOffset();
}

QModelIndex* QUndoView_virtualbase_moveCursor(VirtualQUndoView* self, int cursorAction, int modifiers) {

	return new QModelIndex(self->QUndoView::moveCursor(static_cast<VirtualQUndoView::CursorAction>(cursorAction), static_cast<Qt::KeyboardModifiers>(modifiers)));
}

void QUndoView_virtualbase_setSelection(VirtualQUndoView* self, QRect* rect, int command) {

	self->QUndoView::setSelection(*rect, static_cast<QItemSelectionModel::SelectionFlags>(command));
}

QRegion* QUndoView_virtualbase_visualRegionForSelection(const VirtualQUndoView* self, QItemSelection* selection) {

	return new QRegion(self->QUndoView::visualRegionForSelection(*selection));
}

struct miqt_array /* of QModelIndex* */  QUndoView_virtualbase_selectedIndexes(const VirtualQUndoView* self) {

	QModelIndexList _ret = self->QUndoView::selectedIndexes();
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

void QUndoView_virtualbase_updateGeometries(VirtualQUndoView* self) {

	self->QUndoView::updateGeometries();
}

bool QUndoView_virtualbase_isIndexHidden(const VirtualQUndoView* self, QModelIndex* index) {

	return self->QUndoView::isIndexHidden(*index);
}

void QUndoView_virtualbase_selectionChanged(VirtualQUndoView* self, QItemSelection* selected, QItemSelection* deselected) {

	self->QUndoView::selectionChanged(*selected, *deselected);
}

void QUndoView_virtualbase_currentChanged(VirtualQUndoView* self, QModelIndex* current, QModelIndex* previous) {

	self->QUndoView::currentChanged(*current, *previous);
}

QSize* QUndoView_virtualbase_viewportSizeHint(const VirtualQUndoView* self) {

	return new QSize(self->QUndoView::viewportSizeHint());
}

void QUndoView_virtualbase_setModel(VirtualQUndoView* self, QAbstractItemModel* model) {

	self->QUndoView::setModel(model);
}

void QUndoView_virtualbase_setSelectionModel(VirtualQUndoView* self, QItemSelectionModel* selectionModel) {

	self->QUndoView::setSelectionModel(selectionModel);
}

void QUndoView_virtualbase_keyboardSearch(VirtualQUndoView* self, struct miqt_string search) {
	QString search_QString = QString::fromUtf8(search.data, search.len);

	self->QUndoView::keyboardSearch(search_QString);
}

int QUndoView_virtualbase_sizeHintForRow(const VirtualQUndoView* self, int row) {

	return self->QUndoView::sizeHintForRow(static_cast<int>(row));
}

int QUndoView_virtualbase_sizeHintForColumn(const VirtualQUndoView* self, int column) {

	return self->QUndoView::sizeHintForColumn(static_cast<int>(column));
}

QVariant* QUndoView_virtualbase_inputMethodQuery(const VirtualQUndoView* self, int query) {

	return new QVariant(self->QUndoView::inputMethodQuery(static_cast<Qt::InputMethodQuery>(query)));
}

void QUndoView_virtualbase_selectAll(VirtualQUndoView* self) {

	self->QUndoView::selectAll();
}

void QUndoView_virtualbase_updateEditorData(VirtualQUndoView* self) {

	self->QUndoView::updateEditorData();
}

void QUndoView_virtualbase_updateEditorGeometries(VirtualQUndoView* self) {

	self->QUndoView::updateEditorGeometries();
}

void QUndoView_virtualbase_verticalScrollbarAction(VirtualQUndoView* self, int action) {

	self->QUndoView::verticalScrollbarAction(static_cast<int>(action));
}

void QUndoView_virtualbase_horizontalScrollbarAction(VirtualQUndoView* self, int action) {

	self->QUndoView::horizontalScrollbarAction(static_cast<int>(action));
}

void QUndoView_virtualbase_verticalScrollbarValueChanged(VirtualQUndoView* self, int value) {

	self->QUndoView::verticalScrollbarValueChanged(static_cast<int>(value));
}

void QUndoView_virtualbase_horizontalScrollbarValueChanged(VirtualQUndoView* self, int value) {

	self->QUndoView::horizontalScrollbarValueChanged(static_cast<int>(value));
}

void QUndoView_virtualbase_closeEditor(VirtualQUndoView* self, QWidget* editor, int hint) {

	self->QUndoView::closeEditor(editor, static_cast<QAbstractItemDelegate::EndEditHint>(hint));
}

void QUndoView_virtualbase_commitData(VirtualQUndoView* self, QWidget* editor) {

	self->QUndoView::commitData(editor);
}

void QUndoView_virtualbase_editorDestroyed(VirtualQUndoView* self, QObject* editor) {

	self->QUndoView::editorDestroyed(editor);
}

bool QUndoView_virtualbase_edit2(VirtualQUndoView* self, QModelIndex* index, int trigger, QEvent* event) {

	return self->QUndoView::edit(*index, static_cast<VirtualQUndoView::EditTrigger>(trigger), event);
}

int QUndoView_virtualbase_selectionCommand(const VirtualQUndoView* self, QModelIndex* index, QEvent* event) {

	QItemSelectionModel::SelectionFlags _ret = self->QUndoView::selectionCommand(*index, event);
	return static_cast<int>(_ret);
}

bool QUndoView_virtualbase_focusNextPrevChild(VirtualQUndoView* self, bool next) {

	return self->QUndoView::focusNextPrevChild(next);
}

bool QUndoView_virtualbase_viewportEvent(VirtualQUndoView* self, QEvent* event) {

	return self->QUndoView::viewportEvent(event);
}

void QUndoView_virtualbase_mousePressEvent(VirtualQUndoView* self, QMouseEvent* event) {

	self->QUndoView::mousePressEvent(event);
}

void QUndoView_virtualbase_mouseDoubleClickEvent(VirtualQUndoView* self, QMouseEvent* event) {

	self->QUndoView::mouseDoubleClickEvent(event);
}

void QUndoView_virtualbase_dragEnterEvent(VirtualQUndoView* self, QDragEnterEvent* event) {

	self->QUndoView::dragEnterEvent(event);
}

void QUndoView_virtualbase_focusInEvent(VirtualQUndoView* self, QFocusEvent* event) {

	self->QUndoView::focusInEvent(event);
}

void QUndoView_virtualbase_focusOutEvent(VirtualQUndoView* self, QFocusEvent* event) {

	self->QUndoView::focusOutEvent(event);
}

void QUndoView_virtualbase_keyPressEvent(VirtualQUndoView* self, QKeyEvent* event) {

	self->QUndoView::keyPressEvent(event);
}

void QUndoView_virtualbase_inputMethodEvent(VirtualQUndoView* self, QInputMethodEvent* event) {

	self->QUndoView::inputMethodEvent(event);
}

bool QUndoView_virtualbase_eventFilter(VirtualQUndoView* self, QObject* object, QEvent* event) {

	return self->QUndoView::eventFilter(object, event);
}

QSize* QUndoView_virtualbase_minimumSizeHint(const VirtualQUndoView* self) {

	return new QSize(self->QUndoView::minimumSizeHint());
}

QSize* QUndoView_virtualbase_sizeHint(const VirtualQUndoView* self) {

	return new QSize(self->QUndoView::sizeHint());
}

void QUndoView_virtualbase_setupViewport(VirtualQUndoView* self, QWidget* viewport) {

	self->QUndoView::setupViewport(viewport);
}

void QUndoView_virtualbase_contextMenuEvent(VirtualQUndoView* self, QContextMenuEvent* param1) {

	self->QUndoView::contextMenuEvent(param1);
}

void QUndoView_virtualbase_changeEvent(VirtualQUndoView* self, QEvent* param1) {

	self->QUndoView::changeEvent(param1);
}

int QUndoView_virtualbase_devType(const VirtualQUndoView* self) {

	return self->QUndoView::devType();
}

void QUndoView_virtualbase_setVisible(VirtualQUndoView* self, bool visible) {

	self->QUndoView::setVisible(visible);
}

int QUndoView_virtualbase_heightForWidth(const VirtualQUndoView* self, int param1) {

	return self->QUndoView::heightForWidth(static_cast<int>(param1));
}

bool QUndoView_virtualbase_hasHeightForWidth(const VirtualQUndoView* self) {

	return self->QUndoView::hasHeightForWidth();
}

QPaintEngine* QUndoView_virtualbase_paintEngine(const VirtualQUndoView* self) {

	return self->QUndoView::paintEngine();
}

void QUndoView_virtualbase_keyReleaseEvent(VirtualQUndoView* self, QKeyEvent* event) {

	self->QUndoView::keyReleaseEvent(event);
}

void QUndoView_virtualbase_enterEvent(VirtualQUndoView* self, QEvent* event) {

	self->QUndoView::enterEvent(event);
}

void QUndoView_virtualbase_leaveEvent(VirtualQUndoView* self, QEvent* event) {

	self->QUndoView::leaveEvent(event);
}

void QUndoView_virtualbase_moveEvent(VirtualQUndoView* self, QMoveEvent* event) {

	self->QUndoView::moveEvent(event);
}

void QUndoView_virtualbase_closeEvent(VirtualQUndoView* self, QCloseEvent* event) {

	self->QUndoView::closeEvent(event);
}

void QUndoView_virtualbase_tabletEvent(VirtualQUndoView* self, QTabletEvent* event) {

	self->QUndoView::tabletEvent(event);
}

void QUndoView_virtualbase_actionEvent(VirtualQUndoView* self, QActionEvent* event) {

	self->QUndoView::actionEvent(event);
}

void QUndoView_virtualbase_showEvent(VirtualQUndoView* self, QShowEvent* event) {

	self->QUndoView::showEvent(event);
}

void QUndoView_virtualbase_hideEvent(VirtualQUndoView* self, QHideEvent* event) {

	self->QUndoView::hideEvent(event);
}

bool QUndoView_virtualbase_nativeEvent(VirtualQUndoView* self, struct miqt_string eventType, void* message, long* result) {
	QByteArray eventType_QByteArray(eventType.data, eventType.len);

	return self->QUndoView::nativeEvent(eventType_QByteArray, message, static_cast<long*>(result));
}

int QUndoView_virtualbase_metric(const VirtualQUndoView* self, int param1) {

	return self->QUndoView::metric(static_cast<VirtualQUndoView::PaintDeviceMetric>(param1));
}

void QUndoView_virtualbase_initPainter(const VirtualQUndoView* self, QPainter* painter) {

	self->QUndoView::initPainter(painter);
}

QPaintDevice* QUndoView_virtualbase_redirected(const VirtualQUndoView* self, QPoint* offset) {

	return self->QUndoView::redirected(offset);
}

QPainter* QUndoView_virtualbase_sharedPainter(const VirtualQUndoView* self) {

	return self->QUndoView::sharedPainter();
}

void QUndoView_virtualbase_childEvent(VirtualQUndoView* self, QChildEvent* event) {

	self->QUndoView::childEvent(event);
}

void QUndoView_virtualbase_customEvent(VirtualQUndoView* self, QEvent* event) {

	self->QUndoView::customEvent(event);
}

void QUndoView_virtualbase_connectNotify(VirtualQUndoView* self, QMetaMethod* signal) {

	self->QUndoView::connectNotify(*signal);
}

void QUndoView_virtualbase_disconnectNotify(VirtualQUndoView* self, QMetaMethod* signal) {

	self->QUndoView::disconnectNotify(*signal);
}

const QMetaObject* QUndoView_staticMetaObject() { return &QUndoView::staticMetaObject; }

const QUndoView_VTable* QUndoView_vtbl(const VirtualQUndoView* self) { return self->vtbl; }
void* QUndoView_vdata(const VirtualQUndoView* self) { return self->vdata; }
void QUndoView_setVdata(VirtualQUndoView* self, void* vdata) { self->vdata = vdata; }

void QUndoView_protectedbase_resizeContents(VirtualQUndoView* self, int width, int height) {
	self->resizeContents(static_cast<int>(width), static_cast<int>(height));
}

QSize* QUndoView_protectedbase_contentsSize(const VirtualQUndoView* self) {
	return new QSize(self->contentsSize());
}

QRect* QUndoView_protectedbase_rectForIndex(const VirtualQUndoView* self, QModelIndex* index) {
	return new QRect(self->rectForIndex(*index));
}

void QUndoView_protectedbase_setPositionForIndex(VirtualQUndoView* self, QPoint* position, QModelIndex* index) {
	self->setPositionForIndex(*position, *index);
}

void QUndoView_protectedbase_setHorizontalStepsPerItem(VirtualQUndoView* self, int steps) {
	self->setHorizontalStepsPerItem(static_cast<int>(steps));
}

int QUndoView_protectedbase_horizontalStepsPerItem(const VirtualQUndoView* self) {
	return self->horizontalStepsPerItem();
}

void QUndoView_protectedbase_setVerticalStepsPerItem(VirtualQUndoView* self, int steps) {
	self->setVerticalStepsPerItem(static_cast<int>(steps));
}

int QUndoView_protectedbase_verticalStepsPerItem(const VirtualQUndoView* self) {
	return self->verticalStepsPerItem();
}

int QUndoView_protectedbase_state(const VirtualQUndoView* self) {
	VirtualQUndoView::State _ret = self->state();
	return static_cast<int>(_ret);
}

void QUndoView_protectedbase_setState(VirtualQUndoView* self, int state) {
	self->setState(static_cast<VirtualQUndoView::State>(state));
}

void QUndoView_protectedbase_scheduleDelayedItemsLayout(VirtualQUndoView* self) {
	self->scheduleDelayedItemsLayout();
}

void QUndoView_protectedbase_executeDelayedItemsLayout(VirtualQUndoView* self) {
	self->executeDelayedItemsLayout();
}

void QUndoView_protectedbase_setDirtyRegion(VirtualQUndoView* self, QRegion* region) {
	self->setDirtyRegion(*region);
}

void QUndoView_protectedbase_scrollDirtyRegion(VirtualQUndoView* self, int dx, int dy) {
	self->scrollDirtyRegion(static_cast<int>(dx), static_cast<int>(dy));
}

QPoint* QUndoView_protectedbase_dirtyRegionOffset(const VirtualQUndoView* self) {
	return new QPoint(self->dirtyRegionOffset());
}

void QUndoView_protectedbase_startAutoScroll(VirtualQUndoView* self) {
	self->startAutoScroll();
}

void QUndoView_protectedbase_stopAutoScroll(VirtualQUndoView* self) {
	self->stopAutoScroll();
}

void QUndoView_protectedbase_doAutoScroll(VirtualQUndoView* self) {
	self->doAutoScroll();
}

int QUndoView_protectedbase_dropIndicatorPosition(const VirtualQUndoView* self) {
	VirtualQUndoView::DropIndicatorPosition _ret = self->dropIndicatorPosition();
	return static_cast<int>(_ret);
}

void QUndoView_protectedbase_setViewportMargins(VirtualQUndoView* self, int left, int top, int right, int bottom) {
	self->setViewportMargins(static_cast<int>(left), static_cast<int>(top), static_cast<int>(right), static_cast<int>(bottom));
}

QMargins* QUndoView_protectedbase_viewportMargins(const VirtualQUndoView* self) {
	return new QMargins(self->viewportMargins());
}

void QUndoView_protectedbase_drawFrame(VirtualQUndoView* self, QPainter* param1) {
	self->drawFrame(param1);
}

void QUndoView_protectedbase_initStyleOption(const VirtualQUndoView* self, QStyleOptionFrame* option) {
	self->initStyleOption(option);
}

void QUndoView_protectedbase_updateMicroFocus(VirtualQUndoView* self) {
	self->updateMicroFocus();
}

void QUndoView_protectedbase_create(VirtualQUndoView* self) {
	self->create();
}

void QUndoView_protectedbase_destroy(VirtualQUndoView* self) {
	self->destroy();
}

bool QUndoView_protectedbase_focusNextChild(VirtualQUndoView* self) {
	return self->focusNextChild();
}

bool QUndoView_protectedbase_focusPreviousChild(VirtualQUndoView* self) {
	return self->focusPreviousChild();
}

QObject* QUndoView_protectedbase_sender(const VirtualQUndoView* self) {
	return self->sender();
}

int QUndoView_protectedbase_senderSignalIndex(const VirtualQUndoView* self) {
	return self->senderSignalIndex();
}

int QUndoView_protectedbase_receivers(const VirtualQUndoView* self, const char* signal) {
	return self->receivers(signal);
}

bool QUndoView_protectedbase_isSignalConnected(const VirtualQUndoView* self, QMetaMethod* signal) {
	return self->isSignalConnected(*signal);
}

void QUndoView_delete(QUndoView* self) {
	delete self;
}

