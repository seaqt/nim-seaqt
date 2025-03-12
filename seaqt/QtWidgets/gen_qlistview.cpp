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
#include <QVariant>
#include <QWheelEvent>
#include <QWidget>
#include <qlistview.h>
#include "gen_qlistview.h"
class VirtualQListView final : public QListView {
	const QListView_VTable* vtbl;
	void* vdata;
public:
	friend const QListView_VTable* QListView_vtbl(const VirtualQListView* self);
	friend void* QListView_vdata(const VirtualQListView* self);
	friend void QListView_setVdata(VirtualQListView* self, void* vdata);

	VirtualQListView(const QListView_VTable* vtbl, void* vdata, QWidget* parent): QListView(parent), vtbl(vtbl), vdata(vdata) {}
	VirtualQListView(const QListView_VTable* vtbl, void* vdata): QListView(), vtbl(vtbl), vdata(vdata) {}

	virtual ~VirtualQListView() override { if(vtbl->destructor) vtbl->destructor(this); }

	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QListView::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(this);

		return callback_return_value;
	}

	friend QMetaObject* QListView_virtualbase_metaObject(const VirtualQListView* self);

	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QListView::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(this, sigval1);

		return callback_return_value;
	}

	friend void* QListView_virtualbase_metacast(VirtualQListView* self, const char* param1);

	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QListView::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QListView_virtualbase_metacall(VirtualQListView* self, int param1, int param2, void** param3);

	virtual QRect visualRect(const QModelIndex& index) const override {
		if (vtbl->visualRect == 0) {
			return QListView::visualRect(index);
		}

		const QModelIndex& index_ret = index;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&index_ret);

		QRect* callback_return_value = vtbl->visualRect(this, sigval1);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QRect* QListView_virtualbase_visualRect(const VirtualQListView* self, QModelIndex* index);

	virtual void scrollTo(const QModelIndex& index, QAbstractItemView::ScrollHint hint) override {
		if (vtbl->scrollTo == 0) {
			QListView::scrollTo(index, hint);
			return;
		}

		const QModelIndex& index_ret = index;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&index_ret);
		QAbstractItemView::ScrollHint hint_ret = hint;
		int sigval2 = static_cast<int>(hint_ret);

		vtbl->scrollTo(this, sigval1, sigval2);

	}

	friend void QListView_virtualbase_scrollTo(VirtualQListView* self, QModelIndex* index, int hint);

	virtual QModelIndex indexAt(const QPoint& p) const override {
		if (vtbl->indexAt == 0) {
			return QListView::indexAt(p);
		}

		const QPoint& p_ret = p;
		// Cast returned reference into pointer
		QPoint* sigval1 = const_cast<QPoint*>(&p_ret);

		QModelIndex* callback_return_value = vtbl->indexAt(this, sigval1);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QModelIndex* QListView_virtualbase_indexAt(const VirtualQListView* self, QPoint* p);

	virtual void doItemsLayout() override {
		if (vtbl->doItemsLayout == 0) {
			QListView::doItemsLayout();
			return;
		}


		vtbl->doItemsLayout(this);

	}

	friend void QListView_virtualbase_doItemsLayout(VirtualQListView* self);

	virtual void reset() override {
		if (vtbl->reset == 0) {
			QListView::reset();
			return;
		}


		vtbl->reset(this);

	}

	friend void QListView_virtualbase_reset(VirtualQListView* self);

	virtual void setRootIndex(const QModelIndex& index) override {
		if (vtbl->setRootIndex == 0) {
			QListView::setRootIndex(index);
			return;
		}

		const QModelIndex& index_ret = index;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&index_ret);

		vtbl->setRootIndex(this, sigval1);

	}

	friend void QListView_virtualbase_setRootIndex(VirtualQListView* self, QModelIndex* index);

	virtual bool event(QEvent* e) override {
		if (vtbl->event == 0) {
			return QListView::event(e);
		}

		QEvent* sigval1 = e;

		bool callback_return_value = vtbl->event(this, sigval1);

		return callback_return_value;
	}

	friend bool QListView_virtualbase_event(VirtualQListView* self, QEvent* e);

	virtual void scrollContentsBy(int dx, int dy) override {
		if (vtbl->scrollContentsBy == 0) {
			QListView::scrollContentsBy(dx, dy);
			return;
		}

		int sigval1 = dx;
		int sigval2 = dy;

		vtbl->scrollContentsBy(this, sigval1, sigval2);

	}

	friend void QListView_virtualbase_scrollContentsBy(VirtualQListView* self, int dx, int dy);

	virtual void dataChanged(const QModelIndex& topLeft, const QModelIndex& bottomRight, const QVector<int>& roles) override {
		if (vtbl->dataChanged == 0) {
			QListView::dataChanged(topLeft, bottomRight, roles);
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

	friend void QListView_virtualbase_dataChanged(VirtualQListView* self, QModelIndex* topLeft, QModelIndex* bottomRight, struct miqt_array /* of int */  roles);

	virtual void rowsInserted(const QModelIndex& parent, int start, int end) override {
		if (vtbl->rowsInserted == 0) {
			QListView::rowsInserted(parent, start, end);
			return;
		}

		const QModelIndex& parent_ret = parent;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&parent_ret);
		int sigval2 = start;
		int sigval3 = end;

		vtbl->rowsInserted(this, sigval1, sigval2, sigval3);

	}

	friend void QListView_virtualbase_rowsInserted(VirtualQListView* self, QModelIndex* parent, int start, int end);

	virtual void rowsAboutToBeRemoved(const QModelIndex& parent, int start, int end) override {
		if (vtbl->rowsAboutToBeRemoved == 0) {
			QListView::rowsAboutToBeRemoved(parent, start, end);
			return;
		}

		const QModelIndex& parent_ret = parent;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&parent_ret);
		int sigval2 = start;
		int sigval3 = end;

		vtbl->rowsAboutToBeRemoved(this, sigval1, sigval2, sigval3);

	}

	friend void QListView_virtualbase_rowsAboutToBeRemoved(VirtualQListView* self, QModelIndex* parent, int start, int end);

	virtual void mouseMoveEvent(QMouseEvent* e) override {
		if (vtbl->mouseMoveEvent == 0) {
			QListView::mouseMoveEvent(e);
			return;
		}

		QMouseEvent* sigval1 = e;

		vtbl->mouseMoveEvent(this, sigval1);

	}

	friend void QListView_virtualbase_mouseMoveEvent(VirtualQListView* self, QMouseEvent* e);

	virtual void mouseReleaseEvent(QMouseEvent* e) override {
		if (vtbl->mouseReleaseEvent == 0) {
			QListView::mouseReleaseEvent(e);
			return;
		}

		QMouseEvent* sigval1 = e;

		vtbl->mouseReleaseEvent(this, sigval1);

	}

	friend void QListView_virtualbase_mouseReleaseEvent(VirtualQListView* self, QMouseEvent* e);

	virtual void wheelEvent(QWheelEvent* e) override {
		if (vtbl->wheelEvent == 0) {
			QListView::wheelEvent(e);
			return;
		}

		QWheelEvent* sigval1 = e;

		vtbl->wheelEvent(this, sigval1);

	}

	friend void QListView_virtualbase_wheelEvent(VirtualQListView* self, QWheelEvent* e);

	virtual void timerEvent(QTimerEvent* e) override {
		if (vtbl->timerEvent == 0) {
			QListView::timerEvent(e);
			return;
		}

		QTimerEvent* sigval1 = e;

		vtbl->timerEvent(this, sigval1);

	}

	friend void QListView_virtualbase_timerEvent(VirtualQListView* self, QTimerEvent* e);

	virtual void resizeEvent(QResizeEvent* e) override {
		if (vtbl->resizeEvent == 0) {
			QListView::resizeEvent(e);
			return;
		}

		QResizeEvent* sigval1 = e;

		vtbl->resizeEvent(this, sigval1);

	}

	friend void QListView_virtualbase_resizeEvent(VirtualQListView* self, QResizeEvent* e);

	virtual void dragMoveEvent(QDragMoveEvent* e) override {
		if (vtbl->dragMoveEvent == 0) {
			QListView::dragMoveEvent(e);
			return;
		}

		QDragMoveEvent* sigval1 = e;

		vtbl->dragMoveEvent(this, sigval1);

	}

	friend void QListView_virtualbase_dragMoveEvent(VirtualQListView* self, QDragMoveEvent* e);

	virtual void dragLeaveEvent(QDragLeaveEvent* e) override {
		if (vtbl->dragLeaveEvent == 0) {
			QListView::dragLeaveEvent(e);
			return;
		}

		QDragLeaveEvent* sigval1 = e;

		vtbl->dragLeaveEvent(this, sigval1);

	}

	friend void QListView_virtualbase_dragLeaveEvent(VirtualQListView* self, QDragLeaveEvent* e);

	virtual void dropEvent(QDropEvent* e) override {
		if (vtbl->dropEvent == 0) {
			QListView::dropEvent(e);
			return;
		}

		QDropEvent* sigval1 = e;

		vtbl->dropEvent(this, sigval1);

	}

	friend void QListView_virtualbase_dropEvent(VirtualQListView* self, QDropEvent* e);

	virtual void startDrag(Qt::DropActions supportedActions) override {
		if (vtbl->startDrag == 0) {
			QListView::startDrag(supportedActions);
			return;
		}

		Qt::DropActions supportedActions_ret = supportedActions;
		int sigval1 = static_cast<int>(supportedActions_ret);

		vtbl->startDrag(this, sigval1);

	}

	friend void QListView_virtualbase_startDrag(VirtualQListView* self, int supportedActions);

	virtual QStyleOptionViewItem viewOptions() const override {
		if (vtbl->viewOptions == 0) {
			return QListView::viewOptions();
		}


		QStyleOptionViewItem* callback_return_value = vtbl->viewOptions(this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QStyleOptionViewItem* QListView_virtualbase_viewOptions(const VirtualQListView* self);

	virtual void paintEvent(QPaintEvent* e) override {
		if (vtbl->paintEvent == 0) {
			QListView::paintEvent(e);
			return;
		}

		QPaintEvent* sigval1 = e;

		vtbl->paintEvent(this, sigval1);

	}

	friend void QListView_virtualbase_paintEvent(VirtualQListView* self, QPaintEvent* e);

	virtual int horizontalOffset() const override {
		if (vtbl->horizontalOffset == 0) {
			return QListView::horizontalOffset();
		}


		int callback_return_value = vtbl->horizontalOffset(this);

		return static_cast<int>(callback_return_value);
	}

	friend int QListView_virtualbase_horizontalOffset(const VirtualQListView* self);

	virtual int verticalOffset() const override {
		if (vtbl->verticalOffset == 0) {
			return QListView::verticalOffset();
		}


		int callback_return_value = vtbl->verticalOffset(this);

		return static_cast<int>(callback_return_value);
	}

	friend int QListView_virtualbase_verticalOffset(const VirtualQListView* self);

	virtual QModelIndex moveCursor(QAbstractItemView::CursorAction cursorAction, Qt::KeyboardModifiers modifiers) override {
		if (vtbl->moveCursor == 0) {
			return QListView::moveCursor(cursorAction, modifiers);
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

	friend QModelIndex* QListView_virtualbase_moveCursor(VirtualQListView* self, int cursorAction, int modifiers);

	virtual void setSelection(const QRect& rect, QItemSelectionModel::SelectionFlags command) override {
		if (vtbl->setSelection == 0) {
			QListView::setSelection(rect, command);
			return;
		}

		const QRect& rect_ret = rect;
		// Cast returned reference into pointer
		QRect* sigval1 = const_cast<QRect*>(&rect_ret);
		QItemSelectionModel::SelectionFlags command_ret = command;
		int sigval2 = static_cast<int>(command_ret);

		vtbl->setSelection(this, sigval1, sigval2);

	}

	friend void QListView_virtualbase_setSelection(VirtualQListView* self, QRect* rect, int command);

	virtual QRegion visualRegionForSelection(const QItemSelection& selection) const override {
		if (vtbl->visualRegionForSelection == 0) {
			return QListView::visualRegionForSelection(selection);
		}

		const QItemSelection& selection_ret = selection;
		// Cast returned reference into pointer
		QItemSelection* sigval1 = const_cast<QItemSelection*>(&selection_ret);

		QRegion* callback_return_value = vtbl->visualRegionForSelection(this, sigval1);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QRegion* QListView_virtualbase_visualRegionForSelection(const VirtualQListView* self, QItemSelection* selection);

	virtual QModelIndexList selectedIndexes() const override {
		if (vtbl->selectedIndexes == 0) {
			return QListView::selectedIndexes();
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

	friend struct miqt_array /* of QModelIndex* */  QListView_virtualbase_selectedIndexes(const VirtualQListView* self);

	virtual void updateGeometries() override {
		if (vtbl->updateGeometries == 0) {
			QListView::updateGeometries();
			return;
		}


		vtbl->updateGeometries(this);

	}

	friend void QListView_virtualbase_updateGeometries(VirtualQListView* self);

	virtual bool isIndexHidden(const QModelIndex& index) const override {
		if (vtbl->isIndexHidden == 0) {
			return QListView::isIndexHidden(index);
		}

		const QModelIndex& index_ret = index;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&index_ret);

		bool callback_return_value = vtbl->isIndexHidden(this, sigval1);

		return callback_return_value;
	}

	friend bool QListView_virtualbase_isIndexHidden(const VirtualQListView* self, QModelIndex* index);

	virtual void selectionChanged(const QItemSelection& selected, const QItemSelection& deselected) override {
		if (vtbl->selectionChanged == 0) {
			QListView::selectionChanged(selected, deselected);
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

	friend void QListView_virtualbase_selectionChanged(VirtualQListView* self, QItemSelection* selected, QItemSelection* deselected);

	virtual void currentChanged(const QModelIndex& current, const QModelIndex& previous) override {
		if (vtbl->currentChanged == 0) {
			QListView::currentChanged(current, previous);
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

	friend void QListView_virtualbase_currentChanged(VirtualQListView* self, QModelIndex* current, QModelIndex* previous);

	virtual QSize viewportSizeHint() const override {
		if (vtbl->viewportSizeHint == 0) {
			return QListView::viewportSizeHint();
		}


		QSize* callback_return_value = vtbl->viewportSizeHint(this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QSize* QListView_virtualbase_viewportSizeHint(const VirtualQListView* self);

	virtual void setModel(QAbstractItemModel* model) override {
		if (vtbl->setModel == 0) {
			QListView::setModel(model);
			return;
		}

		QAbstractItemModel* sigval1 = model;

		vtbl->setModel(this, sigval1);

	}

	friend void QListView_virtualbase_setModel(VirtualQListView* self, QAbstractItemModel* model);

	virtual void setSelectionModel(QItemSelectionModel* selectionModel) override {
		if (vtbl->setSelectionModel == 0) {
			QListView::setSelectionModel(selectionModel);
			return;
		}

		QItemSelectionModel* sigval1 = selectionModel;

		vtbl->setSelectionModel(this, sigval1);

	}

	friend void QListView_virtualbase_setSelectionModel(VirtualQListView* self, QItemSelectionModel* selectionModel);

	virtual void keyboardSearch(const QString& search) override {
		if (vtbl->keyboardSearch == 0) {
			QListView::keyboardSearch(search);
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

	friend void QListView_virtualbase_keyboardSearch(VirtualQListView* self, struct miqt_string search);

	virtual int sizeHintForRow(int row) const override {
		if (vtbl->sizeHintForRow == 0) {
			return QListView::sizeHintForRow(row);
		}

		int sigval1 = row;

		int callback_return_value = vtbl->sizeHintForRow(this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QListView_virtualbase_sizeHintForRow(const VirtualQListView* self, int row);

	virtual int sizeHintForColumn(int column) const override {
		if (vtbl->sizeHintForColumn == 0) {
			return QListView::sizeHintForColumn(column);
		}

		int sigval1 = column;

		int callback_return_value = vtbl->sizeHintForColumn(this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QListView_virtualbase_sizeHintForColumn(const VirtualQListView* self, int column);

	virtual QVariant inputMethodQuery(Qt::InputMethodQuery query) const override {
		if (vtbl->inputMethodQuery == 0) {
			return QListView::inputMethodQuery(query);
		}

		Qt::InputMethodQuery query_ret = query;
		int sigval1 = static_cast<int>(query_ret);

		QVariant* callback_return_value = vtbl->inputMethodQuery(this, sigval1);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QVariant* QListView_virtualbase_inputMethodQuery(const VirtualQListView* self, int query);

	virtual void selectAll() override {
		if (vtbl->selectAll == 0) {
			QListView::selectAll();
			return;
		}


		vtbl->selectAll(this);

	}

	friend void QListView_virtualbase_selectAll(VirtualQListView* self);

	virtual void updateEditorData() override {
		if (vtbl->updateEditorData == 0) {
			QListView::updateEditorData();
			return;
		}


		vtbl->updateEditorData(this);

	}

	friend void QListView_virtualbase_updateEditorData(VirtualQListView* self);

	virtual void updateEditorGeometries() override {
		if (vtbl->updateEditorGeometries == 0) {
			QListView::updateEditorGeometries();
			return;
		}


		vtbl->updateEditorGeometries(this);

	}

	friend void QListView_virtualbase_updateEditorGeometries(VirtualQListView* self);

	virtual void verticalScrollbarAction(int action) override {
		if (vtbl->verticalScrollbarAction == 0) {
			QListView::verticalScrollbarAction(action);
			return;
		}

		int sigval1 = action;

		vtbl->verticalScrollbarAction(this, sigval1);

	}

	friend void QListView_virtualbase_verticalScrollbarAction(VirtualQListView* self, int action);

	virtual void horizontalScrollbarAction(int action) override {
		if (vtbl->horizontalScrollbarAction == 0) {
			QListView::horizontalScrollbarAction(action);
			return;
		}

		int sigval1 = action;

		vtbl->horizontalScrollbarAction(this, sigval1);

	}

	friend void QListView_virtualbase_horizontalScrollbarAction(VirtualQListView* self, int action);

	virtual void verticalScrollbarValueChanged(int value) override {
		if (vtbl->verticalScrollbarValueChanged == 0) {
			QListView::verticalScrollbarValueChanged(value);
			return;
		}

		int sigval1 = value;

		vtbl->verticalScrollbarValueChanged(this, sigval1);

	}

	friend void QListView_virtualbase_verticalScrollbarValueChanged(VirtualQListView* self, int value);

	virtual void horizontalScrollbarValueChanged(int value) override {
		if (vtbl->horizontalScrollbarValueChanged == 0) {
			QListView::horizontalScrollbarValueChanged(value);
			return;
		}

		int sigval1 = value;

		vtbl->horizontalScrollbarValueChanged(this, sigval1);

	}

	friend void QListView_virtualbase_horizontalScrollbarValueChanged(VirtualQListView* self, int value);

	virtual void closeEditor(QWidget* editor, QAbstractItemDelegate::EndEditHint hint) override {
		if (vtbl->closeEditor == 0) {
			QListView::closeEditor(editor, hint);
			return;
		}

		QWidget* sigval1 = editor;
		QAbstractItemDelegate::EndEditHint hint_ret = hint;
		int sigval2 = static_cast<int>(hint_ret);

		vtbl->closeEditor(this, sigval1, sigval2);

	}

	friend void QListView_virtualbase_closeEditor(VirtualQListView* self, QWidget* editor, int hint);

	virtual void commitData(QWidget* editor) override {
		if (vtbl->commitData == 0) {
			QListView::commitData(editor);
			return;
		}

		QWidget* sigval1 = editor;

		vtbl->commitData(this, sigval1);

	}

	friend void QListView_virtualbase_commitData(VirtualQListView* self, QWidget* editor);

	virtual void editorDestroyed(QObject* editor) override {
		if (vtbl->editorDestroyed == 0) {
			QListView::editorDestroyed(editor);
			return;
		}

		QObject* sigval1 = editor;

		vtbl->editorDestroyed(this, sigval1);

	}

	friend void QListView_virtualbase_editorDestroyed(VirtualQListView* self, QObject* editor);

	virtual bool edit(const QModelIndex& index, QAbstractItemView::EditTrigger trigger, QEvent* event) override {
		if (vtbl->edit2 == 0) {
			return QListView::edit(index, trigger, event);
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

	friend bool QListView_virtualbase_edit2(VirtualQListView* self, QModelIndex* index, int trigger, QEvent* event);

	virtual QItemSelectionModel::SelectionFlags selectionCommand(const QModelIndex& index, const QEvent* event) const override {
		if (vtbl->selectionCommand == 0) {
			return QListView::selectionCommand(index, event);
		}

		const QModelIndex& index_ret = index;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&index_ret);
		QEvent* sigval2 = (QEvent*) event;

		int callback_return_value = vtbl->selectionCommand(this, sigval1, sigval2);

		return static_cast<QItemSelectionModel::SelectionFlags>(callback_return_value);
	}

	friend int QListView_virtualbase_selectionCommand(const VirtualQListView* self, QModelIndex* index, QEvent* event);

	virtual bool focusNextPrevChild(bool next) override {
		if (vtbl->focusNextPrevChild == 0) {
			return QListView::focusNextPrevChild(next);
		}

		bool sigval1 = next;

		bool callback_return_value = vtbl->focusNextPrevChild(this, sigval1);

		return callback_return_value;
	}

	friend bool QListView_virtualbase_focusNextPrevChild(VirtualQListView* self, bool next);

	virtual bool viewportEvent(QEvent* event) override {
		if (vtbl->viewportEvent == 0) {
			return QListView::viewportEvent(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->viewportEvent(this, sigval1);

		return callback_return_value;
	}

	friend bool QListView_virtualbase_viewportEvent(VirtualQListView* self, QEvent* event);

	virtual void mousePressEvent(QMouseEvent* event) override {
		if (vtbl->mousePressEvent == 0) {
			QListView::mousePressEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mousePressEvent(this, sigval1);

	}

	friend void QListView_virtualbase_mousePressEvent(VirtualQListView* self, QMouseEvent* event);

	virtual void mouseDoubleClickEvent(QMouseEvent* event) override {
		if (vtbl->mouseDoubleClickEvent == 0) {
			QListView::mouseDoubleClickEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseDoubleClickEvent(this, sigval1);

	}

	friend void QListView_virtualbase_mouseDoubleClickEvent(VirtualQListView* self, QMouseEvent* event);

	virtual void dragEnterEvent(QDragEnterEvent* event) override {
		if (vtbl->dragEnterEvent == 0) {
			QListView::dragEnterEvent(event);
			return;
		}

		QDragEnterEvent* sigval1 = event;

		vtbl->dragEnterEvent(this, sigval1);

	}

	friend void QListView_virtualbase_dragEnterEvent(VirtualQListView* self, QDragEnterEvent* event);

	virtual void focusInEvent(QFocusEvent* event) override {
		if (vtbl->focusInEvent == 0) {
			QListView::focusInEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;

		vtbl->focusInEvent(this, sigval1);

	}

	friend void QListView_virtualbase_focusInEvent(VirtualQListView* self, QFocusEvent* event);

	virtual void focusOutEvent(QFocusEvent* event) override {
		if (vtbl->focusOutEvent == 0) {
			QListView::focusOutEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;

		vtbl->focusOutEvent(this, sigval1);

	}

	friend void QListView_virtualbase_focusOutEvent(VirtualQListView* self, QFocusEvent* event);

	virtual void keyPressEvent(QKeyEvent* event) override {
		if (vtbl->keyPressEvent == 0) {
			QListView::keyPressEvent(event);
			return;
		}

		QKeyEvent* sigval1 = event;

		vtbl->keyPressEvent(this, sigval1);

	}

	friend void QListView_virtualbase_keyPressEvent(VirtualQListView* self, QKeyEvent* event);

	virtual void inputMethodEvent(QInputMethodEvent* event) override {
		if (vtbl->inputMethodEvent == 0) {
			QListView::inputMethodEvent(event);
			return;
		}

		QInputMethodEvent* sigval1 = event;

		vtbl->inputMethodEvent(this, sigval1);

	}

	friend void QListView_virtualbase_inputMethodEvent(VirtualQListView* self, QInputMethodEvent* event);

	virtual bool eventFilter(QObject* object, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QListView::eventFilter(object, event);
		}

		QObject* sigval1 = object;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QListView_virtualbase_eventFilter(VirtualQListView* self, QObject* object, QEvent* event);

	virtual QSize minimumSizeHint() const override {
		if (vtbl->minimumSizeHint == 0) {
			return QListView::minimumSizeHint();
		}


		QSize* callback_return_value = vtbl->minimumSizeHint(this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QSize* QListView_virtualbase_minimumSizeHint(const VirtualQListView* self);

	virtual QSize sizeHint() const override {
		if (vtbl->sizeHint == 0) {
			return QListView::sizeHint();
		}


		QSize* callback_return_value = vtbl->sizeHint(this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QSize* QListView_virtualbase_sizeHint(const VirtualQListView* self);

	virtual void setupViewport(QWidget* viewport) override {
		if (vtbl->setupViewport == 0) {
			QListView::setupViewport(viewport);
			return;
		}

		QWidget* sigval1 = viewport;

		vtbl->setupViewport(this, sigval1);

	}

	friend void QListView_virtualbase_setupViewport(VirtualQListView* self, QWidget* viewport);

	virtual void contextMenuEvent(QContextMenuEvent* param1) override {
		if (vtbl->contextMenuEvent == 0) {
			QListView::contextMenuEvent(param1);
			return;
		}

		QContextMenuEvent* sigval1 = param1;

		vtbl->contextMenuEvent(this, sigval1);

	}

	friend void QListView_virtualbase_contextMenuEvent(VirtualQListView* self, QContextMenuEvent* param1);

	virtual void changeEvent(QEvent* param1) override {
		if (vtbl->changeEvent == 0) {
			QListView::changeEvent(param1);
			return;
		}

		QEvent* sigval1 = param1;

		vtbl->changeEvent(this, sigval1);

	}

	friend void QListView_virtualbase_changeEvent(VirtualQListView* self, QEvent* param1);

	virtual int devType() const override {
		if (vtbl->devType == 0) {
			return QListView::devType();
		}


		int callback_return_value = vtbl->devType(this);

		return static_cast<int>(callback_return_value);
	}

	friend int QListView_virtualbase_devType(const VirtualQListView* self);

	virtual void setVisible(bool visible) override {
		if (vtbl->setVisible == 0) {
			QListView::setVisible(visible);
			return;
		}

		bool sigval1 = visible;

		vtbl->setVisible(this, sigval1);

	}

	friend void QListView_virtualbase_setVisible(VirtualQListView* self, bool visible);

	virtual int heightForWidth(int param1) const override {
		if (vtbl->heightForWidth == 0) {
			return QListView::heightForWidth(param1);
		}

		int sigval1 = param1;

		int callback_return_value = vtbl->heightForWidth(this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QListView_virtualbase_heightForWidth(const VirtualQListView* self, int param1);

	virtual bool hasHeightForWidth() const override {
		if (vtbl->hasHeightForWidth == 0) {
			return QListView::hasHeightForWidth();
		}


		bool callback_return_value = vtbl->hasHeightForWidth(this);

		return callback_return_value;
	}

	friend bool QListView_virtualbase_hasHeightForWidth(const VirtualQListView* self);

	virtual QPaintEngine* paintEngine() const override {
		if (vtbl->paintEngine == 0) {
			return QListView::paintEngine();
		}


		QPaintEngine* callback_return_value = vtbl->paintEngine(this);

		return callback_return_value;
	}

	friend QPaintEngine* QListView_virtualbase_paintEngine(const VirtualQListView* self);

	virtual void keyReleaseEvent(QKeyEvent* event) override {
		if (vtbl->keyReleaseEvent == 0) {
			QListView::keyReleaseEvent(event);
			return;
		}

		QKeyEvent* sigval1 = event;

		vtbl->keyReleaseEvent(this, sigval1);

	}

	friend void QListView_virtualbase_keyReleaseEvent(VirtualQListView* self, QKeyEvent* event);

	virtual void enterEvent(QEvent* event) override {
		if (vtbl->enterEvent == 0) {
			QListView::enterEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->enterEvent(this, sigval1);

	}

	friend void QListView_virtualbase_enterEvent(VirtualQListView* self, QEvent* event);

	virtual void leaveEvent(QEvent* event) override {
		if (vtbl->leaveEvent == 0) {
			QListView::leaveEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->leaveEvent(this, sigval1);

	}

	friend void QListView_virtualbase_leaveEvent(VirtualQListView* self, QEvent* event);

	virtual void moveEvent(QMoveEvent* event) override {
		if (vtbl->moveEvent == 0) {
			QListView::moveEvent(event);
			return;
		}

		QMoveEvent* sigval1 = event;

		vtbl->moveEvent(this, sigval1);

	}

	friend void QListView_virtualbase_moveEvent(VirtualQListView* self, QMoveEvent* event);

	virtual void closeEvent(QCloseEvent* event) override {
		if (vtbl->closeEvent == 0) {
			QListView::closeEvent(event);
			return;
		}

		QCloseEvent* sigval1 = event;

		vtbl->closeEvent(this, sigval1);

	}

	friend void QListView_virtualbase_closeEvent(VirtualQListView* self, QCloseEvent* event);

	virtual void tabletEvent(QTabletEvent* event) override {
		if (vtbl->tabletEvent == 0) {
			QListView::tabletEvent(event);
			return;
		}

		QTabletEvent* sigval1 = event;

		vtbl->tabletEvent(this, sigval1);

	}

	friend void QListView_virtualbase_tabletEvent(VirtualQListView* self, QTabletEvent* event);

	virtual void actionEvent(QActionEvent* event) override {
		if (vtbl->actionEvent == 0) {
			QListView::actionEvent(event);
			return;
		}

		QActionEvent* sigval1 = event;

		vtbl->actionEvent(this, sigval1);

	}

	friend void QListView_virtualbase_actionEvent(VirtualQListView* self, QActionEvent* event);

	virtual void showEvent(QShowEvent* event) override {
		if (vtbl->showEvent == 0) {
			QListView::showEvent(event);
			return;
		}

		QShowEvent* sigval1 = event;

		vtbl->showEvent(this, sigval1);

	}

	friend void QListView_virtualbase_showEvent(VirtualQListView* self, QShowEvent* event);

	virtual void hideEvent(QHideEvent* event) override {
		if (vtbl->hideEvent == 0) {
			QListView::hideEvent(event);
			return;
		}

		QHideEvent* sigval1 = event;

		vtbl->hideEvent(this, sigval1);

	}

	friend void QListView_virtualbase_hideEvent(VirtualQListView* self, QHideEvent* event);

	virtual bool nativeEvent(const QByteArray& eventType, void* message, long* result) override {
		if (vtbl->nativeEvent == 0) {
			return QListView::nativeEvent(eventType, message, result);
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

	friend bool QListView_virtualbase_nativeEvent(VirtualQListView* self, struct miqt_string eventType, void* message, long* result);

	virtual int metric(QPaintDevice::PaintDeviceMetric param1) const override {
		if (vtbl->metric == 0) {
			return QListView::metric(param1);
		}

		QPaintDevice::PaintDeviceMetric param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);

		int callback_return_value = vtbl->metric(this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QListView_virtualbase_metric(const VirtualQListView* self, int param1);

	virtual void initPainter(QPainter* painter) const override {
		if (vtbl->initPainter == 0) {
			QListView::initPainter(painter);
			return;
		}

		QPainter* sigval1 = painter;

		vtbl->initPainter(this, sigval1);

	}

	friend void QListView_virtualbase_initPainter(const VirtualQListView* self, QPainter* painter);

	virtual QPaintDevice* redirected(QPoint* offset) const override {
		if (vtbl->redirected == 0) {
			return QListView::redirected(offset);
		}

		QPoint* sigval1 = offset;

		QPaintDevice* callback_return_value = vtbl->redirected(this, sigval1);

		return callback_return_value;
	}

	friend QPaintDevice* QListView_virtualbase_redirected(const VirtualQListView* self, QPoint* offset);

	virtual QPainter* sharedPainter() const override {
		if (vtbl->sharedPainter == 0) {
			return QListView::sharedPainter();
		}


		QPainter* callback_return_value = vtbl->sharedPainter(this);

		return callback_return_value;
	}

	friend QPainter* QListView_virtualbase_sharedPainter(const VirtualQListView* self);

	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QListView::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(this, sigval1);

	}

	friend void QListView_virtualbase_childEvent(VirtualQListView* self, QChildEvent* event);

	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QListView::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(this, sigval1);

	}

	friend void QListView_virtualbase_customEvent(VirtualQListView* self, QEvent* event);

	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QListView::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(this, sigval1);

	}

	friend void QListView_virtualbase_connectNotify(VirtualQListView* self, QMetaMethod* signal);

	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QListView::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(this, sigval1);

	}

	friend void QListView_virtualbase_disconnectNotify(VirtualQListView* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend void QListView_protectedbase_resizeContents(VirtualQListView* self, int width, int height);
	friend QSize* QListView_protectedbase_contentsSize(const VirtualQListView* self);
	friend QRect* QListView_protectedbase_rectForIndex(const VirtualQListView* self, QModelIndex* index);
	friend void QListView_protectedbase_setPositionForIndex(VirtualQListView* self, QPoint* position, QModelIndex* index);
	friend void QListView_protectedbase_setHorizontalStepsPerItem(VirtualQListView* self, int steps);
	friend int QListView_protectedbase_horizontalStepsPerItem(const VirtualQListView* self);
	friend void QListView_protectedbase_setVerticalStepsPerItem(VirtualQListView* self, int steps);
	friend int QListView_protectedbase_verticalStepsPerItem(const VirtualQListView* self);
	friend int QListView_protectedbase_state(const VirtualQListView* self);
	friend void QListView_protectedbase_setState(VirtualQListView* self, int state);
	friend void QListView_protectedbase_scheduleDelayedItemsLayout(VirtualQListView* self);
	friend void QListView_protectedbase_executeDelayedItemsLayout(VirtualQListView* self);
	friend void QListView_protectedbase_setDirtyRegion(VirtualQListView* self, QRegion* region);
	friend void QListView_protectedbase_scrollDirtyRegion(VirtualQListView* self, int dx, int dy);
	friend QPoint* QListView_protectedbase_dirtyRegionOffset(const VirtualQListView* self);
	friend void QListView_protectedbase_startAutoScroll(VirtualQListView* self);
	friend void QListView_protectedbase_stopAutoScroll(VirtualQListView* self);
	friend void QListView_protectedbase_doAutoScroll(VirtualQListView* self);
	friend int QListView_protectedbase_dropIndicatorPosition(const VirtualQListView* self);
	friend void QListView_protectedbase_setViewportMargins(VirtualQListView* self, int left, int top, int right, int bottom);
	friend QMargins* QListView_protectedbase_viewportMargins(const VirtualQListView* self);
	friend void QListView_protectedbase_drawFrame(VirtualQListView* self, QPainter* param1);
	friend void QListView_protectedbase_initStyleOption(const VirtualQListView* self, QStyleOptionFrame* option);
	friend void QListView_protectedbase_updateMicroFocus(VirtualQListView* self);
	friend void QListView_protectedbase_create(VirtualQListView* self);
	friend void QListView_protectedbase_destroy(VirtualQListView* self);
	friend bool QListView_protectedbase_focusNextChild(VirtualQListView* self);
	friend bool QListView_protectedbase_focusPreviousChild(VirtualQListView* self);
	friend QObject* QListView_protectedbase_sender(const VirtualQListView* self);
	friend int QListView_protectedbase_senderSignalIndex(const VirtualQListView* self);
	friend int QListView_protectedbase_receivers(const VirtualQListView* self, const char* signal);
	friend bool QListView_protectedbase_isSignalConnected(const VirtualQListView* self, QMetaMethod* signal);
};

VirtualQListView* QListView_new(const QListView_VTable* vtbl, void* vdata, QWidget* parent) {
	return new VirtualQListView(vtbl, vdata, parent);
}

VirtualQListView* QListView_new2(const QListView_VTable* vtbl, void* vdata) {
	return new VirtualQListView(vtbl, vdata);
}

void QListView_virtbase(QListView* src, QAbstractItemView** outptr_QAbstractItemView) {
	*outptr_QAbstractItemView = static_cast<QAbstractItemView*>(src);
}

QMetaObject* QListView_metaObject(const QListView* self) {
	return (QMetaObject*) self->metaObject();
}

void* QListView_metacast(QListView* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QListView_metacall(QListView* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QListView_tr(const char* s) {
	QString _ret = QListView::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QListView_trUtf8(const char* s) {
	QString _ret = QListView::trUtf8(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QListView_setMovement(QListView* self, int movement) {
	self->setMovement(static_cast<QListView::Movement>(movement));
}

int QListView_movement(const QListView* self) {
	QListView::Movement _ret = self->movement();
	return static_cast<int>(_ret);
}

void QListView_setFlow(QListView* self, int flow) {
	self->setFlow(static_cast<QListView::Flow>(flow));
}

int QListView_flow(const QListView* self) {
	QListView::Flow _ret = self->flow();
	return static_cast<int>(_ret);
}

void QListView_setWrapping(QListView* self, bool enable) {
	self->setWrapping(enable);
}

bool QListView_isWrapping(const QListView* self) {
	return self->isWrapping();
}

void QListView_setResizeMode(QListView* self, int mode) {
	self->setResizeMode(static_cast<QListView::ResizeMode>(mode));
}

int QListView_resizeMode(const QListView* self) {
	QListView::ResizeMode _ret = self->resizeMode();
	return static_cast<int>(_ret);
}

void QListView_setLayoutMode(QListView* self, int mode) {
	self->setLayoutMode(static_cast<QListView::LayoutMode>(mode));
}

int QListView_layoutMode(const QListView* self) {
	QListView::LayoutMode _ret = self->layoutMode();
	return static_cast<int>(_ret);
}

void QListView_setSpacing(QListView* self, int space) {
	self->setSpacing(static_cast<int>(space));
}

int QListView_spacing(const QListView* self) {
	return self->spacing();
}

void QListView_setBatchSize(QListView* self, int batchSize) {
	self->setBatchSize(static_cast<int>(batchSize));
}

int QListView_batchSize(const QListView* self) {
	return self->batchSize();
}

void QListView_setGridSize(QListView* self, QSize* size) {
	self->setGridSize(*size);
}

QSize* QListView_gridSize(const QListView* self) {
	return new QSize(self->gridSize());
}

void QListView_setViewMode(QListView* self, int mode) {
	self->setViewMode(static_cast<QListView::ViewMode>(mode));
}

int QListView_viewMode(const QListView* self) {
	QListView::ViewMode _ret = self->viewMode();
	return static_cast<int>(_ret);
}

void QListView_clearPropertyFlags(QListView* self) {
	self->clearPropertyFlags();
}

bool QListView_isRowHidden(const QListView* self, int row) {
	return self->isRowHidden(static_cast<int>(row));
}

void QListView_setRowHidden(QListView* self, int row, bool hide) {
	self->setRowHidden(static_cast<int>(row), hide);
}

void QListView_setModelColumn(QListView* self, int column) {
	self->setModelColumn(static_cast<int>(column));
}

int QListView_modelColumn(const QListView* self) {
	return self->modelColumn();
}

void QListView_setUniformItemSizes(QListView* self, bool enable) {
	self->setUniformItemSizes(enable);
}

bool QListView_uniformItemSizes(const QListView* self) {
	return self->uniformItemSizes();
}

void QListView_setWordWrap(QListView* self, bool on) {
	self->setWordWrap(on);
}

bool QListView_wordWrap(const QListView* self) {
	return self->wordWrap();
}

void QListView_setSelectionRectVisible(QListView* self, bool show) {
	self->setSelectionRectVisible(show);
}

bool QListView_isSelectionRectVisible(const QListView* self) {
	return self->isSelectionRectVisible();
}

void QListView_setItemAlignment(QListView* self, int alignment) {
	self->setItemAlignment(static_cast<Qt::Alignment>(alignment));
}

int QListView_itemAlignment(const QListView* self) {
	Qt::Alignment _ret = self->itemAlignment();
	return static_cast<int>(_ret);
}

QRect* QListView_visualRect(const QListView* self, QModelIndex* index) {
	return new QRect(self->visualRect(*index));
}

void QListView_scrollTo(QListView* self, QModelIndex* index, int hint) {
	self->scrollTo(*index, static_cast<QAbstractItemView::ScrollHint>(hint));
}

QModelIndex* QListView_indexAt(const QListView* self, QPoint* p) {
	return new QModelIndex(self->indexAt(*p));
}

void QListView_doItemsLayout(QListView* self) {
	self->doItemsLayout();
}

void QListView_reset(QListView* self) {
	self->reset();
}

void QListView_setRootIndex(QListView* self, QModelIndex* index) {
	self->setRootIndex(*index);
}

void QListView_indexesMoved(QListView* self, struct miqt_array /* of QModelIndex* */  indexes) {
	QModelIndexList indexes_QList;
	indexes_QList.reserve(indexes.len);
	QModelIndex** indexes_arr = static_cast<QModelIndex**>(indexes.data);
	for(size_t i = 0; i < indexes.len; ++i) {
		indexes_QList.push_back(*(indexes_arr[i]));
	}
	self->indexesMoved(indexes_QList);
}

void QListView_connect_indexesMoved(VirtualQListView* self, intptr_t slot, void (*callback)(intptr_t, struct miqt_array /* of QModelIndex* */ ), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, struct miqt_array /* of QModelIndex* */ ), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, struct miqt_array /* of QModelIndex* */ );
		void operator()(const QModelIndexList& indexes) {
			const QModelIndexList& indexes_ret = indexes;
			// Convert QList<> from C++ memory to manually-managed C memory
			QModelIndex** indexes_arr = static_cast<QModelIndex**>(malloc(sizeof(QModelIndex*) * indexes_ret.length()));
			for (size_t i = 0, e = indexes_ret.length(); i < e; ++i) {
				indexes_arr[i] = new QModelIndex(indexes_ret[i]);
			}
			struct miqt_array indexes_out;
			indexes_out.len = indexes_ret.length();
			indexes_out.data = static_cast<void*>(indexes_arr);
			struct miqt_array /* of QModelIndex* */  sigval1 = indexes_out;
			callback(slot, sigval1);
		}
	};
	VirtualQListView::connect(self, static_cast<void (QListView::*)(const QModelIndexList&)>(&QListView::indexesMoved), self, local_caller{slot, callback, release});
}

struct miqt_string QListView_tr2(const char* s, const char* c) {
	QString _ret = QListView::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QListView_tr3(const char* s, const char* c, int n) {
	QString _ret = QListView::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QListView_trUtf82(const char* s, const char* c) {
	QString _ret = QListView::trUtf8(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QListView_trUtf83(const char* s, const char* c, int n) {
	QString _ret = QListView::trUtf8(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QMetaObject* QListView_virtualbase_metaObject(const VirtualQListView* self) {

	return (QMetaObject*) self->QListView::metaObject();
}

void* QListView_virtualbase_metacast(VirtualQListView* self, const char* param1) {

	return self->QListView::qt_metacast(param1);
}

int QListView_virtualbase_metacall(VirtualQListView* self, int param1, int param2, void** param3) {

	return self->QListView::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

QRect* QListView_virtualbase_visualRect(const VirtualQListView* self, QModelIndex* index) {

	return new QRect(self->QListView::visualRect(*index));
}

void QListView_virtualbase_scrollTo(VirtualQListView* self, QModelIndex* index, int hint) {

	self->QListView::scrollTo(*index, static_cast<VirtualQListView::ScrollHint>(hint));
}

QModelIndex* QListView_virtualbase_indexAt(const VirtualQListView* self, QPoint* p) {

	return new QModelIndex(self->QListView::indexAt(*p));
}

void QListView_virtualbase_doItemsLayout(VirtualQListView* self) {

	self->QListView::doItemsLayout();
}

void QListView_virtualbase_reset(VirtualQListView* self) {

	self->QListView::reset();
}

void QListView_virtualbase_setRootIndex(VirtualQListView* self, QModelIndex* index) {

	self->QListView::setRootIndex(*index);
}

bool QListView_virtualbase_event(VirtualQListView* self, QEvent* e) {

	return self->QListView::event(e);
}

void QListView_virtualbase_scrollContentsBy(VirtualQListView* self, int dx, int dy) {

	self->QListView::scrollContentsBy(static_cast<int>(dx), static_cast<int>(dy));
}

void QListView_virtualbase_dataChanged(VirtualQListView* self, QModelIndex* topLeft, QModelIndex* bottomRight, struct miqt_array /* of int */  roles) {
	QVector<int> roles_QList;
	roles_QList.reserve(roles.len);
	int* roles_arr = static_cast<int*>(roles.data);
	for(size_t i = 0; i < roles.len; ++i) {
		roles_QList.push_back(static_cast<int>(roles_arr[i]));
	}

	self->QListView::dataChanged(*topLeft, *bottomRight, roles_QList);
}

void QListView_virtualbase_rowsInserted(VirtualQListView* self, QModelIndex* parent, int start, int end) {

	self->QListView::rowsInserted(*parent, static_cast<int>(start), static_cast<int>(end));
}

void QListView_virtualbase_rowsAboutToBeRemoved(VirtualQListView* self, QModelIndex* parent, int start, int end) {

	self->QListView::rowsAboutToBeRemoved(*parent, static_cast<int>(start), static_cast<int>(end));
}

void QListView_virtualbase_mouseMoveEvent(VirtualQListView* self, QMouseEvent* e) {

	self->QListView::mouseMoveEvent(e);
}

void QListView_virtualbase_mouseReleaseEvent(VirtualQListView* self, QMouseEvent* e) {

	self->QListView::mouseReleaseEvent(e);
}

void QListView_virtualbase_wheelEvent(VirtualQListView* self, QWheelEvent* e) {

	self->QListView::wheelEvent(e);
}

void QListView_virtualbase_timerEvent(VirtualQListView* self, QTimerEvent* e) {

	self->QListView::timerEvent(e);
}

void QListView_virtualbase_resizeEvent(VirtualQListView* self, QResizeEvent* e) {

	self->QListView::resizeEvent(e);
}

void QListView_virtualbase_dragMoveEvent(VirtualQListView* self, QDragMoveEvent* e) {

	self->QListView::dragMoveEvent(e);
}

void QListView_virtualbase_dragLeaveEvent(VirtualQListView* self, QDragLeaveEvent* e) {

	self->QListView::dragLeaveEvent(e);
}

void QListView_virtualbase_dropEvent(VirtualQListView* self, QDropEvent* e) {

	self->QListView::dropEvent(e);
}

void QListView_virtualbase_startDrag(VirtualQListView* self, int supportedActions) {

	self->QListView::startDrag(static_cast<Qt::DropActions>(supportedActions));
}

QStyleOptionViewItem* QListView_virtualbase_viewOptions(const VirtualQListView* self) {

	return new QStyleOptionViewItem(self->QListView::viewOptions());
}

void QListView_virtualbase_paintEvent(VirtualQListView* self, QPaintEvent* e) {

	self->QListView::paintEvent(e);
}

int QListView_virtualbase_horizontalOffset(const VirtualQListView* self) {

	return self->QListView::horizontalOffset();
}

int QListView_virtualbase_verticalOffset(const VirtualQListView* self) {

	return self->QListView::verticalOffset();
}

QModelIndex* QListView_virtualbase_moveCursor(VirtualQListView* self, int cursorAction, int modifiers) {

	return new QModelIndex(self->QListView::moveCursor(static_cast<VirtualQListView::CursorAction>(cursorAction), static_cast<Qt::KeyboardModifiers>(modifiers)));
}

void QListView_virtualbase_setSelection(VirtualQListView* self, QRect* rect, int command) {

	self->QListView::setSelection(*rect, static_cast<QItemSelectionModel::SelectionFlags>(command));
}

QRegion* QListView_virtualbase_visualRegionForSelection(const VirtualQListView* self, QItemSelection* selection) {

	return new QRegion(self->QListView::visualRegionForSelection(*selection));
}

struct miqt_array /* of QModelIndex* */  QListView_virtualbase_selectedIndexes(const VirtualQListView* self) {

	QModelIndexList _ret = self->QListView::selectedIndexes();
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

void QListView_virtualbase_updateGeometries(VirtualQListView* self) {

	self->QListView::updateGeometries();
}

bool QListView_virtualbase_isIndexHidden(const VirtualQListView* self, QModelIndex* index) {

	return self->QListView::isIndexHidden(*index);
}

void QListView_virtualbase_selectionChanged(VirtualQListView* self, QItemSelection* selected, QItemSelection* deselected) {

	self->QListView::selectionChanged(*selected, *deselected);
}

void QListView_virtualbase_currentChanged(VirtualQListView* self, QModelIndex* current, QModelIndex* previous) {

	self->QListView::currentChanged(*current, *previous);
}

QSize* QListView_virtualbase_viewportSizeHint(const VirtualQListView* self) {

	return new QSize(self->QListView::viewportSizeHint());
}

void QListView_virtualbase_setModel(VirtualQListView* self, QAbstractItemModel* model) {

	self->QListView::setModel(model);
}

void QListView_virtualbase_setSelectionModel(VirtualQListView* self, QItemSelectionModel* selectionModel) {

	self->QListView::setSelectionModel(selectionModel);
}

void QListView_virtualbase_keyboardSearch(VirtualQListView* self, struct miqt_string search) {
	QString search_QString = QString::fromUtf8(search.data, search.len);

	self->QListView::keyboardSearch(search_QString);
}

int QListView_virtualbase_sizeHintForRow(const VirtualQListView* self, int row) {

	return self->QListView::sizeHintForRow(static_cast<int>(row));
}

int QListView_virtualbase_sizeHintForColumn(const VirtualQListView* self, int column) {

	return self->QListView::sizeHintForColumn(static_cast<int>(column));
}

QVariant* QListView_virtualbase_inputMethodQuery(const VirtualQListView* self, int query) {

	return new QVariant(self->QListView::inputMethodQuery(static_cast<Qt::InputMethodQuery>(query)));
}

void QListView_virtualbase_selectAll(VirtualQListView* self) {

	self->QListView::selectAll();
}

void QListView_virtualbase_updateEditorData(VirtualQListView* self) {

	self->QListView::updateEditorData();
}

void QListView_virtualbase_updateEditorGeometries(VirtualQListView* self) {

	self->QListView::updateEditorGeometries();
}

void QListView_virtualbase_verticalScrollbarAction(VirtualQListView* self, int action) {

	self->QListView::verticalScrollbarAction(static_cast<int>(action));
}

void QListView_virtualbase_horizontalScrollbarAction(VirtualQListView* self, int action) {

	self->QListView::horizontalScrollbarAction(static_cast<int>(action));
}

void QListView_virtualbase_verticalScrollbarValueChanged(VirtualQListView* self, int value) {

	self->QListView::verticalScrollbarValueChanged(static_cast<int>(value));
}

void QListView_virtualbase_horizontalScrollbarValueChanged(VirtualQListView* self, int value) {

	self->QListView::horizontalScrollbarValueChanged(static_cast<int>(value));
}

void QListView_virtualbase_closeEditor(VirtualQListView* self, QWidget* editor, int hint) {

	self->QListView::closeEditor(editor, static_cast<QAbstractItemDelegate::EndEditHint>(hint));
}

void QListView_virtualbase_commitData(VirtualQListView* self, QWidget* editor) {

	self->QListView::commitData(editor);
}

void QListView_virtualbase_editorDestroyed(VirtualQListView* self, QObject* editor) {

	self->QListView::editorDestroyed(editor);
}

bool QListView_virtualbase_edit2(VirtualQListView* self, QModelIndex* index, int trigger, QEvent* event) {

	return self->QListView::edit(*index, static_cast<VirtualQListView::EditTrigger>(trigger), event);
}

int QListView_virtualbase_selectionCommand(const VirtualQListView* self, QModelIndex* index, QEvent* event) {

	QItemSelectionModel::SelectionFlags _ret = self->QListView::selectionCommand(*index, event);
	return static_cast<int>(_ret);
}

bool QListView_virtualbase_focusNextPrevChild(VirtualQListView* self, bool next) {

	return self->QListView::focusNextPrevChild(next);
}

bool QListView_virtualbase_viewportEvent(VirtualQListView* self, QEvent* event) {

	return self->QListView::viewportEvent(event);
}

void QListView_virtualbase_mousePressEvent(VirtualQListView* self, QMouseEvent* event) {

	self->QListView::mousePressEvent(event);
}

void QListView_virtualbase_mouseDoubleClickEvent(VirtualQListView* self, QMouseEvent* event) {

	self->QListView::mouseDoubleClickEvent(event);
}

void QListView_virtualbase_dragEnterEvent(VirtualQListView* self, QDragEnterEvent* event) {

	self->QListView::dragEnterEvent(event);
}

void QListView_virtualbase_focusInEvent(VirtualQListView* self, QFocusEvent* event) {

	self->QListView::focusInEvent(event);
}

void QListView_virtualbase_focusOutEvent(VirtualQListView* self, QFocusEvent* event) {

	self->QListView::focusOutEvent(event);
}

void QListView_virtualbase_keyPressEvent(VirtualQListView* self, QKeyEvent* event) {

	self->QListView::keyPressEvent(event);
}

void QListView_virtualbase_inputMethodEvent(VirtualQListView* self, QInputMethodEvent* event) {

	self->QListView::inputMethodEvent(event);
}

bool QListView_virtualbase_eventFilter(VirtualQListView* self, QObject* object, QEvent* event) {

	return self->QListView::eventFilter(object, event);
}

QSize* QListView_virtualbase_minimumSizeHint(const VirtualQListView* self) {

	return new QSize(self->QListView::minimumSizeHint());
}

QSize* QListView_virtualbase_sizeHint(const VirtualQListView* self) {

	return new QSize(self->QListView::sizeHint());
}

void QListView_virtualbase_setupViewport(VirtualQListView* self, QWidget* viewport) {

	self->QListView::setupViewport(viewport);
}

void QListView_virtualbase_contextMenuEvent(VirtualQListView* self, QContextMenuEvent* param1) {

	self->QListView::contextMenuEvent(param1);
}

void QListView_virtualbase_changeEvent(VirtualQListView* self, QEvent* param1) {

	self->QListView::changeEvent(param1);
}

int QListView_virtualbase_devType(const VirtualQListView* self) {

	return self->QListView::devType();
}

void QListView_virtualbase_setVisible(VirtualQListView* self, bool visible) {

	self->QListView::setVisible(visible);
}

int QListView_virtualbase_heightForWidth(const VirtualQListView* self, int param1) {

	return self->QListView::heightForWidth(static_cast<int>(param1));
}

bool QListView_virtualbase_hasHeightForWidth(const VirtualQListView* self) {

	return self->QListView::hasHeightForWidth();
}

QPaintEngine* QListView_virtualbase_paintEngine(const VirtualQListView* self) {

	return self->QListView::paintEngine();
}

void QListView_virtualbase_keyReleaseEvent(VirtualQListView* self, QKeyEvent* event) {

	self->QListView::keyReleaseEvent(event);
}

void QListView_virtualbase_enterEvent(VirtualQListView* self, QEvent* event) {

	self->QListView::enterEvent(event);
}

void QListView_virtualbase_leaveEvent(VirtualQListView* self, QEvent* event) {

	self->QListView::leaveEvent(event);
}

void QListView_virtualbase_moveEvent(VirtualQListView* self, QMoveEvent* event) {

	self->QListView::moveEvent(event);
}

void QListView_virtualbase_closeEvent(VirtualQListView* self, QCloseEvent* event) {

	self->QListView::closeEvent(event);
}

void QListView_virtualbase_tabletEvent(VirtualQListView* self, QTabletEvent* event) {

	self->QListView::tabletEvent(event);
}

void QListView_virtualbase_actionEvent(VirtualQListView* self, QActionEvent* event) {

	self->QListView::actionEvent(event);
}

void QListView_virtualbase_showEvent(VirtualQListView* self, QShowEvent* event) {

	self->QListView::showEvent(event);
}

void QListView_virtualbase_hideEvent(VirtualQListView* self, QHideEvent* event) {

	self->QListView::hideEvent(event);
}

bool QListView_virtualbase_nativeEvent(VirtualQListView* self, struct miqt_string eventType, void* message, long* result) {
	QByteArray eventType_QByteArray(eventType.data, eventType.len);

	return self->QListView::nativeEvent(eventType_QByteArray, message, static_cast<long*>(result));
}

int QListView_virtualbase_metric(const VirtualQListView* self, int param1) {

	return self->QListView::metric(static_cast<VirtualQListView::PaintDeviceMetric>(param1));
}

void QListView_virtualbase_initPainter(const VirtualQListView* self, QPainter* painter) {

	self->QListView::initPainter(painter);
}

QPaintDevice* QListView_virtualbase_redirected(const VirtualQListView* self, QPoint* offset) {

	return self->QListView::redirected(offset);
}

QPainter* QListView_virtualbase_sharedPainter(const VirtualQListView* self) {

	return self->QListView::sharedPainter();
}

void QListView_virtualbase_childEvent(VirtualQListView* self, QChildEvent* event) {

	self->QListView::childEvent(event);
}

void QListView_virtualbase_customEvent(VirtualQListView* self, QEvent* event) {

	self->QListView::customEvent(event);
}

void QListView_virtualbase_connectNotify(VirtualQListView* self, QMetaMethod* signal) {

	self->QListView::connectNotify(*signal);
}

void QListView_virtualbase_disconnectNotify(VirtualQListView* self, QMetaMethod* signal) {

	self->QListView::disconnectNotify(*signal);
}

const QMetaObject* QListView_staticMetaObject() { return &QListView::staticMetaObject; }

const QListView_VTable* QListView_vtbl(const VirtualQListView* self) { return self->vtbl; }
void* QListView_vdata(const VirtualQListView* self) { return self->vdata; }
void QListView_setVdata(VirtualQListView* self, void* vdata) { self->vdata = vdata; }

void QListView_protectedbase_resizeContents(VirtualQListView* self, int width, int height) {
	self->resizeContents(static_cast<int>(width), static_cast<int>(height));
}

QSize* QListView_protectedbase_contentsSize(const VirtualQListView* self) {
	return new QSize(self->contentsSize());
}

QRect* QListView_protectedbase_rectForIndex(const VirtualQListView* self, QModelIndex* index) {
	return new QRect(self->rectForIndex(*index));
}

void QListView_protectedbase_setPositionForIndex(VirtualQListView* self, QPoint* position, QModelIndex* index) {
	self->setPositionForIndex(*position, *index);
}

void QListView_protectedbase_setHorizontalStepsPerItem(VirtualQListView* self, int steps) {
	self->setHorizontalStepsPerItem(static_cast<int>(steps));
}

int QListView_protectedbase_horizontalStepsPerItem(const VirtualQListView* self) {
	return self->horizontalStepsPerItem();
}

void QListView_protectedbase_setVerticalStepsPerItem(VirtualQListView* self, int steps) {
	self->setVerticalStepsPerItem(static_cast<int>(steps));
}

int QListView_protectedbase_verticalStepsPerItem(const VirtualQListView* self) {
	return self->verticalStepsPerItem();
}

int QListView_protectedbase_state(const VirtualQListView* self) {
	VirtualQListView::State _ret = self->state();
	return static_cast<int>(_ret);
}

void QListView_protectedbase_setState(VirtualQListView* self, int state) {
	self->setState(static_cast<VirtualQListView::State>(state));
}

void QListView_protectedbase_scheduleDelayedItemsLayout(VirtualQListView* self) {
	self->scheduleDelayedItemsLayout();
}

void QListView_protectedbase_executeDelayedItemsLayout(VirtualQListView* self) {
	self->executeDelayedItemsLayout();
}

void QListView_protectedbase_setDirtyRegion(VirtualQListView* self, QRegion* region) {
	self->setDirtyRegion(*region);
}

void QListView_protectedbase_scrollDirtyRegion(VirtualQListView* self, int dx, int dy) {
	self->scrollDirtyRegion(static_cast<int>(dx), static_cast<int>(dy));
}

QPoint* QListView_protectedbase_dirtyRegionOffset(const VirtualQListView* self) {
	return new QPoint(self->dirtyRegionOffset());
}

void QListView_protectedbase_startAutoScroll(VirtualQListView* self) {
	self->startAutoScroll();
}

void QListView_protectedbase_stopAutoScroll(VirtualQListView* self) {
	self->stopAutoScroll();
}

void QListView_protectedbase_doAutoScroll(VirtualQListView* self) {
	self->doAutoScroll();
}

int QListView_protectedbase_dropIndicatorPosition(const VirtualQListView* self) {
	VirtualQListView::DropIndicatorPosition _ret = self->dropIndicatorPosition();
	return static_cast<int>(_ret);
}

void QListView_protectedbase_setViewportMargins(VirtualQListView* self, int left, int top, int right, int bottom) {
	self->setViewportMargins(static_cast<int>(left), static_cast<int>(top), static_cast<int>(right), static_cast<int>(bottom));
}

QMargins* QListView_protectedbase_viewportMargins(const VirtualQListView* self) {
	return new QMargins(self->viewportMargins());
}

void QListView_protectedbase_drawFrame(VirtualQListView* self, QPainter* param1) {
	self->drawFrame(param1);
}

void QListView_protectedbase_initStyleOption(const VirtualQListView* self, QStyleOptionFrame* option) {
	self->initStyleOption(option);
}

void QListView_protectedbase_updateMicroFocus(VirtualQListView* self) {
	self->updateMicroFocus();
}

void QListView_protectedbase_create(VirtualQListView* self) {
	self->create();
}

void QListView_protectedbase_destroy(VirtualQListView* self) {
	self->destroy();
}

bool QListView_protectedbase_focusNextChild(VirtualQListView* self) {
	return self->focusNextChild();
}

bool QListView_protectedbase_focusPreviousChild(VirtualQListView* self) {
	return self->focusPreviousChild();
}

QObject* QListView_protectedbase_sender(const VirtualQListView* self) {
	return self->sender();
}

int QListView_protectedbase_senderSignalIndex(const VirtualQListView* self) {
	return self->senderSignalIndex();
}

int QListView_protectedbase_receivers(const VirtualQListView* self, const char* signal) {
	return self->receivers(signal);
}

bool QListView_protectedbase_isSignalConnected(const VirtualQListView* self, QMetaMethod* signal) {
	return self->isSignalConnected(*signal);
}

void QListView_delete(QListView* self) {
	delete self;
}

