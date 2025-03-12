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
class VirtualQColumnView final : public QColumnView {
	const QColumnView_VTable* vtbl;
	void* vdata;
public:
	friend const QColumnView_VTable* QColumnView_vtbl(const VirtualQColumnView* self);
	friend void* QColumnView_vdata(const VirtualQColumnView* self);
	friend void QColumnView_setVdata(VirtualQColumnView* self, void* vdata);

	VirtualQColumnView(const QColumnView_VTable* vtbl, void* vdata, QWidget* parent): QColumnView(parent), vtbl(vtbl), vdata(vdata) {}
	VirtualQColumnView(const QColumnView_VTable* vtbl, void* vdata): QColumnView(), vtbl(vtbl), vdata(vdata) {}

	virtual ~VirtualQColumnView() override { if(vtbl->destructor) vtbl->destructor(this); }

	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QColumnView::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(this);

		return callback_return_value;
	}

	friend QMetaObject* QColumnView_virtualbase_metaObject(const VirtualQColumnView* self);

	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QColumnView::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(this, sigval1);

		return callback_return_value;
	}

	friend void* QColumnView_virtualbase_metacast(VirtualQColumnView* self, const char* param1);

	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QColumnView::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QColumnView_virtualbase_metacall(VirtualQColumnView* self, int param1, int param2, void** param3);

	virtual QModelIndex indexAt(const QPoint& point) const override {
		if (vtbl->indexAt == 0) {
			return QColumnView::indexAt(point);
		}

		const QPoint& point_ret = point;
		// Cast returned reference into pointer
		QPoint* sigval1 = const_cast<QPoint*>(&point_ret);

		QModelIndex* callback_return_value = vtbl->indexAt(this, sigval1);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QModelIndex* QColumnView_virtualbase_indexAt(const VirtualQColumnView* self, QPoint* point);

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

		vtbl->scrollTo(this, sigval1, sigval2);

	}

	friend void QColumnView_virtualbase_scrollTo(VirtualQColumnView* self, QModelIndex* index, int hint);

	virtual QSize sizeHint() const override {
		if (vtbl->sizeHint == 0) {
			return QColumnView::sizeHint();
		}


		QSize* callback_return_value = vtbl->sizeHint(this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QSize* QColumnView_virtualbase_sizeHint(const VirtualQColumnView* self);

	virtual QRect visualRect(const QModelIndex& index) const override {
		if (vtbl->visualRect == 0) {
			return QColumnView::visualRect(index);
		}

		const QModelIndex& index_ret = index;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&index_ret);

		QRect* callback_return_value = vtbl->visualRect(this, sigval1);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QRect* QColumnView_virtualbase_visualRect(const VirtualQColumnView* self, QModelIndex* index);

	virtual void setModel(QAbstractItemModel* model) override {
		if (vtbl->setModel == 0) {
			QColumnView::setModel(model);
			return;
		}

		QAbstractItemModel* sigval1 = model;

		vtbl->setModel(this, sigval1);

	}

	friend void QColumnView_virtualbase_setModel(VirtualQColumnView* self, QAbstractItemModel* model);

	virtual void setSelectionModel(QItemSelectionModel* selectionModel) override {
		if (vtbl->setSelectionModel == 0) {
			QColumnView::setSelectionModel(selectionModel);
			return;
		}

		QItemSelectionModel* sigval1 = selectionModel;

		vtbl->setSelectionModel(this, sigval1);

	}

	friend void QColumnView_virtualbase_setSelectionModel(VirtualQColumnView* self, QItemSelectionModel* selectionModel);

	virtual void setRootIndex(const QModelIndex& index) override {
		if (vtbl->setRootIndex == 0) {
			QColumnView::setRootIndex(index);
			return;
		}

		const QModelIndex& index_ret = index;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&index_ret);

		vtbl->setRootIndex(this, sigval1);

	}

	friend void QColumnView_virtualbase_setRootIndex(VirtualQColumnView* self, QModelIndex* index);

	virtual void selectAll() override {
		if (vtbl->selectAll == 0) {
			QColumnView::selectAll();
			return;
		}


		vtbl->selectAll(this);

	}

	friend void QColumnView_virtualbase_selectAll(VirtualQColumnView* self);

	virtual bool isIndexHidden(const QModelIndex& index) const override {
		if (vtbl->isIndexHidden == 0) {
			return QColumnView::isIndexHidden(index);
		}

		const QModelIndex& index_ret = index;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&index_ret);

		bool callback_return_value = vtbl->isIndexHidden(this, sigval1);

		return callback_return_value;
	}

	friend bool QColumnView_virtualbase_isIndexHidden(const VirtualQColumnView* self, QModelIndex* index);

	virtual QModelIndex moveCursor(QAbstractItemView::CursorAction cursorAction, Qt::KeyboardModifiers modifiers) override {
		if (vtbl->moveCursor == 0) {
			return QColumnView::moveCursor(cursorAction, modifiers);
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

	friend QModelIndex* QColumnView_virtualbase_moveCursor(VirtualQColumnView* self, int cursorAction, int modifiers);

	virtual void resizeEvent(QResizeEvent* event) override {
		if (vtbl->resizeEvent == 0) {
			QColumnView::resizeEvent(event);
			return;
		}

		QResizeEvent* sigval1 = event;

		vtbl->resizeEvent(this, sigval1);

	}

	friend void QColumnView_virtualbase_resizeEvent(VirtualQColumnView* self, QResizeEvent* event);

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

		vtbl->setSelection(this, sigval1, sigval2);

	}

	friend void QColumnView_virtualbase_setSelection(VirtualQColumnView* self, QRect* rect, int command);

	virtual QRegion visualRegionForSelection(const QItemSelection& selection) const override {
		if (vtbl->visualRegionForSelection == 0) {
			return QColumnView::visualRegionForSelection(selection);
		}

		const QItemSelection& selection_ret = selection;
		// Cast returned reference into pointer
		QItemSelection* sigval1 = const_cast<QItemSelection*>(&selection_ret);

		QRegion* callback_return_value = vtbl->visualRegionForSelection(this, sigval1);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QRegion* QColumnView_virtualbase_visualRegionForSelection(const VirtualQColumnView* self, QItemSelection* selection);

	virtual int horizontalOffset() const override {
		if (vtbl->horizontalOffset == 0) {
			return QColumnView::horizontalOffset();
		}


		int callback_return_value = vtbl->horizontalOffset(this);

		return static_cast<int>(callback_return_value);
	}

	friend int QColumnView_virtualbase_horizontalOffset(const VirtualQColumnView* self);

	virtual int verticalOffset() const override {
		if (vtbl->verticalOffset == 0) {
			return QColumnView::verticalOffset();
		}


		int callback_return_value = vtbl->verticalOffset(this);

		return static_cast<int>(callback_return_value);
	}

	friend int QColumnView_virtualbase_verticalOffset(const VirtualQColumnView* self);

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

		vtbl->rowsInserted(this, sigval1, sigval2, sigval3);

	}

	friend void QColumnView_virtualbase_rowsInserted(VirtualQColumnView* self, QModelIndex* parent, int start, int end);

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

		vtbl->currentChanged(this, sigval1, sigval2);

	}

	friend void QColumnView_virtualbase_currentChanged(VirtualQColumnView* self, QModelIndex* current, QModelIndex* previous);

	virtual void scrollContentsBy(int dx, int dy) override {
		if (vtbl->scrollContentsBy == 0) {
			QColumnView::scrollContentsBy(dx, dy);
			return;
		}

		int sigval1 = dx;
		int sigval2 = dy;

		vtbl->scrollContentsBy(this, sigval1, sigval2);

	}

	friend void QColumnView_virtualbase_scrollContentsBy(VirtualQColumnView* self, int dx, int dy);

	virtual QAbstractItemView* createColumn(const QModelIndex& rootIndex) override {
		if (vtbl->createColumn == 0) {
			return QColumnView::createColumn(rootIndex);
		}

		const QModelIndex& rootIndex_ret = rootIndex;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&rootIndex_ret);

		QAbstractItemView* callback_return_value = vtbl->createColumn(this, sigval1);

		return callback_return_value;
	}

	friend QAbstractItemView* QColumnView_virtualbase_createColumn(VirtualQColumnView* self, QModelIndex* rootIndex);

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

		vtbl->keyboardSearch(this, sigval1);

	}

	friend void QColumnView_virtualbase_keyboardSearch(VirtualQColumnView* self, struct miqt_string search);

	virtual int sizeHintForRow(int row) const override {
		if (vtbl->sizeHintForRow == 0) {
			return QColumnView::sizeHintForRow(row);
		}

		int sigval1 = row;

		int callback_return_value = vtbl->sizeHintForRow(this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QColumnView_virtualbase_sizeHintForRow(const VirtualQColumnView* self, int row);

	virtual int sizeHintForColumn(int column) const override {
		if (vtbl->sizeHintForColumn == 0) {
			return QColumnView::sizeHintForColumn(column);
		}

		int sigval1 = column;

		int callback_return_value = vtbl->sizeHintForColumn(this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QColumnView_virtualbase_sizeHintForColumn(const VirtualQColumnView* self, int column);

	virtual QVariant inputMethodQuery(Qt::InputMethodQuery query) const override {
		if (vtbl->inputMethodQuery == 0) {
			return QColumnView::inputMethodQuery(query);
		}

		Qt::InputMethodQuery query_ret = query;
		int sigval1 = static_cast<int>(query_ret);

		QVariant* callback_return_value = vtbl->inputMethodQuery(this, sigval1);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QVariant* QColumnView_virtualbase_inputMethodQuery(const VirtualQColumnView* self, int query);

	virtual void reset() override {
		if (vtbl->reset == 0) {
			QColumnView::reset();
			return;
		}


		vtbl->reset(this);

	}

	friend void QColumnView_virtualbase_reset(VirtualQColumnView* self);

	virtual void doItemsLayout() override {
		if (vtbl->doItemsLayout == 0) {
			QColumnView::doItemsLayout();
			return;
		}


		vtbl->doItemsLayout(this);

	}

	friend void QColumnView_virtualbase_doItemsLayout(VirtualQColumnView* self);

	virtual void dataChanged(const QModelIndex& topLeft, const QModelIndex& bottomRight, const QVector<int>& roles) override {
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

	friend void QColumnView_virtualbase_dataChanged(VirtualQColumnView* self, QModelIndex* topLeft, QModelIndex* bottomRight, struct miqt_array /* of int */  roles);

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

		vtbl->rowsAboutToBeRemoved(this, sigval1, sigval2, sigval3);

	}

	friend void QColumnView_virtualbase_rowsAboutToBeRemoved(VirtualQColumnView* self, QModelIndex* parent, int start, int end);

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

		vtbl->selectionChanged(this, sigval1, sigval2);

	}

	friend void QColumnView_virtualbase_selectionChanged(VirtualQColumnView* self, QItemSelection* selected, QItemSelection* deselected);

	virtual void updateEditorData() override {
		if (vtbl->updateEditorData == 0) {
			QColumnView::updateEditorData();
			return;
		}


		vtbl->updateEditorData(this);

	}

	friend void QColumnView_virtualbase_updateEditorData(VirtualQColumnView* self);

	virtual void updateEditorGeometries() override {
		if (vtbl->updateEditorGeometries == 0) {
			QColumnView::updateEditorGeometries();
			return;
		}


		vtbl->updateEditorGeometries(this);

	}

	friend void QColumnView_virtualbase_updateEditorGeometries(VirtualQColumnView* self);

	virtual void updateGeometries() override {
		if (vtbl->updateGeometries == 0) {
			QColumnView::updateGeometries();
			return;
		}


		vtbl->updateGeometries(this);

	}

	friend void QColumnView_virtualbase_updateGeometries(VirtualQColumnView* self);

	virtual void verticalScrollbarAction(int action) override {
		if (vtbl->verticalScrollbarAction == 0) {
			QColumnView::verticalScrollbarAction(action);
			return;
		}

		int sigval1 = action;

		vtbl->verticalScrollbarAction(this, sigval1);

	}

	friend void QColumnView_virtualbase_verticalScrollbarAction(VirtualQColumnView* self, int action);

	virtual void horizontalScrollbarAction(int action) override {
		if (vtbl->horizontalScrollbarAction == 0) {
			QColumnView::horizontalScrollbarAction(action);
			return;
		}

		int sigval1 = action;

		vtbl->horizontalScrollbarAction(this, sigval1);

	}

	friend void QColumnView_virtualbase_horizontalScrollbarAction(VirtualQColumnView* self, int action);

	virtual void verticalScrollbarValueChanged(int value) override {
		if (vtbl->verticalScrollbarValueChanged == 0) {
			QColumnView::verticalScrollbarValueChanged(value);
			return;
		}

		int sigval1 = value;

		vtbl->verticalScrollbarValueChanged(this, sigval1);

	}

	friend void QColumnView_virtualbase_verticalScrollbarValueChanged(VirtualQColumnView* self, int value);

	virtual void horizontalScrollbarValueChanged(int value) override {
		if (vtbl->horizontalScrollbarValueChanged == 0) {
			QColumnView::horizontalScrollbarValueChanged(value);
			return;
		}

		int sigval1 = value;

		vtbl->horizontalScrollbarValueChanged(this, sigval1);

	}

	friend void QColumnView_virtualbase_horizontalScrollbarValueChanged(VirtualQColumnView* self, int value);

	virtual void closeEditor(QWidget* editor, QAbstractItemDelegate::EndEditHint hint) override {
		if (vtbl->closeEditor == 0) {
			QColumnView::closeEditor(editor, hint);
			return;
		}

		QWidget* sigval1 = editor;
		QAbstractItemDelegate::EndEditHint hint_ret = hint;
		int sigval2 = static_cast<int>(hint_ret);

		vtbl->closeEditor(this, sigval1, sigval2);

	}

	friend void QColumnView_virtualbase_closeEditor(VirtualQColumnView* self, QWidget* editor, int hint);

	virtual void commitData(QWidget* editor) override {
		if (vtbl->commitData == 0) {
			QColumnView::commitData(editor);
			return;
		}

		QWidget* sigval1 = editor;

		vtbl->commitData(this, sigval1);

	}

	friend void QColumnView_virtualbase_commitData(VirtualQColumnView* self, QWidget* editor);

	virtual void editorDestroyed(QObject* editor) override {
		if (vtbl->editorDestroyed == 0) {
			QColumnView::editorDestroyed(editor);
			return;
		}

		QObject* sigval1 = editor;

		vtbl->editorDestroyed(this, sigval1);

	}

	friend void QColumnView_virtualbase_editorDestroyed(VirtualQColumnView* self, QObject* editor);

	virtual QModelIndexList selectedIndexes() const override {
		if (vtbl->selectedIndexes == 0) {
			return QColumnView::selectedIndexes();
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

	friend struct miqt_array /* of QModelIndex* */  QColumnView_virtualbase_selectedIndexes(const VirtualQColumnView* self);

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

		bool callback_return_value = vtbl->edit2(this, sigval1, sigval2, sigval3);

		return callback_return_value;
	}

	friend bool QColumnView_virtualbase_edit2(VirtualQColumnView* self, QModelIndex* index, int trigger, QEvent* event);

	virtual QItemSelectionModel::SelectionFlags selectionCommand(const QModelIndex& index, const QEvent* event) const override {
		if (vtbl->selectionCommand == 0) {
			return QColumnView::selectionCommand(index, event);
		}

		const QModelIndex& index_ret = index;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&index_ret);
		QEvent* sigval2 = (QEvent*) event;

		int callback_return_value = vtbl->selectionCommand(this, sigval1, sigval2);

		return static_cast<QItemSelectionModel::SelectionFlags>(callback_return_value);
	}

	friend int QColumnView_virtualbase_selectionCommand(const VirtualQColumnView* self, QModelIndex* index, QEvent* event);

	virtual void startDrag(Qt::DropActions supportedActions) override {
		if (vtbl->startDrag == 0) {
			QColumnView::startDrag(supportedActions);
			return;
		}

		Qt::DropActions supportedActions_ret = supportedActions;
		int sigval1 = static_cast<int>(supportedActions_ret);

		vtbl->startDrag(this, sigval1);

	}

	friend void QColumnView_virtualbase_startDrag(VirtualQColumnView* self, int supportedActions);

	virtual QStyleOptionViewItem viewOptions() const override {
		if (vtbl->viewOptions == 0) {
			return QColumnView::viewOptions();
		}


		QStyleOptionViewItem* callback_return_value = vtbl->viewOptions(this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QStyleOptionViewItem* QColumnView_virtualbase_viewOptions(const VirtualQColumnView* self);

	virtual bool focusNextPrevChild(bool next) override {
		if (vtbl->focusNextPrevChild == 0) {
			return QColumnView::focusNextPrevChild(next);
		}

		bool sigval1 = next;

		bool callback_return_value = vtbl->focusNextPrevChild(this, sigval1);

		return callback_return_value;
	}

	friend bool QColumnView_virtualbase_focusNextPrevChild(VirtualQColumnView* self, bool next);

	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QColumnView::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(this, sigval1);

		return callback_return_value;
	}

	friend bool QColumnView_virtualbase_event(VirtualQColumnView* self, QEvent* event);

	virtual bool viewportEvent(QEvent* event) override {
		if (vtbl->viewportEvent == 0) {
			return QColumnView::viewportEvent(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->viewportEvent(this, sigval1);

		return callback_return_value;
	}

	friend bool QColumnView_virtualbase_viewportEvent(VirtualQColumnView* self, QEvent* event);

	virtual void mousePressEvent(QMouseEvent* event) override {
		if (vtbl->mousePressEvent == 0) {
			QColumnView::mousePressEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mousePressEvent(this, sigval1);

	}

	friend void QColumnView_virtualbase_mousePressEvent(VirtualQColumnView* self, QMouseEvent* event);

	virtual void mouseMoveEvent(QMouseEvent* event) override {
		if (vtbl->mouseMoveEvent == 0) {
			QColumnView::mouseMoveEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseMoveEvent(this, sigval1);

	}

	friend void QColumnView_virtualbase_mouseMoveEvent(VirtualQColumnView* self, QMouseEvent* event);

	virtual void mouseReleaseEvent(QMouseEvent* event) override {
		if (vtbl->mouseReleaseEvent == 0) {
			QColumnView::mouseReleaseEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseReleaseEvent(this, sigval1);

	}

	friend void QColumnView_virtualbase_mouseReleaseEvent(VirtualQColumnView* self, QMouseEvent* event);

	virtual void mouseDoubleClickEvent(QMouseEvent* event) override {
		if (vtbl->mouseDoubleClickEvent == 0) {
			QColumnView::mouseDoubleClickEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseDoubleClickEvent(this, sigval1);

	}

	friend void QColumnView_virtualbase_mouseDoubleClickEvent(VirtualQColumnView* self, QMouseEvent* event);

	virtual void dragEnterEvent(QDragEnterEvent* event) override {
		if (vtbl->dragEnterEvent == 0) {
			QColumnView::dragEnterEvent(event);
			return;
		}

		QDragEnterEvent* sigval1 = event;

		vtbl->dragEnterEvent(this, sigval1);

	}

	friend void QColumnView_virtualbase_dragEnterEvent(VirtualQColumnView* self, QDragEnterEvent* event);

	virtual void dragMoveEvent(QDragMoveEvent* event) override {
		if (vtbl->dragMoveEvent == 0) {
			QColumnView::dragMoveEvent(event);
			return;
		}

		QDragMoveEvent* sigval1 = event;

		vtbl->dragMoveEvent(this, sigval1);

	}

	friend void QColumnView_virtualbase_dragMoveEvent(VirtualQColumnView* self, QDragMoveEvent* event);

	virtual void dragLeaveEvent(QDragLeaveEvent* event) override {
		if (vtbl->dragLeaveEvent == 0) {
			QColumnView::dragLeaveEvent(event);
			return;
		}

		QDragLeaveEvent* sigval1 = event;

		vtbl->dragLeaveEvent(this, sigval1);

	}

	friend void QColumnView_virtualbase_dragLeaveEvent(VirtualQColumnView* self, QDragLeaveEvent* event);

	virtual void dropEvent(QDropEvent* event) override {
		if (vtbl->dropEvent == 0) {
			QColumnView::dropEvent(event);
			return;
		}

		QDropEvent* sigval1 = event;

		vtbl->dropEvent(this, sigval1);

	}

	friend void QColumnView_virtualbase_dropEvent(VirtualQColumnView* self, QDropEvent* event);

	virtual void focusInEvent(QFocusEvent* event) override {
		if (vtbl->focusInEvent == 0) {
			QColumnView::focusInEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;

		vtbl->focusInEvent(this, sigval1);

	}

	friend void QColumnView_virtualbase_focusInEvent(VirtualQColumnView* self, QFocusEvent* event);

	virtual void focusOutEvent(QFocusEvent* event) override {
		if (vtbl->focusOutEvent == 0) {
			QColumnView::focusOutEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;

		vtbl->focusOutEvent(this, sigval1);

	}

	friend void QColumnView_virtualbase_focusOutEvent(VirtualQColumnView* self, QFocusEvent* event);

	virtual void keyPressEvent(QKeyEvent* event) override {
		if (vtbl->keyPressEvent == 0) {
			QColumnView::keyPressEvent(event);
			return;
		}

		QKeyEvent* sigval1 = event;

		vtbl->keyPressEvent(this, sigval1);

	}

	friend void QColumnView_virtualbase_keyPressEvent(VirtualQColumnView* self, QKeyEvent* event);

	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QColumnView::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(this, sigval1);

	}

	friend void QColumnView_virtualbase_timerEvent(VirtualQColumnView* self, QTimerEvent* event);

	virtual void inputMethodEvent(QInputMethodEvent* event) override {
		if (vtbl->inputMethodEvent == 0) {
			QColumnView::inputMethodEvent(event);
			return;
		}

		QInputMethodEvent* sigval1 = event;

		vtbl->inputMethodEvent(this, sigval1);

	}

	friend void QColumnView_virtualbase_inputMethodEvent(VirtualQColumnView* self, QInputMethodEvent* event);

	virtual bool eventFilter(QObject* object, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QColumnView::eventFilter(object, event);
		}

		QObject* sigval1 = object;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QColumnView_virtualbase_eventFilter(VirtualQColumnView* self, QObject* object, QEvent* event);

	virtual QSize viewportSizeHint() const override {
		if (vtbl->viewportSizeHint == 0) {
			return QColumnView::viewportSizeHint();
		}


		QSize* callback_return_value = vtbl->viewportSizeHint(this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QSize* QColumnView_virtualbase_viewportSizeHint(const VirtualQColumnView* self);

	virtual QSize minimumSizeHint() const override {
		if (vtbl->minimumSizeHint == 0) {
			return QColumnView::minimumSizeHint();
		}


		QSize* callback_return_value = vtbl->minimumSizeHint(this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QSize* QColumnView_virtualbase_minimumSizeHint(const VirtualQColumnView* self);

	virtual void setupViewport(QWidget* viewport) override {
		if (vtbl->setupViewport == 0) {
			QColumnView::setupViewport(viewport);
			return;
		}

		QWidget* sigval1 = viewport;

		vtbl->setupViewport(this, sigval1);

	}

	friend void QColumnView_virtualbase_setupViewport(VirtualQColumnView* self, QWidget* viewport);

	virtual void paintEvent(QPaintEvent* param1) override {
		if (vtbl->paintEvent == 0) {
			QColumnView::paintEvent(param1);
			return;
		}

		QPaintEvent* sigval1 = param1;

		vtbl->paintEvent(this, sigval1);

	}

	friend void QColumnView_virtualbase_paintEvent(VirtualQColumnView* self, QPaintEvent* param1);

	virtual void wheelEvent(QWheelEvent* param1) override {
		if (vtbl->wheelEvent == 0) {
			QColumnView::wheelEvent(param1);
			return;
		}

		QWheelEvent* sigval1 = param1;

		vtbl->wheelEvent(this, sigval1);

	}

	friend void QColumnView_virtualbase_wheelEvent(VirtualQColumnView* self, QWheelEvent* param1);

	virtual void contextMenuEvent(QContextMenuEvent* param1) override {
		if (vtbl->contextMenuEvent == 0) {
			QColumnView::contextMenuEvent(param1);
			return;
		}

		QContextMenuEvent* sigval1 = param1;

		vtbl->contextMenuEvent(this, sigval1);

	}

	friend void QColumnView_virtualbase_contextMenuEvent(VirtualQColumnView* self, QContextMenuEvent* param1);

	virtual void changeEvent(QEvent* param1) override {
		if (vtbl->changeEvent == 0) {
			QColumnView::changeEvent(param1);
			return;
		}

		QEvent* sigval1 = param1;

		vtbl->changeEvent(this, sigval1);

	}

	friend void QColumnView_virtualbase_changeEvent(VirtualQColumnView* self, QEvent* param1);

	virtual int devType() const override {
		if (vtbl->devType == 0) {
			return QColumnView::devType();
		}


		int callback_return_value = vtbl->devType(this);

		return static_cast<int>(callback_return_value);
	}

	friend int QColumnView_virtualbase_devType(const VirtualQColumnView* self);

	virtual void setVisible(bool visible) override {
		if (vtbl->setVisible == 0) {
			QColumnView::setVisible(visible);
			return;
		}

		bool sigval1 = visible;

		vtbl->setVisible(this, sigval1);

	}

	friend void QColumnView_virtualbase_setVisible(VirtualQColumnView* self, bool visible);

	virtual int heightForWidth(int param1) const override {
		if (vtbl->heightForWidth == 0) {
			return QColumnView::heightForWidth(param1);
		}

		int sigval1 = param1;

		int callback_return_value = vtbl->heightForWidth(this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QColumnView_virtualbase_heightForWidth(const VirtualQColumnView* self, int param1);

	virtual bool hasHeightForWidth() const override {
		if (vtbl->hasHeightForWidth == 0) {
			return QColumnView::hasHeightForWidth();
		}


		bool callback_return_value = vtbl->hasHeightForWidth(this);

		return callback_return_value;
	}

	friend bool QColumnView_virtualbase_hasHeightForWidth(const VirtualQColumnView* self);

	virtual QPaintEngine* paintEngine() const override {
		if (vtbl->paintEngine == 0) {
			return QColumnView::paintEngine();
		}


		QPaintEngine* callback_return_value = vtbl->paintEngine(this);

		return callback_return_value;
	}

	friend QPaintEngine* QColumnView_virtualbase_paintEngine(const VirtualQColumnView* self);

	virtual void keyReleaseEvent(QKeyEvent* event) override {
		if (vtbl->keyReleaseEvent == 0) {
			QColumnView::keyReleaseEvent(event);
			return;
		}

		QKeyEvent* sigval1 = event;

		vtbl->keyReleaseEvent(this, sigval1);

	}

	friend void QColumnView_virtualbase_keyReleaseEvent(VirtualQColumnView* self, QKeyEvent* event);

	virtual void enterEvent(QEvent* event) override {
		if (vtbl->enterEvent == 0) {
			QColumnView::enterEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->enterEvent(this, sigval1);

	}

	friend void QColumnView_virtualbase_enterEvent(VirtualQColumnView* self, QEvent* event);

	virtual void leaveEvent(QEvent* event) override {
		if (vtbl->leaveEvent == 0) {
			QColumnView::leaveEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->leaveEvent(this, sigval1);

	}

	friend void QColumnView_virtualbase_leaveEvent(VirtualQColumnView* self, QEvent* event);

	virtual void moveEvent(QMoveEvent* event) override {
		if (vtbl->moveEvent == 0) {
			QColumnView::moveEvent(event);
			return;
		}

		QMoveEvent* sigval1 = event;

		vtbl->moveEvent(this, sigval1);

	}

	friend void QColumnView_virtualbase_moveEvent(VirtualQColumnView* self, QMoveEvent* event);

	virtual void closeEvent(QCloseEvent* event) override {
		if (vtbl->closeEvent == 0) {
			QColumnView::closeEvent(event);
			return;
		}

		QCloseEvent* sigval1 = event;

		vtbl->closeEvent(this, sigval1);

	}

	friend void QColumnView_virtualbase_closeEvent(VirtualQColumnView* self, QCloseEvent* event);

	virtual void tabletEvent(QTabletEvent* event) override {
		if (vtbl->tabletEvent == 0) {
			QColumnView::tabletEvent(event);
			return;
		}

		QTabletEvent* sigval1 = event;

		vtbl->tabletEvent(this, sigval1);

	}

	friend void QColumnView_virtualbase_tabletEvent(VirtualQColumnView* self, QTabletEvent* event);

	virtual void actionEvent(QActionEvent* event) override {
		if (vtbl->actionEvent == 0) {
			QColumnView::actionEvent(event);
			return;
		}

		QActionEvent* sigval1 = event;

		vtbl->actionEvent(this, sigval1);

	}

	friend void QColumnView_virtualbase_actionEvent(VirtualQColumnView* self, QActionEvent* event);

	virtual void showEvent(QShowEvent* event) override {
		if (vtbl->showEvent == 0) {
			QColumnView::showEvent(event);
			return;
		}

		QShowEvent* sigval1 = event;

		vtbl->showEvent(this, sigval1);

	}

	friend void QColumnView_virtualbase_showEvent(VirtualQColumnView* self, QShowEvent* event);

	virtual void hideEvent(QHideEvent* event) override {
		if (vtbl->hideEvent == 0) {
			QColumnView::hideEvent(event);
			return;
		}

		QHideEvent* sigval1 = event;

		vtbl->hideEvent(this, sigval1);

	}

	friend void QColumnView_virtualbase_hideEvent(VirtualQColumnView* self, QHideEvent* event);

	virtual bool nativeEvent(const QByteArray& eventType, void* message, long* result) override {
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
		long* sigval3 = result;

		bool callback_return_value = vtbl->nativeEvent(this, sigval1, sigval2, sigval3);

		return callback_return_value;
	}

	friend bool QColumnView_virtualbase_nativeEvent(VirtualQColumnView* self, struct miqt_string eventType, void* message, long* result);

	virtual int metric(QPaintDevice::PaintDeviceMetric param1) const override {
		if (vtbl->metric == 0) {
			return QColumnView::metric(param1);
		}

		QPaintDevice::PaintDeviceMetric param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);

		int callback_return_value = vtbl->metric(this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QColumnView_virtualbase_metric(const VirtualQColumnView* self, int param1);

	virtual void initPainter(QPainter* painter) const override {
		if (vtbl->initPainter == 0) {
			QColumnView::initPainter(painter);
			return;
		}

		QPainter* sigval1 = painter;

		vtbl->initPainter(this, sigval1);

	}

	friend void QColumnView_virtualbase_initPainter(const VirtualQColumnView* self, QPainter* painter);

	virtual QPaintDevice* redirected(QPoint* offset) const override {
		if (vtbl->redirected == 0) {
			return QColumnView::redirected(offset);
		}

		QPoint* sigval1 = offset;

		QPaintDevice* callback_return_value = vtbl->redirected(this, sigval1);

		return callback_return_value;
	}

	friend QPaintDevice* QColumnView_virtualbase_redirected(const VirtualQColumnView* self, QPoint* offset);

	virtual QPainter* sharedPainter() const override {
		if (vtbl->sharedPainter == 0) {
			return QColumnView::sharedPainter();
		}


		QPainter* callback_return_value = vtbl->sharedPainter(this);

		return callback_return_value;
	}

	friend QPainter* QColumnView_virtualbase_sharedPainter(const VirtualQColumnView* self);

	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QColumnView::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(this, sigval1);

	}

	friend void QColumnView_virtualbase_childEvent(VirtualQColumnView* self, QChildEvent* event);

	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QColumnView::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(this, sigval1);

	}

	friend void QColumnView_virtualbase_customEvent(VirtualQColumnView* self, QEvent* event);

	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QColumnView::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(this, sigval1);

	}

	friend void QColumnView_virtualbase_connectNotify(VirtualQColumnView* self, QMetaMethod* signal);

	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QColumnView::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(this, sigval1);

	}

	friend void QColumnView_virtualbase_disconnectNotify(VirtualQColumnView* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend void QColumnView_protectedbase_initializeColumn(const VirtualQColumnView* self, QAbstractItemView* column);
	friend void QColumnView_protectedbase_setHorizontalStepsPerItem(VirtualQColumnView* self, int steps);
	friend int QColumnView_protectedbase_horizontalStepsPerItem(const VirtualQColumnView* self);
	friend void QColumnView_protectedbase_setVerticalStepsPerItem(VirtualQColumnView* self, int steps);
	friend int QColumnView_protectedbase_verticalStepsPerItem(const VirtualQColumnView* self);
	friend int QColumnView_protectedbase_state(const VirtualQColumnView* self);
	friend void QColumnView_protectedbase_setState(VirtualQColumnView* self, int state);
	friend void QColumnView_protectedbase_scheduleDelayedItemsLayout(VirtualQColumnView* self);
	friend void QColumnView_protectedbase_executeDelayedItemsLayout(VirtualQColumnView* self);
	friend void QColumnView_protectedbase_setDirtyRegion(VirtualQColumnView* self, QRegion* region);
	friend void QColumnView_protectedbase_scrollDirtyRegion(VirtualQColumnView* self, int dx, int dy);
	friend QPoint* QColumnView_protectedbase_dirtyRegionOffset(const VirtualQColumnView* self);
	friend void QColumnView_protectedbase_startAutoScroll(VirtualQColumnView* self);
	friend void QColumnView_protectedbase_stopAutoScroll(VirtualQColumnView* self);
	friend void QColumnView_protectedbase_doAutoScroll(VirtualQColumnView* self);
	friend int QColumnView_protectedbase_dropIndicatorPosition(const VirtualQColumnView* self);
	friend void QColumnView_protectedbase_setViewportMargins(VirtualQColumnView* self, int left, int top, int right, int bottom);
	friend QMargins* QColumnView_protectedbase_viewportMargins(const VirtualQColumnView* self);
	friend void QColumnView_protectedbase_drawFrame(VirtualQColumnView* self, QPainter* param1);
	friend void QColumnView_protectedbase_initStyleOption(const VirtualQColumnView* self, QStyleOptionFrame* option);
	friend void QColumnView_protectedbase_updateMicroFocus(VirtualQColumnView* self);
	friend void QColumnView_protectedbase_create(VirtualQColumnView* self);
	friend void QColumnView_protectedbase_destroy(VirtualQColumnView* self);
	friend bool QColumnView_protectedbase_focusNextChild(VirtualQColumnView* self);
	friend bool QColumnView_protectedbase_focusPreviousChild(VirtualQColumnView* self);
	friend QObject* QColumnView_protectedbase_sender(const VirtualQColumnView* self);
	friend int QColumnView_protectedbase_senderSignalIndex(const VirtualQColumnView* self);
	friend int QColumnView_protectedbase_receivers(const VirtualQColumnView* self, const char* signal);
	friend bool QColumnView_protectedbase_isSignalConnected(const VirtualQColumnView* self, QMetaMethod* signal);
};

VirtualQColumnView* QColumnView_new(const QColumnView_VTable* vtbl, void* vdata, QWidget* parent) {
	return new VirtualQColumnView(vtbl, vdata, parent);
}

VirtualQColumnView* QColumnView_new2(const QColumnView_VTable* vtbl, void* vdata) {
	return new VirtualQColumnView(vtbl, vdata);
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

struct miqt_string QColumnView_trUtf8(const char* s) {
	QString _ret = QColumnView::trUtf8(s);
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

void QColumnView_connect_updatePreviewWidget(VirtualQColumnView* self, intptr_t slot, void (*callback)(intptr_t, QModelIndex*), void (*release)(intptr_t)) {
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
	VirtualQColumnView::connect(self, static_cast<void (QColumnView::*)(const QModelIndex&)>(&QColumnView::updatePreviewWidget), self, local_caller{slot, callback, release});
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

struct miqt_string QColumnView_trUtf82(const char* s, const char* c) {
	QString _ret = QColumnView::trUtf8(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QColumnView_trUtf83(const char* s, const char* c, int n) {
	QString _ret = QColumnView::trUtf8(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QMetaObject* QColumnView_virtualbase_metaObject(const VirtualQColumnView* self) {

	return (QMetaObject*) self->QColumnView::metaObject();
}

void* QColumnView_virtualbase_metacast(VirtualQColumnView* self, const char* param1) {

	return self->QColumnView::qt_metacast(param1);
}

int QColumnView_virtualbase_metacall(VirtualQColumnView* self, int param1, int param2, void** param3) {

	return self->QColumnView::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

QModelIndex* QColumnView_virtualbase_indexAt(const VirtualQColumnView* self, QPoint* point) {

	return new QModelIndex(self->QColumnView::indexAt(*point));
}

void QColumnView_virtualbase_scrollTo(VirtualQColumnView* self, QModelIndex* index, int hint) {

	self->QColumnView::scrollTo(*index, static_cast<VirtualQColumnView::ScrollHint>(hint));
}

QSize* QColumnView_virtualbase_sizeHint(const VirtualQColumnView* self) {

	return new QSize(self->QColumnView::sizeHint());
}

QRect* QColumnView_virtualbase_visualRect(const VirtualQColumnView* self, QModelIndex* index) {

	return new QRect(self->QColumnView::visualRect(*index));
}

void QColumnView_virtualbase_setModel(VirtualQColumnView* self, QAbstractItemModel* model) {

	self->QColumnView::setModel(model);
}

void QColumnView_virtualbase_setSelectionModel(VirtualQColumnView* self, QItemSelectionModel* selectionModel) {

	self->QColumnView::setSelectionModel(selectionModel);
}

void QColumnView_virtualbase_setRootIndex(VirtualQColumnView* self, QModelIndex* index) {

	self->QColumnView::setRootIndex(*index);
}

void QColumnView_virtualbase_selectAll(VirtualQColumnView* self) {

	self->QColumnView::selectAll();
}

bool QColumnView_virtualbase_isIndexHidden(const VirtualQColumnView* self, QModelIndex* index) {

	return self->QColumnView::isIndexHidden(*index);
}

QModelIndex* QColumnView_virtualbase_moveCursor(VirtualQColumnView* self, int cursorAction, int modifiers) {

	return new QModelIndex(self->QColumnView::moveCursor(static_cast<VirtualQColumnView::CursorAction>(cursorAction), static_cast<Qt::KeyboardModifiers>(modifiers)));
}

void QColumnView_virtualbase_resizeEvent(VirtualQColumnView* self, QResizeEvent* event) {

	self->QColumnView::resizeEvent(event);
}

void QColumnView_virtualbase_setSelection(VirtualQColumnView* self, QRect* rect, int command) {

	self->QColumnView::setSelection(*rect, static_cast<QItemSelectionModel::SelectionFlags>(command));
}

QRegion* QColumnView_virtualbase_visualRegionForSelection(const VirtualQColumnView* self, QItemSelection* selection) {

	return new QRegion(self->QColumnView::visualRegionForSelection(*selection));
}

int QColumnView_virtualbase_horizontalOffset(const VirtualQColumnView* self) {

	return self->QColumnView::horizontalOffset();
}

int QColumnView_virtualbase_verticalOffset(const VirtualQColumnView* self) {

	return self->QColumnView::verticalOffset();
}

void QColumnView_virtualbase_rowsInserted(VirtualQColumnView* self, QModelIndex* parent, int start, int end) {

	self->QColumnView::rowsInserted(*parent, static_cast<int>(start), static_cast<int>(end));
}

void QColumnView_virtualbase_currentChanged(VirtualQColumnView* self, QModelIndex* current, QModelIndex* previous) {

	self->QColumnView::currentChanged(*current, *previous);
}

void QColumnView_virtualbase_scrollContentsBy(VirtualQColumnView* self, int dx, int dy) {

	self->QColumnView::scrollContentsBy(static_cast<int>(dx), static_cast<int>(dy));
}

QAbstractItemView* QColumnView_virtualbase_createColumn(VirtualQColumnView* self, QModelIndex* rootIndex) {

	return self->QColumnView::createColumn(*rootIndex);
}

void QColumnView_virtualbase_keyboardSearch(VirtualQColumnView* self, struct miqt_string search) {
	QString search_QString = QString::fromUtf8(search.data, search.len);

	self->QColumnView::keyboardSearch(search_QString);
}

int QColumnView_virtualbase_sizeHintForRow(const VirtualQColumnView* self, int row) {

	return self->QColumnView::sizeHintForRow(static_cast<int>(row));
}

int QColumnView_virtualbase_sizeHintForColumn(const VirtualQColumnView* self, int column) {

	return self->QColumnView::sizeHintForColumn(static_cast<int>(column));
}

QVariant* QColumnView_virtualbase_inputMethodQuery(const VirtualQColumnView* self, int query) {

	return new QVariant(self->QColumnView::inputMethodQuery(static_cast<Qt::InputMethodQuery>(query)));
}

void QColumnView_virtualbase_reset(VirtualQColumnView* self) {

	self->QColumnView::reset();
}

void QColumnView_virtualbase_doItemsLayout(VirtualQColumnView* self) {

	self->QColumnView::doItemsLayout();
}

void QColumnView_virtualbase_dataChanged(VirtualQColumnView* self, QModelIndex* topLeft, QModelIndex* bottomRight, struct miqt_array /* of int */  roles) {
	QVector<int> roles_QList;
	roles_QList.reserve(roles.len);
	int* roles_arr = static_cast<int*>(roles.data);
	for(size_t i = 0; i < roles.len; ++i) {
		roles_QList.push_back(static_cast<int>(roles_arr[i]));
	}

	self->QColumnView::dataChanged(*topLeft, *bottomRight, roles_QList);
}

void QColumnView_virtualbase_rowsAboutToBeRemoved(VirtualQColumnView* self, QModelIndex* parent, int start, int end) {

	self->QColumnView::rowsAboutToBeRemoved(*parent, static_cast<int>(start), static_cast<int>(end));
}

void QColumnView_virtualbase_selectionChanged(VirtualQColumnView* self, QItemSelection* selected, QItemSelection* deselected) {

	self->QColumnView::selectionChanged(*selected, *deselected);
}

void QColumnView_virtualbase_updateEditorData(VirtualQColumnView* self) {

	self->QColumnView::updateEditorData();
}

void QColumnView_virtualbase_updateEditorGeometries(VirtualQColumnView* self) {

	self->QColumnView::updateEditorGeometries();
}

void QColumnView_virtualbase_updateGeometries(VirtualQColumnView* self) {

	self->QColumnView::updateGeometries();
}

void QColumnView_virtualbase_verticalScrollbarAction(VirtualQColumnView* self, int action) {

	self->QColumnView::verticalScrollbarAction(static_cast<int>(action));
}

void QColumnView_virtualbase_horizontalScrollbarAction(VirtualQColumnView* self, int action) {

	self->QColumnView::horizontalScrollbarAction(static_cast<int>(action));
}

void QColumnView_virtualbase_verticalScrollbarValueChanged(VirtualQColumnView* self, int value) {

	self->QColumnView::verticalScrollbarValueChanged(static_cast<int>(value));
}

void QColumnView_virtualbase_horizontalScrollbarValueChanged(VirtualQColumnView* self, int value) {

	self->QColumnView::horizontalScrollbarValueChanged(static_cast<int>(value));
}

void QColumnView_virtualbase_closeEditor(VirtualQColumnView* self, QWidget* editor, int hint) {

	self->QColumnView::closeEditor(editor, static_cast<QAbstractItemDelegate::EndEditHint>(hint));
}

void QColumnView_virtualbase_commitData(VirtualQColumnView* self, QWidget* editor) {

	self->QColumnView::commitData(editor);
}

void QColumnView_virtualbase_editorDestroyed(VirtualQColumnView* self, QObject* editor) {

	self->QColumnView::editorDestroyed(editor);
}

struct miqt_array /* of QModelIndex* */  QColumnView_virtualbase_selectedIndexes(const VirtualQColumnView* self) {

	QModelIndexList _ret = self->QColumnView::selectedIndexes();
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

bool QColumnView_virtualbase_edit2(VirtualQColumnView* self, QModelIndex* index, int trigger, QEvent* event) {

	return self->QColumnView::edit(*index, static_cast<VirtualQColumnView::EditTrigger>(trigger), event);
}

int QColumnView_virtualbase_selectionCommand(const VirtualQColumnView* self, QModelIndex* index, QEvent* event) {

	QItemSelectionModel::SelectionFlags _ret = self->QColumnView::selectionCommand(*index, event);
	return static_cast<int>(_ret);
}

void QColumnView_virtualbase_startDrag(VirtualQColumnView* self, int supportedActions) {

	self->QColumnView::startDrag(static_cast<Qt::DropActions>(supportedActions));
}

QStyleOptionViewItem* QColumnView_virtualbase_viewOptions(const VirtualQColumnView* self) {

	return new QStyleOptionViewItem(self->QColumnView::viewOptions());
}

bool QColumnView_virtualbase_focusNextPrevChild(VirtualQColumnView* self, bool next) {

	return self->QColumnView::focusNextPrevChild(next);
}

bool QColumnView_virtualbase_event(VirtualQColumnView* self, QEvent* event) {

	return self->QColumnView::event(event);
}

bool QColumnView_virtualbase_viewportEvent(VirtualQColumnView* self, QEvent* event) {

	return self->QColumnView::viewportEvent(event);
}

void QColumnView_virtualbase_mousePressEvent(VirtualQColumnView* self, QMouseEvent* event) {

	self->QColumnView::mousePressEvent(event);
}

void QColumnView_virtualbase_mouseMoveEvent(VirtualQColumnView* self, QMouseEvent* event) {

	self->QColumnView::mouseMoveEvent(event);
}

void QColumnView_virtualbase_mouseReleaseEvent(VirtualQColumnView* self, QMouseEvent* event) {

	self->QColumnView::mouseReleaseEvent(event);
}

void QColumnView_virtualbase_mouseDoubleClickEvent(VirtualQColumnView* self, QMouseEvent* event) {

	self->QColumnView::mouseDoubleClickEvent(event);
}

void QColumnView_virtualbase_dragEnterEvent(VirtualQColumnView* self, QDragEnterEvent* event) {

	self->QColumnView::dragEnterEvent(event);
}

void QColumnView_virtualbase_dragMoveEvent(VirtualQColumnView* self, QDragMoveEvent* event) {

	self->QColumnView::dragMoveEvent(event);
}

void QColumnView_virtualbase_dragLeaveEvent(VirtualQColumnView* self, QDragLeaveEvent* event) {

	self->QColumnView::dragLeaveEvent(event);
}

void QColumnView_virtualbase_dropEvent(VirtualQColumnView* self, QDropEvent* event) {

	self->QColumnView::dropEvent(event);
}

void QColumnView_virtualbase_focusInEvent(VirtualQColumnView* self, QFocusEvent* event) {

	self->QColumnView::focusInEvent(event);
}

void QColumnView_virtualbase_focusOutEvent(VirtualQColumnView* self, QFocusEvent* event) {

	self->QColumnView::focusOutEvent(event);
}

void QColumnView_virtualbase_keyPressEvent(VirtualQColumnView* self, QKeyEvent* event) {

	self->QColumnView::keyPressEvent(event);
}

void QColumnView_virtualbase_timerEvent(VirtualQColumnView* self, QTimerEvent* event) {

	self->QColumnView::timerEvent(event);
}

void QColumnView_virtualbase_inputMethodEvent(VirtualQColumnView* self, QInputMethodEvent* event) {

	self->QColumnView::inputMethodEvent(event);
}

bool QColumnView_virtualbase_eventFilter(VirtualQColumnView* self, QObject* object, QEvent* event) {

	return self->QColumnView::eventFilter(object, event);
}

QSize* QColumnView_virtualbase_viewportSizeHint(const VirtualQColumnView* self) {

	return new QSize(self->QColumnView::viewportSizeHint());
}

QSize* QColumnView_virtualbase_minimumSizeHint(const VirtualQColumnView* self) {

	return new QSize(self->QColumnView::minimumSizeHint());
}

void QColumnView_virtualbase_setupViewport(VirtualQColumnView* self, QWidget* viewport) {

	self->QColumnView::setupViewport(viewport);
}

void QColumnView_virtualbase_paintEvent(VirtualQColumnView* self, QPaintEvent* param1) {

	self->QColumnView::paintEvent(param1);
}

void QColumnView_virtualbase_wheelEvent(VirtualQColumnView* self, QWheelEvent* param1) {

	self->QColumnView::wheelEvent(param1);
}

void QColumnView_virtualbase_contextMenuEvent(VirtualQColumnView* self, QContextMenuEvent* param1) {

	self->QColumnView::contextMenuEvent(param1);
}

void QColumnView_virtualbase_changeEvent(VirtualQColumnView* self, QEvent* param1) {

	self->QColumnView::changeEvent(param1);
}

int QColumnView_virtualbase_devType(const VirtualQColumnView* self) {

	return self->QColumnView::devType();
}

void QColumnView_virtualbase_setVisible(VirtualQColumnView* self, bool visible) {

	self->QColumnView::setVisible(visible);
}

int QColumnView_virtualbase_heightForWidth(const VirtualQColumnView* self, int param1) {

	return self->QColumnView::heightForWidth(static_cast<int>(param1));
}

bool QColumnView_virtualbase_hasHeightForWidth(const VirtualQColumnView* self) {

	return self->QColumnView::hasHeightForWidth();
}

QPaintEngine* QColumnView_virtualbase_paintEngine(const VirtualQColumnView* self) {

	return self->QColumnView::paintEngine();
}

void QColumnView_virtualbase_keyReleaseEvent(VirtualQColumnView* self, QKeyEvent* event) {

	self->QColumnView::keyReleaseEvent(event);
}

void QColumnView_virtualbase_enterEvent(VirtualQColumnView* self, QEvent* event) {

	self->QColumnView::enterEvent(event);
}

void QColumnView_virtualbase_leaveEvent(VirtualQColumnView* self, QEvent* event) {

	self->QColumnView::leaveEvent(event);
}

void QColumnView_virtualbase_moveEvent(VirtualQColumnView* self, QMoveEvent* event) {

	self->QColumnView::moveEvent(event);
}

void QColumnView_virtualbase_closeEvent(VirtualQColumnView* self, QCloseEvent* event) {

	self->QColumnView::closeEvent(event);
}

void QColumnView_virtualbase_tabletEvent(VirtualQColumnView* self, QTabletEvent* event) {

	self->QColumnView::tabletEvent(event);
}

void QColumnView_virtualbase_actionEvent(VirtualQColumnView* self, QActionEvent* event) {

	self->QColumnView::actionEvent(event);
}

void QColumnView_virtualbase_showEvent(VirtualQColumnView* self, QShowEvent* event) {

	self->QColumnView::showEvent(event);
}

void QColumnView_virtualbase_hideEvent(VirtualQColumnView* self, QHideEvent* event) {

	self->QColumnView::hideEvent(event);
}

bool QColumnView_virtualbase_nativeEvent(VirtualQColumnView* self, struct miqt_string eventType, void* message, long* result) {
	QByteArray eventType_QByteArray(eventType.data, eventType.len);

	return self->QColumnView::nativeEvent(eventType_QByteArray, message, static_cast<long*>(result));
}

int QColumnView_virtualbase_metric(const VirtualQColumnView* self, int param1) {

	return self->QColumnView::metric(static_cast<VirtualQColumnView::PaintDeviceMetric>(param1));
}

void QColumnView_virtualbase_initPainter(const VirtualQColumnView* self, QPainter* painter) {

	self->QColumnView::initPainter(painter);
}

QPaintDevice* QColumnView_virtualbase_redirected(const VirtualQColumnView* self, QPoint* offset) {

	return self->QColumnView::redirected(offset);
}

QPainter* QColumnView_virtualbase_sharedPainter(const VirtualQColumnView* self) {

	return self->QColumnView::sharedPainter();
}

void QColumnView_virtualbase_childEvent(VirtualQColumnView* self, QChildEvent* event) {

	self->QColumnView::childEvent(event);
}

void QColumnView_virtualbase_customEvent(VirtualQColumnView* self, QEvent* event) {

	self->QColumnView::customEvent(event);
}

void QColumnView_virtualbase_connectNotify(VirtualQColumnView* self, QMetaMethod* signal) {

	self->QColumnView::connectNotify(*signal);
}

void QColumnView_virtualbase_disconnectNotify(VirtualQColumnView* self, QMetaMethod* signal) {

	self->QColumnView::disconnectNotify(*signal);
}

const QMetaObject* QColumnView_staticMetaObject() { return &QColumnView::staticMetaObject; }

const QColumnView_VTable* QColumnView_vtbl(const VirtualQColumnView* self) { return self->vtbl; }
void* QColumnView_vdata(const VirtualQColumnView* self) { return self->vdata; }
void QColumnView_setVdata(VirtualQColumnView* self, void* vdata) { self->vdata = vdata; }

void QColumnView_protectedbase_initializeColumn(const VirtualQColumnView* self, QAbstractItemView* column) {
	self->initializeColumn(column);
}

void QColumnView_protectedbase_setHorizontalStepsPerItem(VirtualQColumnView* self, int steps) {
	self->setHorizontalStepsPerItem(static_cast<int>(steps));
}

int QColumnView_protectedbase_horizontalStepsPerItem(const VirtualQColumnView* self) {
	return self->horizontalStepsPerItem();
}

void QColumnView_protectedbase_setVerticalStepsPerItem(VirtualQColumnView* self, int steps) {
	self->setVerticalStepsPerItem(static_cast<int>(steps));
}

int QColumnView_protectedbase_verticalStepsPerItem(const VirtualQColumnView* self) {
	return self->verticalStepsPerItem();
}

int QColumnView_protectedbase_state(const VirtualQColumnView* self) {
	VirtualQColumnView::State _ret = self->state();
	return static_cast<int>(_ret);
}

void QColumnView_protectedbase_setState(VirtualQColumnView* self, int state) {
	self->setState(static_cast<VirtualQColumnView::State>(state));
}

void QColumnView_protectedbase_scheduleDelayedItemsLayout(VirtualQColumnView* self) {
	self->scheduleDelayedItemsLayout();
}

void QColumnView_protectedbase_executeDelayedItemsLayout(VirtualQColumnView* self) {
	self->executeDelayedItemsLayout();
}

void QColumnView_protectedbase_setDirtyRegion(VirtualQColumnView* self, QRegion* region) {
	self->setDirtyRegion(*region);
}

void QColumnView_protectedbase_scrollDirtyRegion(VirtualQColumnView* self, int dx, int dy) {
	self->scrollDirtyRegion(static_cast<int>(dx), static_cast<int>(dy));
}

QPoint* QColumnView_protectedbase_dirtyRegionOffset(const VirtualQColumnView* self) {
	return new QPoint(self->dirtyRegionOffset());
}

void QColumnView_protectedbase_startAutoScroll(VirtualQColumnView* self) {
	self->startAutoScroll();
}

void QColumnView_protectedbase_stopAutoScroll(VirtualQColumnView* self) {
	self->stopAutoScroll();
}

void QColumnView_protectedbase_doAutoScroll(VirtualQColumnView* self) {
	self->doAutoScroll();
}

int QColumnView_protectedbase_dropIndicatorPosition(const VirtualQColumnView* self) {
	VirtualQColumnView::DropIndicatorPosition _ret = self->dropIndicatorPosition();
	return static_cast<int>(_ret);
}

void QColumnView_protectedbase_setViewportMargins(VirtualQColumnView* self, int left, int top, int right, int bottom) {
	self->setViewportMargins(static_cast<int>(left), static_cast<int>(top), static_cast<int>(right), static_cast<int>(bottom));
}

QMargins* QColumnView_protectedbase_viewportMargins(const VirtualQColumnView* self) {
	return new QMargins(self->viewportMargins());
}

void QColumnView_protectedbase_drawFrame(VirtualQColumnView* self, QPainter* param1) {
	self->drawFrame(param1);
}

void QColumnView_protectedbase_initStyleOption(const VirtualQColumnView* self, QStyleOptionFrame* option) {
	self->initStyleOption(option);
}

void QColumnView_protectedbase_updateMicroFocus(VirtualQColumnView* self) {
	self->updateMicroFocus();
}

void QColumnView_protectedbase_create(VirtualQColumnView* self) {
	self->create();
}

void QColumnView_protectedbase_destroy(VirtualQColumnView* self) {
	self->destroy();
}

bool QColumnView_protectedbase_focusNextChild(VirtualQColumnView* self) {
	return self->focusNextChild();
}

bool QColumnView_protectedbase_focusPreviousChild(VirtualQColumnView* self) {
	return self->focusPreviousChild();
}

QObject* QColumnView_protectedbase_sender(const VirtualQColumnView* self) {
	return self->sender();
}

int QColumnView_protectedbase_senderSignalIndex(const VirtualQColumnView* self) {
	return self->senderSignalIndex();
}

int QColumnView_protectedbase_receivers(const VirtualQColumnView* self, const char* signal) {
	return self->receivers(signal);
}

bool QColumnView_protectedbase_isSignalConnected(const VirtualQColumnView* self, QMetaMethod* signal) {
	return self->isSignalConnected(*signal);
}

void QColumnView_delete(QColumnView* self) {
	delete self;
}

