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
class VirtualQTableView final : public QTableView {
	const QTableView_VTable* vtbl;
	void* vdata;
public:
	friend const QTableView_VTable* QTableView_vtbl(const VirtualQTableView* self);
	friend void* QTableView_vdata(const VirtualQTableView* self);
	friend void QTableView_setVdata(VirtualQTableView* self, void* vdata);

	VirtualQTableView(const QTableView_VTable* vtbl, void* vdata, QWidget* parent): QTableView(parent), vtbl(vtbl), vdata(vdata) {}
	VirtualQTableView(const QTableView_VTable* vtbl, void* vdata): QTableView(), vtbl(vtbl), vdata(vdata) {}

	virtual ~VirtualQTableView() override { if(vtbl->destructor) vtbl->destructor(this); }

	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QTableView::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(this);

		return callback_return_value;
	}

	friend QMetaObject* QTableView_virtualbase_metaObject(const VirtualQTableView* self);

	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QTableView::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(this, sigval1);

		return callback_return_value;
	}

	friend void* QTableView_virtualbase_metacast(VirtualQTableView* self, const char* param1);

	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QTableView::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QTableView_virtualbase_metacall(VirtualQTableView* self, int param1, int param2, void** param3);

	virtual void setModel(QAbstractItemModel* model) override {
		if (vtbl->setModel == 0) {
			QTableView::setModel(model);
			return;
		}

		QAbstractItemModel* sigval1 = model;

		vtbl->setModel(this, sigval1);

	}

	friend void QTableView_virtualbase_setModel(VirtualQTableView* self, QAbstractItemModel* model);

	virtual void setRootIndex(const QModelIndex& index) override {
		if (vtbl->setRootIndex == 0) {
			QTableView::setRootIndex(index);
			return;
		}

		const QModelIndex& index_ret = index;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&index_ret);

		vtbl->setRootIndex(this, sigval1);

	}

	friend void QTableView_virtualbase_setRootIndex(VirtualQTableView* self, QModelIndex* index);

	virtual void setSelectionModel(QItemSelectionModel* selectionModel) override {
		if (vtbl->setSelectionModel == 0) {
			QTableView::setSelectionModel(selectionModel);
			return;
		}

		QItemSelectionModel* sigval1 = selectionModel;

		vtbl->setSelectionModel(this, sigval1);

	}

	friend void QTableView_virtualbase_setSelectionModel(VirtualQTableView* self, QItemSelectionModel* selectionModel);

	virtual void doItemsLayout() override {
		if (vtbl->doItemsLayout == 0) {
			QTableView::doItemsLayout();
			return;
		}


		vtbl->doItemsLayout(this);

	}

	friend void QTableView_virtualbase_doItemsLayout(VirtualQTableView* self);

	virtual QRect visualRect(const QModelIndex& index) const override {
		if (vtbl->visualRect == 0) {
			return QTableView::visualRect(index);
		}

		const QModelIndex& index_ret = index;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&index_ret);

		QRect* callback_return_value = vtbl->visualRect(this, sigval1);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QRect* QTableView_virtualbase_visualRect(const VirtualQTableView* self, QModelIndex* index);

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

		vtbl->scrollTo(this, sigval1, sigval2);

	}

	friend void QTableView_virtualbase_scrollTo(VirtualQTableView* self, QModelIndex* index, int hint);

	virtual QModelIndex indexAt(const QPoint& p) const override {
		if (vtbl->indexAt == 0) {
			return QTableView::indexAt(p);
		}

		const QPoint& p_ret = p;
		// Cast returned reference into pointer
		QPoint* sigval1 = const_cast<QPoint*>(&p_ret);

		QModelIndex* callback_return_value = vtbl->indexAt(this, sigval1);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QModelIndex* QTableView_virtualbase_indexAt(const VirtualQTableView* self, QPoint* p);

	virtual void scrollContentsBy(int dx, int dy) override {
		if (vtbl->scrollContentsBy == 0) {
			QTableView::scrollContentsBy(dx, dy);
			return;
		}

		int sigval1 = dx;
		int sigval2 = dy;

		vtbl->scrollContentsBy(this, sigval1, sigval2);

	}

	friend void QTableView_virtualbase_scrollContentsBy(VirtualQTableView* self, int dx, int dy);

	virtual QStyleOptionViewItem viewOptions() const override {
		if (vtbl->viewOptions == 0) {
			return QTableView::viewOptions();
		}


		QStyleOptionViewItem* callback_return_value = vtbl->viewOptions(this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QStyleOptionViewItem* QTableView_virtualbase_viewOptions(const VirtualQTableView* self);

	virtual void paintEvent(QPaintEvent* e) override {
		if (vtbl->paintEvent == 0) {
			QTableView::paintEvent(e);
			return;
		}

		QPaintEvent* sigval1 = e;

		vtbl->paintEvent(this, sigval1);

	}

	friend void QTableView_virtualbase_paintEvent(VirtualQTableView* self, QPaintEvent* e);

	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QTableView::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(this, sigval1);

	}

	friend void QTableView_virtualbase_timerEvent(VirtualQTableView* self, QTimerEvent* event);

	virtual int horizontalOffset() const override {
		if (vtbl->horizontalOffset == 0) {
			return QTableView::horizontalOffset();
		}


		int callback_return_value = vtbl->horizontalOffset(this);

		return static_cast<int>(callback_return_value);
	}

	friend int QTableView_virtualbase_horizontalOffset(const VirtualQTableView* self);

	virtual int verticalOffset() const override {
		if (vtbl->verticalOffset == 0) {
			return QTableView::verticalOffset();
		}


		int callback_return_value = vtbl->verticalOffset(this);

		return static_cast<int>(callback_return_value);
	}

	friend int QTableView_virtualbase_verticalOffset(const VirtualQTableView* self);

	virtual QModelIndex moveCursor(QAbstractItemView::CursorAction cursorAction, Qt::KeyboardModifiers modifiers) override {
		if (vtbl->moveCursor == 0) {
			return QTableView::moveCursor(cursorAction, modifiers);
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

	friend QModelIndex* QTableView_virtualbase_moveCursor(VirtualQTableView* self, int cursorAction, int modifiers);

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

		vtbl->setSelection(this, sigval1, sigval2);

	}

	friend void QTableView_virtualbase_setSelection(VirtualQTableView* self, QRect* rect, int command);

	virtual QRegion visualRegionForSelection(const QItemSelection& selection) const override {
		if (vtbl->visualRegionForSelection == 0) {
			return QTableView::visualRegionForSelection(selection);
		}

		const QItemSelection& selection_ret = selection;
		// Cast returned reference into pointer
		QItemSelection* sigval1 = const_cast<QItemSelection*>(&selection_ret);

		QRegion* callback_return_value = vtbl->visualRegionForSelection(this, sigval1);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QRegion* QTableView_virtualbase_visualRegionForSelection(const VirtualQTableView* self, QItemSelection* selection);

	virtual QModelIndexList selectedIndexes() const override {
		if (vtbl->selectedIndexes == 0) {
			return QTableView::selectedIndexes();
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

	friend struct miqt_array /* of QModelIndex* */  QTableView_virtualbase_selectedIndexes(const VirtualQTableView* self);

	virtual void updateGeometries() override {
		if (vtbl->updateGeometries == 0) {
			QTableView::updateGeometries();
			return;
		}


		vtbl->updateGeometries(this);

	}

	friend void QTableView_virtualbase_updateGeometries(VirtualQTableView* self);

	virtual QSize viewportSizeHint() const override {
		if (vtbl->viewportSizeHint == 0) {
			return QTableView::viewportSizeHint();
		}


		QSize* callback_return_value = vtbl->viewportSizeHint(this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QSize* QTableView_virtualbase_viewportSizeHint(const VirtualQTableView* self);

	virtual int sizeHintForRow(int row) const override {
		if (vtbl->sizeHintForRow == 0) {
			return QTableView::sizeHintForRow(row);
		}

		int sigval1 = row;

		int callback_return_value = vtbl->sizeHintForRow(this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QTableView_virtualbase_sizeHintForRow(const VirtualQTableView* self, int row);

	virtual int sizeHintForColumn(int column) const override {
		if (vtbl->sizeHintForColumn == 0) {
			return QTableView::sizeHintForColumn(column);
		}

		int sigval1 = column;

		int callback_return_value = vtbl->sizeHintForColumn(this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QTableView_virtualbase_sizeHintForColumn(const VirtualQTableView* self, int column);

	virtual void verticalScrollbarAction(int action) override {
		if (vtbl->verticalScrollbarAction == 0) {
			QTableView::verticalScrollbarAction(action);
			return;
		}

		int sigval1 = action;

		vtbl->verticalScrollbarAction(this, sigval1);

	}

	friend void QTableView_virtualbase_verticalScrollbarAction(VirtualQTableView* self, int action);

	virtual void horizontalScrollbarAction(int action) override {
		if (vtbl->horizontalScrollbarAction == 0) {
			QTableView::horizontalScrollbarAction(action);
			return;
		}

		int sigval1 = action;

		vtbl->horizontalScrollbarAction(this, sigval1);

	}

	friend void QTableView_virtualbase_horizontalScrollbarAction(VirtualQTableView* self, int action);

	virtual bool isIndexHidden(const QModelIndex& index) const override {
		if (vtbl->isIndexHidden == 0) {
			return QTableView::isIndexHidden(index);
		}

		const QModelIndex& index_ret = index;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&index_ret);

		bool callback_return_value = vtbl->isIndexHidden(this, sigval1);

		return callback_return_value;
	}

	friend bool QTableView_virtualbase_isIndexHidden(const VirtualQTableView* self, QModelIndex* index);

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

		vtbl->selectionChanged(this, sigval1, sigval2);

	}

	friend void QTableView_virtualbase_selectionChanged(VirtualQTableView* self, QItemSelection* selected, QItemSelection* deselected);

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

		vtbl->currentChanged(this, sigval1, sigval2);

	}

	friend void QTableView_virtualbase_currentChanged(VirtualQTableView* self, QModelIndex* current, QModelIndex* previous);

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

		vtbl->keyboardSearch(this, sigval1);

	}

	friend void QTableView_virtualbase_keyboardSearch(VirtualQTableView* self, struct miqt_string search);

	virtual QVariant inputMethodQuery(Qt::InputMethodQuery query) const override {
		if (vtbl->inputMethodQuery == 0) {
			return QTableView::inputMethodQuery(query);
		}

		Qt::InputMethodQuery query_ret = query;
		int sigval1 = static_cast<int>(query_ret);

		QVariant* callback_return_value = vtbl->inputMethodQuery(this, sigval1);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QVariant* QTableView_virtualbase_inputMethodQuery(const VirtualQTableView* self, int query);

	virtual void reset() override {
		if (vtbl->reset == 0) {
			QTableView::reset();
			return;
		}


		vtbl->reset(this);

	}

	friend void QTableView_virtualbase_reset(VirtualQTableView* self);

	virtual void selectAll() override {
		if (vtbl->selectAll == 0) {
			QTableView::selectAll();
			return;
		}


		vtbl->selectAll(this);

	}

	friend void QTableView_virtualbase_selectAll(VirtualQTableView* self);

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

		vtbl->dataChanged(this, sigval1, sigval2, sigval3);

	}

	friend void QTableView_virtualbase_dataChanged(VirtualQTableView* self, QModelIndex* topLeft, QModelIndex* bottomRight, struct miqt_array /* of int */  roles);

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

		vtbl->rowsInserted(this, sigval1, sigval2, sigval3);

	}

	friend void QTableView_virtualbase_rowsInserted(VirtualQTableView* self, QModelIndex* parent, int start, int end);

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

		vtbl->rowsAboutToBeRemoved(this, sigval1, sigval2, sigval3);

	}

	friend void QTableView_virtualbase_rowsAboutToBeRemoved(VirtualQTableView* self, QModelIndex* parent, int start, int end);

	virtual void updateEditorData() override {
		if (vtbl->updateEditorData == 0) {
			QTableView::updateEditorData();
			return;
		}


		vtbl->updateEditorData(this);

	}

	friend void QTableView_virtualbase_updateEditorData(VirtualQTableView* self);

	virtual void updateEditorGeometries() override {
		if (vtbl->updateEditorGeometries == 0) {
			QTableView::updateEditorGeometries();
			return;
		}


		vtbl->updateEditorGeometries(this);

	}

	friend void QTableView_virtualbase_updateEditorGeometries(VirtualQTableView* self);

	virtual void verticalScrollbarValueChanged(int value) override {
		if (vtbl->verticalScrollbarValueChanged == 0) {
			QTableView::verticalScrollbarValueChanged(value);
			return;
		}

		int sigval1 = value;

		vtbl->verticalScrollbarValueChanged(this, sigval1);

	}

	friend void QTableView_virtualbase_verticalScrollbarValueChanged(VirtualQTableView* self, int value);

	virtual void horizontalScrollbarValueChanged(int value) override {
		if (vtbl->horizontalScrollbarValueChanged == 0) {
			QTableView::horizontalScrollbarValueChanged(value);
			return;
		}

		int sigval1 = value;

		vtbl->horizontalScrollbarValueChanged(this, sigval1);

	}

	friend void QTableView_virtualbase_horizontalScrollbarValueChanged(VirtualQTableView* self, int value);

	virtual void closeEditor(QWidget* editor, QAbstractItemDelegate::EndEditHint hint) override {
		if (vtbl->closeEditor == 0) {
			QTableView::closeEditor(editor, hint);
			return;
		}

		QWidget* sigval1 = editor;
		QAbstractItemDelegate::EndEditHint hint_ret = hint;
		int sigval2 = static_cast<int>(hint_ret);

		vtbl->closeEditor(this, sigval1, sigval2);

	}

	friend void QTableView_virtualbase_closeEditor(VirtualQTableView* self, QWidget* editor, int hint);

	virtual void commitData(QWidget* editor) override {
		if (vtbl->commitData == 0) {
			QTableView::commitData(editor);
			return;
		}

		QWidget* sigval1 = editor;

		vtbl->commitData(this, sigval1);

	}

	friend void QTableView_virtualbase_commitData(VirtualQTableView* self, QWidget* editor);

	virtual void editorDestroyed(QObject* editor) override {
		if (vtbl->editorDestroyed == 0) {
			QTableView::editorDestroyed(editor);
			return;
		}

		QObject* sigval1 = editor;

		vtbl->editorDestroyed(this, sigval1);

	}

	friend void QTableView_virtualbase_editorDestroyed(VirtualQTableView* self, QObject* editor);

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

		bool callback_return_value = vtbl->edit2(this, sigval1, sigval2, sigval3);

		return callback_return_value;
	}

	friend bool QTableView_virtualbase_edit2(VirtualQTableView* self, QModelIndex* index, int trigger, QEvent* event);

	virtual QItemSelectionModel::SelectionFlags selectionCommand(const QModelIndex& index, const QEvent* event) const override {
		if (vtbl->selectionCommand == 0) {
			return QTableView::selectionCommand(index, event);
		}

		const QModelIndex& index_ret = index;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&index_ret);
		QEvent* sigval2 = (QEvent*) event;

		int callback_return_value = vtbl->selectionCommand(this, sigval1, sigval2);

		return static_cast<QItemSelectionModel::SelectionFlags>(callback_return_value);
	}

	friend int QTableView_virtualbase_selectionCommand(const VirtualQTableView* self, QModelIndex* index, QEvent* event);

	virtual void startDrag(Qt::DropActions supportedActions) override {
		if (vtbl->startDrag == 0) {
			QTableView::startDrag(supportedActions);
			return;
		}

		Qt::DropActions supportedActions_ret = supportedActions;
		int sigval1 = static_cast<int>(supportedActions_ret);

		vtbl->startDrag(this, sigval1);

	}

	friend void QTableView_virtualbase_startDrag(VirtualQTableView* self, int supportedActions);

	virtual bool focusNextPrevChild(bool next) override {
		if (vtbl->focusNextPrevChild == 0) {
			return QTableView::focusNextPrevChild(next);
		}

		bool sigval1 = next;

		bool callback_return_value = vtbl->focusNextPrevChild(this, sigval1);

		return callback_return_value;
	}

	friend bool QTableView_virtualbase_focusNextPrevChild(VirtualQTableView* self, bool next);

	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QTableView::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(this, sigval1);

		return callback_return_value;
	}

	friend bool QTableView_virtualbase_event(VirtualQTableView* self, QEvent* event);

	virtual bool viewportEvent(QEvent* event) override {
		if (vtbl->viewportEvent == 0) {
			return QTableView::viewportEvent(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->viewportEvent(this, sigval1);

		return callback_return_value;
	}

	friend bool QTableView_virtualbase_viewportEvent(VirtualQTableView* self, QEvent* event);

	virtual void mousePressEvent(QMouseEvent* event) override {
		if (vtbl->mousePressEvent == 0) {
			QTableView::mousePressEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mousePressEvent(this, sigval1);

	}

	friend void QTableView_virtualbase_mousePressEvent(VirtualQTableView* self, QMouseEvent* event);

	virtual void mouseMoveEvent(QMouseEvent* event) override {
		if (vtbl->mouseMoveEvent == 0) {
			QTableView::mouseMoveEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseMoveEvent(this, sigval1);

	}

	friend void QTableView_virtualbase_mouseMoveEvent(VirtualQTableView* self, QMouseEvent* event);

	virtual void mouseReleaseEvent(QMouseEvent* event) override {
		if (vtbl->mouseReleaseEvent == 0) {
			QTableView::mouseReleaseEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseReleaseEvent(this, sigval1);

	}

	friend void QTableView_virtualbase_mouseReleaseEvent(VirtualQTableView* self, QMouseEvent* event);

	virtual void mouseDoubleClickEvent(QMouseEvent* event) override {
		if (vtbl->mouseDoubleClickEvent == 0) {
			QTableView::mouseDoubleClickEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseDoubleClickEvent(this, sigval1);

	}

	friend void QTableView_virtualbase_mouseDoubleClickEvent(VirtualQTableView* self, QMouseEvent* event);

	virtual void dragEnterEvent(QDragEnterEvent* event) override {
		if (vtbl->dragEnterEvent == 0) {
			QTableView::dragEnterEvent(event);
			return;
		}

		QDragEnterEvent* sigval1 = event;

		vtbl->dragEnterEvent(this, sigval1);

	}

	friend void QTableView_virtualbase_dragEnterEvent(VirtualQTableView* self, QDragEnterEvent* event);

	virtual void dragMoveEvent(QDragMoveEvent* event) override {
		if (vtbl->dragMoveEvent == 0) {
			QTableView::dragMoveEvent(event);
			return;
		}

		QDragMoveEvent* sigval1 = event;

		vtbl->dragMoveEvent(this, sigval1);

	}

	friend void QTableView_virtualbase_dragMoveEvent(VirtualQTableView* self, QDragMoveEvent* event);

	virtual void dragLeaveEvent(QDragLeaveEvent* event) override {
		if (vtbl->dragLeaveEvent == 0) {
			QTableView::dragLeaveEvent(event);
			return;
		}

		QDragLeaveEvent* sigval1 = event;

		vtbl->dragLeaveEvent(this, sigval1);

	}

	friend void QTableView_virtualbase_dragLeaveEvent(VirtualQTableView* self, QDragLeaveEvent* event);

	virtual void dropEvent(QDropEvent* event) override {
		if (vtbl->dropEvent == 0) {
			QTableView::dropEvent(event);
			return;
		}

		QDropEvent* sigval1 = event;

		vtbl->dropEvent(this, sigval1);

	}

	friend void QTableView_virtualbase_dropEvent(VirtualQTableView* self, QDropEvent* event);

	virtual void focusInEvent(QFocusEvent* event) override {
		if (vtbl->focusInEvent == 0) {
			QTableView::focusInEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;

		vtbl->focusInEvent(this, sigval1);

	}

	friend void QTableView_virtualbase_focusInEvent(VirtualQTableView* self, QFocusEvent* event);

	virtual void focusOutEvent(QFocusEvent* event) override {
		if (vtbl->focusOutEvent == 0) {
			QTableView::focusOutEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;

		vtbl->focusOutEvent(this, sigval1);

	}

	friend void QTableView_virtualbase_focusOutEvent(VirtualQTableView* self, QFocusEvent* event);

	virtual void keyPressEvent(QKeyEvent* event) override {
		if (vtbl->keyPressEvent == 0) {
			QTableView::keyPressEvent(event);
			return;
		}

		QKeyEvent* sigval1 = event;

		vtbl->keyPressEvent(this, sigval1);

	}

	friend void QTableView_virtualbase_keyPressEvent(VirtualQTableView* self, QKeyEvent* event);

	virtual void resizeEvent(QResizeEvent* event) override {
		if (vtbl->resizeEvent == 0) {
			QTableView::resizeEvent(event);
			return;
		}

		QResizeEvent* sigval1 = event;

		vtbl->resizeEvent(this, sigval1);

	}

	friend void QTableView_virtualbase_resizeEvent(VirtualQTableView* self, QResizeEvent* event);

	virtual void inputMethodEvent(QInputMethodEvent* event) override {
		if (vtbl->inputMethodEvent == 0) {
			QTableView::inputMethodEvent(event);
			return;
		}

		QInputMethodEvent* sigval1 = event;

		vtbl->inputMethodEvent(this, sigval1);

	}

	friend void QTableView_virtualbase_inputMethodEvent(VirtualQTableView* self, QInputMethodEvent* event);

	virtual bool eventFilter(QObject* object, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QTableView::eventFilter(object, event);
		}

		QObject* sigval1 = object;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QTableView_virtualbase_eventFilter(VirtualQTableView* self, QObject* object, QEvent* event);

	virtual QSize minimumSizeHint() const override {
		if (vtbl->minimumSizeHint == 0) {
			return QTableView::minimumSizeHint();
		}


		QSize* callback_return_value = vtbl->minimumSizeHint(this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QSize* QTableView_virtualbase_minimumSizeHint(const VirtualQTableView* self);

	virtual QSize sizeHint() const override {
		if (vtbl->sizeHint == 0) {
			return QTableView::sizeHint();
		}


		QSize* callback_return_value = vtbl->sizeHint(this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QSize* QTableView_virtualbase_sizeHint(const VirtualQTableView* self);

	virtual void setupViewport(QWidget* viewport) override {
		if (vtbl->setupViewport == 0) {
			QTableView::setupViewport(viewport);
			return;
		}

		QWidget* sigval1 = viewport;

		vtbl->setupViewport(this, sigval1);

	}

	friend void QTableView_virtualbase_setupViewport(VirtualQTableView* self, QWidget* viewport);

	virtual void wheelEvent(QWheelEvent* param1) override {
		if (vtbl->wheelEvent == 0) {
			QTableView::wheelEvent(param1);
			return;
		}

		QWheelEvent* sigval1 = param1;

		vtbl->wheelEvent(this, sigval1);

	}

	friend void QTableView_virtualbase_wheelEvent(VirtualQTableView* self, QWheelEvent* param1);

	virtual void contextMenuEvent(QContextMenuEvent* param1) override {
		if (vtbl->contextMenuEvent == 0) {
			QTableView::contextMenuEvent(param1);
			return;
		}

		QContextMenuEvent* sigval1 = param1;

		vtbl->contextMenuEvent(this, sigval1);

	}

	friend void QTableView_virtualbase_contextMenuEvent(VirtualQTableView* self, QContextMenuEvent* param1);

	virtual void changeEvent(QEvent* param1) override {
		if (vtbl->changeEvent == 0) {
			QTableView::changeEvent(param1);
			return;
		}

		QEvent* sigval1 = param1;

		vtbl->changeEvent(this, sigval1);

	}

	friend void QTableView_virtualbase_changeEvent(VirtualQTableView* self, QEvent* param1);

	virtual int devType() const override {
		if (vtbl->devType == 0) {
			return QTableView::devType();
		}


		int callback_return_value = vtbl->devType(this);

		return static_cast<int>(callback_return_value);
	}

	friend int QTableView_virtualbase_devType(const VirtualQTableView* self);

	virtual void setVisible(bool visible) override {
		if (vtbl->setVisible == 0) {
			QTableView::setVisible(visible);
			return;
		}

		bool sigval1 = visible;

		vtbl->setVisible(this, sigval1);

	}

	friend void QTableView_virtualbase_setVisible(VirtualQTableView* self, bool visible);

	virtual int heightForWidth(int param1) const override {
		if (vtbl->heightForWidth == 0) {
			return QTableView::heightForWidth(param1);
		}

		int sigval1 = param1;

		int callback_return_value = vtbl->heightForWidth(this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QTableView_virtualbase_heightForWidth(const VirtualQTableView* self, int param1);

	virtual bool hasHeightForWidth() const override {
		if (vtbl->hasHeightForWidth == 0) {
			return QTableView::hasHeightForWidth();
		}


		bool callback_return_value = vtbl->hasHeightForWidth(this);

		return callback_return_value;
	}

	friend bool QTableView_virtualbase_hasHeightForWidth(const VirtualQTableView* self);

	virtual QPaintEngine* paintEngine() const override {
		if (vtbl->paintEngine == 0) {
			return QTableView::paintEngine();
		}


		QPaintEngine* callback_return_value = vtbl->paintEngine(this);

		return callback_return_value;
	}

	friend QPaintEngine* QTableView_virtualbase_paintEngine(const VirtualQTableView* self);

	virtual void keyReleaseEvent(QKeyEvent* event) override {
		if (vtbl->keyReleaseEvent == 0) {
			QTableView::keyReleaseEvent(event);
			return;
		}

		QKeyEvent* sigval1 = event;

		vtbl->keyReleaseEvent(this, sigval1);

	}

	friend void QTableView_virtualbase_keyReleaseEvent(VirtualQTableView* self, QKeyEvent* event);

	virtual void enterEvent(QEvent* event) override {
		if (vtbl->enterEvent == 0) {
			QTableView::enterEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->enterEvent(this, sigval1);

	}

	friend void QTableView_virtualbase_enterEvent(VirtualQTableView* self, QEvent* event);

	virtual void leaveEvent(QEvent* event) override {
		if (vtbl->leaveEvent == 0) {
			QTableView::leaveEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->leaveEvent(this, sigval1);

	}

	friend void QTableView_virtualbase_leaveEvent(VirtualQTableView* self, QEvent* event);

	virtual void moveEvent(QMoveEvent* event) override {
		if (vtbl->moveEvent == 0) {
			QTableView::moveEvent(event);
			return;
		}

		QMoveEvent* sigval1 = event;

		vtbl->moveEvent(this, sigval1);

	}

	friend void QTableView_virtualbase_moveEvent(VirtualQTableView* self, QMoveEvent* event);

	virtual void closeEvent(QCloseEvent* event) override {
		if (vtbl->closeEvent == 0) {
			QTableView::closeEvent(event);
			return;
		}

		QCloseEvent* sigval1 = event;

		vtbl->closeEvent(this, sigval1);

	}

	friend void QTableView_virtualbase_closeEvent(VirtualQTableView* self, QCloseEvent* event);

	virtual void tabletEvent(QTabletEvent* event) override {
		if (vtbl->tabletEvent == 0) {
			QTableView::tabletEvent(event);
			return;
		}

		QTabletEvent* sigval1 = event;

		vtbl->tabletEvent(this, sigval1);

	}

	friend void QTableView_virtualbase_tabletEvent(VirtualQTableView* self, QTabletEvent* event);

	virtual void actionEvent(QActionEvent* event) override {
		if (vtbl->actionEvent == 0) {
			QTableView::actionEvent(event);
			return;
		}

		QActionEvent* sigval1 = event;

		vtbl->actionEvent(this, sigval1);

	}

	friend void QTableView_virtualbase_actionEvent(VirtualQTableView* self, QActionEvent* event);

	virtual void showEvent(QShowEvent* event) override {
		if (vtbl->showEvent == 0) {
			QTableView::showEvent(event);
			return;
		}

		QShowEvent* sigval1 = event;

		vtbl->showEvent(this, sigval1);

	}

	friend void QTableView_virtualbase_showEvent(VirtualQTableView* self, QShowEvent* event);

	virtual void hideEvent(QHideEvent* event) override {
		if (vtbl->hideEvent == 0) {
			QTableView::hideEvent(event);
			return;
		}

		QHideEvent* sigval1 = event;

		vtbl->hideEvent(this, sigval1);

	}

	friend void QTableView_virtualbase_hideEvent(VirtualQTableView* self, QHideEvent* event);

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

		bool callback_return_value = vtbl->nativeEvent(this, sigval1, sigval2, sigval3);

		return callback_return_value;
	}

	friend bool QTableView_virtualbase_nativeEvent(VirtualQTableView* self, struct miqt_string eventType, void* message, long* result);

	virtual int metric(QPaintDevice::PaintDeviceMetric param1) const override {
		if (vtbl->metric == 0) {
			return QTableView::metric(param1);
		}

		QPaintDevice::PaintDeviceMetric param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);

		int callback_return_value = vtbl->metric(this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QTableView_virtualbase_metric(const VirtualQTableView* self, int param1);

	virtual void initPainter(QPainter* painter) const override {
		if (vtbl->initPainter == 0) {
			QTableView::initPainter(painter);
			return;
		}

		QPainter* sigval1 = painter;

		vtbl->initPainter(this, sigval1);

	}

	friend void QTableView_virtualbase_initPainter(const VirtualQTableView* self, QPainter* painter);

	virtual QPaintDevice* redirected(QPoint* offset) const override {
		if (vtbl->redirected == 0) {
			return QTableView::redirected(offset);
		}

		QPoint* sigval1 = offset;

		QPaintDevice* callback_return_value = vtbl->redirected(this, sigval1);

		return callback_return_value;
	}

	friend QPaintDevice* QTableView_virtualbase_redirected(const VirtualQTableView* self, QPoint* offset);

	virtual QPainter* sharedPainter() const override {
		if (vtbl->sharedPainter == 0) {
			return QTableView::sharedPainter();
		}


		QPainter* callback_return_value = vtbl->sharedPainter(this);

		return callback_return_value;
	}

	friend QPainter* QTableView_virtualbase_sharedPainter(const VirtualQTableView* self);

	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QTableView::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(this, sigval1);

	}

	friend void QTableView_virtualbase_childEvent(VirtualQTableView* self, QChildEvent* event);

	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QTableView::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(this, sigval1);

	}

	friend void QTableView_virtualbase_customEvent(VirtualQTableView* self, QEvent* event);

	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QTableView::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(this, sigval1);

	}

	friend void QTableView_virtualbase_connectNotify(VirtualQTableView* self, QMetaMethod* signal);

	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QTableView::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(this, sigval1);

	}

	friend void QTableView_virtualbase_disconnectNotify(VirtualQTableView* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend void QTableView_protectedbase_rowMoved(VirtualQTableView* self, int row, int oldIndex, int newIndex);
	friend void QTableView_protectedbase_columnMoved(VirtualQTableView* self, int column, int oldIndex, int newIndex);
	friend void QTableView_protectedbase_rowResized(VirtualQTableView* self, int row, int oldHeight, int newHeight);
	friend void QTableView_protectedbase_columnResized(VirtualQTableView* self, int column, int oldWidth, int newWidth);
	friend void QTableView_protectedbase_rowCountChanged(VirtualQTableView* self, int oldCount, int newCount);
	friend void QTableView_protectedbase_columnCountChanged(VirtualQTableView* self, int oldCount, int newCount);
	friend void QTableView_protectedbase_setHorizontalStepsPerItem(VirtualQTableView* self, int steps);
	friend int QTableView_protectedbase_horizontalStepsPerItem(const VirtualQTableView* self);
	friend void QTableView_protectedbase_setVerticalStepsPerItem(VirtualQTableView* self, int steps);
	friend int QTableView_protectedbase_verticalStepsPerItem(const VirtualQTableView* self);
	friend int QTableView_protectedbase_state(const VirtualQTableView* self);
	friend void QTableView_protectedbase_setState(VirtualQTableView* self, int state);
	friend void QTableView_protectedbase_scheduleDelayedItemsLayout(VirtualQTableView* self);
	friend void QTableView_protectedbase_executeDelayedItemsLayout(VirtualQTableView* self);
	friend void QTableView_protectedbase_setDirtyRegion(VirtualQTableView* self, QRegion* region);
	friend void QTableView_protectedbase_scrollDirtyRegion(VirtualQTableView* self, int dx, int dy);
	friend QPoint* QTableView_protectedbase_dirtyRegionOffset(const VirtualQTableView* self);
	friend void QTableView_protectedbase_startAutoScroll(VirtualQTableView* self);
	friend void QTableView_protectedbase_stopAutoScroll(VirtualQTableView* self);
	friend void QTableView_protectedbase_doAutoScroll(VirtualQTableView* self);
	friend int QTableView_protectedbase_dropIndicatorPosition(const VirtualQTableView* self);
	friend void QTableView_protectedbase_setViewportMargins(VirtualQTableView* self, int left, int top, int right, int bottom);
	friend QMargins* QTableView_protectedbase_viewportMargins(const VirtualQTableView* self);
	friend void QTableView_protectedbase_drawFrame(VirtualQTableView* self, QPainter* param1);
	friend void QTableView_protectedbase_initStyleOption(const VirtualQTableView* self, QStyleOptionFrame* option);
	friend void QTableView_protectedbase_updateMicroFocus(VirtualQTableView* self);
	friend void QTableView_protectedbase_create(VirtualQTableView* self);
	friend void QTableView_protectedbase_destroy(VirtualQTableView* self);
	friend bool QTableView_protectedbase_focusNextChild(VirtualQTableView* self);
	friend bool QTableView_protectedbase_focusPreviousChild(VirtualQTableView* self);
	friend QObject* QTableView_protectedbase_sender(const VirtualQTableView* self);
	friend int QTableView_protectedbase_senderSignalIndex(const VirtualQTableView* self);
	friend int QTableView_protectedbase_receivers(const VirtualQTableView* self, const char* signal);
	friend bool QTableView_protectedbase_isSignalConnected(const VirtualQTableView* self, QMetaMethod* signal);
};

VirtualQTableView* QTableView_new(const QTableView_VTable* vtbl, void* vdata, QWidget* parent) {
	return new VirtualQTableView(vtbl, vdata, parent);
}

VirtualQTableView* QTableView_new2(const QTableView_VTable* vtbl, void* vdata) {
	return new VirtualQTableView(vtbl, vdata);
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

QMetaObject* QTableView_virtualbase_metaObject(const VirtualQTableView* self) {

	return (QMetaObject*) self->QTableView::metaObject();
}

void* QTableView_virtualbase_metacast(VirtualQTableView* self, const char* param1) {

	return self->QTableView::qt_metacast(param1);
}

int QTableView_virtualbase_metacall(VirtualQTableView* self, int param1, int param2, void** param3) {

	return self->QTableView::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

void QTableView_virtualbase_setModel(VirtualQTableView* self, QAbstractItemModel* model) {

	self->QTableView::setModel(model);
}

void QTableView_virtualbase_setRootIndex(VirtualQTableView* self, QModelIndex* index) {

	self->QTableView::setRootIndex(*index);
}

void QTableView_virtualbase_setSelectionModel(VirtualQTableView* self, QItemSelectionModel* selectionModel) {

	self->QTableView::setSelectionModel(selectionModel);
}

void QTableView_virtualbase_doItemsLayout(VirtualQTableView* self) {

	self->QTableView::doItemsLayout();
}

QRect* QTableView_virtualbase_visualRect(const VirtualQTableView* self, QModelIndex* index) {

	return new QRect(self->QTableView::visualRect(*index));
}

void QTableView_virtualbase_scrollTo(VirtualQTableView* self, QModelIndex* index, int hint) {

	self->QTableView::scrollTo(*index, static_cast<VirtualQTableView::ScrollHint>(hint));
}

QModelIndex* QTableView_virtualbase_indexAt(const VirtualQTableView* self, QPoint* p) {

	return new QModelIndex(self->QTableView::indexAt(*p));
}

void QTableView_virtualbase_scrollContentsBy(VirtualQTableView* self, int dx, int dy) {

	self->QTableView::scrollContentsBy(static_cast<int>(dx), static_cast<int>(dy));
}

QStyleOptionViewItem* QTableView_virtualbase_viewOptions(const VirtualQTableView* self) {

	return new QStyleOptionViewItem(self->QTableView::viewOptions());
}

void QTableView_virtualbase_paintEvent(VirtualQTableView* self, QPaintEvent* e) {

	self->QTableView::paintEvent(e);
}

void QTableView_virtualbase_timerEvent(VirtualQTableView* self, QTimerEvent* event) {

	self->QTableView::timerEvent(event);
}

int QTableView_virtualbase_horizontalOffset(const VirtualQTableView* self) {

	return self->QTableView::horizontalOffset();
}

int QTableView_virtualbase_verticalOffset(const VirtualQTableView* self) {

	return self->QTableView::verticalOffset();
}

QModelIndex* QTableView_virtualbase_moveCursor(VirtualQTableView* self, int cursorAction, int modifiers) {

	return new QModelIndex(self->QTableView::moveCursor(static_cast<VirtualQTableView::CursorAction>(cursorAction), static_cast<Qt::KeyboardModifiers>(modifiers)));
}

void QTableView_virtualbase_setSelection(VirtualQTableView* self, QRect* rect, int command) {

	self->QTableView::setSelection(*rect, static_cast<QItemSelectionModel::SelectionFlags>(command));
}

QRegion* QTableView_virtualbase_visualRegionForSelection(const VirtualQTableView* self, QItemSelection* selection) {

	return new QRegion(self->QTableView::visualRegionForSelection(*selection));
}

struct miqt_array /* of QModelIndex* */  QTableView_virtualbase_selectedIndexes(const VirtualQTableView* self) {

	QModelIndexList _ret = self->QTableView::selectedIndexes();
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

void QTableView_virtualbase_updateGeometries(VirtualQTableView* self) {

	self->QTableView::updateGeometries();
}

QSize* QTableView_virtualbase_viewportSizeHint(const VirtualQTableView* self) {

	return new QSize(self->QTableView::viewportSizeHint());
}

int QTableView_virtualbase_sizeHintForRow(const VirtualQTableView* self, int row) {

	return self->QTableView::sizeHintForRow(static_cast<int>(row));
}

int QTableView_virtualbase_sizeHintForColumn(const VirtualQTableView* self, int column) {

	return self->QTableView::sizeHintForColumn(static_cast<int>(column));
}

void QTableView_virtualbase_verticalScrollbarAction(VirtualQTableView* self, int action) {

	self->QTableView::verticalScrollbarAction(static_cast<int>(action));
}

void QTableView_virtualbase_horizontalScrollbarAction(VirtualQTableView* self, int action) {

	self->QTableView::horizontalScrollbarAction(static_cast<int>(action));
}

bool QTableView_virtualbase_isIndexHidden(const VirtualQTableView* self, QModelIndex* index) {

	return self->QTableView::isIndexHidden(*index);
}

void QTableView_virtualbase_selectionChanged(VirtualQTableView* self, QItemSelection* selected, QItemSelection* deselected) {

	self->QTableView::selectionChanged(*selected, *deselected);
}

void QTableView_virtualbase_currentChanged(VirtualQTableView* self, QModelIndex* current, QModelIndex* previous) {

	self->QTableView::currentChanged(*current, *previous);
}

void QTableView_virtualbase_keyboardSearch(VirtualQTableView* self, struct miqt_string search) {
	QString search_QString = QString::fromUtf8(search.data, search.len);

	self->QTableView::keyboardSearch(search_QString);
}

QVariant* QTableView_virtualbase_inputMethodQuery(const VirtualQTableView* self, int query) {

	return new QVariant(self->QTableView::inputMethodQuery(static_cast<Qt::InputMethodQuery>(query)));
}

void QTableView_virtualbase_reset(VirtualQTableView* self) {

	self->QTableView::reset();
}

void QTableView_virtualbase_selectAll(VirtualQTableView* self) {

	self->QTableView::selectAll();
}

void QTableView_virtualbase_dataChanged(VirtualQTableView* self, QModelIndex* topLeft, QModelIndex* bottomRight, struct miqt_array /* of int */  roles) {
	QVector<int> roles_QList;
	roles_QList.reserve(roles.len);
	int* roles_arr = static_cast<int*>(roles.data);
	for(size_t i = 0; i < roles.len; ++i) {
		roles_QList.push_back(static_cast<int>(roles_arr[i]));
	}

	self->QTableView::dataChanged(*topLeft, *bottomRight, roles_QList);
}

void QTableView_virtualbase_rowsInserted(VirtualQTableView* self, QModelIndex* parent, int start, int end) {

	self->QTableView::rowsInserted(*parent, static_cast<int>(start), static_cast<int>(end));
}

void QTableView_virtualbase_rowsAboutToBeRemoved(VirtualQTableView* self, QModelIndex* parent, int start, int end) {

	self->QTableView::rowsAboutToBeRemoved(*parent, static_cast<int>(start), static_cast<int>(end));
}

void QTableView_virtualbase_updateEditorData(VirtualQTableView* self) {

	self->QTableView::updateEditorData();
}

void QTableView_virtualbase_updateEditorGeometries(VirtualQTableView* self) {

	self->QTableView::updateEditorGeometries();
}

void QTableView_virtualbase_verticalScrollbarValueChanged(VirtualQTableView* self, int value) {

	self->QTableView::verticalScrollbarValueChanged(static_cast<int>(value));
}

void QTableView_virtualbase_horizontalScrollbarValueChanged(VirtualQTableView* self, int value) {

	self->QTableView::horizontalScrollbarValueChanged(static_cast<int>(value));
}

void QTableView_virtualbase_closeEditor(VirtualQTableView* self, QWidget* editor, int hint) {

	self->QTableView::closeEditor(editor, static_cast<QAbstractItemDelegate::EndEditHint>(hint));
}

void QTableView_virtualbase_commitData(VirtualQTableView* self, QWidget* editor) {

	self->QTableView::commitData(editor);
}

void QTableView_virtualbase_editorDestroyed(VirtualQTableView* self, QObject* editor) {

	self->QTableView::editorDestroyed(editor);
}

bool QTableView_virtualbase_edit2(VirtualQTableView* self, QModelIndex* index, int trigger, QEvent* event) {

	return self->QTableView::edit(*index, static_cast<VirtualQTableView::EditTrigger>(trigger), event);
}

int QTableView_virtualbase_selectionCommand(const VirtualQTableView* self, QModelIndex* index, QEvent* event) {

	QItemSelectionModel::SelectionFlags _ret = self->QTableView::selectionCommand(*index, event);
	return static_cast<int>(_ret);
}

void QTableView_virtualbase_startDrag(VirtualQTableView* self, int supportedActions) {

	self->QTableView::startDrag(static_cast<Qt::DropActions>(supportedActions));
}

bool QTableView_virtualbase_focusNextPrevChild(VirtualQTableView* self, bool next) {

	return self->QTableView::focusNextPrevChild(next);
}

bool QTableView_virtualbase_event(VirtualQTableView* self, QEvent* event) {

	return self->QTableView::event(event);
}

bool QTableView_virtualbase_viewportEvent(VirtualQTableView* self, QEvent* event) {

	return self->QTableView::viewportEvent(event);
}

void QTableView_virtualbase_mousePressEvent(VirtualQTableView* self, QMouseEvent* event) {

	self->QTableView::mousePressEvent(event);
}

void QTableView_virtualbase_mouseMoveEvent(VirtualQTableView* self, QMouseEvent* event) {

	self->QTableView::mouseMoveEvent(event);
}

void QTableView_virtualbase_mouseReleaseEvent(VirtualQTableView* self, QMouseEvent* event) {

	self->QTableView::mouseReleaseEvent(event);
}

void QTableView_virtualbase_mouseDoubleClickEvent(VirtualQTableView* self, QMouseEvent* event) {

	self->QTableView::mouseDoubleClickEvent(event);
}

void QTableView_virtualbase_dragEnterEvent(VirtualQTableView* self, QDragEnterEvent* event) {

	self->QTableView::dragEnterEvent(event);
}

void QTableView_virtualbase_dragMoveEvent(VirtualQTableView* self, QDragMoveEvent* event) {

	self->QTableView::dragMoveEvent(event);
}

void QTableView_virtualbase_dragLeaveEvent(VirtualQTableView* self, QDragLeaveEvent* event) {

	self->QTableView::dragLeaveEvent(event);
}

void QTableView_virtualbase_dropEvent(VirtualQTableView* self, QDropEvent* event) {

	self->QTableView::dropEvent(event);
}

void QTableView_virtualbase_focusInEvent(VirtualQTableView* self, QFocusEvent* event) {

	self->QTableView::focusInEvent(event);
}

void QTableView_virtualbase_focusOutEvent(VirtualQTableView* self, QFocusEvent* event) {

	self->QTableView::focusOutEvent(event);
}

void QTableView_virtualbase_keyPressEvent(VirtualQTableView* self, QKeyEvent* event) {

	self->QTableView::keyPressEvent(event);
}

void QTableView_virtualbase_resizeEvent(VirtualQTableView* self, QResizeEvent* event) {

	self->QTableView::resizeEvent(event);
}

void QTableView_virtualbase_inputMethodEvent(VirtualQTableView* self, QInputMethodEvent* event) {

	self->QTableView::inputMethodEvent(event);
}

bool QTableView_virtualbase_eventFilter(VirtualQTableView* self, QObject* object, QEvent* event) {

	return self->QTableView::eventFilter(object, event);
}

QSize* QTableView_virtualbase_minimumSizeHint(const VirtualQTableView* self) {

	return new QSize(self->QTableView::minimumSizeHint());
}

QSize* QTableView_virtualbase_sizeHint(const VirtualQTableView* self) {

	return new QSize(self->QTableView::sizeHint());
}

void QTableView_virtualbase_setupViewport(VirtualQTableView* self, QWidget* viewport) {

	self->QTableView::setupViewport(viewport);
}

void QTableView_virtualbase_wheelEvent(VirtualQTableView* self, QWheelEvent* param1) {

	self->QTableView::wheelEvent(param1);
}

void QTableView_virtualbase_contextMenuEvent(VirtualQTableView* self, QContextMenuEvent* param1) {

	self->QTableView::contextMenuEvent(param1);
}

void QTableView_virtualbase_changeEvent(VirtualQTableView* self, QEvent* param1) {

	self->QTableView::changeEvent(param1);
}

int QTableView_virtualbase_devType(const VirtualQTableView* self) {

	return self->QTableView::devType();
}

void QTableView_virtualbase_setVisible(VirtualQTableView* self, bool visible) {

	self->QTableView::setVisible(visible);
}

int QTableView_virtualbase_heightForWidth(const VirtualQTableView* self, int param1) {

	return self->QTableView::heightForWidth(static_cast<int>(param1));
}

bool QTableView_virtualbase_hasHeightForWidth(const VirtualQTableView* self) {

	return self->QTableView::hasHeightForWidth();
}

QPaintEngine* QTableView_virtualbase_paintEngine(const VirtualQTableView* self) {

	return self->QTableView::paintEngine();
}

void QTableView_virtualbase_keyReleaseEvent(VirtualQTableView* self, QKeyEvent* event) {

	self->QTableView::keyReleaseEvent(event);
}

void QTableView_virtualbase_enterEvent(VirtualQTableView* self, QEvent* event) {

	self->QTableView::enterEvent(event);
}

void QTableView_virtualbase_leaveEvent(VirtualQTableView* self, QEvent* event) {

	self->QTableView::leaveEvent(event);
}

void QTableView_virtualbase_moveEvent(VirtualQTableView* self, QMoveEvent* event) {

	self->QTableView::moveEvent(event);
}

void QTableView_virtualbase_closeEvent(VirtualQTableView* self, QCloseEvent* event) {

	self->QTableView::closeEvent(event);
}

void QTableView_virtualbase_tabletEvent(VirtualQTableView* self, QTabletEvent* event) {

	self->QTableView::tabletEvent(event);
}

void QTableView_virtualbase_actionEvent(VirtualQTableView* self, QActionEvent* event) {

	self->QTableView::actionEvent(event);
}

void QTableView_virtualbase_showEvent(VirtualQTableView* self, QShowEvent* event) {

	self->QTableView::showEvent(event);
}

void QTableView_virtualbase_hideEvent(VirtualQTableView* self, QHideEvent* event) {

	self->QTableView::hideEvent(event);
}

bool QTableView_virtualbase_nativeEvent(VirtualQTableView* self, struct miqt_string eventType, void* message, long* result) {
	QByteArray eventType_QByteArray(eventType.data, eventType.len);

	return self->QTableView::nativeEvent(eventType_QByteArray, message, static_cast<long*>(result));
}

int QTableView_virtualbase_metric(const VirtualQTableView* self, int param1) {

	return self->QTableView::metric(static_cast<VirtualQTableView::PaintDeviceMetric>(param1));
}

void QTableView_virtualbase_initPainter(const VirtualQTableView* self, QPainter* painter) {

	self->QTableView::initPainter(painter);
}

QPaintDevice* QTableView_virtualbase_redirected(const VirtualQTableView* self, QPoint* offset) {

	return self->QTableView::redirected(offset);
}

QPainter* QTableView_virtualbase_sharedPainter(const VirtualQTableView* self) {

	return self->QTableView::sharedPainter();
}

void QTableView_virtualbase_childEvent(VirtualQTableView* self, QChildEvent* event) {

	self->QTableView::childEvent(event);
}

void QTableView_virtualbase_customEvent(VirtualQTableView* self, QEvent* event) {

	self->QTableView::customEvent(event);
}

void QTableView_virtualbase_connectNotify(VirtualQTableView* self, QMetaMethod* signal) {

	self->QTableView::connectNotify(*signal);
}

void QTableView_virtualbase_disconnectNotify(VirtualQTableView* self, QMetaMethod* signal) {

	self->QTableView::disconnectNotify(*signal);
}

const QMetaObject* QTableView_staticMetaObject() { return &QTableView::staticMetaObject; }

const QTableView_VTable* QTableView_vtbl(const VirtualQTableView* self) { return self->vtbl; }
void* QTableView_vdata(const VirtualQTableView* self) { return self->vdata; }
void QTableView_setVdata(VirtualQTableView* self, void* vdata) { self->vdata = vdata; }

void QTableView_protectedbase_rowMoved(VirtualQTableView* self, int row, int oldIndex, int newIndex) {
	self->rowMoved(static_cast<int>(row), static_cast<int>(oldIndex), static_cast<int>(newIndex));
}

void QTableView_protectedbase_columnMoved(VirtualQTableView* self, int column, int oldIndex, int newIndex) {
	self->columnMoved(static_cast<int>(column), static_cast<int>(oldIndex), static_cast<int>(newIndex));
}

void QTableView_protectedbase_rowResized(VirtualQTableView* self, int row, int oldHeight, int newHeight) {
	self->rowResized(static_cast<int>(row), static_cast<int>(oldHeight), static_cast<int>(newHeight));
}

void QTableView_protectedbase_columnResized(VirtualQTableView* self, int column, int oldWidth, int newWidth) {
	self->columnResized(static_cast<int>(column), static_cast<int>(oldWidth), static_cast<int>(newWidth));
}

void QTableView_protectedbase_rowCountChanged(VirtualQTableView* self, int oldCount, int newCount) {
	self->rowCountChanged(static_cast<int>(oldCount), static_cast<int>(newCount));
}

void QTableView_protectedbase_columnCountChanged(VirtualQTableView* self, int oldCount, int newCount) {
	self->columnCountChanged(static_cast<int>(oldCount), static_cast<int>(newCount));
}

void QTableView_protectedbase_setHorizontalStepsPerItem(VirtualQTableView* self, int steps) {
	self->setHorizontalStepsPerItem(static_cast<int>(steps));
}

int QTableView_protectedbase_horizontalStepsPerItem(const VirtualQTableView* self) {
	return self->horizontalStepsPerItem();
}

void QTableView_protectedbase_setVerticalStepsPerItem(VirtualQTableView* self, int steps) {
	self->setVerticalStepsPerItem(static_cast<int>(steps));
}

int QTableView_protectedbase_verticalStepsPerItem(const VirtualQTableView* self) {
	return self->verticalStepsPerItem();
}

int QTableView_protectedbase_state(const VirtualQTableView* self) {
	VirtualQTableView::State _ret = self->state();
	return static_cast<int>(_ret);
}

void QTableView_protectedbase_setState(VirtualQTableView* self, int state) {
	self->setState(static_cast<VirtualQTableView::State>(state));
}

void QTableView_protectedbase_scheduleDelayedItemsLayout(VirtualQTableView* self) {
	self->scheduleDelayedItemsLayout();
}

void QTableView_protectedbase_executeDelayedItemsLayout(VirtualQTableView* self) {
	self->executeDelayedItemsLayout();
}

void QTableView_protectedbase_setDirtyRegion(VirtualQTableView* self, QRegion* region) {
	self->setDirtyRegion(*region);
}

void QTableView_protectedbase_scrollDirtyRegion(VirtualQTableView* self, int dx, int dy) {
	self->scrollDirtyRegion(static_cast<int>(dx), static_cast<int>(dy));
}

QPoint* QTableView_protectedbase_dirtyRegionOffset(const VirtualQTableView* self) {
	return new QPoint(self->dirtyRegionOffset());
}

void QTableView_protectedbase_startAutoScroll(VirtualQTableView* self) {
	self->startAutoScroll();
}

void QTableView_protectedbase_stopAutoScroll(VirtualQTableView* self) {
	self->stopAutoScroll();
}

void QTableView_protectedbase_doAutoScroll(VirtualQTableView* self) {
	self->doAutoScroll();
}

int QTableView_protectedbase_dropIndicatorPosition(const VirtualQTableView* self) {
	VirtualQTableView::DropIndicatorPosition _ret = self->dropIndicatorPosition();
	return static_cast<int>(_ret);
}

void QTableView_protectedbase_setViewportMargins(VirtualQTableView* self, int left, int top, int right, int bottom) {
	self->setViewportMargins(static_cast<int>(left), static_cast<int>(top), static_cast<int>(right), static_cast<int>(bottom));
}

QMargins* QTableView_protectedbase_viewportMargins(const VirtualQTableView* self) {
	return new QMargins(self->viewportMargins());
}

void QTableView_protectedbase_drawFrame(VirtualQTableView* self, QPainter* param1) {
	self->drawFrame(param1);
}

void QTableView_protectedbase_initStyleOption(const VirtualQTableView* self, QStyleOptionFrame* option) {
	self->initStyleOption(option);
}

void QTableView_protectedbase_updateMicroFocus(VirtualQTableView* self) {
	self->updateMicroFocus();
}

void QTableView_protectedbase_create(VirtualQTableView* self) {
	self->create();
}

void QTableView_protectedbase_destroy(VirtualQTableView* self) {
	self->destroy();
}

bool QTableView_protectedbase_focusNextChild(VirtualQTableView* self) {
	return self->focusNextChild();
}

bool QTableView_protectedbase_focusPreviousChild(VirtualQTableView* self) {
	return self->focusPreviousChild();
}

QObject* QTableView_protectedbase_sender(const VirtualQTableView* self) {
	return self->sender();
}

int QTableView_protectedbase_senderSignalIndex(const VirtualQTableView* self) {
	return self->senderSignalIndex();
}

int QTableView_protectedbase_receivers(const VirtualQTableView* self, const char* signal) {
	return self->receivers(signal);
}

bool QTableView_protectedbase_isSignalConnected(const VirtualQTableView* self, QMetaMethod* signal) {
	return self->isSignalConnected(*signal);
}

void QTableView_delete(QTableView* self) {
	delete self;
}

