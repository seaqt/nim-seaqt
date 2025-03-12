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
#include <QEnterEvent>
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
#include <QTabletEvent>
#include <QTimerEvent>
#include <QTreeView>
#include <QVariant>
#include <QWheelEvent>
#include <QWidget>
#include <qtreeview.h>
#include "gen_qtreeview.h"
class VirtualQTreeView final : public QTreeView {
	const QTreeView_VTable* vtbl;
	void* vdata;
public:
	friend const QTreeView_VTable* QTreeView_vtbl(const VirtualQTreeView* self);
	friend void* QTreeView_vdata(const VirtualQTreeView* self);
	friend void QTreeView_setVdata(VirtualQTreeView* self, void* vdata);

	VirtualQTreeView(const QTreeView_VTable* vtbl, void* vdata, QWidget* parent): QTreeView(parent), vtbl(vtbl), vdata(vdata) {}
	VirtualQTreeView(const QTreeView_VTable* vtbl, void* vdata): QTreeView(), vtbl(vtbl), vdata(vdata) {}

	virtual ~VirtualQTreeView() override { if(vtbl->destructor) vtbl->destructor(this); }

	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QTreeView::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(this);

		return callback_return_value;
	}

	friend QMetaObject* QTreeView_virtualbase_metaObject(const VirtualQTreeView* self);

	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QTreeView::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(this, sigval1);

		return callback_return_value;
	}

	friend void* QTreeView_virtualbase_metacast(VirtualQTreeView* self, const char* param1);

	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QTreeView::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QTreeView_virtualbase_metacall(VirtualQTreeView* self, int param1, int param2, void** param3);

	virtual void setModel(QAbstractItemModel* model) override {
		if (vtbl->setModel == 0) {
			QTreeView::setModel(model);
			return;
		}

		QAbstractItemModel* sigval1 = model;

		vtbl->setModel(this, sigval1);

	}

	friend void QTreeView_virtualbase_setModel(VirtualQTreeView* self, QAbstractItemModel* model);

	virtual void setRootIndex(const QModelIndex& index) override {
		if (vtbl->setRootIndex == 0) {
			QTreeView::setRootIndex(index);
			return;
		}

		const QModelIndex& index_ret = index;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&index_ret);

		vtbl->setRootIndex(this, sigval1);

	}

	friend void QTreeView_virtualbase_setRootIndex(VirtualQTreeView* self, QModelIndex* index);

	virtual void setSelectionModel(QItemSelectionModel* selectionModel) override {
		if (vtbl->setSelectionModel == 0) {
			QTreeView::setSelectionModel(selectionModel);
			return;
		}

		QItemSelectionModel* sigval1 = selectionModel;

		vtbl->setSelectionModel(this, sigval1);

	}

	friend void QTreeView_virtualbase_setSelectionModel(VirtualQTreeView* self, QItemSelectionModel* selectionModel);

	virtual void keyboardSearch(const QString& search) override {
		if (vtbl->keyboardSearch == 0) {
			QTreeView::keyboardSearch(search);
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

	friend void QTreeView_virtualbase_keyboardSearch(VirtualQTreeView* self, struct miqt_string search);

	virtual QRect visualRect(const QModelIndex& index) const override {
		if (vtbl->visualRect == 0) {
			return QTreeView::visualRect(index);
		}

		const QModelIndex& index_ret = index;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&index_ret);

		QRect* callback_return_value = vtbl->visualRect(this, sigval1);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QRect* QTreeView_virtualbase_visualRect(const VirtualQTreeView* self, QModelIndex* index);

	virtual void scrollTo(const QModelIndex& index, QAbstractItemView::ScrollHint hint) override {
		if (vtbl->scrollTo == 0) {
			QTreeView::scrollTo(index, hint);
			return;
		}

		const QModelIndex& index_ret = index;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&index_ret);
		QAbstractItemView::ScrollHint hint_ret = hint;
		int sigval2 = static_cast<int>(hint_ret);

		vtbl->scrollTo(this, sigval1, sigval2);

	}

	friend void QTreeView_virtualbase_scrollTo(VirtualQTreeView* self, QModelIndex* index, int hint);

	virtual QModelIndex indexAt(const QPoint& p) const override {
		if (vtbl->indexAt == 0) {
			return QTreeView::indexAt(p);
		}

		const QPoint& p_ret = p;
		// Cast returned reference into pointer
		QPoint* sigval1 = const_cast<QPoint*>(&p_ret);

		QModelIndex* callback_return_value = vtbl->indexAt(this, sigval1);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QModelIndex* QTreeView_virtualbase_indexAt(const VirtualQTreeView* self, QPoint* p);

	virtual void doItemsLayout() override {
		if (vtbl->doItemsLayout == 0) {
			QTreeView::doItemsLayout();
			return;
		}


		vtbl->doItemsLayout(this);

	}

	friend void QTreeView_virtualbase_doItemsLayout(VirtualQTreeView* self);

	virtual void reset() override {
		if (vtbl->reset == 0) {
			QTreeView::reset();
			return;
		}


		vtbl->reset(this);

	}

	friend void QTreeView_virtualbase_reset(VirtualQTreeView* self);

	virtual void dataChanged(const QModelIndex& topLeft, const QModelIndex& bottomRight, const QList<int>& roles) override {
		if (vtbl->dataChanged == 0) {
			QTreeView::dataChanged(topLeft, bottomRight, roles);
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

		vtbl->dataChanged(this, sigval1, sigval2, sigval3);

	}

	friend void QTreeView_virtualbase_dataChanged(VirtualQTreeView* self, QModelIndex* topLeft, QModelIndex* bottomRight, struct miqt_array /* of int */  roles);

	virtual void selectAll() override {
		if (vtbl->selectAll == 0) {
			QTreeView::selectAll();
			return;
		}


		vtbl->selectAll(this);

	}

	friend void QTreeView_virtualbase_selectAll(VirtualQTreeView* self);

	virtual void verticalScrollbarValueChanged(int value) override {
		if (vtbl->verticalScrollbarValueChanged == 0) {
			QTreeView::verticalScrollbarValueChanged(value);
			return;
		}

		int sigval1 = value;

		vtbl->verticalScrollbarValueChanged(this, sigval1);

	}

	friend void QTreeView_virtualbase_verticalScrollbarValueChanged(VirtualQTreeView* self, int value);

	virtual void scrollContentsBy(int dx, int dy) override {
		if (vtbl->scrollContentsBy == 0) {
			QTreeView::scrollContentsBy(dx, dy);
			return;
		}

		int sigval1 = dx;
		int sigval2 = dy;

		vtbl->scrollContentsBy(this, sigval1, sigval2);

	}

	friend void QTreeView_virtualbase_scrollContentsBy(VirtualQTreeView* self, int dx, int dy);

	virtual void rowsInserted(const QModelIndex& parent, int start, int end) override {
		if (vtbl->rowsInserted == 0) {
			QTreeView::rowsInserted(parent, start, end);
			return;
		}

		const QModelIndex& parent_ret = parent;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&parent_ret);
		int sigval2 = start;
		int sigval3 = end;

		vtbl->rowsInserted(this, sigval1, sigval2, sigval3);

	}

	friend void QTreeView_virtualbase_rowsInserted(VirtualQTreeView* self, QModelIndex* parent, int start, int end);

	virtual void rowsAboutToBeRemoved(const QModelIndex& parent, int start, int end) override {
		if (vtbl->rowsAboutToBeRemoved == 0) {
			QTreeView::rowsAboutToBeRemoved(parent, start, end);
			return;
		}

		const QModelIndex& parent_ret = parent;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&parent_ret);
		int sigval2 = start;
		int sigval3 = end;

		vtbl->rowsAboutToBeRemoved(this, sigval1, sigval2, sigval3);

	}

	friend void QTreeView_virtualbase_rowsAboutToBeRemoved(VirtualQTreeView* self, QModelIndex* parent, int start, int end);

	virtual QModelIndex moveCursor(QAbstractItemView::CursorAction cursorAction, Qt::KeyboardModifiers modifiers) override {
		if (vtbl->moveCursor == 0) {
			return QTreeView::moveCursor(cursorAction, modifiers);
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

	friend QModelIndex* QTreeView_virtualbase_moveCursor(VirtualQTreeView* self, int cursorAction, int modifiers);

	virtual int horizontalOffset() const override {
		if (vtbl->horizontalOffset == 0) {
			return QTreeView::horizontalOffset();
		}


		int callback_return_value = vtbl->horizontalOffset(this);

		return static_cast<int>(callback_return_value);
	}

	friend int QTreeView_virtualbase_horizontalOffset(const VirtualQTreeView* self);

	virtual int verticalOffset() const override {
		if (vtbl->verticalOffset == 0) {
			return QTreeView::verticalOffset();
		}


		int callback_return_value = vtbl->verticalOffset(this);

		return static_cast<int>(callback_return_value);
	}

	friend int QTreeView_virtualbase_verticalOffset(const VirtualQTreeView* self);

	virtual void setSelection(const QRect& rect, QItemSelectionModel::SelectionFlags command) override {
		if (vtbl->setSelection == 0) {
			QTreeView::setSelection(rect, command);
			return;
		}

		const QRect& rect_ret = rect;
		// Cast returned reference into pointer
		QRect* sigval1 = const_cast<QRect*>(&rect_ret);
		QItemSelectionModel::SelectionFlags command_ret = command;
		int sigval2 = static_cast<int>(command_ret);

		vtbl->setSelection(this, sigval1, sigval2);

	}

	friend void QTreeView_virtualbase_setSelection(VirtualQTreeView* self, QRect* rect, int command);

	virtual QRegion visualRegionForSelection(const QItemSelection& selection) const override {
		if (vtbl->visualRegionForSelection == 0) {
			return QTreeView::visualRegionForSelection(selection);
		}

		const QItemSelection& selection_ret = selection;
		// Cast returned reference into pointer
		QItemSelection* sigval1 = const_cast<QItemSelection*>(&selection_ret);

		QRegion* callback_return_value = vtbl->visualRegionForSelection(this, sigval1);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QRegion* QTreeView_virtualbase_visualRegionForSelection(const VirtualQTreeView* self, QItemSelection* selection);

	virtual QModelIndexList selectedIndexes() const override {
		if (vtbl->selectedIndexes == 0) {
			return QTreeView::selectedIndexes();
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

	friend struct miqt_array /* of QModelIndex* */  QTreeView_virtualbase_selectedIndexes(const VirtualQTreeView* self);

	virtual void changeEvent(QEvent* event) override {
		if (vtbl->changeEvent == 0) {
			QTreeView::changeEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->changeEvent(this, sigval1);

	}

	friend void QTreeView_virtualbase_changeEvent(VirtualQTreeView* self, QEvent* event);

	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QTreeView::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(this, sigval1);

	}

	friend void QTreeView_virtualbase_timerEvent(VirtualQTreeView* self, QTimerEvent* event);

	virtual void paintEvent(QPaintEvent* event) override {
		if (vtbl->paintEvent == 0) {
			QTreeView::paintEvent(event);
			return;
		}

		QPaintEvent* sigval1 = event;

		vtbl->paintEvent(this, sigval1);

	}

	friend void QTreeView_virtualbase_paintEvent(VirtualQTreeView* self, QPaintEvent* event);

	virtual void drawRow(QPainter* painter, const QStyleOptionViewItem& options, const QModelIndex& index) const override {
		if (vtbl->drawRow == 0) {
			QTreeView::drawRow(painter, options, index);
			return;
		}

		QPainter* sigval1 = painter;
		const QStyleOptionViewItem& options_ret = options;
		// Cast returned reference into pointer
		QStyleOptionViewItem* sigval2 = const_cast<QStyleOptionViewItem*>(&options_ret);
		const QModelIndex& index_ret = index;
		// Cast returned reference into pointer
		QModelIndex* sigval3 = const_cast<QModelIndex*>(&index_ret);

		vtbl->drawRow(this, sigval1, sigval2, sigval3);

	}

	friend void QTreeView_virtualbase_drawRow(const VirtualQTreeView* self, QPainter* painter, QStyleOptionViewItem* options, QModelIndex* index);

	virtual void drawBranches(QPainter* painter, const QRect& rect, const QModelIndex& index) const override {
		if (vtbl->drawBranches == 0) {
			QTreeView::drawBranches(painter, rect, index);
			return;
		}

		QPainter* sigval1 = painter;
		const QRect& rect_ret = rect;
		// Cast returned reference into pointer
		QRect* sigval2 = const_cast<QRect*>(&rect_ret);
		const QModelIndex& index_ret = index;
		// Cast returned reference into pointer
		QModelIndex* sigval3 = const_cast<QModelIndex*>(&index_ret);

		vtbl->drawBranches(this, sigval1, sigval2, sigval3);

	}

	friend void QTreeView_virtualbase_drawBranches(const VirtualQTreeView* self, QPainter* painter, QRect* rect, QModelIndex* index);

	virtual void mousePressEvent(QMouseEvent* event) override {
		if (vtbl->mousePressEvent == 0) {
			QTreeView::mousePressEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mousePressEvent(this, sigval1);

	}

	friend void QTreeView_virtualbase_mousePressEvent(VirtualQTreeView* self, QMouseEvent* event);

	virtual void mouseReleaseEvent(QMouseEvent* event) override {
		if (vtbl->mouseReleaseEvent == 0) {
			QTreeView::mouseReleaseEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseReleaseEvent(this, sigval1);

	}

	friend void QTreeView_virtualbase_mouseReleaseEvent(VirtualQTreeView* self, QMouseEvent* event);

	virtual void mouseDoubleClickEvent(QMouseEvent* event) override {
		if (vtbl->mouseDoubleClickEvent == 0) {
			QTreeView::mouseDoubleClickEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseDoubleClickEvent(this, sigval1);

	}

	friend void QTreeView_virtualbase_mouseDoubleClickEvent(VirtualQTreeView* self, QMouseEvent* event);

	virtual void mouseMoveEvent(QMouseEvent* event) override {
		if (vtbl->mouseMoveEvent == 0) {
			QTreeView::mouseMoveEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseMoveEvent(this, sigval1);

	}

	friend void QTreeView_virtualbase_mouseMoveEvent(VirtualQTreeView* self, QMouseEvent* event);

	virtual void keyPressEvent(QKeyEvent* event) override {
		if (vtbl->keyPressEvent == 0) {
			QTreeView::keyPressEvent(event);
			return;
		}

		QKeyEvent* sigval1 = event;

		vtbl->keyPressEvent(this, sigval1);

	}

	friend void QTreeView_virtualbase_keyPressEvent(VirtualQTreeView* self, QKeyEvent* event);

	virtual void dragMoveEvent(QDragMoveEvent* event) override {
		if (vtbl->dragMoveEvent == 0) {
			QTreeView::dragMoveEvent(event);
			return;
		}

		QDragMoveEvent* sigval1 = event;

		vtbl->dragMoveEvent(this, sigval1);

	}

	friend void QTreeView_virtualbase_dragMoveEvent(VirtualQTreeView* self, QDragMoveEvent* event);

	virtual bool viewportEvent(QEvent* event) override {
		if (vtbl->viewportEvent == 0) {
			return QTreeView::viewportEvent(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->viewportEvent(this, sigval1);

		return callback_return_value;
	}

	friend bool QTreeView_virtualbase_viewportEvent(VirtualQTreeView* self, QEvent* event);

	virtual void updateGeometries() override {
		if (vtbl->updateGeometries == 0) {
			QTreeView::updateGeometries();
			return;
		}


		vtbl->updateGeometries(this);

	}

	friend void QTreeView_virtualbase_updateGeometries(VirtualQTreeView* self);

	virtual QSize viewportSizeHint() const override {
		if (vtbl->viewportSizeHint == 0) {
			return QTreeView::viewportSizeHint();
		}


		QSize* callback_return_value = vtbl->viewportSizeHint(this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QSize* QTreeView_virtualbase_viewportSizeHint(const VirtualQTreeView* self);

	virtual int sizeHintForColumn(int column) const override {
		if (vtbl->sizeHintForColumn == 0) {
			return QTreeView::sizeHintForColumn(column);
		}

		int sigval1 = column;

		int callback_return_value = vtbl->sizeHintForColumn(this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QTreeView_virtualbase_sizeHintForColumn(const VirtualQTreeView* self, int column);

	virtual void horizontalScrollbarAction(int action) override {
		if (vtbl->horizontalScrollbarAction == 0) {
			QTreeView::horizontalScrollbarAction(action);
			return;
		}

		int sigval1 = action;

		vtbl->horizontalScrollbarAction(this, sigval1);

	}

	friend void QTreeView_virtualbase_horizontalScrollbarAction(VirtualQTreeView* self, int action);

	virtual bool isIndexHidden(const QModelIndex& index) const override {
		if (vtbl->isIndexHidden == 0) {
			return QTreeView::isIndexHidden(index);
		}

		const QModelIndex& index_ret = index;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&index_ret);

		bool callback_return_value = vtbl->isIndexHidden(this, sigval1);

		return callback_return_value;
	}

	friend bool QTreeView_virtualbase_isIndexHidden(const VirtualQTreeView* self, QModelIndex* index);

	virtual void selectionChanged(const QItemSelection& selected, const QItemSelection& deselected) override {
		if (vtbl->selectionChanged == 0) {
			QTreeView::selectionChanged(selected, deselected);
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

	friend void QTreeView_virtualbase_selectionChanged(VirtualQTreeView* self, QItemSelection* selected, QItemSelection* deselected);

	virtual void currentChanged(const QModelIndex& current, const QModelIndex& previous) override {
		if (vtbl->currentChanged == 0) {
			QTreeView::currentChanged(current, previous);
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

	friend void QTreeView_virtualbase_currentChanged(VirtualQTreeView* self, QModelIndex* current, QModelIndex* previous);

	virtual int sizeHintForRow(int row) const override {
		if (vtbl->sizeHintForRow == 0) {
			return QTreeView::sizeHintForRow(row);
		}

		int sigval1 = row;

		int callback_return_value = vtbl->sizeHintForRow(this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QTreeView_virtualbase_sizeHintForRow(const VirtualQTreeView* self, int row);

	virtual QAbstractItemDelegate* itemDelegateForIndex(const QModelIndex& index) const override {
		if (vtbl->itemDelegateForIndex == 0) {
			return QTreeView::itemDelegateForIndex(index);
		}

		const QModelIndex& index_ret = index;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&index_ret);

		QAbstractItemDelegate* callback_return_value = vtbl->itemDelegateForIndex(this, sigval1);

		return callback_return_value;
	}

	friend QAbstractItemDelegate* QTreeView_virtualbase_itemDelegateForIndex(const VirtualQTreeView* self, QModelIndex* index);

	virtual QVariant inputMethodQuery(Qt::InputMethodQuery query) const override {
		if (vtbl->inputMethodQuery == 0) {
			return QTreeView::inputMethodQuery(query);
		}

		Qt::InputMethodQuery query_ret = query;
		int sigval1 = static_cast<int>(query_ret);

		QVariant* callback_return_value = vtbl->inputMethodQuery(this, sigval1);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QVariant* QTreeView_virtualbase_inputMethodQuery(const VirtualQTreeView* self, int query);

	virtual void updateEditorData() override {
		if (vtbl->updateEditorData == 0) {
			QTreeView::updateEditorData();
			return;
		}


		vtbl->updateEditorData(this);

	}

	friend void QTreeView_virtualbase_updateEditorData(VirtualQTreeView* self);

	virtual void updateEditorGeometries() override {
		if (vtbl->updateEditorGeometries == 0) {
			QTreeView::updateEditorGeometries();
			return;
		}


		vtbl->updateEditorGeometries(this);

	}

	friend void QTreeView_virtualbase_updateEditorGeometries(VirtualQTreeView* self);

	virtual void verticalScrollbarAction(int action) override {
		if (vtbl->verticalScrollbarAction == 0) {
			QTreeView::verticalScrollbarAction(action);
			return;
		}

		int sigval1 = action;

		vtbl->verticalScrollbarAction(this, sigval1);

	}

	friend void QTreeView_virtualbase_verticalScrollbarAction(VirtualQTreeView* self, int action);

	virtual void horizontalScrollbarValueChanged(int value) override {
		if (vtbl->horizontalScrollbarValueChanged == 0) {
			QTreeView::horizontalScrollbarValueChanged(value);
			return;
		}

		int sigval1 = value;

		vtbl->horizontalScrollbarValueChanged(this, sigval1);

	}

	friend void QTreeView_virtualbase_horizontalScrollbarValueChanged(VirtualQTreeView* self, int value);

	virtual void closeEditor(QWidget* editor, QAbstractItemDelegate::EndEditHint hint) override {
		if (vtbl->closeEditor == 0) {
			QTreeView::closeEditor(editor, hint);
			return;
		}

		QWidget* sigval1 = editor;
		QAbstractItemDelegate::EndEditHint hint_ret = hint;
		int sigval2 = static_cast<int>(hint_ret);

		vtbl->closeEditor(this, sigval1, sigval2);

	}

	friend void QTreeView_virtualbase_closeEditor(VirtualQTreeView* self, QWidget* editor, int hint);

	virtual void commitData(QWidget* editor) override {
		if (vtbl->commitData == 0) {
			QTreeView::commitData(editor);
			return;
		}

		QWidget* sigval1 = editor;

		vtbl->commitData(this, sigval1);

	}

	friend void QTreeView_virtualbase_commitData(VirtualQTreeView* self, QWidget* editor);

	virtual void editorDestroyed(QObject* editor) override {
		if (vtbl->editorDestroyed == 0) {
			QTreeView::editorDestroyed(editor);
			return;
		}

		QObject* sigval1 = editor;

		vtbl->editorDestroyed(this, sigval1);

	}

	friend void QTreeView_virtualbase_editorDestroyed(VirtualQTreeView* self, QObject* editor);

	virtual bool edit(const QModelIndex& index, QAbstractItemView::EditTrigger trigger, QEvent* event) override {
		if (vtbl->edit2 == 0) {
			return QTreeView::edit(index, trigger, event);
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

	friend bool QTreeView_virtualbase_edit2(VirtualQTreeView* self, QModelIndex* index, int trigger, QEvent* event);

	virtual QItemSelectionModel::SelectionFlags selectionCommand(const QModelIndex& index, const QEvent* event) const override {
		if (vtbl->selectionCommand == 0) {
			return QTreeView::selectionCommand(index, event);
		}

		const QModelIndex& index_ret = index;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&index_ret);
		QEvent* sigval2 = (QEvent*) event;

		int callback_return_value = vtbl->selectionCommand(this, sigval1, sigval2);

		return static_cast<QItemSelectionModel::SelectionFlags>(callback_return_value);
	}

	friend int QTreeView_virtualbase_selectionCommand(const VirtualQTreeView* self, QModelIndex* index, QEvent* event);

	virtual void startDrag(Qt::DropActions supportedActions) override {
		if (vtbl->startDrag == 0) {
			QTreeView::startDrag(supportedActions);
			return;
		}

		Qt::DropActions supportedActions_ret = supportedActions;
		int sigval1 = static_cast<int>(supportedActions_ret);

		vtbl->startDrag(this, sigval1);

	}

	friend void QTreeView_virtualbase_startDrag(VirtualQTreeView* self, int supportedActions);

	virtual void initViewItemOption(QStyleOptionViewItem* option) const override {
		if (vtbl->initViewItemOption == 0) {
			QTreeView::initViewItemOption(option);
			return;
		}

		QStyleOptionViewItem* sigval1 = option;

		vtbl->initViewItemOption(this, sigval1);

	}

	friend void QTreeView_virtualbase_initViewItemOption(const VirtualQTreeView* self, QStyleOptionViewItem* option);

	virtual bool focusNextPrevChild(bool next) override {
		if (vtbl->focusNextPrevChild == 0) {
			return QTreeView::focusNextPrevChild(next);
		}

		bool sigval1 = next;

		bool callback_return_value = vtbl->focusNextPrevChild(this, sigval1);

		return callback_return_value;
	}

	friend bool QTreeView_virtualbase_focusNextPrevChild(VirtualQTreeView* self, bool next);

	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QTreeView::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(this, sigval1);

		return callback_return_value;
	}

	friend bool QTreeView_virtualbase_event(VirtualQTreeView* self, QEvent* event);

	virtual void dragEnterEvent(QDragEnterEvent* event) override {
		if (vtbl->dragEnterEvent == 0) {
			QTreeView::dragEnterEvent(event);
			return;
		}

		QDragEnterEvent* sigval1 = event;

		vtbl->dragEnterEvent(this, sigval1);

	}

	friend void QTreeView_virtualbase_dragEnterEvent(VirtualQTreeView* self, QDragEnterEvent* event);

	virtual void dragLeaveEvent(QDragLeaveEvent* event) override {
		if (vtbl->dragLeaveEvent == 0) {
			QTreeView::dragLeaveEvent(event);
			return;
		}

		QDragLeaveEvent* sigval1 = event;

		vtbl->dragLeaveEvent(this, sigval1);

	}

	friend void QTreeView_virtualbase_dragLeaveEvent(VirtualQTreeView* self, QDragLeaveEvent* event);

	virtual void dropEvent(QDropEvent* event) override {
		if (vtbl->dropEvent == 0) {
			QTreeView::dropEvent(event);
			return;
		}

		QDropEvent* sigval1 = event;

		vtbl->dropEvent(this, sigval1);

	}

	friend void QTreeView_virtualbase_dropEvent(VirtualQTreeView* self, QDropEvent* event);

	virtual void focusInEvent(QFocusEvent* event) override {
		if (vtbl->focusInEvent == 0) {
			QTreeView::focusInEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;

		vtbl->focusInEvent(this, sigval1);

	}

	friend void QTreeView_virtualbase_focusInEvent(VirtualQTreeView* self, QFocusEvent* event);

	virtual void focusOutEvent(QFocusEvent* event) override {
		if (vtbl->focusOutEvent == 0) {
			QTreeView::focusOutEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;

		vtbl->focusOutEvent(this, sigval1);

	}

	friend void QTreeView_virtualbase_focusOutEvent(VirtualQTreeView* self, QFocusEvent* event);

	virtual void resizeEvent(QResizeEvent* event) override {
		if (vtbl->resizeEvent == 0) {
			QTreeView::resizeEvent(event);
			return;
		}

		QResizeEvent* sigval1 = event;

		vtbl->resizeEvent(this, sigval1);

	}

	friend void QTreeView_virtualbase_resizeEvent(VirtualQTreeView* self, QResizeEvent* event);

	virtual void inputMethodEvent(QInputMethodEvent* event) override {
		if (vtbl->inputMethodEvent == 0) {
			QTreeView::inputMethodEvent(event);
			return;
		}

		QInputMethodEvent* sigval1 = event;

		vtbl->inputMethodEvent(this, sigval1);

	}

	friend void QTreeView_virtualbase_inputMethodEvent(VirtualQTreeView* self, QInputMethodEvent* event);

	virtual bool eventFilter(QObject* object, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QTreeView::eventFilter(object, event);
		}

		QObject* sigval1 = object;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QTreeView_virtualbase_eventFilter(VirtualQTreeView* self, QObject* object, QEvent* event);

	virtual QSize minimumSizeHint() const override {
		if (vtbl->minimumSizeHint == 0) {
			return QTreeView::minimumSizeHint();
		}


		QSize* callback_return_value = vtbl->minimumSizeHint(this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QSize* QTreeView_virtualbase_minimumSizeHint(const VirtualQTreeView* self);

	virtual QSize sizeHint() const override {
		if (vtbl->sizeHint == 0) {
			return QTreeView::sizeHint();
		}


		QSize* callback_return_value = vtbl->sizeHint(this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QSize* QTreeView_virtualbase_sizeHint(const VirtualQTreeView* self);

	virtual void setupViewport(QWidget* viewport) override {
		if (vtbl->setupViewport == 0) {
			QTreeView::setupViewport(viewport);
			return;
		}

		QWidget* sigval1 = viewport;

		vtbl->setupViewport(this, sigval1);

	}

	friend void QTreeView_virtualbase_setupViewport(VirtualQTreeView* self, QWidget* viewport);

	virtual void wheelEvent(QWheelEvent* param1) override {
		if (vtbl->wheelEvent == 0) {
			QTreeView::wheelEvent(param1);
			return;
		}

		QWheelEvent* sigval1 = param1;

		vtbl->wheelEvent(this, sigval1);

	}

	friend void QTreeView_virtualbase_wheelEvent(VirtualQTreeView* self, QWheelEvent* param1);

	virtual void contextMenuEvent(QContextMenuEvent* param1) override {
		if (vtbl->contextMenuEvent == 0) {
			QTreeView::contextMenuEvent(param1);
			return;
		}

		QContextMenuEvent* sigval1 = param1;

		vtbl->contextMenuEvent(this, sigval1);

	}

	friend void QTreeView_virtualbase_contextMenuEvent(VirtualQTreeView* self, QContextMenuEvent* param1);

	virtual void initStyleOption(QStyleOptionFrame* option) const override {
		if (vtbl->initStyleOption == 0) {
			QTreeView::initStyleOption(option);
			return;
		}

		QStyleOptionFrame* sigval1 = option;

		vtbl->initStyleOption(this, sigval1);

	}

	friend void QTreeView_virtualbase_initStyleOption(const VirtualQTreeView* self, QStyleOptionFrame* option);

	virtual int devType() const override {
		if (vtbl->devType == 0) {
			return QTreeView::devType();
		}


		int callback_return_value = vtbl->devType(this);

		return static_cast<int>(callback_return_value);
	}

	friend int QTreeView_virtualbase_devType(const VirtualQTreeView* self);

	virtual void setVisible(bool visible) override {
		if (vtbl->setVisible == 0) {
			QTreeView::setVisible(visible);
			return;
		}

		bool sigval1 = visible;

		vtbl->setVisible(this, sigval1);

	}

	friend void QTreeView_virtualbase_setVisible(VirtualQTreeView* self, bool visible);

	virtual int heightForWidth(int param1) const override {
		if (vtbl->heightForWidth == 0) {
			return QTreeView::heightForWidth(param1);
		}

		int sigval1 = param1;

		int callback_return_value = vtbl->heightForWidth(this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QTreeView_virtualbase_heightForWidth(const VirtualQTreeView* self, int param1);

	virtual bool hasHeightForWidth() const override {
		if (vtbl->hasHeightForWidth == 0) {
			return QTreeView::hasHeightForWidth();
		}


		bool callback_return_value = vtbl->hasHeightForWidth(this);

		return callback_return_value;
	}

	friend bool QTreeView_virtualbase_hasHeightForWidth(const VirtualQTreeView* self);

	virtual QPaintEngine* paintEngine() const override {
		if (vtbl->paintEngine == 0) {
			return QTreeView::paintEngine();
		}


		QPaintEngine* callback_return_value = vtbl->paintEngine(this);

		return callback_return_value;
	}

	friend QPaintEngine* QTreeView_virtualbase_paintEngine(const VirtualQTreeView* self);

	virtual void keyReleaseEvent(QKeyEvent* event) override {
		if (vtbl->keyReleaseEvent == 0) {
			QTreeView::keyReleaseEvent(event);
			return;
		}

		QKeyEvent* sigval1 = event;

		vtbl->keyReleaseEvent(this, sigval1);

	}

	friend void QTreeView_virtualbase_keyReleaseEvent(VirtualQTreeView* self, QKeyEvent* event);

	virtual void enterEvent(QEnterEvent* event) override {
		if (vtbl->enterEvent == 0) {
			QTreeView::enterEvent(event);
			return;
		}

		QEnterEvent* sigval1 = event;

		vtbl->enterEvent(this, sigval1);

	}

	friend void QTreeView_virtualbase_enterEvent(VirtualQTreeView* self, QEnterEvent* event);

	virtual void leaveEvent(QEvent* event) override {
		if (vtbl->leaveEvent == 0) {
			QTreeView::leaveEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->leaveEvent(this, sigval1);

	}

	friend void QTreeView_virtualbase_leaveEvent(VirtualQTreeView* self, QEvent* event);

	virtual void moveEvent(QMoveEvent* event) override {
		if (vtbl->moveEvent == 0) {
			QTreeView::moveEvent(event);
			return;
		}

		QMoveEvent* sigval1 = event;

		vtbl->moveEvent(this, sigval1);

	}

	friend void QTreeView_virtualbase_moveEvent(VirtualQTreeView* self, QMoveEvent* event);

	virtual void closeEvent(QCloseEvent* event) override {
		if (vtbl->closeEvent == 0) {
			QTreeView::closeEvent(event);
			return;
		}

		QCloseEvent* sigval1 = event;

		vtbl->closeEvent(this, sigval1);

	}

	friend void QTreeView_virtualbase_closeEvent(VirtualQTreeView* self, QCloseEvent* event);

	virtual void tabletEvent(QTabletEvent* event) override {
		if (vtbl->tabletEvent == 0) {
			QTreeView::tabletEvent(event);
			return;
		}

		QTabletEvent* sigval1 = event;

		vtbl->tabletEvent(this, sigval1);

	}

	friend void QTreeView_virtualbase_tabletEvent(VirtualQTreeView* self, QTabletEvent* event);

	virtual void actionEvent(QActionEvent* event) override {
		if (vtbl->actionEvent == 0) {
			QTreeView::actionEvent(event);
			return;
		}

		QActionEvent* sigval1 = event;

		vtbl->actionEvent(this, sigval1);

	}

	friend void QTreeView_virtualbase_actionEvent(VirtualQTreeView* self, QActionEvent* event);

	virtual void showEvent(QShowEvent* event) override {
		if (vtbl->showEvent == 0) {
			QTreeView::showEvent(event);
			return;
		}

		QShowEvent* sigval1 = event;

		vtbl->showEvent(this, sigval1);

	}

	friend void QTreeView_virtualbase_showEvent(VirtualQTreeView* self, QShowEvent* event);

	virtual void hideEvent(QHideEvent* event) override {
		if (vtbl->hideEvent == 0) {
			QTreeView::hideEvent(event);
			return;
		}

		QHideEvent* sigval1 = event;

		vtbl->hideEvent(this, sigval1);

	}

	friend void QTreeView_virtualbase_hideEvent(VirtualQTreeView* self, QHideEvent* event);

	virtual bool nativeEvent(const QByteArray& eventType, void* message, qintptr* result) override {
		if (vtbl->nativeEvent == 0) {
			return QTreeView::nativeEvent(eventType, message, result);
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

		bool callback_return_value = vtbl->nativeEvent(this, sigval1, sigval2, sigval3);

		return callback_return_value;
	}

	friend bool QTreeView_virtualbase_nativeEvent(VirtualQTreeView* self, struct miqt_string eventType, void* message, intptr_t* result);

	virtual int metric(QPaintDevice::PaintDeviceMetric param1) const override {
		if (vtbl->metric == 0) {
			return QTreeView::metric(param1);
		}

		QPaintDevice::PaintDeviceMetric param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);

		int callback_return_value = vtbl->metric(this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QTreeView_virtualbase_metric(const VirtualQTreeView* self, int param1);

	virtual void initPainter(QPainter* painter) const override {
		if (vtbl->initPainter == 0) {
			QTreeView::initPainter(painter);
			return;
		}

		QPainter* sigval1 = painter;

		vtbl->initPainter(this, sigval1);

	}

	friend void QTreeView_virtualbase_initPainter(const VirtualQTreeView* self, QPainter* painter);

	virtual QPaintDevice* redirected(QPoint* offset) const override {
		if (vtbl->redirected == 0) {
			return QTreeView::redirected(offset);
		}

		QPoint* sigval1 = offset;

		QPaintDevice* callback_return_value = vtbl->redirected(this, sigval1);

		return callback_return_value;
	}

	friend QPaintDevice* QTreeView_virtualbase_redirected(const VirtualQTreeView* self, QPoint* offset);

	virtual QPainter* sharedPainter() const override {
		if (vtbl->sharedPainter == 0) {
			return QTreeView::sharedPainter();
		}


		QPainter* callback_return_value = vtbl->sharedPainter(this);

		return callback_return_value;
	}

	friend QPainter* QTreeView_virtualbase_sharedPainter(const VirtualQTreeView* self);

	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QTreeView::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(this, sigval1);

	}

	friend void QTreeView_virtualbase_childEvent(VirtualQTreeView* self, QChildEvent* event);

	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QTreeView::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(this, sigval1);

	}

	friend void QTreeView_virtualbase_customEvent(VirtualQTreeView* self, QEvent* event);

	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QTreeView::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(this, sigval1);

	}

	friend void QTreeView_virtualbase_connectNotify(VirtualQTreeView* self, QMetaMethod* signal);

	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QTreeView::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(this, sigval1);

	}

	friend void QTreeView_virtualbase_disconnectNotify(VirtualQTreeView* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend void QTreeView_protectedbase_columnResized(VirtualQTreeView* self, int column, int oldSize, int newSize);
	friend void QTreeView_protectedbase_columnCountChanged(VirtualQTreeView* self, int oldCount, int newCount);
	friend void QTreeView_protectedbase_columnMoved(VirtualQTreeView* self);
	friend void QTreeView_protectedbase_reexpand(VirtualQTreeView* self);
	friend void QTreeView_protectedbase_rowsRemoved(VirtualQTreeView* self, QModelIndex* parent, int first, int last);
	friend void QTreeView_protectedbase_drawTree(const VirtualQTreeView* self, QPainter* painter, QRegion* region);
	friend int QTreeView_protectedbase_indexRowSizeHint(const VirtualQTreeView* self, QModelIndex* index);
	friend int QTreeView_protectedbase_rowHeight(const VirtualQTreeView* self, QModelIndex* index);
	friend int QTreeView_protectedbase_state(const VirtualQTreeView* self);
	friend void QTreeView_protectedbase_setState(VirtualQTreeView* self, int state);
	friend void QTreeView_protectedbase_scheduleDelayedItemsLayout(VirtualQTreeView* self);
	friend void QTreeView_protectedbase_executeDelayedItemsLayout(VirtualQTreeView* self);
	friend void QTreeView_protectedbase_setDirtyRegion(VirtualQTreeView* self, QRegion* region);
	friend void QTreeView_protectedbase_scrollDirtyRegion(VirtualQTreeView* self, int dx, int dy);
	friend QPoint* QTreeView_protectedbase_dirtyRegionOffset(const VirtualQTreeView* self);
	friend void QTreeView_protectedbase_startAutoScroll(VirtualQTreeView* self);
	friend void QTreeView_protectedbase_stopAutoScroll(VirtualQTreeView* self);
	friend void QTreeView_protectedbase_doAutoScroll(VirtualQTreeView* self);
	friend int QTreeView_protectedbase_dropIndicatorPosition(const VirtualQTreeView* self);
	friend void QTreeView_protectedbase_setViewportMargins(VirtualQTreeView* self, int left, int top, int right, int bottom);
	friend QMargins* QTreeView_protectedbase_viewportMargins(const VirtualQTreeView* self);
	friend void QTreeView_protectedbase_drawFrame(VirtualQTreeView* self, QPainter* param1);
	friend void QTreeView_protectedbase_updateMicroFocus(VirtualQTreeView* self);
	friend void QTreeView_protectedbase_create(VirtualQTreeView* self);
	friend void QTreeView_protectedbase_destroy(VirtualQTreeView* self);
	friend bool QTreeView_protectedbase_focusNextChild(VirtualQTreeView* self);
	friend bool QTreeView_protectedbase_focusPreviousChild(VirtualQTreeView* self);
	friend QObject* QTreeView_protectedbase_sender(const VirtualQTreeView* self);
	friend int QTreeView_protectedbase_senderSignalIndex(const VirtualQTreeView* self);
	friend int QTreeView_protectedbase_receivers(const VirtualQTreeView* self, const char* signal);
	friend bool QTreeView_protectedbase_isSignalConnected(const VirtualQTreeView* self, QMetaMethod* signal);
};

VirtualQTreeView* QTreeView_new(const QTreeView_VTable* vtbl, void* vdata, QWidget* parent) {
	return new VirtualQTreeView(vtbl, vdata, parent);
}

VirtualQTreeView* QTreeView_new2(const QTreeView_VTable* vtbl, void* vdata) {
	return new VirtualQTreeView(vtbl, vdata);
}

void QTreeView_virtbase(QTreeView* src, QAbstractItemView** outptr_QAbstractItemView) {
	*outptr_QAbstractItemView = static_cast<QAbstractItemView*>(src);
}

QMetaObject* QTreeView_metaObject(const QTreeView* self) {
	return (QMetaObject*) self->metaObject();
}

void* QTreeView_metacast(QTreeView* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QTreeView_metacall(QTreeView* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QTreeView_tr(const char* s) {
	QString _ret = QTreeView::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QTreeView_setModel(QTreeView* self, QAbstractItemModel* model) {
	self->setModel(model);
}

void QTreeView_setRootIndex(QTreeView* self, QModelIndex* index) {
	self->setRootIndex(*index);
}

void QTreeView_setSelectionModel(QTreeView* self, QItemSelectionModel* selectionModel) {
	self->setSelectionModel(selectionModel);
}

QHeaderView* QTreeView_header(const QTreeView* self) {
	return self->header();
}

void QTreeView_setHeader(QTreeView* self, QHeaderView* header) {
	self->setHeader(header);
}

int QTreeView_autoExpandDelay(const QTreeView* self) {
	return self->autoExpandDelay();
}

void QTreeView_setAutoExpandDelay(QTreeView* self, int delay) {
	self->setAutoExpandDelay(static_cast<int>(delay));
}

int QTreeView_indentation(const QTreeView* self) {
	return self->indentation();
}

void QTreeView_setIndentation(QTreeView* self, int i) {
	self->setIndentation(static_cast<int>(i));
}

void QTreeView_resetIndentation(QTreeView* self) {
	self->resetIndentation();
}

bool QTreeView_rootIsDecorated(const QTreeView* self) {
	return self->rootIsDecorated();
}

void QTreeView_setRootIsDecorated(QTreeView* self, bool show) {
	self->setRootIsDecorated(show);
}

bool QTreeView_uniformRowHeights(const QTreeView* self) {
	return self->uniformRowHeights();
}

void QTreeView_setUniformRowHeights(QTreeView* self, bool uniform) {
	self->setUniformRowHeights(uniform);
}

bool QTreeView_itemsExpandable(const QTreeView* self) {
	return self->itemsExpandable();
}

void QTreeView_setItemsExpandable(QTreeView* self, bool enable) {
	self->setItemsExpandable(enable);
}

bool QTreeView_expandsOnDoubleClick(const QTreeView* self) {
	return self->expandsOnDoubleClick();
}

void QTreeView_setExpandsOnDoubleClick(QTreeView* self, bool enable) {
	self->setExpandsOnDoubleClick(enable);
}

int QTreeView_columnViewportPosition(const QTreeView* self, int column) {
	return self->columnViewportPosition(static_cast<int>(column));
}

int QTreeView_columnWidth(const QTreeView* self, int column) {
	return self->columnWidth(static_cast<int>(column));
}

void QTreeView_setColumnWidth(QTreeView* self, int column, int width) {
	self->setColumnWidth(static_cast<int>(column), static_cast<int>(width));
}

int QTreeView_columnAt(const QTreeView* self, int x) {
	return self->columnAt(static_cast<int>(x));
}

bool QTreeView_isColumnHidden(const QTreeView* self, int column) {
	return self->isColumnHidden(static_cast<int>(column));
}

void QTreeView_setColumnHidden(QTreeView* self, int column, bool hide) {
	self->setColumnHidden(static_cast<int>(column), hide);
}

bool QTreeView_isHeaderHidden(const QTreeView* self) {
	return self->isHeaderHidden();
}

void QTreeView_setHeaderHidden(QTreeView* self, bool hide) {
	self->setHeaderHidden(hide);
}

bool QTreeView_isRowHidden(const QTreeView* self, int row, QModelIndex* parent) {
	return self->isRowHidden(static_cast<int>(row), *parent);
}

void QTreeView_setRowHidden(QTreeView* self, int row, QModelIndex* parent, bool hide) {
	self->setRowHidden(static_cast<int>(row), *parent, hide);
}

bool QTreeView_isFirstColumnSpanned(const QTreeView* self, int row, QModelIndex* parent) {
	return self->isFirstColumnSpanned(static_cast<int>(row), *parent);
}

void QTreeView_setFirstColumnSpanned(QTreeView* self, int row, QModelIndex* parent, bool span) {
	self->setFirstColumnSpanned(static_cast<int>(row), *parent, span);
}

bool QTreeView_isExpanded(const QTreeView* self, QModelIndex* index) {
	return self->isExpanded(*index);
}

void QTreeView_setExpanded(QTreeView* self, QModelIndex* index, bool expand) {
	self->setExpanded(*index, expand);
}

void QTreeView_setSortingEnabled(QTreeView* self, bool enable) {
	self->setSortingEnabled(enable);
}

bool QTreeView_isSortingEnabled(const QTreeView* self) {
	return self->isSortingEnabled();
}

void QTreeView_setAnimated(QTreeView* self, bool enable) {
	self->setAnimated(enable);
}

bool QTreeView_isAnimated(const QTreeView* self) {
	return self->isAnimated();
}

void QTreeView_setAllColumnsShowFocus(QTreeView* self, bool enable) {
	self->setAllColumnsShowFocus(enable);
}

bool QTreeView_allColumnsShowFocus(const QTreeView* self) {
	return self->allColumnsShowFocus();
}

void QTreeView_setWordWrap(QTreeView* self, bool on) {
	self->setWordWrap(on);
}

bool QTreeView_wordWrap(const QTreeView* self) {
	return self->wordWrap();
}

void QTreeView_setTreePosition(QTreeView* self, int logicalIndex) {
	self->setTreePosition(static_cast<int>(logicalIndex));
}

int QTreeView_treePosition(const QTreeView* self) {
	return self->treePosition();
}

void QTreeView_keyboardSearch(QTreeView* self, struct miqt_string search) {
	QString search_QString = QString::fromUtf8(search.data, search.len);
	self->keyboardSearch(search_QString);
}

QRect* QTreeView_visualRect(const QTreeView* self, QModelIndex* index) {
	return new QRect(self->visualRect(*index));
}

void QTreeView_scrollTo(QTreeView* self, QModelIndex* index, int hint) {
	self->scrollTo(*index, static_cast<QAbstractItemView::ScrollHint>(hint));
}

QModelIndex* QTreeView_indexAt(const QTreeView* self, QPoint* p) {
	return new QModelIndex(self->indexAt(*p));
}

QModelIndex* QTreeView_indexAbove(const QTreeView* self, QModelIndex* index) {
	return new QModelIndex(self->indexAbove(*index));
}

QModelIndex* QTreeView_indexBelow(const QTreeView* self, QModelIndex* index) {
	return new QModelIndex(self->indexBelow(*index));
}

void QTreeView_doItemsLayout(QTreeView* self) {
	self->doItemsLayout();
}

void QTreeView_reset(QTreeView* self) {
	self->reset();
}

void QTreeView_dataChanged(QTreeView* self, QModelIndex* topLeft, QModelIndex* bottomRight, struct miqt_array /* of int */  roles) {
	QList<int> roles_QList;
	roles_QList.reserve(roles.len);
	int* roles_arr = static_cast<int*>(roles.data);
	for(size_t i = 0; i < roles.len; ++i) {
		roles_QList.push_back(static_cast<int>(roles_arr[i]));
	}
	self->dataChanged(*topLeft, *bottomRight, roles_QList);
}

void QTreeView_selectAll(QTreeView* self) {
	self->selectAll();
}

void QTreeView_expanded(QTreeView* self, QModelIndex* index) {
	self->expanded(*index);
}

void QTreeView_connect_expanded(VirtualQTreeView* self, intptr_t slot, void (*callback)(intptr_t, QModelIndex*), void (*release)(intptr_t)) {
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
	VirtualQTreeView::connect(self, static_cast<void (QTreeView::*)(const QModelIndex&)>(&QTreeView::expanded), self, local_caller{slot, callback, release});
}

void QTreeView_collapsed(QTreeView* self, QModelIndex* index) {
	self->collapsed(*index);
}

void QTreeView_connect_collapsed(VirtualQTreeView* self, intptr_t slot, void (*callback)(intptr_t, QModelIndex*), void (*release)(intptr_t)) {
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
	VirtualQTreeView::connect(self, static_cast<void (QTreeView::*)(const QModelIndex&)>(&QTreeView::collapsed), self, local_caller{slot, callback, release});
}

void QTreeView_hideColumn(QTreeView* self, int column) {
	self->hideColumn(static_cast<int>(column));
}

void QTreeView_showColumn(QTreeView* self, int column) {
	self->showColumn(static_cast<int>(column));
}

void QTreeView_expand(QTreeView* self, QModelIndex* index) {
	self->expand(*index);
}

void QTreeView_collapse(QTreeView* self, QModelIndex* index) {
	self->collapse(*index);
}

void QTreeView_resizeColumnToContents(QTreeView* self, int column) {
	self->resizeColumnToContents(static_cast<int>(column));
}

void QTreeView_sortByColumn(QTreeView* self, int column, int order) {
	self->sortByColumn(static_cast<int>(column), static_cast<Qt::SortOrder>(order));
}

void QTreeView_expandAll(QTreeView* self) {
	self->expandAll();
}

void QTreeView_expandRecursively(QTreeView* self, QModelIndex* index) {
	self->expandRecursively(*index);
}

void QTreeView_collapseAll(QTreeView* self) {
	self->collapseAll();
}

void QTreeView_expandToDepth(QTreeView* self, int depth) {
	self->expandToDepth(static_cast<int>(depth));
}

struct miqt_string QTreeView_tr2(const char* s, const char* c) {
	QString _ret = QTreeView::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QTreeView_tr3(const char* s, const char* c, int n) {
	QString _ret = QTreeView::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QTreeView_expandRecursively2(QTreeView* self, QModelIndex* index, int depth) {
	self->expandRecursively(*index, static_cast<int>(depth));
}

QMetaObject* QTreeView_virtualbase_metaObject(const VirtualQTreeView* self) {

	return (QMetaObject*) self->QTreeView::metaObject();
}

void* QTreeView_virtualbase_metacast(VirtualQTreeView* self, const char* param1) {

	return self->QTreeView::qt_metacast(param1);
}

int QTreeView_virtualbase_metacall(VirtualQTreeView* self, int param1, int param2, void** param3) {

	return self->QTreeView::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

void QTreeView_virtualbase_setModel(VirtualQTreeView* self, QAbstractItemModel* model) {

	self->QTreeView::setModel(model);
}

void QTreeView_virtualbase_setRootIndex(VirtualQTreeView* self, QModelIndex* index) {

	self->QTreeView::setRootIndex(*index);
}

void QTreeView_virtualbase_setSelectionModel(VirtualQTreeView* self, QItemSelectionModel* selectionModel) {

	self->QTreeView::setSelectionModel(selectionModel);
}

void QTreeView_virtualbase_keyboardSearch(VirtualQTreeView* self, struct miqt_string search) {
	QString search_QString = QString::fromUtf8(search.data, search.len);

	self->QTreeView::keyboardSearch(search_QString);
}

QRect* QTreeView_virtualbase_visualRect(const VirtualQTreeView* self, QModelIndex* index) {

	return new QRect(self->QTreeView::visualRect(*index));
}

void QTreeView_virtualbase_scrollTo(VirtualQTreeView* self, QModelIndex* index, int hint) {

	self->QTreeView::scrollTo(*index, static_cast<VirtualQTreeView::ScrollHint>(hint));
}

QModelIndex* QTreeView_virtualbase_indexAt(const VirtualQTreeView* self, QPoint* p) {

	return new QModelIndex(self->QTreeView::indexAt(*p));
}

void QTreeView_virtualbase_doItemsLayout(VirtualQTreeView* self) {

	self->QTreeView::doItemsLayout();
}

void QTreeView_virtualbase_reset(VirtualQTreeView* self) {

	self->QTreeView::reset();
}

void QTreeView_virtualbase_dataChanged(VirtualQTreeView* self, QModelIndex* topLeft, QModelIndex* bottomRight, struct miqt_array /* of int */  roles) {
	QList<int> roles_QList;
	roles_QList.reserve(roles.len);
	int* roles_arr = static_cast<int*>(roles.data);
	for(size_t i = 0; i < roles.len; ++i) {
		roles_QList.push_back(static_cast<int>(roles_arr[i]));
	}

	self->QTreeView::dataChanged(*topLeft, *bottomRight, roles_QList);
}

void QTreeView_virtualbase_selectAll(VirtualQTreeView* self) {

	self->QTreeView::selectAll();
}

void QTreeView_virtualbase_verticalScrollbarValueChanged(VirtualQTreeView* self, int value) {

	self->QTreeView::verticalScrollbarValueChanged(static_cast<int>(value));
}

void QTreeView_virtualbase_scrollContentsBy(VirtualQTreeView* self, int dx, int dy) {

	self->QTreeView::scrollContentsBy(static_cast<int>(dx), static_cast<int>(dy));
}

void QTreeView_virtualbase_rowsInserted(VirtualQTreeView* self, QModelIndex* parent, int start, int end) {

	self->QTreeView::rowsInserted(*parent, static_cast<int>(start), static_cast<int>(end));
}

void QTreeView_virtualbase_rowsAboutToBeRemoved(VirtualQTreeView* self, QModelIndex* parent, int start, int end) {

	self->QTreeView::rowsAboutToBeRemoved(*parent, static_cast<int>(start), static_cast<int>(end));
}

QModelIndex* QTreeView_virtualbase_moveCursor(VirtualQTreeView* self, int cursorAction, int modifiers) {

	return new QModelIndex(self->QTreeView::moveCursor(static_cast<VirtualQTreeView::CursorAction>(cursorAction), static_cast<Qt::KeyboardModifiers>(modifiers)));
}

int QTreeView_virtualbase_horizontalOffset(const VirtualQTreeView* self) {

	return self->QTreeView::horizontalOffset();
}

int QTreeView_virtualbase_verticalOffset(const VirtualQTreeView* self) {

	return self->QTreeView::verticalOffset();
}

void QTreeView_virtualbase_setSelection(VirtualQTreeView* self, QRect* rect, int command) {

	self->QTreeView::setSelection(*rect, static_cast<QItemSelectionModel::SelectionFlags>(command));
}

QRegion* QTreeView_virtualbase_visualRegionForSelection(const VirtualQTreeView* self, QItemSelection* selection) {

	return new QRegion(self->QTreeView::visualRegionForSelection(*selection));
}

struct miqt_array /* of QModelIndex* */  QTreeView_virtualbase_selectedIndexes(const VirtualQTreeView* self) {

	QModelIndexList _ret = self->QTreeView::selectedIndexes();
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

void QTreeView_virtualbase_changeEvent(VirtualQTreeView* self, QEvent* event) {

	self->QTreeView::changeEvent(event);
}

void QTreeView_virtualbase_timerEvent(VirtualQTreeView* self, QTimerEvent* event) {

	self->QTreeView::timerEvent(event);
}

void QTreeView_virtualbase_paintEvent(VirtualQTreeView* self, QPaintEvent* event) {

	self->QTreeView::paintEvent(event);
}

void QTreeView_virtualbase_drawRow(const VirtualQTreeView* self, QPainter* painter, QStyleOptionViewItem* options, QModelIndex* index) {

	self->QTreeView::drawRow(painter, *options, *index);
}

void QTreeView_virtualbase_drawBranches(const VirtualQTreeView* self, QPainter* painter, QRect* rect, QModelIndex* index) {

	self->QTreeView::drawBranches(painter, *rect, *index);
}

void QTreeView_virtualbase_mousePressEvent(VirtualQTreeView* self, QMouseEvent* event) {

	self->QTreeView::mousePressEvent(event);
}

void QTreeView_virtualbase_mouseReleaseEvent(VirtualQTreeView* self, QMouseEvent* event) {

	self->QTreeView::mouseReleaseEvent(event);
}

void QTreeView_virtualbase_mouseDoubleClickEvent(VirtualQTreeView* self, QMouseEvent* event) {

	self->QTreeView::mouseDoubleClickEvent(event);
}

void QTreeView_virtualbase_mouseMoveEvent(VirtualQTreeView* self, QMouseEvent* event) {

	self->QTreeView::mouseMoveEvent(event);
}

void QTreeView_virtualbase_keyPressEvent(VirtualQTreeView* self, QKeyEvent* event) {

	self->QTreeView::keyPressEvent(event);
}

void QTreeView_virtualbase_dragMoveEvent(VirtualQTreeView* self, QDragMoveEvent* event) {

	self->QTreeView::dragMoveEvent(event);
}

bool QTreeView_virtualbase_viewportEvent(VirtualQTreeView* self, QEvent* event) {

	return self->QTreeView::viewportEvent(event);
}

void QTreeView_virtualbase_updateGeometries(VirtualQTreeView* self) {

	self->QTreeView::updateGeometries();
}

QSize* QTreeView_virtualbase_viewportSizeHint(const VirtualQTreeView* self) {

	return new QSize(self->QTreeView::viewportSizeHint());
}

int QTreeView_virtualbase_sizeHintForColumn(const VirtualQTreeView* self, int column) {

	return self->QTreeView::sizeHintForColumn(static_cast<int>(column));
}

void QTreeView_virtualbase_horizontalScrollbarAction(VirtualQTreeView* self, int action) {

	self->QTreeView::horizontalScrollbarAction(static_cast<int>(action));
}

bool QTreeView_virtualbase_isIndexHidden(const VirtualQTreeView* self, QModelIndex* index) {

	return self->QTreeView::isIndexHidden(*index);
}

void QTreeView_virtualbase_selectionChanged(VirtualQTreeView* self, QItemSelection* selected, QItemSelection* deselected) {

	self->QTreeView::selectionChanged(*selected, *deselected);
}

void QTreeView_virtualbase_currentChanged(VirtualQTreeView* self, QModelIndex* current, QModelIndex* previous) {

	self->QTreeView::currentChanged(*current, *previous);
}

int QTreeView_virtualbase_sizeHintForRow(const VirtualQTreeView* self, int row) {

	return self->QTreeView::sizeHintForRow(static_cast<int>(row));
}

QAbstractItemDelegate* QTreeView_virtualbase_itemDelegateForIndex(const VirtualQTreeView* self, QModelIndex* index) {

	return self->QTreeView::itemDelegateForIndex(*index);
}

QVariant* QTreeView_virtualbase_inputMethodQuery(const VirtualQTreeView* self, int query) {

	return new QVariant(self->QTreeView::inputMethodQuery(static_cast<Qt::InputMethodQuery>(query)));
}

void QTreeView_virtualbase_updateEditorData(VirtualQTreeView* self) {

	self->QTreeView::updateEditorData();
}

void QTreeView_virtualbase_updateEditorGeometries(VirtualQTreeView* self) {

	self->QTreeView::updateEditorGeometries();
}

void QTreeView_virtualbase_verticalScrollbarAction(VirtualQTreeView* self, int action) {

	self->QTreeView::verticalScrollbarAction(static_cast<int>(action));
}

void QTreeView_virtualbase_horizontalScrollbarValueChanged(VirtualQTreeView* self, int value) {

	self->QTreeView::horizontalScrollbarValueChanged(static_cast<int>(value));
}

void QTreeView_virtualbase_closeEditor(VirtualQTreeView* self, QWidget* editor, int hint) {

	self->QTreeView::closeEditor(editor, static_cast<QAbstractItemDelegate::EndEditHint>(hint));
}

void QTreeView_virtualbase_commitData(VirtualQTreeView* self, QWidget* editor) {

	self->QTreeView::commitData(editor);
}

void QTreeView_virtualbase_editorDestroyed(VirtualQTreeView* self, QObject* editor) {

	self->QTreeView::editorDestroyed(editor);
}

bool QTreeView_virtualbase_edit2(VirtualQTreeView* self, QModelIndex* index, int trigger, QEvent* event) {

	return self->QTreeView::edit(*index, static_cast<VirtualQTreeView::EditTrigger>(trigger), event);
}

int QTreeView_virtualbase_selectionCommand(const VirtualQTreeView* self, QModelIndex* index, QEvent* event) {

	QItemSelectionModel::SelectionFlags _ret = self->QTreeView::selectionCommand(*index, event);
	return static_cast<int>(_ret);
}

void QTreeView_virtualbase_startDrag(VirtualQTreeView* self, int supportedActions) {

	self->QTreeView::startDrag(static_cast<Qt::DropActions>(supportedActions));
}

void QTreeView_virtualbase_initViewItemOption(const VirtualQTreeView* self, QStyleOptionViewItem* option) {

	self->QTreeView::initViewItemOption(option);
}

bool QTreeView_virtualbase_focusNextPrevChild(VirtualQTreeView* self, bool next) {

	return self->QTreeView::focusNextPrevChild(next);
}

bool QTreeView_virtualbase_event(VirtualQTreeView* self, QEvent* event) {

	return self->QTreeView::event(event);
}

void QTreeView_virtualbase_dragEnterEvent(VirtualQTreeView* self, QDragEnterEvent* event) {

	self->QTreeView::dragEnterEvent(event);
}

void QTreeView_virtualbase_dragLeaveEvent(VirtualQTreeView* self, QDragLeaveEvent* event) {

	self->QTreeView::dragLeaveEvent(event);
}

void QTreeView_virtualbase_dropEvent(VirtualQTreeView* self, QDropEvent* event) {

	self->QTreeView::dropEvent(event);
}

void QTreeView_virtualbase_focusInEvent(VirtualQTreeView* self, QFocusEvent* event) {

	self->QTreeView::focusInEvent(event);
}

void QTreeView_virtualbase_focusOutEvent(VirtualQTreeView* self, QFocusEvent* event) {

	self->QTreeView::focusOutEvent(event);
}

void QTreeView_virtualbase_resizeEvent(VirtualQTreeView* self, QResizeEvent* event) {

	self->QTreeView::resizeEvent(event);
}

void QTreeView_virtualbase_inputMethodEvent(VirtualQTreeView* self, QInputMethodEvent* event) {

	self->QTreeView::inputMethodEvent(event);
}

bool QTreeView_virtualbase_eventFilter(VirtualQTreeView* self, QObject* object, QEvent* event) {

	return self->QTreeView::eventFilter(object, event);
}

QSize* QTreeView_virtualbase_minimumSizeHint(const VirtualQTreeView* self) {

	return new QSize(self->QTreeView::minimumSizeHint());
}

QSize* QTreeView_virtualbase_sizeHint(const VirtualQTreeView* self) {

	return new QSize(self->QTreeView::sizeHint());
}

void QTreeView_virtualbase_setupViewport(VirtualQTreeView* self, QWidget* viewport) {

	self->QTreeView::setupViewport(viewport);
}

void QTreeView_virtualbase_wheelEvent(VirtualQTreeView* self, QWheelEvent* param1) {

	self->QTreeView::wheelEvent(param1);
}

void QTreeView_virtualbase_contextMenuEvent(VirtualQTreeView* self, QContextMenuEvent* param1) {

	self->QTreeView::contextMenuEvent(param1);
}

void QTreeView_virtualbase_initStyleOption(const VirtualQTreeView* self, QStyleOptionFrame* option) {

	self->QTreeView::initStyleOption(option);
}

int QTreeView_virtualbase_devType(const VirtualQTreeView* self) {

	return self->QTreeView::devType();
}

void QTreeView_virtualbase_setVisible(VirtualQTreeView* self, bool visible) {

	self->QTreeView::setVisible(visible);
}

int QTreeView_virtualbase_heightForWidth(const VirtualQTreeView* self, int param1) {

	return self->QTreeView::heightForWidth(static_cast<int>(param1));
}

bool QTreeView_virtualbase_hasHeightForWidth(const VirtualQTreeView* self) {

	return self->QTreeView::hasHeightForWidth();
}

QPaintEngine* QTreeView_virtualbase_paintEngine(const VirtualQTreeView* self) {

	return self->QTreeView::paintEngine();
}

void QTreeView_virtualbase_keyReleaseEvent(VirtualQTreeView* self, QKeyEvent* event) {

	self->QTreeView::keyReleaseEvent(event);
}

void QTreeView_virtualbase_enterEvent(VirtualQTreeView* self, QEnterEvent* event) {

	self->QTreeView::enterEvent(event);
}

void QTreeView_virtualbase_leaveEvent(VirtualQTreeView* self, QEvent* event) {

	self->QTreeView::leaveEvent(event);
}

void QTreeView_virtualbase_moveEvent(VirtualQTreeView* self, QMoveEvent* event) {

	self->QTreeView::moveEvent(event);
}

void QTreeView_virtualbase_closeEvent(VirtualQTreeView* self, QCloseEvent* event) {

	self->QTreeView::closeEvent(event);
}

void QTreeView_virtualbase_tabletEvent(VirtualQTreeView* self, QTabletEvent* event) {

	self->QTreeView::tabletEvent(event);
}

void QTreeView_virtualbase_actionEvent(VirtualQTreeView* self, QActionEvent* event) {

	self->QTreeView::actionEvent(event);
}

void QTreeView_virtualbase_showEvent(VirtualQTreeView* self, QShowEvent* event) {

	self->QTreeView::showEvent(event);
}

void QTreeView_virtualbase_hideEvent(VirtualQTreeView* self, QHideEvent* event) {

	self->QTreeView::hideEvent(event);
}

bool QTreeView_virtualbase_nativeEvent(VirtualQTreeView* self, struct miqt_string eventType, void* message, intptr_t* result) {
	QByteArray eventType_QByteArray(eventType.data, eventType.len);

	return self->QTreeView::nativeEvent(eventType_QByteArray, message, (qintptr*)(result));
}

int QTreeView_virtualbase_metric(const VirtualQTreeView* self, int param1) {

	return self->QTreeView::metric(static_cast<VirtualQTreeView::PaintDeviceMetric>(param1));
}

void QTreeView_virtualbase_initPainter(const VirtualQTreeView* self, QPainter* painter) {

	self->QTreeView::initPainter(painter);
}

QPaintDevice* QTreeView_virtualbase_redirected(const VirtualQTreeView* self, QPoint* offset) {

	return self->QTreeView::redirected(offset);
}

QPainter* QTreeView_virtualbase_sharedPainter(const VirtualQTreeView* self) {

	return self->QTreeView::sharedPainter();
}

void QTreeView_virtualbase_childEvent(VirtualQTreeView* self, QChildEvent* event) {

	self->QTreeView::childEvent(event);
}

void QTreeView_virtualbase_customEvent(VirtualQTreeView* self, QEvent* event) {

	self->QTreeView::customEvent(event);
}

void QTreeView_virtualbase_connectNotify(VirtualQTreeView* self, QMetaMethod* signal) {

	self->QTreeView::connectNotify(*signal);
}

void QTreeView_virtualbase_disconnectNotify(VirtualQTreeView* self, QMetaMethod* signal) {

	self->QTreeView::disconnectNotify(*signal);
}

const QMetaObject* QTreeView_staticMetaObject() { return &QTreeView::staticMetaObject; }

const QTreeView_VTable* QTreeView_vtbl(const VirtualQTreeView* self) { return self->vtbl; }
void* QTreeView_vdata(const VirtualQTreeView* self) { return self->vdata; }
void QTreeView_setVdata(VirtualQTreeView* self, void* vdata) { self->vdata = vdata; }

void QTreeView_protectedbase_columnResized(VirtualQTreeView* self, int column, int oldSize, int newSize) {
	self->columnResized(static_cast<int>(column), static_cast<int>(oldSize), static_cast<int>(newSize));
}

void QTreeView_protectedbase_columnCountChanged(VirtualQTreeView* self, int oldCount, int newCount) {
	self->columnCountChanged(static_cast<int>(oldCount), static_cast<int>(newCount));
}

void QTreeView_protectedbase_columnMoved(VirtualQTreeView* self) {
	self->columnMoved();
}

void QTreeView_protectedbase_reexpand(VirtualQTreeView* self) {
	self->reexpand();
}

void QTreeView_protectedbase_rowsRemoved(VirtualQTreeView* self, QModelIndex* parent, int first, int last) {
	self->rowsRemoved(*parent, static_cast<int>(first), static_cast<int>(last));
}

void QTreeView_protectedbase_drawTree(const VirtualQTreeView* self, QPainter* painter, QRegion* region) {
	self->drawTree(painter, *region);
}

int QTreeView_protectedbase_indexRowSizeHint(const VirtualQTreeView* self, QModelIndex* index) {
	return self->indexRowSizeHint(*index);
}

int QTreeView_protectedbase_rowHeight(const VirtualQTreeView* self, QModelIndex* index) {
	return self->rowHeight(*index);
}

int QTreeView_protectedbase_state(const VirtualQTreeView* self) {
	VirtualQTreeView::State _ret = self->state();
	return static_cast<int>(_ret);
}

void QTreeView_protectedbase_setState(VirtualQTreeView* self, int state) {
	self->setState(static_cast<VirtualQTreeView::State>(state));
}

void QTreeView_protectedbase_scheduleDelayedItemsLayout(VirtualQTreeView* self) {
	self->scheduleDelayedItemsLayout();
}

void QTreeView_protectedbase_executeDelayedItemsLayout(VirtualQTreeView* self) {
	self->executeDelayedItemsLayout();
}

void QTreeView_protectedbase_setDirtyRegion(VirtualQTreeView* self, QRegion* region) {
	self->setDirtyRegion(*region);
}

void QTreeView_protectedbase_scrollDirtyRegion(VirtualQTreeView* self, int dx, int dy) {
	self->scrollDirtyRegion(static_cast<int>(dx), static_cast<int>(dy));
}

QPoint* QTreeView_protectedbase_dirtyRegionOffset(const VirtualQTreeView* self) {
	return new QPoint(self->dirtyRegionOffset());
}

void QTreeView_protectedbase_startAutoScroll(VirtualQTreeView* self) {
	self->startAutoScroll();
}

void QTreeView_protectedbase_stopAutoScroll(VirtualQTreeView* self) {
	self->stopAutoScroll();
}

void QTreeView_protectedbase_doAutoScroll(VirtualQTreeView* self) {
	self->doAutoScroll();
}

int QTreeView_protectedbase_dropIndicatorPosition(const VirtualQTreeView* self) {
	VirtualQTreeView::DropIndicatorPosition _ret = self->dropIndicatorPosition();
	return static_cast<int>(_ret);
}

void QTreeView_protectedbase_setViewportMargins(VirtualQTreeView* self, int left, int top, int right, int bottom) {
	self->setViewportMargins(static_cast<int>(left), static_cast<int>(top), static_cast<int>(right), static_cast<int>(bottom));
}

QMargins* QTreeView_protectedbase_viewportMargins(const VirtualQTreeView* self) {
	return new QMargins(self->viewportMargins());
}

void QTreeView_protectedbase_drawFrame(VirtualQTreeView* self, QPainter* param1) {
	self->drawFrame(param1);
}

void QTreeView_protectedbase_updateMicroFocus(VirtualQTreeView* self) {
	self->updateMicroFocus();
}

void QTreeView_protectedbase_create(VirtualQTreeView* self) {
	self->create();
}

void QTreeView_protectedbase_destroy(VirtualQTreeView* self) {
	self->destroy();
}

bool QTreeView_protectedbase_focusNextChild(VirtualQTreeView* self) {
	return self->focusNextChild();
}

bool QTreeView_protectedbase_focusPreviousChild(VirtualQTreeView* self) {
	return self->focusPreviousChild();
}

QObject* QTreeView_protectedbase_sender(const VirtualQTreeView* self) {
	return self->sender();
}

int QTreeView_protectedbase_senderSignalIndex(const VirtualQTreeView* self) {
	return self->senderSignalIndex();
}

int QTreeView_protectedbase_receivers(const VirtualQTreeView* self, const char* signal) {
	return self->receivers(signal);
}

bool QTreeView_protectedbase_isSignalConnected(const VirtualQTreeView* self, QMetaMethod* signal) {
	return self->isSignalConnected(*signal);
}

void QTreeView_delete(QTreeView* self) {
	delete self;
}

