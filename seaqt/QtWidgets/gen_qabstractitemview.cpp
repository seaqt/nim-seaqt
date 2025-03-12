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
class VirtualQAbstractItemView final : public QAbstractItemView {
	const QAbstractItemView_VTable* vtbl;
	void* vdata;
public:
	friend const QAbstractItemView_VTable* QAbstractItemView_vtbl(const VirtualQAbstractItemView* self);
	friend void* QAbstractItemView_vdata(const VirtualQAbstractItemView* self);
	friend void QAbstractItemView_setVdata(VirtualQAbstractItemView* self, void* vdata);

	VirtualQAbstractItemView(const QAbstractItemView_VTable* vtbl, void* vdata, QWidget* parent): QAbstractItemView(parent), vtbl(vtbl), vdata(vdata) {}
	VirtualQAbstractItemView(const QAbstractItemView_VTable* vtbl, void* vdata): QAbstractItemView(), vtbl(vtbl), vdata(vdata) {}

	virtual ~VirtualQAbstractItemView() override { if(vtbl->destructor) vtbl->destructor(this); }

	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QAbstractItemView::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(this);

		return callback_return_value;
	}

	friend QMetaObject* QAbstractItemView_virtualbase_metaObject(const VirtualQAbstractItemView* self);

	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QAbstractItemView::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(this, sigval1);

		return callback_return_value;
	}

	friend void* QAbstractItemView_virtualbase_metacast(VirtualQAbstractItemView* self, const char* param1);

	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QAbstractItemView::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QAbstractItemView_virtualbase_metacall(VirtualQAbstractItemView* self, int param1, int param2, void** param3);

	virtual void setModel(QAbstractItemModel* model) override {
		if (vtbl->setModel == 0) {
			QAbstractItemView::setModel(model);
			return;
		}

		QAbstractItemModel* sigval1 = model;

		vtbl->setModel(this, sigval1);

	}

	friend void QAbstractItemView_virtualbase_setModel(VirtualQAbstractItemView* self, QAbstractItemModel* model);

	virtual void setSelectionModel(QItemSelectionModel* selectionModel) override {
		if (vtbl->setSelectionModel == 0) {
			QAbstractItemView::setSelectionModel(selectionModel);
			return;
		}

		QItemSelectionModel* sigval1 = selectionModel;

		vtbl->setSelectionModel(this, sigval1);

	}

	friend void QAbstractItemView_virtualbase_setSelectionModel(VirtualQAbstractItemView* self, QItemSelectionModel* selectionModel);

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

		vtbl->keyboardSearch(this, sigval1);

	}

	friend void QAbstractItemView_virtualbase_keyboardSearch(VirtualQAbstractItemView* self, struct miqt_string search);

	virtual QRect visualRect(const QModelIndex& index) const override {
		if (vtbl->visualRect == 0) {
			return QRect(); // Pure virtual, there is no base we can call
		}

		const QModelIndex& index_ret = index;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&index_ret);

		QRect* callback_return_value = vtbl->visualRect(this, sigval1);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	virtual void scrollTo(const QModelIndex& index, QAbstractItemView::ScrollHint hint) override {
		if (vtbl->scrollTo == 0) {
			return; // Pure virtual, there is no base we can call
		}

		const QModelIndex& index_ret = index;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&index_ret);
		QAbstractItemView::ScrollHint hint_ret = hint;
		int sigval2 = static_cast<int>(hint_ret);

		vtbl->scrollTo(this, sigval1, sigval2);

	}

	virtual QModelIndex indexAt(const QPoint& point) const override {
		if (vtbl->indexAt == 0) {
			return QModelIndex(); // Pure virtual, there is no base we can call
		}

		const QPoint& point_ret = point;
		// Cast returned reference into pointer
		QPoint* sigval1 = const_cast<QPoint*>(&point_ret);

		QModelIndex* callback_return_value = vtbl->indexAt(this, sigval1);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	virtual int sizeHintForRow(int row) const override {
		if (vtbl->sizeHintForRow == 0) {
			return QAbstractItemView::sizeHintForRow(row);
		}

		int sigval1 = row;

		int callback_return_value = vtbl->sizeHintForRow(this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QAbstractItemView_virtualbase_sizeHintForRow(const VirtualQAbstractItemView* self, int row);

	virtual int sizeHintForColumn(int column) const override {
		if (vtbl->sizeHintForColumn == 0) {
			return QAbstractItemView::sizeHintForColumn(column);
		}

		int sigval1 = column;

		int callback_return_value = vtbl->sizeHintForColumn(this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QAbstractItemView_virtualbase_sizeHintForColumn(const VirtualQAbstractItemView* self, int column);

	virtual QAbstractItemDelegate* itemDelegateForIndex(const QModelIndex& index) const override {
		if (vtbl->itemDelegateForIndex == 0) {
			return QAbstractItemView::itemDelegateForIndex(index);
		}

		const QModelIndex& index_ret = index;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&index_ret);

		QAbstractItemDelegate* callback_return_value = vtbl->itemDelegateForIndex(this, sigval1);

		return callback_return_value;
	}

	friend QAbstractItemDelegate* QAbstractItemView_virtualbase_itemDelegateForIndex(const VirtualQAbstractItemView* self, QModelIndex* index);

	virtual QVariant inputMethodQuery(Qt::InputMethodQuery query) const override {
		if (vtbl->inputMethodQuery == 0) {
			return QAbstractItemView::inputMethodQuery(query);
		}

		Qt::InputMethodQuery query_ret = query;
		int sigval1 = static_cast<int>(query_ret);

		QVariant* callback_return_value = vtbl->inputMethodQuery(this, sigval1);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QVariant* QAbstractItemView_virtualbase_inputMethodQuery(const VirtualQAbstractItemView* self, int query);

	virtual void reset() override {
		if (vtbl->reset == 0) {
			QAbstractItemView::reset();
			return;
		}


		vtbl->reset(this);

	}

	friend void QAbstractItemView_virtualbase_reset(VirtualQAbstractItemView* self);

	virtual void setRootIndex(const QModelIndex& index) override {
		if (vtbl->setRootIndex == 0) {
			QAbstractItemView::setRootIndex(index);
			return;
		}

		const QModelIndex& index_ret = index;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&index_ret);

		vtbl->setRootIndex(this, sigval1);

	}

	friend void QAbstractItemView_virtualbase_setRootIndex(VirtualQAbstractItemView* self, QModelIndex* index);

	virtual void doItemsLayout() override {
		if (vtbl->doItemsLayout == 0) {
			QAbstractItemView::doItemsLayout();
			return;
		}


		vtbl->doItemsLayout(this);

	}

	friend void QAbstractItemView_virtualbase_doItemsLayout(VirtualQAbstractItemView* self);

	virtual void selectAll() override {
		if (vtbl->selectAll == 0) {
			QAbstractItemView::selectAll();
			return;
		}


		vtbl->selectAll(this);

	}

	friend void QAbstractItemView_virtualbase_selectAll(VirtualQAbstractItemView* self);

	virtual void dataChanged(const QModelIndex& topLeft, const QModelIndex& bottomRight, const QList<int>& roles) override {
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

	friend void QAbstractItemView_virtualbase_dataChanged(VirtualQAbstractItemView* self, QModelIndex* topLeft, QModelIndex* bottomRight, struct miqt_array /* of int */  roles);

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

		vtbl->rowsInserted(this, sigval1, sigval2, sigval3);

	}

	friend void QAbstractItemView_virtualbase_rowsInserted(VirtualQAbstractItemView* self, QModelIndex* parent, int start, int end);

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

		vtbl->rowsAboutToBeRemoved(this, sigval1, sigval2, sigval3);

	}

	friend void QAbstractItemView_virtualbase_rowsAboutToBeRemoved(VirtualQAbstractItemView* self, QModelIndex* parent, int start, int end);

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

		vtbl->selectionChanged(this, sigval1, sigval2);

	}

	friend void QAbstractItemView_virtualbase_selectionChanged(VirtualQAbstractItemView* self, QItemSelection* selected, QItemSelection* deselected);

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

		vtbl->currentChanged(this, sigval1, sigval2);

	}

	friend void QAbstractItemView_virtualbase_currentChanged(VirtualQAbstractItemView* self, QModelIndex* current, QModelIndex* previous);

	virtual void updateEditorData() override {
		if (vtbl->updateEditorData == 0) {
			QAbstractItemView::updateEditorData();
			return;
		}


		vtbl->updateEditorData(this);

	}

	friend void QAbstractItemView_virtualbase_updateEditorData(VirtualQAbstractItemView* self);

	virtual void updateEditorGeometries() override {
		if (vtbl->updateEditorGeometries == 0) {
			QAbstractItemView::updateEditorGeometries();
			return;
		}


		vtbl->updateEditorGeometries(this);

	}

	friend void QAbstractItemView_virtualbase_updateEditorGeometries(VirtualQAbstractItemView* self);

	virtual void updateGeometries() override {
		if (vtbl->updateGeometries == 0) {
			QAbstractItemView::updateGeometries();
			return;
		}


		vtbl->updateGeometries(this);

	}

	friend void QAbstractItemView_virtualbase_updateGeometries(VirtualQAbstractItemView* self);

	virtual void verticalScrollbarAction(int action) override {
		if (vtbl->verticalScrollbarAction == 0) {
			QAbstractItemView::verticalScrollbarAction(action);
			return;
		}

		int sigval1 = action;

		vtbl->verticalScrollbarAction(this, sigval1);

	}

	friend void QAbstractItemView_virtualbase_verticalScrollbarAction(VirtualQAbstractItemView* self, int action);

	virtual void horizontalScrollbarAction(int action) override {
		if (vtbl->horizontalScrollbarAction == 0) {
			QAbstractItemView::horizontalScrollbarAction(action);
			return;
		}

		int sigval1 = action;

		vtbl->horizontalScrollbarAction(this, sigval1);

	}

	friend void QAbstractItemView_virtualbase_horizontalScrollbarAction(VirtualQAbstractItemView* self, int action);

	virtual void verticalScrollbarValueChanged(int value) override {
		if (vtbl->verticalScrollbarValueChanged == 0) {
			QAbstractItemView::verticalScrollbarValueChanged(value);
			return;
		}

		int sigval1 = value;

		vtbl->verticalScrollbarValueChanged(this, sigval1);

	}

	friend void QAbstractItemView_virtualbase_verticalScrollbarValueChanged(VirtualQAbstractItemView* self, int value);

	virtual void horizontalScrollbarValueChanged(int value) override {
		if (vtbl->horizontalScrollbarValueChanged == 0) {
			QAbstractItemView::horizontalScrollbarValueChanged(value);
			return;
		}

		int sigval1 = value;

		vtbl->horizontalScrollbarValueChanged(this, sigval1);

	}

	friend void QAbstractItemView_virtualbase_horizontalScrollbarValueChanged(VirtualQAbstractItemView* self, int value);

	virtual void closeEditor(QWidget* editor, QAbstractItemDelegate::EndEditHint hint) override {
		if (vtbl->closeEditor == 0) {
			QAbstractItemView::closeEditor(editor, hint);
			return;
		}

		QWidget* sigval1 = editor;
		QAbstractItemDelegate::EndEditHint hint_ret = hint;
		int sigval2 = static_cast<int>(hint_ret);

		vtbl->closeEditor(this, sigval1, sigval2);

	}

	friend void QAbstractItemView_virtualbase_closeEditor(VirtualQAbstractItemView* self, QWidget* editor, int hint);

	virtual void commitData(QWidget* editor) override {
		if (vtbl->commitData == 0) {
			QAbstractItemView::commitData(editor);
			return;
		}

		QWidget* sigval1 = editor;

		vtbl->commitData(this, sigval1);

	}

	friend void QAbstractItemView_virtualbase_commitData(VirtualQAbstractItemView* self, QWidget* editor);

	virtual void editorDestroyed(QObject* editor) override {
		if (vtbl->editorDestroyed == 0) {
			QAbstractItemView::editorDestroyed(editor);
			return;
		}

		QObject* sigval1 = editor;

		vtbl->editorDestroyed(this, sigval1);

	}

	friend void QAbstractItemView_virtualbase_editorDestroyed(VirtualQAbstractItemView* self, QObject* editor);

	virtual QModelIndex moveCursor(QAbstractItemView::CursorAction cursorAction, Qt::KeyboardModifiers modifiers) override {
		if (vtbl->moveCursor == 0) {
			return QModelIndex(); // Pure virtual, there is no base we can call
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

	virtual int horizontalOffset() const override {
		if (vtbl->horizontalOffset == 0) {
			return 0; // Pure virtual, there is no base we can call
		}


		int callback_return_value = vtbl->horizontalOffset(this);

		return static_cast<int>(callback_return_value);
	}

	virtual int verticalOffset() const override {
		if (vtbl->verticalOffset == 0) {
			return 0; // Pure virtual, there is no base we can call
		}


		int callback_return_value = vtbl->verticalOffset(this);

		return static_cast<int>(callback_return_value);
	}

	virtual bool isIndexHidden(const QModelIndex& index) const override {
		if (vtbl->isIndexHidden == 0) {
			return false; // Pure virtual, there is no base we can call
		}

		const QModelIndex& index_ret = index;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&index_ret);

		bool callback_return_value = vtbl->isIndexHidden(this, sigval1);

		return callback_return_value;
	}

	virtual void setSelection(const QRect& rect, QItemSelectionModel::SelectionFlags command) override {
		if (vtbl->setSelection == 0) {
			return; // Pure virtual, there is no base we can call
		}

		const QRect& rect_ret = rect;
		// Cast returned reference into pointer
		QRect* sigval1 = const_cast<QRect*>(&rect_ret);
		QItemSelectionModel::SelectionFlags command_ret = command;
		int sigval2 = static_cast<int>(command_ret);

		vtbl->setSelection(this, sigval1, sigval2);

	}

	virtual QRegion visualRegionForSelection(const QItemSelection& selection) const override {
		if (vtbl->visualRegionForSelection == 0) {
			return QRegion(); // Pure virtual, there is no base we can call
		}

		const QItemSelection& selection_ret = selection;
		// Cast returned reference into pointer
		QItemSelection* sigval1 = const_cast<QItemSelection*>(&selection_ret);

		QRegion* callback_return_value = vtbl->visualRegionForSelection(this, sigval1);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	virtual QModelIndexList selectedIndexes() const override {
		if (vtbl->selectedIndexes == 0) {
			return QAbstractItemView::selectedIndexes();
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

	friend struct miqt_array /* of QModelIndex* */  QAbstractItemView_virtualbase_selectedIndexes(const VirtualQAbstractItemView* self);

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

		bool callback_return_value = vtbl->edit2(this, sigval1, sigval2, sigval3);

		return callback_return_value;
	}

	friend bool QAbstractItemView_virtualbase_edit2(VirtualQAbstractItemView* self, QModelIndex* index, int trigger, QEvent* event);

	virtual QItemSelectionModel::SelectionFlags selectionCommand(const QModelIndex& index, const QEvent* event) const override {
		if (vtbl->selectionCommand == 0) {
			return QAbstractItemView::selectionCommand(index, event);
		}

		const QModelIndex& index_ret = index;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&index_ret);
		QEvent* sigval2 = (QEvent*) event;

		int callback_return_value = vtbl->selectionCommand(this, sigval1, sigval2);

		return static_cast<QItemSelectionModel::SelectionFlags>(callback_return_value);
	}

	friend int QAbstractItemView_virtualbase_selectionCommand(const VirtualQAbstractItemView* self, QModelIndex* index, QEvent* event);

	virtual void startDrag(Qt::DropActions supportedActions) override {
		if (vtbl->startDrag == 0) {
			QAbstractItemView::startDrag(supportedActions);
			return;
		}

		Qt::DropActions supportedActions_ret = supportedActions;
		int sigval1 = static_cast<int>(supportedActions_ret);

		vtbl->startDrag(this, sigval1);

	}

	friend void QAbstractItemView_virtualbase_startDrag(VirtualQAbstractItemView* self, int supportedActions);

	virtual void initViewItemOption(QStyleOptionViewItem* option) const override {
		if (vtbl->initViewItemOption == 0) {
			QAbstractItemView::initViewItemOption(option);
			return;
		}

		QStyleOptionViewItem* sigval1 = option;

		vtbl->initViewItemOption(this, sigval1);

	}

	friend void QAbstractItemView_virtualbase_initViewItemOption(const VirtualQAbstractItemView* self, QStyleOptionViewItem* option);

	virtual bool focusNextPrevChild(bool next) override {
		if (vtbl->focusNextPrevChild == 0) {
			return QAbstractItemView::focusNextPrevChild(next);
		}

		bool sigval1 = next;

		bool callback_return_value = vtbl->focusNextPrevChild(this, sigval1);

		return callback_return_value;
	}

	friend bool QAbstractItemView_virtualbase_focusNextPrevChild(VirtualQAbstractItemView* self, bool next);

	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QAbstractItemView::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(this, sigval1);

		return callback_return_value;
	}

	friend bool QAbstractItemView_virtualbase_event(VirtualQAbstractItemView* self, QEvent* event);

	virtual bool viewportEvent(QEvent* event) override {
		if (vtbl->viewportEvent == 0) {
			return QAbstractItemView::viewportEvent(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->viewportEvent(this, sigval1);

		return callback_return_value;
	}

	friend bool QAbstractItemView_virtualbase_viewportEvent(VirtualQAbstractItemView* self, QEvent* event);

	virtual void mousePressEvent(QMouseEvent* event) override {
		if (vtbl->mousePressEvent == 0) {
			QAbstractItemView::mousePressEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mousePressEvent(this, sigval1);

	}

	friend void QAbstractItemView_virtualbase_mousePressEvent(VirtualQAbstractItemView* self, QMouseEvent* event);

	virtual void mouseMoveEvent(QMouseEvent* event) override {
		if (vtbl->mouseMoveEvent == 0) {
			QAbstractItemView::mouseMoveEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseMoveEvent(this, sigval1);

	}

	friend void QAbstractItemView_virtualbase_mouseMoveEvent(VirtualQAbstractItemView* self, QMouseEvent* event);

	virtual void mouseReleaseEvent(QMouseEvent* event) override {
		if (vtbl->mouseReleaseEvent == 0) {
			QAbstractItemView::mouseReleaseEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseReleaseEvent(this, sigval1);

	}

	friend void QAbstractItemView_virtualbase_mouseReleaseEvent(VirtualQAbstractItemView* self, QMouseEvent* event);

	virtual void mouseDoubleClickEvent(QMouseEvent* event) override {
		if (vtbl->mouseDoubleClickEvent == 0) {
			QAbstractItemView::mouseDoubleClickEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseDoubleClickEvent(this, sigval1);

	}

	friend void QAbstractItemView_virtualbase_mouseDoubleClickEvent(VirtualQAbstractItemView* self, QMouseEvent* event);

	virtual void dragEnterEvent(QDragEnterEvent* event) override {
		if (vtbl->dragEnterEvent == 0) {
			QAbstractItemView::dragEnterEvent(event);
			return;
		}

		QDragEnterEvent* sigval1 = event;

		vtbl->dragEnterEvent(this, sigval1);

	}

	friend void QAbstractItemView_virtualbase_dragEnterEvent(VirtualQAbstractItemView* self, QDragEnterEvent* event);

	virtual void dragMoveEvent(QDragMoveEvent* event) override {
		if (vtbl->dragMoveEvent == 0) {
			QAbstractItemView::dragMoveEvent(event);
			return;
		}

		QDragMoveEvent* sigval1 = event;

		vtbl->dragMoveEvent(this, sigval1);

	}

	friend void QAbstractItemView_virtualbase_dragMoveEvent(VirtualQAbstractItemView* self, QDragMoveEvent* event);

	virtual void dragLeaveEvent(QDragLeaveEvent* event) override {
		if (vtbl->dragLeaveEvent == 0) {
			QAbstractItemView::dragLeaveEvent(event);
			return;
		}

		QDragLeaveEvent* sigval1 = event;

		vtbl->dragLeaveEvent(this, sigval1);

	}

	friend void QAbstractItemView_virtualbase_dragLeaveEvent(VirtualQAbstractItemView* self, QDragLeaveEvent* event);

	virtual void dropEvent(QDropEvent* event) override {
		if (vtbl->dropEvent == 0) {
			QAbstractItemView::dropEvent(event);
			return;
		}

		QDropEvent* sigval1 = event;

		vtbl->dropEvent(this, sigval1);

	}

	friend void QAbstractItemView_virtualbase_dropEvent(VirtualQAbstractItemView* self, QDropEvent* event);

	virtual void focusInEvent(QFocusEvent* event) override {
		if (vtbl->focusInEvent == 0) {
			QAbstractItemView::focusInEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;

		vtbl->focusInEvent(this, sigval1);

	}

	friend void QAbstractItemView_virtualbase_focusInEvent(VirtualQAbstractItemView* self, QFocusEvent* event);

	virtual void focusOutEvent(QFocusEvent* event) override {
		if (vtbl->focusOutEvent == 0) {
			QAbstractItemView::focusOutEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;

		vtbl->focusOutEvent(this, sigval1);

	}

	friend void QAbstractItemView_virtualbase_focusOutEvent(VirtualQAbstractItemView* self, QFocusEvent* event);

	virtual void keyPressEvent(QKeyEvent* event) override {
		if (vtbl->keyPressEvent == 0) {
			QAbstractItemView::keyPressEvent(event);
			return;
		}

		QKeyEvent* sigval1 = event;

		vtbl->keyPressEvent(this, sigval1);

	}

	friend void QAbstractItemView_virtualbase_keyPressEvent(VirtualQAbstractItemView* self, QKeyEvent* event);

	virtual void resizeEvent(QResizeEvent* event) override {
		if (vtbl->resizeEvent == 0) {
			QAbstractItemView::resizeEvent(event);
			return;
		}

		QResizeEvent* sigval1 = event;

		vtbl->resizeEvent(this, sigval1);

	}

	friend void QAbstractItemView_virtualbase_resizeEvent(VirtualQAbstractItemView* self, QResizeEvent* event);

	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QAbstractItemView::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(this, sigval1);

	}

	friend void QAbstractItemView_virtualbase_timerEvent(VirtualQAbstractItemView* self, QTimerEvent* event);

	virtual void inputMethodEvent(QInputMethodEvent* event) override {
		if (vtbl->inputMethodEvent == 0) {
			QAbstractItemView::inputMethodEvent(event);
			return;
		}

		QInputMethodEvent* sigval1 = event;

		vtbl->inputMethodEvent(this, sigval1);

	}

	friend void QAbstractItemView_virtualbase_inputMethodEvent(VirtualQAbstractItemView* self, QInputMethodEvent* event);

	virtual bool eventFilter(QObject* object, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QAbstractItemView::eventFilter(object, event);
		}

		QObject* sigval1 = object;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QAbstractItemView_virtualbase_eventFilter(VirtualQAbstractItemView* self, QObject* object, QEvent* event);

	virtual QSize viewportSizeHint() const override {
		if (vtbl->viewportSizeHint == 0) {
			return QAbstractItemView::viewportSizeHint();
		}


		QSize* callback_return_value = vtbl->viewportSizeHint(this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QSize* QAbstractItemView_virtualbase_viewportSizeHint(const VirtualQAbstractItemView* self);

	virtual QSize minimumSizeHint() const override {
		if (vtbl->minimumSizeHint == 0) {
			return QAbstractItemView::minimumSizeHint();
		}


		QSize* callback_return_value = vtbl->minimumSizeHint(this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QSize* QAbstractItemView_virtualbase_minimumSizeHint(const VirtualQAbstractItemView* self);

	virtual QSize sizeHint() const override {
		if (vtbl->sizeHint == 0) {
			return QAbstractItemView::sizeHint();
		}


		QSize* callback_return_value = vtbl->sizeHint(this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QSize* QAbstractItemView_virtualbase_sizeHint(const VirtualQAbstractItemView* self);

	virtual void setupViewport(QWidget* viewport) override {
		if (vtbl->setupViewport == 0) {
			QAbstractItemView::setupViewport(viewport);
			return;
		}

		QWidget* sigval1 = viewport;

		vtbl->setupViewport(this, sigval1);

	}

	friend void QAbstractItemView_virtualbase_setupViewport(VirtualQAbstractItemView* self, QWidget* viewport);

	virtual void paintEvent(QPaintEvent* param1) override {
		if (vtbl->paintEvent == 0) {
			QAbstractItemView::paintEvent(param1);
			return;
		}

		QPaintEvent* sigval1 = param1;

		vtbl->paintEvent(this, sigval1);

	}

	friend void QAbstractItemView_virtualbase_paintEvent(VirtualQAbstractItemView* self, QPaintEvent* param1);

	virtual void wheelEvent(QWheelEvent* param1) override {
		if (vtbl->wheelEvent == 0) {
			QAbstractItemView::wheelEvent(param1);
			return;
		}

		QWheelEvent* sigval1 = param1;

		vtbl->wheelEvent(this, sigval1);

	}

	friend void QAbstractItemView_virtualbase_wheelEvent(VirtualQAbstractItemView* self, QWheelEvent* param1);

	virtual void contextMenuEvent(QContextMenuEvent* param1) override {
		if (vtbl->contextMenuEvent == 0) {
			QAbstractItemView::contextMenuEvent(param1);
			return;
		}

		QContextMenuEvent* sigval1 = param1;

		vtbl->contextMenuEvent(this, sigval1);

	}

	friend void QAbstractItemView_virtualbase_contextMenuEvent(VirtualQAbstractItemView* self, QContextMenuEvent* param1);

	virtual void scrollContentsBy(int dx, int dy) override {
		if (vtbl->scrollContentsBy == 0) {
			QAbstractItemView::scrollContentsBy(dx, dy);
			return;
		}

		int sigval1 = dx;
		int sigval2 = dy;

		vtbl->scrollContentsBy(this, sigval1, sigval2);

	}

	friend void QAbstractItemView_virtualbase_scrollContentsBy(VirtualQAbstractItemView* self, int dx, int dy);

	virtual void changeEvent(QEvent* param1) override {
		if (vtbl->changeEvent == 0) {
			QAbstractItemView::changeEvent(param1);
			return;
		}

		QEvent* sigval1 = param1;

		vtbl->changeEvent(this, sigval1);

	}

	friend void QAbstractItemView_virtualbase_changeEvent(VirtualQAbstractItemView* self, QEvent* param1);

	virtual void initStyleOption(QStyleOptionFrame* option) const override {
		if (vtbl->initStyleOption == 0) {
			QAbstractItemView::initStyleOption(option);
			return;
		}

		QStyleOptionFrame* sigval1 = option;

		vtbl->initStyleOption(this, sigval1);

	}

	friend void QAbstractItemView_virtualbase_initStyleOption(const VirtualQAbstractItemView* self, QStyleOptionFrame* option);

	virtual int devType() const override {
		if (vtbl->devType == 0) {
			return QAbstractItemView::devType();
		}


		int callback_return_value = vtbl->devType(this);

		return static_cast<int>(callback_return_value);
	}

	friend int QAbstractItemView_virtualbase_devType(const VirtualQAbstractItemView* self);

	virtual void setVisible(bool visible) override {
		if (vtbl->setVisible == 0) {
			QAbstractItemView::setVisible(visible);
			return;
		}

		bool sigval1 = visible;

		vtbl->setVisible(this, sigval1);

	}

	friend void QAbstractItemView_virtualbase_setVisible(VirtualQAbstractItemView* self, bool visible);

	virtual int heightForWidth(int param1) const override {
		if (vtbl->heightForWidth == 0) {
			return QAbstractItemView::heightForWidth(param1);
		}

		int sigval1 = param1;

		int callback_return_value = vtbl->heightForWidth(this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QAbstractItemView_virtualbase_heightForWidth(const VirtualQAbstractItemView* self, int param1);

	virtual bool hasHeightForWidth() const override {
		if (vtbl->hasHeightForWidth == 0) {
			return QAbstractItemView::hasHeightForWidth();
		}


		bool callback_return_value = vtbl->hasHeightForWidth(this);

		return callback_return_value;
	}

	friend bool QAbstractItemView_virtualbase_hasHeightForWidth(const VirtualQAbstractItemView* self);

	virtual QPaintEngine* paintEngine() const override {
		if (vtbl->paintEngine == 0) {
			return QAbstractItemView::paintEngine();
		}


		QPaintEngine* callback_return_value = vtbl->paintEngine(this);

		return callback_return_value;
	}

	friend QPaintEngine* QAbstractItemView_virtualbase_paintEngine(const VirtualQAbstractItemView* self);

	virtual void keyReleaseEvent(QKeyEvent* event) override {
		if (vtbl->keyReleaseEvent == 0) {
			QAbstractItemView::keyReleaseEvent(event);
			return;
		}

		QKeyEvent* sigval1 = event;

		vtbl->keyReleaseEvent(this, sigval1);

	}

	friend void QAbstractItemView_virtualbase_keyReleaseEvent(VirtualQAbstractItemView* self, QKeyEvent* event);

	virtual void enterEvent(QEnterEvent* event) override {
		if (vtbl->enterEvent == 0) {
			QAbstractItemView::enterEvent(event);
			return;
		}

		QEnterEvent* sigval1 = event;

		vtbl->enterEvent(this, sigval1);

	}

	friend void QAbstractItemView_virtualbase_enterEvent(VirtualQAbstractItemView* self, QEnterEvent* event);

	virtual void leaveEvent(QEvent* event) override {
		if (vtbl->leaveEvent == 0) {
			QAbstractItemView::leaveEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->leaveEvent(this, sigval1);

	}

	friend void QAbstractItemView_virtualbase_leaveEvent(VirtualQAbstractItemView* self, QEvent* event);

	virtual void moveEvent(QMoveEvent* event) override {
		if (vtbl->moveEvent == 0) {
			QAbstractItemView::moveEvent(event);
			return;
		}

		QMoveEvent* sigval1 = event;

		vtbl->moveEvent(this, sigval1);

	}

	friend void QAbstractItemView_virtualbase_moveEvent(VirtualQAbstractItemView* self, QMoveEvent* event);

	virtual void closeEvent(QCloseEvent* event) override {
		if (vtbl->closeEvent == 0) {
			QAbstractItemView::closeEvent(event);
			return;
		}

		QCloseEvent* sigval1 = event;

		vtbl->closeEvent(this, sigval1);

	}

	friend void QAbstractItemView_virtualbase_closeEvent(VirtualQAbstractItemView* self, QCloseEvent* event);

	virtual void tabletEvent(QTabletEvent* event) override {
		if (vtbl->tabletEvent == 0) {
			QAbstractItemView::tabletEvent(event);
			return;
		}

		QTabletEvent* sigval1 = event;

		vtbl->tabletEvent(this, sigval1);

	}

	friend void QAbstractItemView_virtualbase_tabletEvent(VirtualQAbstractItemView* self, QTabletEvent* event);

	virtual void actionEvent(QActionEvent* event) override {
		if (vtbl->actionEvent == 0) {
			QAbstractItemView::actionEvent(event);
			return;
		}

		QActionEvent* sigval1 = event;

		vtbl->actionEvent(this, sigval1);

	}

	friend void QAbstractItemView_virtualbase_actionEvent(VirtualQAbstractItemView* self, QActionEvent* event);

	virtual void showEvent(QShowEvent* event) override {
		if (vtbl->showEvent == 0) {
			QAbstractItemView::showEvent(event);
			return;
		}

		QShowEvent* sigval1 = event;

		vtbl->showEvent(this, sigval1);

	}

	friend void QAbstractItemView_virtualbase_showEvent(VirtualQAbstractItemView* self, QShowEvent* event);

	virtual void hideEvent(QHideEvent* event) override {
		if (vtbl->hideEvent == 0) {
			QAbstractItemView::hideEvent(event);
			return;
		}

		QHideEvent* sigval1 = event;

		vtbl->hideEvent(this, sigval1);

	}

	friend void QAbstractItemView_virtualbase_hideEvent(VirtualQAbstractItemView* self, QHideEvent* event);

	virtual bool nativeEvent(const QByteArray& eventType, void* message, qintptr* result) override {
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
		qintptr* result_ret = result;
		intptr_t* sigval3 = (intptr_t*)(result_ret);

		bool callback_return_value = vtbl->nativeEvent(this, sigval1, sigval2, sigval3);

		return callback_return_value;
	}

	friend bool QAbstractItemView_virtualbase_nativeEvent(VirtualQAbstractItemView* self, struct miqt_string eventType, void* message, intptr_t* result);

	virtual int metric(QPaintDevice::PaintDeviceMetric param1) const override {
		if (vtbl->metric == 0) {
			return QAbstractItemView::metric(param1);
		}

		QPaintDevice::PaintDeviceMetric param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);

		int callback_return_value = vtbl->metric(this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QAbstractItemView_virtualbase_metric(const VirtualQAbstractItemView* self, int param1);

	virtual void initPainter(QPainter* painter) const override {
		if (vtbl->initPainter == 0) {
			QAbstractItemView::initPainter(painter);
			return;
		}

		QPainter* sigval1 = painter;

		vtbl->initPainter(this, sigval1);

	}

	friend void QAbstractItemView_virtualbase_initPainter(const VirtualQAbstractItemView* self, QPainter* painter);

	virtual QPaintDevice* redirected(QPoint* offset) const override {
		if (vtbl->redirected == 0) {
			return QAbstractItemView::redirected(offset);
		}

		QPoint* sigval1 = offset;

		QPaintDevice* callback_return_value = vtbl->redirected(this, sigval1);

		return callback_return_value;
	}

	friend QPaintDevice* QAbstractItemView_virtualbase_redirected(const VirtualQAbstractItemView* self, QPoint* offset);

	virtual QPainter* sharedPainter() const override {
		if (vtbl->sharedPainter == 0) {
			return QAbstractItemView::sharedPainter();
		}


		QPainter* callback_return_value = vtbl->sharedPainter(this);

		return callback_return_value;
	}

	friend QPainter* QAbstractItemView_virtualbase_sharedPainter(const VirtualQAbstractItemView* self);

	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QAbstractItemView::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(this, sigval1);

	}

	friend void QAbstractItemView_virtualbase_childEvent(VirtualQAbstractItemView* self, QChildEvent* event);

	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QAbstractItemView::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(this, sigval1);

	}

	friend void QAbstractItemView_virtualbase_customEvent(VirtualQAbstractItemView* self, QEvent* event);

	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QAbstractItemView::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(this, sigval1);

	}

	friend void QAbstractItemView_virtualbase_connectNotify(VirtualQAbstractItemView* self, QMetaMethod* signal);

	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QAbstractItemView::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(this, sigval1);

	}

	friend void QAbstractItemView_virtualbase_disconnectNotify(VirtualQAbstractItemView* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend int QAbstractItemView_protectedbase_state(const VirtualQAbstractItemView* self);
	friend void QAbstractItemView_protectedbase_setState(VirtualQAbstractItemView* self, int state);
	friend void QAbstractItemView_protectedbase_scheduleDelayedItemsLayout(VirtualQAbstractItemView* self);
	friend void QAbstractItemView_protectedbase_executeDelayedItemsLayout(VirtualQAbstractItemView* self);
	friend void QAbstractItemView_protectedbase_setDirtyRegion(VirtualQAbstractItemView* self, QRegion* region);
	friend void QAbstractItemView_protectedbase_scrollDirtyRegion(VirtualQAbstractItemView* self, int dx, int dy);
	friend QPoint* QAbstractItemView_protectedbase_dirtyRegionOffset(const VirtualQAbstractItemView* self);
	friend void QAbstractItemView_protectedbase_startAutoScroll(VirtualQAbstractItemView* self);
	friend void QAbstractItemView_protectedbase_stopAutoScroll(VirtualQAbstractItemView* self);
	friend void QAbstractItemView_protectedbase_doAutoScroll(VirtualQAbstractItemView* self);
	friend int QAbstractItemView_protectedbase_dropIndicatorPosition(const VirtualQAbstractItemView* self);
	friend void QAbstractItemView_protectedbase_setViewportMargins(VirtualQAbstractItemView* self, int left, int top, int right, int bottom);
	friend QMargins* QAbstractItemView_protectedbase_viewportMargins(const VirtualQAbstractItemView* self);
	friend void QAbstractItemView_protectedbase_drawFrame(VirtualQAbstractItemView* self, QPainter* param1);
	friend void QAbstractItemView_protectedbase_updateMicroFocus(VirtualQAbstractItemView* self);
	friend void QAbstractItemView_protectedbase_create(VirtualQAbstractItemView* self);
	friend void QAbstractItemView_protectedbase_destroy(VirtualQAbstractItemView* self);
	friend bool QAbstractItemView_protectedbase_focusNextChild(VirtualQAbstractItemView* self);
	friend bool QAbstractItemView_protectedbase_focusPreviousChild(VirtualQAbstractItemView* self);
	friend QObject* QAbstractItemView_protectedbase_sender(const VirtualQAbstractItemView* self);
	friend int QAbstractItemView_protectedbase_senderSignalIndex(const VirtualQAbstractItemView* self);
	friend int QAbstractItemView_protectedbase_receivers(const VirtualQAbstractItemView* self, const char* signal);
	friend bool QAbstractItemView_protectedbase_isSignalConnected(const VirtualQAbstractItemView* self, QMetaMethod* signal);
};

VirtualQAbstractItemView* QAbstractItemView_new(const QAbstractItemView_VTable* vtbl, void* vdata, QWidget* parent) {
	return new VirtualQAbstractItemView(vtbl, vdata, parent);
}

VirtualQAbstractItemView* QAbstractItemView_new2(const QAbstractItemView_VTable* vtbl, void* vdata) {
	return new VirtualQAbstractItemView(vtbl, vdata);
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

QAbstractItemDelegate* QAbstractItemView_itemDelegateForIndex(const QAbstractItemView* self, QModelIndex* index) {
	return self->itemDelegateForIndex(*index);
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

void QAbstractItemView_connect_pressed(VirtualQAbstractItemView* self, intptr_t slot, void (*callback)(intptr_t, QModelIndex*), void (*release)(intptr_t)) {
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

void QAbstractItemView_connect_clicked(VirtualQAbstractItemView* self, intptr_t slot, void (*callback)(intptr_t, QModelIndex*), void (*release)(intptr_t)) {
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

void QAbstractItemView_connect_doubleClicked(VirtualQAbstractItemView* self, intptr_t slot, void (*callback)(intptr_t, QModelIndex*), void (*release)(intptr_t)) {
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

void QAbstractItemView_connect_activated(VirtualQAbstractItemView* self, intptr_t slot, void (*callback)(intptr_t, QModelIndex*), void (*release)(intptr_t)) {
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

void QAbstractItemView_connect_entered(VirtualQAbstractItemView* self, intptr_t slot, void (*callback)(intptr_t, QModelIndex*), void (*release)(intptr_t)) {
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

void QAbstractItemView_connect_viewportEntered(VirtualQAbstractItemView* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
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

void QAbstractItemView_connect_iconSizeChanged(VirtualQAbstractItemView* self, intptr_t slot, void (*callback)(intptr_t, QSize*), void (*release)(intptr_t)) {
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

QMetaObject* QAbstractItemView_virtualbase_metaObject(const VirtualQAbstractItemView* self) {

	return (QMetaObject*) self->QAbstractItemView::metaObject();
}

void* QAbstractItemView_virtualbase_metacast(VirtualQAbstractItemView* self, const char* param1) {

	return self->QAbstractItemView::qt_metacast(param1);
}

int QAbstractItemView_virtualbase_metacall(VirtualQAbstractItemView* self, int param1, int param2, void** param3) {

	return self->QAbstractItemView::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

void QAbstractItemView_virtualbase_setModel(VirtualQAbstractItemView* self, QAbstractItemModel* model) {

	self->QAbstractItemView::setModel(model);
}

void QAbstractItemView_virtualbase_setSelectionModel(VirtualQAbstractItemView* self, QItemSelectionModel* selectionModel) {

	self->QAbstractItemView::setSelectionModel(selectionModel);
}

void QAbstractItemView_virtualbase_keyboardSearch(VirtualQAbstractItemView* self, struct miqt_string search) {
	QString search_QString = QString::fromUtf8(search.data, search.len);

	self->QAbstractItemView::keyboardSearch(search_QString);
}

int QAbstractItemView_virtualbase_sizeHintForRow(const VirtualQAbstractItemView* self, int row) {

	return self->QAbstractItemView::sizeHintForRow(static_cast<int>(row));
}

int QAbstractItemView_virtualbase_sizeHintForColumn(const VirtualQAbstractItemView* self, int column) {

	return self->QAbstractItemView::sizeHintForColumn(static_cast<int>(column));
}

QAbstractItemDelegate* QAbstractItemView_virtualbase_itemDelegateForIndex(const VirtualQAbstractItemView* self, QModelIndex* index) {

	return self->QAbstractItemView::itemDelegateForIndex(*index);
}

QVariant* QAbstractItemView_virtualbase_inputMethodQuery(const VirtualQAbstractItemView* self, int query) {

	return new QVariant(self->QAbstractItemView::inputMethodQuery(static_cast<Qt::InputMethodQuery>(query)));
}

void QAbstractItemView_virtualbase_reset(VirtualQAbstractItemView* self) {

	self->QAbstractItemView::reset();
}

void QAbstractItemView_virtualbase_setRootIndex(VirtualQAbstractItemView* self, QModelIndex* index) {

	self->QAbstractItemView::setRootIndex(*index);
}

void QAbstractItemView_virtualbase_doItemsLayout(VirtualQAbstractItemView* self) {

	self->QAbstractItemView::doItemsLayout();
}

void QAbstractItemView_virtualbase_selectAll(VirtualQAbstractItemView* self) {

	self->QAbstractItemView::selectAll();
}

void QAbstractItemView_virtualbase_dataChanged(VirtualQAbstractItemView* self, QModelIndex* topLeft, QModelIndex* bottomRight, struct miqt_array /* of int */  roles) {
	QList<int> roles_QList;
	roles_QList.reserve(roles.len);
	int* roles_arr = static_cast<int*>(roles.data);
	for(size_t i = 0; i < roles.len; ++i) {
		roles_QList.push_back(static_cast<int>(roles_arr[i]));
	}

	self->QAbstractItemView::dataChanged(*topLeft, *bottomRight, roles_QList);
}

void QAbstractItemView_virtualbase_rowsInserted(VirtualQAbstractItemView* self, QModelIndex* parent, int start, int end) {

	self->QAbstractItemView::rowsInserted(*parent, static_cast<int>(start), static_cast<int>(end));
}

void QAbstractItemView_virtualbase_rowsAboutToBeRemoved(VirtualQAbstractItemView* self, QModelIndex* parent, int start, int end) {

	self->QAbstractItemView::rowsAboutToBeRemoved(*parent, static_cast<int>(start), static_cast<int>(end));
}

void QAbstractItemView_virtualbase_selectionChanged(VirtualQAbstractItemView* self, QItemSelection* selected, QItemSelection* deselected) {

	self->QAbstractItemView::selectionChanged(*selected, *deselected);
}

void QAbstractItemView_virtualbase_currentChanged(VirtualQAbstractItemView* self, QModelIndex* current, QModelIndex* previous) {

	self->QAbstractItemView::currentChanged(*current, *previous);
}

void QAbstractItemView_virtualbase_updateEditorData(VirtualQAbstractItemView* self) {

	self->QAbstractItemView::updateEditorData();
}

void QAbstractItemView_virtualbase_updateEditorGeometries(VirtualQAbstractItemView* self) {

	self->QAbstractItemView::updateEditorGeometries();
}

void QAbstractItemView_virtualbase_updateGeometries(VirtualQAbstractItemView* self) {

	self->QAbstractItemView::updateGeometries();
}

void QAbstractItemView_virtualbase_verticalScrollbarAction(VirtualQAbstractItemView* self, int action) {

	self->QAbstractItemView::verticalScrollbarAction(static_cast<int>(action));
}

void QAbstractItemView_virtualbase_horizontalScrollbarAction(VirtualQAbstractItemView* self, int action) {

	self->QAbstractItemView::horizontalScrollbarAction(static_cast<int>(action));
}

void QAbstractItemView_virtualbase_verticalScrollbarValueChanged(VirtualQAbstractItemView* self, int value) {

	self->QAbstractItemView::verticalScrollbarValueChanged(static_cast<int>(value));
}

void QAbstractItemView_virtualbase_horizontalScrollbarValueChanged(VirtualQAbstractItemView* self, int value) {

	self->QAbstractItemView::horizontalScrollbarValueChanged(static_cast<int>(value));
}

void QAbstractItemView_virtualbase_closeEditor(VirtualQAbstractItemView* self, QWidget* editor, int hint) {

	self->QAbstractItemView::closeEditor(editor, static_cast<QAbstractItemDelegate::EndEditHint>(hint));
}

void QAbstractItemView_virtualbase_commitData(VirtualQAbstractItemView* self, QWidget* editor) {

	self->QAbstractItemView::commitData(editor);
}

void QAbstractItemView_virtualbase_editorDestroyed(VirtualQAbstractItemView* self, QObject* editor) {

	self->QAbstractItemView::editorDestroyed(editor);
}

struct miqt_array /* of QModelIndex* */  QAbstractItemView_virtualbase_selectedIndexes(const VirtualQAbstractItemView* self) {

	QModelIndexList _ret = self->QAbstractItemView::selectedIndexes();
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

bool QAbstractItemView_virtualbase_edit2(VirtualQAbstractItemView* self, QModelIndex* index, int trigger, QEvent* event) {

	return self->QAbstractItemView::edit(*index, static_cast<VirtualQAbstractItemView::EditTrigger>(trigger), event);
}

int QAbstractItemView_virtualbase_selectionCommand(const VirtualQAbstractItemView* self, QModelIndex* index, QEvent* event) {

	QItemSelectionModel::SelectionFlags _ret = self->QAbstractItemView::selectionCommand(*index, event);
	return static_cast<int>(_ret);
}

void QAbstractItemView_virtualbase_startDrag(VirtualQAbstractItemView* self, int supportedActions) {

	self->QAbstractItemView::startDrag(static_cast<Qt::DropActions>(supportedActions));
}

void QAbstractItemView_virtualbase_initViewItemOption(const VirtualQAbstractItemView* self, QStyleOptionViewItem* option) {

	self->QAbstractItemView::initViewItemOption(option);
}

bool QAbstractItemView_virtualbase_focusNextPrevChild(VirtualQAbstractItemView* self, bool next) {

	return self->QAbstractItemView::focusNextPrevChild(next);
}

bool QAbstractItemView_virtualbase_event(VirtualQAbstractItemView* self, QEvent* event) {

	return self->QAbstractItemView::event(event);
}

bool QAbstractItemView_virtualbase_viewportEvent(VirtualQAbstractItemView* self, QEvent* event) {

	return self->QAbstractItemView::viewportEvent(event);
}

void QAbstractItemView_virtualbase_mousePressEvent(VirtualQAbstractItemView* self, QMouseEvent* event) {

	self->QAbstractItemView::mousePressEvent(event);
}

void QAbstractItemView_virtualbase_mouseMoveEvent(VirtualQAbstractItemView* self, QMouseEvent* event) {

	self->QAbstractItemView::mouseMoveEvent(event);
}

void QAbstractItemView_virtualbase_mouseReleaseEvent(VirtualQAbstractItemView* self, QMouseEvent* event) {

	self->QAbstractItemView::mouseReleaseEvent(event);
}

void QAbstractItemView_virtualbase_mouseDoubleClickEvent(VirtualQAbstractItemView* self, QMouseEvent* event) {

	self->QAbstractItemView::mouseDoubleClickEvent(event);
}

void QAbstractItemView_virtualbase_dragEnterEvent(VirtualQAbstractItemView* self, QDragEnterEvent* event) {

	self->QAbstractItemView::dragEnterEvent(event);
}

void QAbstractItemView_virtualbase_dragMoveEvent(VirtualQAbstractItemView* self, QDragMoveEvent* event) {

	self->QAbstractItemView::dragMoveEvent(event);
}

void QAbstractItemView_virtualbase_dragLeaveEvent(VirtualQAbstractItemView* self, QDragLeaveEvent* event) {

	self->QAbstractItemView::dragLeaveEvent(event);
}

void QAbstractItemView_virtualbase_dropEvent(VirtualQAbstractItemView* self, QDropEvent* event) {

	self->QAbstractItemView::dropEvent(event);
}

void QAbstractItemView_virtualbase_focusInEvent(VirtualQAbstractItemView* self, QFocusEvent* event) {

	self->QAbstractItemView::focusInEvent(event);
}

void QAbstractItemView_virtualbase_focusOutEvent(VirtualQAbstractItemView* self, QFocusEvent* event) {

	self->QAbstractItemView::focusOutEvent(event);
}

void QAbstractItemView_virtualbase_keyPressEvent(VirtualQAbstractItemView* self, QKeyEvent* event) {

	self->QAbstractItemView::keyPressEvent(event);
}

void QAbstractItemView_virtualbase_resizeEvent(VirtualQAbstractItemView* self, QResizeEvent* event) {

	self->QAbstractItemView::resizeEvent(event);
}

void QAbstractItemView_virtualbase_timerEvent(VirtualQAbstractItemView* self, QTimerEvent* event) {

	self->QAbstractItemView::timerEvent(event);
}

void QAbstractItemView_virtualbase_inputMethodEvent(VirtualQAbstractItemView* self, QInputMethodEvent* event) {

	self->QAbstractItemView::inputMethodEvent(event);
}

bool QAbstractItemView_virtualbase_eventFilter(VirtualQAbstractItemView* self, QObject* object, QEvent* event) {

	return self->QAbstractItemView::eventFilter(object, event);
}

QSize* QAbstractItemView_virtualbase_viewportSizeHint(const VirtualQAbstractItemView* self) {

	return new QSize(self->QAbstractItemView::viewportSizeHint());
}

QSize* QAbstractItemView_virtualbase_minimumSizeHint(const VirtualQAbstractItemView* self) {

	return new QSize(self->QAbstractItemView::minimumSizeHint());
}

QSize* QAbstractItemView_virtualbase_sizeHint(const VirtualQAbstractItemView* self) {

	return new QSize(self->QAbstractItemView::sizeHint());
}

void QAbstractItemView_virtualbase_setupViewport(VirtualQAbstractItemView* self, QWidget* viewport) {

	self->QAbstractItemView::setupViewport(viewport);
}

void QAbstractItemView_virtualbase_paintEvent(VirtualQAbstractItemView* self, QPaintEvent* param1) {

	self->QAbstractItemView::paintEvent(param1);
}

void QAbstractItemView_virtualbase_wheelEvent(VirtualQAbstractItemView* self, QWheelEvent* param1) {

	self->QAbstractItemView::wheelEvent(param1);
}

void QAbstractItemView_virtualbase_contextMenuEvent(VirtualQAbstractItemView* self, QContextMenuEvent* param1) {

	self->QAbstractItemView::contextMenuEvent(param1);
}

void QAbstractItemView_virtualbase_scrollContentsBy(VirtualQAbstractItemView* self, int dx, int dy) {

	self->QAbstractItemView::scrollContentsBy(static_cast<int>(dx), static_cast<int>(dy));
}

void QAbstractItemView_virtualbase_changeEvent(VirtualQAbstractItemView* self, QEvent* param1) {

	self->QAbstractItemView::changeEvent(param1);
}

void QAbstractItemView_virtualbase_initStyleOption(const VirtualQAbstractItemView* self, QStyleOptionFrame* option) {

	self->QAbstractItemView::initStyleOption(option);
}

int QAbstractItemView_virtualbase_devType(const VirtualQAbstractItemView* self) {

	return self->QAbstractItemView::devType();
}

void QAbstractItemView_virtualbase_setVisible(VirtualQAbstractItemView* self, bool visible) {

	self->QAbstractItemView::setVisible(visible);
}

int QAbstractItemView_virtualbase_heightForWidth(const VirtualQAbstractItemView* self, int param1) {

	return self->QAbstractItemView::heightForWidth(static_cast<int>(param1));
}

bool QAbstractItemView_virtualbase_hasHeightForWidth(const VirtualQAbstractItemView* self) {

	return self->QAbstractItemView::hasHeightForWidth();
}

QPaintEngine* QAbstractItemView_virtualbase_paintEngine(const VirtualQAbstractItemView* self) {

	return self->QAbstractItemView::paintEngine();
}

void QAbstractItemView_virtualbase_keyReleaseEvent(VirtualQAbstractItemView* self, QKeyEvent* event) {

	self->QAbstractItemView::keyReleaseEvent(event);
}

void QAbstractItemView_virtualbase_enterEvent(VirtualQAbstractItemView* self, QEnterEvent* event) {

	self->QAbstractItemView::enterEvent(event);
}

void QAbstractItemView_virtualbase_leaveEvent(VirtualQAbstractItemView* self, QEvent* event) {

	self->QAbstractItemView::leaveEvent(event);
}

void QAbstractItemView_virtualbase_moveEvent(VirtualQAbstractItemView* self, QMoveEvent* event) {

	self->QAbstractItemView::moveEvent(event);
}

void QAbstractItemView_virtualbase_closeEvent(VirtualQAbstractItemView* self, QCloseEvent* event) {

	self->QAbstractItemView::closeEvent(event);
}

void QAbstractItemView_virtualbase_tabletEvent(VirtualQAbstractItemView* self, QTabletEvent* event) {

	self->QAbstractItemView::tabletEvent(event);
}

void QAbstractItemView_virtualbase_actionEvent(VirtualQAbstractItemView* self, QActionEvent* event) {

	self->QAbstractItemView::actionEvent(event);
}

void QAbstractItemView_virtualbase_showEvent(VirtualQAbstractItemView* self, QShowEvent* event) {

	self->QAbstractItemView::showEvent(event);
}

void QAbstractItemView_virtualbase_hideEvent(VirtualQAbstractItemView* self, QHideEvent* event) {

	self->QAbstractItemView::hideEvent(event);
}

bool QAbstractItemView_virtualbase_nativeEvent(VirtualQAbstractItemView* self, struct miqt_string eventType, void* message, intptr_t* result) {
	QByteArray eventType_QByteArray(eventType.data, eventType.len);

	return self->QAbstractItemView::nativeEvent(eventType_QByteArray, message, (qintptr*)(result));
}

int QAbstractItemView_virtualbase_metric(const VirtualQAbstractItemView* self, int param1) {

	return self->QAbstractItemView::metric(static_cast<VirtualQAbstractItemView::PaintDeviceMetric>(param1));
}

void QAbstractItemView_virtualbase_initPainter(const VirtualQAbstractItemView* self, QPainter* painter) {

	self->QAbstractItemView::initPainter(painter);
}

QPaintDevice* QAbstractItemView_virtualbase_redirected(const VirtualQAbstractItemView* self, QPoint* offset) {

	return self->QAbstractItemView::redirected(offset);
}

QPainter* QAbstractItemView_virtualbase_sharedPainter(const VirtualQAbstractItemView* self) {

	return self->QAbstractItemView::sharedPainter();
}

void QAbstractItemView_virtualbase_childEvent(VirtualQAbstractItemView* self, QChildEvent* event) {

	self->QAbstractItemView::childEvent(event);
}

void QAbstractItemView_virtualbase_customEvent(VirtualQAbstractItemView* self, QEvent* event) {

	self->QAbstractItemView::customEvent(event);
}

void QAbstractItemView_virtualbase_connectNotify(VirtualQAbstractItemView* self, QMetaMethod* signal) {

	self->QAbstractItemView::connectNotify(*signal);
}

void QAbstractItemView_virtualbase_disconnectNotify(VirtualQAbstractItemView* self, QMetaMethod* signal) {

	self->QAbstractItemView::disconnectNotify(*signal);
}

const QMetaObject* QAbstractItemView_staticMetaObject() { return &QAbstractItemView::staticMetaObject; }

const QAbstractItemView_VTable* QAbstractItemView_vtbl(const VirtualQAbstractItemView* self) { return self->vtbl; }
void* QAbstractItemView_vdata(const VirtualQAbstractItemView* self) { return self->vdata; }
void QAbstractItemView_setVdata(VirtualQAbstractItemView* self, void* vdata) { self->vdata = vdata; }

int QAbstractItemView_protectedbase_state(const VirtualQAbstractItemView* self) {
	VirtualQAbstractItemView::State _ret = self->state();
	return static_cast<int>(_ret);
}

void QAbstractItemView_protectedbase_setState(VirtualQAbstractItemView* self, int state) {
	self->setState(static_cast<VirtualQAbstractItemView::State>(state));
}

void QAbstractItemView_protectedbase_scheduleDelayedItemsLayout(VirtualQAbstractItemView* self) {
	self->scheduleDelayedItemsLayout();
}

void QAbstractItemView_protectedbase_executeDelayedItemsLayout(VirtualQAbstractItemView* self) {
	self->executeDelayedItemsLayout();
}

void QAbstractItemView_protectedbase_setDirtyRegion(VirtualQAbstractItemView* self, QRegion* region) {
	self->setDirtyRegion(*region);
}

void QAbstractItemView_protectedbase_scrollDirtyRegion(VirtualQAbstractItemView* self, int dx, int dy) {
	self->scrollDirtyRegion(static_cast<int>(dx), static_cast<int>(dy));
}

QPoint* QAbstractItemView_protectedbase_dirtyRegionOffset(const VirtualQAbstractItemView* self) {
	return new QPoint(self->dirtyRegionOffset());
}

void QAbstractItemView_protectedbase_startAutoScroll(VirtualQAbstractItemView* self) {
	self->startAutoScroll();
}

void QAbstractItemView_protectedbase_stopAutoScroll(VirtualQAbstractItemView* self) {
	self->stopAutoScroll();
}

void QAbstractItemView_protectedbase_doAutoScroll(VirtualQAbstractItemView* self) {
	self->doAutoScroll();
}

int QAbstractItemView_protectedbase_dropIndicatorPosition(const VirtualQAbstractItemView* self) {
	VirtualQAbstractItemView::DropIndicatorPosition _ret = self->dropIndicatorPosition();
	return static_cast<int>(_ret);
}

void QAbstractItemView_protectedbase_setViewportMargins(VirtualQAbstractItemView* self, int left, int top, int right, int bottom) {
	self->setViewportMargins(static_cast<int>(left), static_cast<int>(top), static_cast<int>(right), static_cast<int>(bottom));
}

QMargins* QAbstractItemView_protectedbase_viewportMargins(const VirtualQAbstractItemView* self) {
	return new QMargins(self->viewportMargins());
}

void QAbstractItemView_protectedbase_drawFrame(VirtualQAbstractItemView* self, QPainter* param1) {
	self->drawFrame(param1);
}

void QAbstractItemView_protectedbase_updateMicroFocus(VirtualQAbstractItemView* self) {
	self->updateMicroFocus();
}

void QAbstractItemView_protectedbase_create(VirtualQAbstractItemView* self) {
	self->create();
}

void QAbstractItemView_protectedbase_destroy(VirtualQAbstractItemView* self) {
	self->destroy();
}

bool QAbstractItemView_protectedbase_focusNextChild(VirtualQAbstractItemView* self) {
	return self->focusNextChild();
}

bool QAbstractItemView_protectedbase_focusPreviousChild(VirtualQAbstractItemView* self) {
	return self->focusPreviousChild();
}

QObject* QAbstractItemView_protectedbase_sender(const VirtualQAbstractItemView* self) {
	return self->sender();
}

int QAbstractItemView_protectedbase_senderSignalIndex(const VirtualQAbstractItemView* self) {
	return self->senderSignalIndex();
}

int QAbstractItemView_protectedbase_receivers(const VirtualQAbstractItemView* self, const char* signal) {
	return self->receivers(signal);
}

bool QAbstractItemView_protectedbase_isSignalConnected(const VirtualQAbstractItemView* self, QMetaMethod* signal) {
	return self->isSignalConnected(*signal);
}

void QAbstractItemView_delete(QAbstractItemView* self) {
	delete self;
}

