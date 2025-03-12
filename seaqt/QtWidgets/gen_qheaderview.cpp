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
#include <QStyleOptionHeader>
#include <QStyleOptionViewItem>
#include <QTabletEvent>
#include <QTimerEvent>
#include <QVariant>
#include <QWheelEvent>
#include <QWidget>
#include <qheaderview.h>
#include "gen_qheaderview.h"
class VirtualQHeaderView final : public QHeaderView {
	const QHeaderView_VTable* vtbl;
	void* vdata;
public:
	friend const QHeaderView_VTable* QHeaderView_vtbl(const VirtualQHeaderView* self);
	friend void* QHeaderView_vdata(const VirtualQHeaderView* self);
	friend void QHeaderView_setVdata(VirtualQHeaderView* self, void* vdata);

	VirtualQHeaderView(const QHeaderView_VTable* vtbl, void* vdata, Qt::Orientation orientation): QHeaderView(orientation), vtbl(vtbl), vdata(vdata) {}
	VirtualQHeaderView(const QHeaderView_VTable* vtbl, void* vdata, Qt::Orientation orientation, QWidget* parent): QHeaderView(orientation, parent), vtbl(vtbl), vdata(vdata) {}

	virtual ~VirtualQHeaderView() override { if(vtbl->destructor) vtbl->destructor(this); }

	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QHeaderView::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(this);

		return callback_return_value;
	}

	friend QMetaObject* QHeaderView_virtualbase_metaObject(const VirtualQHeaderView* self);

	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QHeaderView::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(this, sigval1);

		return callback_return_value;
	}

	friend void* QHeaderView_virtualbase_metacast(VirtualQHeaderView* self, const char* param1);

	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QHeaderView::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QHeaderView_virtualbase_metacall(VirtualQHeaderView* self, int param1, int param2, void** param3);

	virtual void setModel(QAbstractItemModel* model) override {
		if (vtbl->setModel == 0) {
			QHeaderView::setModel(model);
			return;
		}

		QAbstractItemModel* sigval1 = model;

		vtbl->setModel(this, sigval1);

	}

	friend void QHeaderView_virtualbase_setModel(VirtualQHeaderView* self, QAbstractItemModel* model);

	virtual QSize sizeHint() const override {
		if (vtbl->sizeHint == 0) {
			return QHeaderView::sizeHint();
		}


		QSize* callback_return_value = vtbl->sizeHint(this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QSize* QHeaderView_virtualbase_sizeHint(const VirtualQHeaderView* self);

	virtual void setVisible(bool v) override {
		if (vtbl->setVisible == 0) {
			QHeaderView::setVisible(v);
			return;
		}

		bool sigval1 = v;

		vtbl->setVisible(this, sigval1);

	}

	friend void QHeaderView_virtualbase_setVisible(VirtualQHeaderView* self, bool v);

	virtual void doItemsLayout() override {
		if (vtbl->doItemsLayout == 0) {
			QHeaderView::doItemsLayout();
			return;
		}


		vtbl->doItemsLayout(this);

	}

	friend void QHeaderView_virtualbase_doItemsLayout(VirtualQHeaderView* self);

	virtual void reset() override {
		if (vtbl->reset == 0) {
			QHeaderView::reset();
			return;
		}


		vtbl->reset(this);

	}

	friend void QHeaderView_virtualbase_reset(VirtualQHeaderView* self);

	virtual void currentChanged(const QModelIndex& current, const QModelIndex& old) override {
		if (vtbl->currentChanged == 0) {
			QHeaderView::currentChanged(current, old);
			return;
		}

		const QModelIndex& current_ret = current;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&current_ret);
		const QModelIndex& old_ret = old;
		// Cast returned reference into pointer
		QModelIndex* sigval2 = const_cast<QModelIndex*>(&old_ret);

		vtbl->currentChanged(this, sigval1, sigval2);

	}

	friend void QHeaderView_virtualbase_currentChanged(VirtualQHeaderView* self, QModelIndex* current, QModelIndex* old);

	virtual bool event(QEvent* e) override {
		if (vtbl->event == 0) {
			return QHeaderView::event(e);
		}

		QEvent* sigval1 = e;

		bool callback_return_value = vtbl->event(this, sigval1);

		return callback_return_value;
	}

	friend bool QHeaderView_virtualbase_event(VirtualQHeaderView* self, QEvent* e);

	virtual void paintEvent(QPaintEvent* e) override {
		if (vtbl->paintEvent == 0) {
			QHeaderView::paintEvent(e);
			return;
		}

		QPaintEvent* sigval1 = e;

		vtbl->paintEvent(this, sigval1);

	}

	friend void QHeaderView_virtualbase_paintEvent(VirtualQHeaderView* self, QPaintEvent* e);

	virtual void mousePressEvent(QMouseEvent* e) override {
		if (vtbl->mousePressEvent == 0) {
			QHeaderView::mousePressEvent(e);
			return;
		}

		QMouseEvent* sigval1 = e;

		vtbl->mousePressEvent(this, sigval1);

	}

	friend void QHeaderView_virtualbase_mousePressEvent(VirtualQHeaderView* self, QMouseEvent* e);

	virtual void mouseMoveEvent(QMouseEvent* e) override {
		if (vtbl->mouseMoveEvent == 0) {
			QHeaderView::mouseMoveEvent(e);
			return;
		}

		QMouseEvent* sigval1 = e;

		vtbl->mouseMoveEvent(this, sigval1);

	}

	friend void QHeaderView_virtualbase_mouseMoveEvent(VirtualQHeaderView* self, QMouseEvent* e);

	virtual void mouseReleaseEvent(QMouseEvent* e) override {
		if (vtbl->mouseReleaseEvent == 0) {
			QHeaderView::mouseReleaseEvent(e);
			return;
		}

		QMouseEvent* sigval1 = e;

		vtbl->mouseReleaseEvent(this, sigval1);

	}

	friend void QHeaderView_virtualbase_mouseReleaseEvent(VirtualQHeaderView* self, QMouseEvent* e);

	virtual void mouseDoubleClickEvent(QMouseEvent* e) override {
		if (vtbl->mouseDoubleClickEvent == 0) {
			QHeaderView::mouseDoubleClickEvent(e);
			return;
		}

		QMouseEvent* sigval1 = e;

		vtbl->mouseDoubleClickEvent(this, sigval1);

	}

	friend void QHeaderView_virtualbase_mouseDoubleClickEvent(VirtualQHeaderView* self, QMouseEvent* e);

	virtual bool viewportEvent(QEvent* e) override {
		if (vtbl->viewportEvent == 0) {
			return QHeaderView::viewportEvent(e);
		}

		QEvent* sigval1 = e;

		bool callback_return_value = vtbl->viewportEvent(this, sigval1);

		return callback_return_value;
	}

	friend bool QHeaderView_virtualbase_viewportEvent(VirtualQHeaderView* self, QEvent* e);

	virtual void paintSection(QPainter* painter, const QRect& rect, int logicalIndex) const override {
		if (vtbl->paintSection == 0) {
			QHeaderView::paintSection(painter, rect, logicalIndex);
			return;
		}

		QPainter* sigval1 = painter;
		const QRect& rect_ret = rect;
		// Cast returned reference into pointer
		QRect* sigval2 = const_cast<QRect*>(&rect_ret);
		int sigval3 = logicalIndex;

		vtbl->paintSection(this, sigval1, sigval2, sigval3);

	}

	friend void QHeaderView_virtualbase_paintSection(const VirtualQHeaderView* self, QPainter* painter, QRect* rect, int logicalIndex);

	virtual QSize sectionSizeFromContents(int logicalIndex) const override {
		if (vtbl->sectionSizeFromContents == 0) {
			return QHeaderView::sectionSizeFromContents(logicalIndex);
		}

		int sigval1 = logicalIndex;

		QSize* callback_return_value = vtbl->sectionSizeFromContents(this, sigval1);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QSize* QHeaderView_virtualbase_sectionSizeFromContents(const VirtualQHeaderView* self, int logicalIndex);

	virtual int horizontalOffset() const override {
		if (vtbl->horizontalOffset == 0) {
			return QHeaderView::horizontalOffset();
		}


		int callback_return_value = vtbl->horizontalOffset(this);

		return static_cast<int>(callback_return_value);
	}

	friend int QHeaderView_virtualbase_horizontalOffset(const VirtualQHeaderView* self);

	virtual int verticalOffset() const override {
		if (vtbl->verticalOffset == 0) {
			return QHeaderView::verticalOffset();
		}


		int callback_return_value = vtbl->verticalOffset(this);

		return static_cast<int>(callback_return_value);
	}

	friend int QHeaderView_virtualbase_verticalOffset(const VirtualQHeaderView* self);

	virtual void updateGeometries() override {
		if (vtbl->updateGeometries == 0) {
			QHeaderView::updateGeometries();
			return;
		}


		vtbl->updateGeometries(this);

	}

	friend void QHeaderView_virtualbase_updateGeometries(VirtualQHeaderView* self);

	virtual void scrollContentsBy(int dx, int dy) override {
		if (vtbl->scrollContentsBy == 0) {
			QHeaderView::scrollContentsBy(dx, dy);
			return;
		}

		int sigval1 = dx;
		int sigval2 = dy;

		vtbl->scrollContentsBy(this, sigval1, sigval2);

	}

	friend void QHeaderView_virtualbase_scrollContentsBy(VirtualQHeaderView* self, int dx, int dy);

	virtual void dataChanged(const QModelIndex& topLeft, const QModelIndex& bottomRight, const QVector<int>& roles) override {
		if (vtbl->dataChanged == 0) {
			QHeaderView::dataChanged(topLeft, bottomRight, roles);
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

	friend void QHeaderView_virtualbase_dataChanged(VirtualQHeaderView* self, QModelIndex* topLeft, QModelIndex* bottomRight, struct miqt_array /* of int */  roles);

	virtual void rowsInserted(const QModelIndex& parent, int start, int end) override {
		if (vtbl->rowsInserted == 0) {
			QHeaderView::rowsInserted(parent, start, end);
			return;
		}

		const QModelIndex& parent_ret = parent;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&parent_ret);
		int sigval2 = start;
		int sigval3 = end;

		vtbl->rowsInserted(this, sigval1, sigval2, sigval3);

	}

	friend void QHeaderView_virtualbase_rowsInserted(VirtualQHeaderView* self, QModelIndex* parent, int start, int end);

	virtual QRect visualRect(const QModelIndex& index) const override {
		if (vtbl->visualRect == 0) {
			return QHeaderView::visualRect(index);
		}

		const QModelIndex& index_ret = index;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&index_ret);

		QRect* callback_return_value = vtbl->visualRect(this, sigval1);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QRect* QHeaderView_virtualbase_visualRect(const VirtualQHeaderView* self, QModelIndex* index);

	virtual void scrollTo(const QModelIndex& index, QAbstractItemView::ScrollHint hint) override {
		if (vtbl->scrollTo == 0) {
			QHeaderView::scrollTo(index, hint);
			return;
		}

		const QModelIndex& index_ret = index;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&index_ret);
		QAbstractItemView::ScrollHint hint_ret = hint;
		int sigval2 = static_cast<int>(hint_ret);

		vtbl->scrollTo(this, sigval1, sigval2);

	}

	friend void QHeaderView_virtualbase_scrollTo(VirtualQHeaderView* self, QModelIndex* index, int hint);

	virtual QModelIndex indexAt(const QPoint& p) const override {
		if (vtbl->indexAt == 0) {
			return QHeaderView::indexAt(p);
		}

		const QPoint& p_ret = p;
		// Cast returned reference into pointer
		QPoint* sigval1 = const_cast<QPoint*>(&p_ret);

		QModelIndex* callback_return_value = vtbl->indexAt(this, sigval1);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QModelIndex* QHeaderView_virtualbase_indexAt(const VirtualQHeaderView* self, QPoint* p);

	virtual bool isIndexHidden(const QModelIndex& index) const override {
		if (vtbl->isIndexHidden == 0) {
			return QHeaderView::isIndexHidden(index);
		}

		const QModelIndex& index_ret = index;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&index_ret);

		bool callback_return_value = vtbl->isIndexHidden(this, sigval1);

		return callback_return_value;
	}

	friend bool QHeaderView_virtualbase_isIndexHidden(const VirtualQHeaderView* self, QModelIndex* index);

	virtual QModelIndex moveCursor(QAbstractItemView::CursorAction param1, Qt::KeyboardModifiers param2) override {
		if (vtbl->moveCursor == 0) {
			return QHeaderView::moveCursor(param1, param2);
		}

		QAbstractItemView::CursorAction param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		Qt::KeyboardModifiers param2_ret = param2;
		int sigval2 = static_cast<int>(param2_ret);

		QModelIndex* callback_return_value = vtbl->moveCursor(this, sigval1, sigval2);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QModelIndex* QHeaderView_virtualbase_moveCursor(VirtualQHeaderView* self, int param1, int param2);

	virtual void setSelection(const QRect& rect, QItemSelectionModel::SelectionFlags flags) override {
		if (vtbl->setSelection == 0) {
			QHeaderView::setSelection(rect, flags);
			return;
		}

		const QRect& rect_ret = rect;
		// Cast returned reference into pointer
		QRect* sigval1 = const_cast<QRect*>(&rect_ret);
		QItemSelectionModel::SelectionFlags flags_ret = flags;
		int sigval2 = static_cast<int>(flags_ret);

		vtbl->setSelection(this, sigval1, sigval2);

	}

	friend void QHeaderView_virtualbase_setSelection(VirtualQHeaderView* self, QRect* rect, int flags);

	virtual QRegion visualRegionForSelection(const QItemSelection& selection) const override {
		if (vtbl->visualRegionForSelection == 0) {
			return QHeaderView::visualRegionForSelection(selection);
		}

		const QItemSelection& selection_ret = selection;
		// Cast returned reference into pointer
		QItemSelection* sigval1 = const_cast<QItemSelection*>(&selection_ret);

		QRegion* callback_return_value = vtbl->visualRegionForSelection(this, sigval1);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QRegion* QHeaderView_virtualbase_visualRegionForSelection(const VirtualQHeaderView* self, QItemSelection* selection);

	virtual void setSelectionModel(QItemSelectionModel* selectionModel) override {
		if (vtbl->setSelectionModel == 0) {
			QHeaderView::setSelectionModel(selectionModel);
			return;
		}

		QItemSelectionModel* sigval1 = selectionModel;

		vtbl->setSelectionModel(this, sigval1);

	}

	friend void QHeaderView_virtualbase_setSelectionModel(VirtualQHeaderView* self, QItemSelectionModel* selectionModel);

	virtual void keyboardSearch(const QString& search) override {
		if (vtbl->keyboardSearch == 0) {
			QHeaderView::keyboardSearch(search);
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

	friend void QHeaderView_virtualbase_keyboardSearch(VirtualQHeaderView* self, struct miqt_string search);

	virtual int sizeHintForRow(int row) const override {
		if (vtbl->sizeHintForRow == 0) {
			return QHeaderView::sizeHintForRow(row);
		}

		int sigval1 = row;

		int callback_return_value = vtbl->sizeHintForRow(this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QHeaderView_virtualbase_sizeHintForRow(const VirtualQHeaderView* self, int row);

	virtual int sizeHintForColumn(int column) const override {
		if (vtbl->sizeHintForColumn == 0) {
			return QHeaderView::sizeHintForColumn(column);
		}

		int sigval1 = column;

		int callback_return_value = vtbl->sizeHintForColumn(this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QHeaderView_virtualbase_sizeHintForColumn(const VirtualQHeaderView* self, int column);

	virtual QVariant inputMethodQuery(Qt::InputMethodQuery query) const override {
		if (vtbl->inputMethodQuery == 0) {
			return QHeaderView::inputMethodQuery(query);
		}

		Qt::InputMethodQuery query_ret = query;
		int sigval1 = static_cast<int>(query_ret);

		QVariant* callback_return_value = vtbl->inputMethodQuery(this, sigval1);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QVariant* QHeaderView_virtualbase_inputMethodQuery(const VirtualQHeaderView* self, int query);

	virtual void setRootIndex(const QModelIndex& index) override {
		if (vtbl->setRootIndex == 0) {
			QHeaderView::setRootIndex(index);
			return;
		}

		const QModelIndex& index_ret = index;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&index_ret);

		vtbl->setRootIndex(this, sigval1);

	}

	friend void QHeaderView_virtualbase_setRootIndex(VirtualQHeaderView* self, QModelIndex* index);

	virtual void selectAll() override {
		if (vtbl->selectAll == 0) {
			QHeaderView::selectAll();
			return;
		}


		vtbl->selectAll(this);

	}

	friend void QHeaderView_virtualbase_selectAll(VirtualQHeaderView* self);

	virtual void rowsAboutToBeRemoved(const QModelIndex& parent, int start, int end) override {
		if (vtbl->rowsAboutToBeRemoved == 0) {
			QHeaderView::rowsAboutToBeRemoved(parent, start, end);
			return;
		}

		const QModelIndex& parent_ret = parent;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&parent_ret);
		int sigval2 = start;
		int sigval3 = end;

		vtbl->rowsAboutToBeRemoved(this, sigval1, sigval2, sigval3);

	}

	friend void QHeaderView_virtualbase_rowsAboutToBeRemoved(VirtualQHeaderView* self, QModelIndex* parent, int start, int end);

	virtual void selectionChanged(const QItemSelection& selected, const QItemSelection& deselected) override {
		if (vtbl->selectionChanged == 0) {
			QHeaderView::selectionChanged(selected, deselected);
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

	friend void QHeaderView_virtualbase_selectionChanged(VirtualQHeaderView* self, QItemSelection* selected, QItemSelection* deselected);

	virtual void updateEditorData() override {
		if (vtbl->updateEditorData == 0) {
			QHeaderView::updateEditorData();
			return;
		}


		vtbl->updateEditorData(this);

	}

	friend void QHeaderView_virtualbase_updateEditorData(VirtualQHeaderView* self);

	virtual void updateEditorGeometries() override {
		if (vtbl->updateEditorGeometries == 0) {
			QHeaderView::updateEditorGeometries();
			return;
		}


		vtbl->updateEditorGeometries(this);

	}

	friend void QHeaderView_virtualbase_updateEditorGeometries(VirtualQHeaderView* self);

	virtual void verticalScrollbarAction(int action) override {
		if (vtbl->verticalScrollbarAction == 0) {
			QHeaderView::verticalScrollbarAction(action);
			return;
		}

		int sigval1 = action;

		vtbl->verticalScrollbarAction(this, sigval1);

	}

	friend void QHeaderView_virtualbase_verticalScrollbarAction(VirtualQHeaderView* self, int action);

	virtual void horizontalScrollbarAction(int action) override {
		if (vtbl->horizontalScrollbarAction == 0) {
			QHeaderView::horizontalScrollbarAction(action);
			return;
		}

		int sigval1 = action;

		vtbl->horizontalScrollbarAction(this, sigval1);

	}

	friend void QHeaderView_virtualbase_horizontalScrollbarAction(VirtualQHeaderView* self, int action);

	virtual void verticalScrollbarValueChanged(int value) override {
		if (vtbl->verticalScrollbarValueChanged == 0) {
			QHeaderView::verticalScrollbarValueChanged(value);
			return;
		}

		int sigval1 = value;

		vtbl->verticalScrollbarValueChanged(this, sigval1);

	}

	friend void QHeaderView_virtualbase_verticalScrollbarValueChanged(VirtualQHeaderView* self, int value);

	virtual void horizontalScrollbarValueChanged(int value) override {
		if (vtbl->horizontalScrollbarValueChanged == 0) {
			QHeaderView::horizontalScrollbarValueChanged(value);
			return;
		}

		int sigval1 = value;

		vtbl->horizontalScrollbarValueChanged(this, sigval1);

	}

	friend void QHeaderView_virtualbase_horizontalScrollbarValueChanged(VirtualQHeaderView* self, int value);

	virtual void closeEditor(QWidget* editor, QAbstractItemDelegate::EndEditHint hint) override {
		if (vtbl->closeEditor == 0) {
			QHeaderView::closeEditor(editor, hint);
			return;
		}

		QWidget* sigval1 = editor;
		QAbstractItemDelegate::EndEditHint hint_ret = hint;
		int sigval2 = static_cast<int>(hint_ret);

		vtbl->closeEditor(this, sigval1, sigval2);

	}

	friend void QHeaderView_virtualbase_closeEditor(VirtualQHeaderView* self, QWidget* editor, int hint);

	virtual void commitData(QWidget* editor) override {
		if (vtbl->commitData == 0) {
			QHeaderView::commitData(editor);
			return;
		}

		QWidget* sigval1 = editor;

		vtbl->commitData(this, sigval1);

	}

	friend void QHeaderView_virtualbase_commitData(VirtualQHeaderView* self, QWidget* editor);

	virtual void editorDestroyed(QObject* editor) override {
		if (vtbl->editorDestroyed == 0) {
			QHeaderView::editorDestroyed(editor);
			return;
		}

		QObject* sigval1 = editor;

		vtbl->editorDestroyed(this, sigval1);

	}

	friend void QHeaderView_virtualbase_editorDestroyed(VirtualQHeaderView* self, QObject* editor);

	virtual QModelIndexList selectedIndexes() const override {
		if (vtbl->selectedIndexes == 0) {
			return QHeaderView::selectedIndexes();
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

	friend struct miqt_array /* of QModelIndex* */  QHeaderView_virtualbase_selectedIndexes(const VirtualQHeaderView* self);

	virtual bool edit(const QModelIndex& index, QAbstractItemView::EditTrigger trigger, QEvent* event) override {
		if (vtbl->edit2 == 0) {
			return QHeaderView::edit(index, trigger, event);
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

	friend bool QHeaderView_virtualbase_edit2(VirtualQHeaderView* self, QModelIndex* index, int trigger, QEvent* event);

	virtual QItemSelectionModel::SelectionFlags selectionCommand(const QModelIndex& index, const QEvent* event) const override {
		if (vtbl->selectionCommand == 0) {
			return QHeaderView::selectionCommand(index, event);
		}

		const QModelIndex& index_ret = index;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&index_ret);
		QEvent* sigval2 = (QEvent*) event;

		int callback_return_value = vtbl->selectionCommand(this, sigval1, sigval2);

		return static_cast<QItemSelectionModel::SelectionFlags>(callback_return_value);
	}

	friend int QHeaderView_virtualbase_selectionCommand(const VirtualQHeaderView* self, QModelIndex* index, QEvent* event);

	virtual void startDrag(Qt::DropActions supportedActions) override {
		if (vtbl->startDrag == 0) {
			QHeaderView::startDrag(supportedActions);
			return;
		}

		Qt::DropActions supportedActions_ret = supportedActions;
		int sigval1 = static_cast<int>(supportedActions_ret);

		vtbl->startDrag(this, sigval1);

	}

	friend void QHeaderView_virtualbase_startDrag(VirtualQHeaderView* self, int supportedActions);

	virtual QStyleOptionViewItem viewOptions() const override {
		if (vtbl->viewOptions == 0) {
			return QHeaderView::viewOptions();
		}


		QStyleOptionViewItem* callback_return_value = vtbl->viewOptions(this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QStyleOptionViewItem* QHeaderView_virtualbase_viewOptions(const VirtualQHeaderView* self);

	virtual bool focusNextPrevChild(bool next) override {
		if (vtbl->focusNextPrevChild == 0) {
			return QHeaderView::focusNextPrevChild(next);
		}

		bool sigval1 = next;

		bool callback_return_value = vtbl->focusNextPrevChild(this, sigval1);

		return callback_return_value;
	}

	friend bool QHeaderView_virtualbase_focusNextPrevChild(VirtualQHeaderView* self, bool next);

	virtual void dragEnterEvent(QDragEnterEvent* event) override {
		if (vtbl->dragEnterEvent == 0) {
			QHeaderView::dragEnterEvent(event);
			return;
		}

		QDragEnterEvent* sigval1 = event;

		vtbl->dragEnterEvent(this, sigval1);

	}

	friend void QHeaderView_virtualbase_dragEnterEvent(VirtualQHeaderView* self, QDragEnterEvent* event);

	virtual void dragMoveEvent(QDragMoveEvent* event) override {
		if (vtbl->dragMoveEvent == 0) {
			QHeaderView::dragMoveEvent(event);
			return;
		}

		QDragMoveEvent* sigval1 = event;

		vtbl->dragMoveEvent(this, sigval1);

	}

	friend void QHeaderView_virtualbase_dragMoveEvent(VirtualQHeaderView* self, QDragMoveEvent* event);

	virtual void dragLeaveEvent(QDragLeaveEvent* event) override {
		if (vtbl->dragLeaveEvent == 0) {
			QHeaderView::dragLeaveEvent(event);
			return;
		}

		QDragLeaveEvent* sigval1 = event;

		vtbl->dragLeaveEvent(this, sigval1);

	}

	friend void QHeaderView_virtualbase_dragLeaveEvent(VirtualQHeaderView* self, QDragLeaveEvent* event);

	virtual void dropEvent(QDropEvent* event) override {
		if (vtbl->dropEvent == 0) {
			QHeaderView::dropEvent(event);
			return;
		}

		QDropEvent* sigval1 = event;

		vtbl->dropEvent(this, sigval1);

	}

	friend void QHeaderView_virtualbase_dropEvent(VirtualQHeaderView* self, QDropEvent* event);

	virtual void focusInEvent(QFocusEvent* event) override {
		if (vtbl->focusInEvent == 0) {
			QHeaderView::focusInEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;

		vtbl->focusInEvent(this, sigval1);

	}

	friend void QHeaderView_virtualbase_focusInEvent(VirtualQHeaderView* self, QFocusEvent* event);

	virtual void focusOutEvent(QFocusEvent* event) override {
		if (vtbl->focusOutEvent == 0) {
			QHeaderView::focusOutEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;

		vtbl->focusOutEvent(this, sigval1);

	}

	friend void QHeaderView_virtualbase_focusOutEvent(VirtualQHeaderView* self, QFocusEvent* event);

	virtual void keyPressEvent(QKeyEvent* event) override {
		if (vtbl->keyPressEvent == 0) {
			QHeaderView::keyPressEvent(event);
			return;
		}

		QKeyEvent* sigval1 = event;

		vtbl->keyPressEvent(this, sigval1);

	}

	friend void QHeaderView_virtualbase_keyPressEvent(VirtualQHeaderView* self, QKeyEvent* event);

	virtual void resizeEvent(QResizeEvent* event) override {
		if (vtbl->resizeEvent == 0) {
			QHeaderView::resizeEvent(event);
			return;
		}

		QResizeEvent* sigval1 = event;

		vtbl->resizeEvent(this, sigval1);

	}

	friend void QHeaderView_virtualbase_resizeEvent(VirtualQHeaderView* self, QResizeEvent* event);

	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QHeaderView::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(this, sigval1);

	}

	friend void QHeaderView_virtualbase_timerEvent(VirtualQHeaderView* self, QTimerEvent* event);

	virtual void inputMethodEvent(QInputMethodEvent* event) override {
		if (vtbl->inputMethodEvent == 0) {
			QHeaderView::inputMethodEvent(event);
			return;
		}

		QInputMethodEvent* sigval1 = event;

		vtbl->inputMethodEvent(this, sigval1);

	}

	friend void QHeaderView_virtualbase_inputMethodEvent(VirtualQHeaderView* self, QInputMethodEvent* event);

	virtual bool eventFilter(QObject* object, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QHeaderView::eventFilter(object, event);
		}

		QObject* sigval1 = object;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QHeaderView_virtualbase_eventFilter(VirtualQHeaderView* self, QObject* object, QEvent* event);

	virtual QSize viewportSizeHint() const override {
		if (vtbl->viewportSizeHint == 0) {
			return QHeaderView::viewportSizeHint();
		}


		QSize* callback_return_value = vtbl->viewportSizeHint(this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QSize* QHeaderView_virtualbase_viewportSizeHint(const VirtualQHeaderView* self);

	virtual QSize minimumSizeHint() const override {
		if (vtbl->minimumSizeHint == 0) {
			return QHeaderView::minimumSizeHint();
		}


		QSize* callback_return_value = vtbl->minimumSizeHint(this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QSize* QHeaderView_virtualbase_minimumSizeHint(const VirtualQHeaderView* self);

	virtual void setupViewport(QWidget* viewport) override {
		if (vtbl->setupViewport == 0) {
			QHeaderView::setupViewport(viewport);
			return;
		}

		QWidget* sigval1 = viewport;

		vtbl->setupViewport(this, sigval1);

	}

	friend void QHeaderView_virtualbase_setupViewport(VirtualQHeaderView* self, QWidget* viewport);

	virtual void wheelEvent(QWheelEvent* param1) override {
		if (vtbl->wheelEvent == 0) {
			QHeaderView::wheelEvent(param1);
			return;
		}

		QWheelEvent* sigval1 = param1;

		vtbl->wheelEvent(this, sigval1);

	}

	friend void QHeaderView_virtualbase_wheelEvent(VirtualQHeaderView* self, QWheelEvent* param1);

	virtual void contextMenuEvent(QContextMenuEvent* param1) override {
		if (vtbl->contextMenuEvent == 0) {
			QHeaderView::contextMenuEvent(param1);
			return;
		}

		QContextMenuEvent* sigval1 = param1;

		vtbl->contextMenuEvent(this, sigval1);

	}

	friend void QHeaderView_virtualbase_contextMenuEvent(VirtualQHeaderView* self, QContextMenuEvent* param1);

	virtual void changeEvent(QEvent* param1) override {
		if (vtbl->changeEvent == 0) {
			QHeaderView::changeEvent(param1);
			return;
		}

		QEvent* sigval1 = param1;

		vtbl->changeEvent(this, sigval1);

	}

	friend void QHeaderView_virtualbase_changeEvent(VirtualQHeaderView* self, QEvent* param1);

	virtual int devType() const override {
		if (vtbl->devType == 0) {
			return QHeaderView::devType();
		}


		int callback_return_value = vtbl->devType(this);

		return static_cast<int>(callback_return_value);
	}

	friend int QHeaderView_virtualbase_devType(const VirtualQHeaderView* self);

	virtual int heightForWidth(int param1) const override {
		if (vtbl->heightForWidth == 0) {
			return QHeaderView::heightForWidth(param1);
		}

		int sigval1 = param1;

		int callback_return_value = vtbl->heightForWidth(this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QHeaderView_virtualbase_heightForWidth(const VirtualQHeaderView* self, int param1);

	virtual bool hasHeightForWidth() const override {
		if (vtbl->hasHeightForWidth == 0) {
			return QHeaderView::hasHeightForWidth();
		}


		bool callback_return_value = vtbl->hasHeightForWidth(this);

		return callback_return_value;
	}

	friend bool QHeaderView_virtualbase_hasHeightForWidth(const VirtualQHeaderView* self);

	virtual QPaintEngine* paintEngine() const override {
		if (vtbl->paintEngine == 0) {
			return QHeaderView::paintEngine();
		}


		QPaintEngine* callback_return_value = vtbl->paintEngine(this);

		return callback_return_value;
	}

	friend QPaintEngine* QHeaderView_virtualbase_paintEngine(const VirtualQHeaderView* self);

	virtual void keyReleaseEvent(QKeyEvent* event) override {
		if (vtbl->keyReleaseEvent == 0) {
			QHeaderView::keyReleaseEvent(event);
			return;
		}

		QKeyEvent* sigval1 = event;

		vtbl->keyReleaseEvent(this, sigval1);

	}

	friend void QHeaderView_virtualbase_keyReleaseEvent(VirtualQHeaderView* self, QKeyEvent* event);

	virtual void enterEvent(QEvent* event) override {
		if (vtbl->enterEvent == 0) {
			QHeaderView::enterEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->enterEvent(this, sigval1);

	}

	friend void QHeaderView_virtualbase_enterEvent(VirtualQHeaderView* self, QEvent* event);

	virtual void leaveEvent(QEvent* event) override {
		if (vtbl->leaveEvent == 0) {
			QHeaderView::leaveEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->leaveEvent(this, sigval1);

	}

	friend void QHeaderView_virtualbase_leaveEvent(VirtualQHeaderView* self, QEvent* event);

	virtual void moveEvent(QMoveEvent* event) override {
		if (vtbl->moveEvent == 0) {
			QHeaderView::moveEvent(event);
			return;
		}

		QMoveEvent* sigval1 = event;

		vtbl->moveEvent(this, sigval1);

	}

	friend void QHeaderView_virtualbase_moveEvent(VirtualQHeaderView* self, QMoveEvent* event);

	virtual void closeEvent(QCloseEvent* event) override {
		if (vtbl->closeEvent == 0) {
			QHeaderView::closeEvent(event);
			return;
		}

		QCloseEvent* sigval1 = event;

		vtbl->closeEvent(this, sigval1);

	}

	friend void QHeaderView_virtualbase_closeEvent(VirtualQHeaderView* self, QCloseEvent* event);

	virtual void tabletEvent(QTabletEvent* event) override {
		if (vtbl->tabletEvent == 0) {
			QHeaderView::tabletEvent(event);
			return;
		}

		QTabletEvent* sigval1 = event;

		vtbl->tabletEvent(this, sigval1);

	}

	friend void QHeaderView_virtualbase_tabletEvent(VirtualQHeaderView* self, QTabletEvent* event);

	virtual void actionEvent(QActionEvent* event) override {
		if (vtbl->actionEvent == 0) {
			QHeaderView::actionEvent(event);
			return;
		}

		QActionEvent* sigval1 = event;

		vtbl->actionEvent(this, sigval1);

	}

	friend void QHeaderView_virtualbase_actionEvent(VirtualQHeaderView* self, QActionEvent* event);

	virtual void showEvent(QShowEvent* event) override {
		if (vtbl->showEvent == 0) {
			QHeaderView::showEvent(event);
			return;
		}

		QShowEvent* sigval1 = event;

		vtbl->showEvent(this, sigval1);

	}

	friend void QHeaderView_virtualbase_showEvent(VirtualQHeaderView* self, QShowEvent* event);

	virtual void hideEvent(QHideEvent* event) override {
		if (vtbl->hideEvent == 0) {
			QHeaderView::hideEvent(event);
			return;
		}

		QHideEvent* sigval1 = event;

		vtbl->hideEvent(this, sigval1);

	}

	friend void QHeaderView_virtualbase_hideEvent(VirtualQHeaderView* self, QHideEvent* event);

	virtual bool nativeEvent(const QByteArray& eventType, void* message, long* result) override {
		if (vtbl->nativeEvent == 0) {
			return QHeaderView::nativeEvent(eventType, message, result);
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

	friend bool QHeaderView_virtualbase_nativeEvent(VirtualQHeaderView* self, struct miqt_string eventType, void* message, long* result);

	virtual int metric(QPaintDevice::PaintDeviceMetric param1) const override {
		if (vtbl->metric == 0) {
			return QHeaderView::metric(param1);
		}

		QPaintDevice::PaintDeviceMetric param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);

		int callback_return_value = vtbl->metric(this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QHeaderView_virtualbase_metric(const VirtualQHeaderView* self, int param1);

	virtual void initPainter(QPainter* painter) const override {
		if (vtbl->initPainter == 0) {
			QHeaderView::initPainter(painter);
			return;
		}

		QPainter* sigval1 = painter;

		vtbl->initPainter(this, sigval1);

	}

	friend void QHeaderView_virtualbase_initPainter(const VirtualQHeaderView* self, QPainter* painter);

	virtual QPaintDevice* redirected(QPoint* offset) const override {
		if (vtbl->redirected == 0) {
			return QHeaderView::redirected(offset);
		}

		QPoint* sigval1 = offset;

		QPaintDevice* callback_return_value = vtbl->redirected(this, sigval1);

		return callback_return_value;
	}

	friend QPaintDevice* QHeaderView_virtualbase_redirected(const VirtualQHeaderView* self, QPoint* offset);

	virtual QPainter* sharedPainter() const override {
		if (vtbl->sharedPainter == 0) {
			return QHeaderView::sharedPainter();
		}


		QPainter* callback_return_value = vtbl->sharedPainter(this);

		return callback_return_value;
	}

	friend QPainter* QHeaderView_virtualbase_sharedPainter(const VirtualQHeaderView* self);

	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QHeaderView::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(this, sigval1);

	}

	friend void QHeaderView_virtualbase_childEvent(VirtualQHeaderView* self, QChildEvent* event);

	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QHeaderView::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(this, sigval1);

	}

	friend void QHeaderView_virtualbase_customEvent(VirtualQHeaderView* self, QEvent* event);

	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QHeaderView::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(this, sigval1);

	}

	friend void QHeaderView_virtualbase_connectNotify(VirtualQHeaderView* self, QMetaMethod* signal);

	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QHeaderView::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(this, sigval1);

	}

	friend void QHeaderView_virtualbase_disconnectNotify(VirtualQHeaderView* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend void QHeaderView_protectedbase_updateSection(VirtualQHeaderView* self, int logicalIndex);
	friend void QHeaderView_protectedbase_resizeSections2(VirtualQHeaderView* self);
	friend void QHeaderView_protectedbase_sectionsInserted(VirtualQHeaderView* self, QModelIndex* parent, int logicalFirst, int logicalLast);
	friend void QHeaderView_protectedbase_sectionsAboutToBeRemoved(VirtualQHeaderView* self, QModelIndex* parent, int logicalFirst, int logicalLast);
	friend void QHeaderView_protectedbase_initialize(VirtualQHeaderView* self);
	friend void QHeaderView_protectedbase_initializeSections(VirtualQHeaderView* self);
	friend void QHeaderView_protectedbase_initializeSections2(VirtualQHeaderView* self, int start, int end);
	friend void QHeaderView_protectedbase_initStyleOption(const VirtualQHeaderView* self, QStyleOptionHeader* option);
	friend void QHeaderView_protectedbase_setHorizontalStepsPerItem(VirtualQHeaderView* self, int steps);
	friend int QHeaderView_protectedbase_horizontalStepsPerItem(const VirtualQHeaderView* self);
	friend void QHeaderView_protectedbase_setVerticalStepsPerItem(VirtualQHeaderView* self, int steps);
	friend int QHeaderView_protectedbase_verticalStepsPerItem(const VirtualQHeaderView* self);
	friend int QHeaderView_protectedbase_state(const VirtualQHeaderView* self);
	friend void QHeaderView_protectedbase_setState(VirtualQHeaderView* self, int state);
	friend void QHeaderView_protectedbase_scheduleDelayedItemsLayout(VirtualQHeaderView* self);
	friend void QHeaderView_protectedbase_executeDelayedItemsLayout(VirtualQHeaderView* self);
	friend void QHeaderView_protectedbase_setDirtyRegion(VirtualQHeaderView* self, QRegion* region);
	friend void QHeaderView_protectedbase_scrollDirtyRegion(VirtualQHeaderView* self, int dx, int dy);
	friend QPoint* QHeaderView_protectedbase_dirtyRegionOffset(const VirtualQHeaderView* self);
	friend void QHeaderView_protectedbase_startAutoScroll(VirtualQHeaderView* self);
	friend void QHeaderView_protectedbase_stopAutoScroll(VirtualQHeaderView* self);
	friend void QHeaderView_protectedbase_doAutoScroll(VirtualQHeaderView* self);
	friend int QHeaderView_protectedbase_dropIndicatorPosition(const VirtualQHeaderView* self);
	friend void QHeaderView_protectedbase_setViewportMargins(VirtualQHeaderView* self, int left, int top, int right, int bottom);
	friend QMargins* QHeaderView_protectedbase_viewportMargins(const VirtualQHeaderView* self);
	friend void QHeaderView_protectedbase_drawFrame(VirtualQHeaderView* self, QPainter* param1);
	friend void QHeaderView_protectedbase_updateMicroFocus(VirtualQHeaderView* self);
	friend void QHeaderView_protectedbase_create(VirtualQHeaderView* self);
	friend void QHeaderView_protectedbase_destroy(VirtualQHeaderView* self);
	friend bool QHeaderView_protectedbase_focusNextChild(VirtualQHeaderView* self);
	friend bool QHeaderView_protectedbase_focusPreviousChild(VirtualQHeaderView* self);
	friend QObject* QHeaderView_protectedbase_sender(const VirtualQHeaderView* self);
	friend int QHeaderView_protectedbase_senderSignalIndex(const VirtualQHeaderView* self);
	friend int QHeaderView_protectedbase_receivers(const VirtualQHeaderView* self, const char* signal);
	friend bool QHeaderView_protectedbase_isSignalConnected(const VirtualQHeaderView* self, QMetaMethod* signal);
};

VirtualQHeaderView* QHeaderView_new(const QHeaderView_VTable* vtbl, void* vdata, int orientation) {
	return new VirtualQHeaderView(vtbl, vdata, static_cast<Qt::Orientation>(orientation));
}

VirtualQHeaderView* QHeaderView_new2(const QHeaderView_VTable* vtbl, void* vdata, int orientation, QWidget* parent) {
	return new VirtualQHeaderView(vtbl, vdata, static_cast<Qt::Orientation>(orientation), parent);
}

void QHeaderView_virtbase(QHeaderView* src, QAbstractItemView** outptr_QAbstractItemView) {
	*outptr_QAbstractItemView = static_cast<QAbstractItemView*>(src);
}

QMetaObject* QHeaderView_metaObject(const QHeaderView* self) {
	return (QMetaObject*) self->metaObject();
}

void* QHeaderView_metacast(QHeaderView* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QHeaderView_metacall(QHeaderView* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QHeaderView_tr(const char* s) {
	QString _ret = QHeaderView::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QHeaderView_trUtf8(const char* s) {
	QString _ret = QHeaderView::trUtf8(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QHeaderView_setModel(QHeaderView* self, QAbstractItemModel* model) {
	self->setModel(model);
}

int QHeaderView_orientation(const QHeaderView* self) {
	Qt::Orientation _ret = self->orientation();
	return static_cast<int>(_ret);
}

int QHeaderView_offset(const QHeaderView* self) {
	return self->offset();
}

int QHeaderView_length(const QHeaderView* self) {
	return self->length();
}

QSize* QHeaderView_sizeHint(const QHeaderView* self) {
	return new QSize(self->sizeHint());
}

void QHeaderView_setVisible(QHeaderView* self, bool v) {
	self->setVisible(v);
}

int QHeaderView_sectionSizeHint(const QHeaderView* self, int logicalIndex) {
	return self->sectionSizeHint(static_cast<int>(logicalIndex));
}

int QHeaderView_visualIndexAt(const QHeaderView* self, int position) {
	return self->visualIndexAt(static_cast<int>(position));
}

int QHeaderView_logicalIndexAt(const QHeaderView* self, int position) {
	return self->logicalIndexAt(static_cast<int>(position));
}

int QHeaderView_logicalIndexAt2(const QHeaderView* self, int x, int y) {
	return self->logicalIndexAt(static_cast<int>(x), static_cast<int>(y));
}

int QHeaderView_logicalIndexAtWithPos(const QHeaderView* self, QPoint* pos) {
	return self->logicalIndexAt(*pos);
}

int QHeaderView_sectionSize(const QHeaderView* self, int logicalIndex) {
	return self->sectionSize(static_cast<int>(logicalIndex));
}

int QHeaderView_sectionPosition(const QHeaderView* self, int logicalIndex) {
	return self->sectionPosition(static_cast<int>(logicalIndex));
}

int QHeaderView_sectionViewportPosition(const QHeaderView* self, int logicalIndex) {
	return self->sectionViewportPosition(static_cast<int>(logicalIndex));
}

void QHeaderView_moveSection(QHeaderView* self, int from, int to) {
	self->moveSection(static_cast<int>(from), static_cast<int>(to));
}

void QHeaderView_swapSections(QHeaderView* self, int first, int second) {
	self->swapSections(static_cast<int>(first), static_cast<int>(second));
}

void QHeaderView_resizeSection(QHeaderView* self, int logicalIndex, int size) {
	self->resizeSection(static_cast<int>(logicalIndex), static_cast<int>(size));
}

void QHeaderView_resizeSections(QHeaderView* self, int mode) {
	self->resizeSections(static_cast<QHeaderView::ResizeMode>(mode));
}

bool QHeaderView_isSectionHidden(const QHeaderView* self, int logicalIndex) {
	return self->isSectionHidden(static_cast<int>(logicalIndex));
}

void QHeaderView_setSectionHidden(QHeaderView* self, int logicalIndex, bool hide) {
	self->setSectionHidden(static_cast<int>(logicalIndex), hide);
}

int QHeaderView_hiddenSectionCount(const QHeaderView* self) {
	return self->hiddenSectionCount();
}

void QHeaderView_hideSection(QHeaderView* self, int logicalIndex) {
	self->hideSection(static_cast<int>(logicalIndex));
}

void QHeaderView_showSection(QHeaderView* self, int logicalIndex) {
	self->showSection(static_cast<int>(logicalIndex));
}

int QHeaderView_count(const QHeaderView* self) {
	return self->count();
}

int QHeaderView_visualIndex(const QHeaderView* self, int logicalIndex) {
	return self->visualIndex(static_cast<int>(logicalIndex));
}

int QHeaderView_logicalIndex(const QHeaderView* self, int visualIndex) {
	return self->logicalIndex(static_cast<int>(visualIndex));
}

void QHeaderView_setSectionsMovable(QHeaderView* self, bool movable) {
	self->setSectionsMovable(movable);
}

bool QHeaderView_sectionsMovable(const QHeaderView* self) {
	return self->sectionsMovable();
}

void QHeaderView_setFirstSectionMovable(QHeaderView* self, bool movable) {
	self->setFirstSectionMovable(movable);
}

bool QHeaderView_isFirstSectionMovable(const QHeaderView* self) {
	return self->isFirstSectionMovable();
}

void QHeaderView_setSectionsClickable(QHeaderView* self, bool clickable) {
	self->setSectionsClickable(clickable);
}

bool QHeaderView_sectionsClickable(const QHeaderView* self) {
	return self->sectionsClickable();
}

void QHeaderView_setHighlightSections(QHeaderView* self, bool highlight) {
	self->setHighlightSections(highlight);
}

bool QHeaderView_highlightSections(const QHeaderView* self) {
	return self->highlightSections();
}

int QHeaderView_sectionResizeMode(const QHeaderView* self, int logicalIndex) {
	QHeaderView::ResizeMode _ret = self->sectionResizeMode(static_cast<int>(logicalIndex));
	return static_cast<int>(_ret);
}

void QHeaderView_setSectionResizeMode(QHeaderView* self, int mode) {
	self->setSectionResizeMode(static_cast<QHeaderView::ResizeMode>(mode));
}

void QHeaderView_setSectionResizeMode2(QHeaderView* self, int logicalIndex, int mode) {
	self->setSectionResizeMode(static_cast<int>(logicalIndex), static_cast<QHeaderView::ResizeMode>(mode));
}

void QHeaderView_setResizeContentsPrecision(QHeaderView* self, int precision) {
	self->setResizeContentsPrecision(static_cast<int>(precision));
}

int QHeaderView_resizeContentsPrecision(const QHeaderView* self) {
	return self->resizeContentsPrecision();
}

int QHeaderView_stretchSectionCount(const QHeaderView* self) {
	return self->stretchSectionCount();
}

void QHeaderView_setSortIndicatorShown(QHeaderView* self, bool show) {
	self->setSortIndicatorShown(show);
}

bool QHeaderView_isSortIndicatorShown(const QHeaderView* self) {
	return self->isSortIndicatorShown();
}

void QHeaderView_setSortIndicator(QHeaderView* self, int logicalIndex, int order) {
	self->setSortIndicator(static_cast<int>(logicalIndex), static_cast<Qt::SortOrder>(order));
}

int QHeaderView_sortIndicatorSection(const QHeaderView* self) {
	return self->sortIndicatorSection();
}

int QHeaderView_sortIndicatorOrder(const QHeaderView* self) {
	Qt::SortOrder _ret = self->sortIndicatorOrder();
	return static_cast<int>(_ret);
}

bool QHeaderView_stretchLastSection(const QHeaderView* self) {
	return self->stretchLastSection();
}

void QHeaderView_setStretchLastSection(QHeaderView* self, bool stretch) {
	self->setStretchLastSection(stretch);
}

bool QHeaderView_cascadingSectionResizes(const QHeaderView* self) {
	return self->cascadingSectionResizes();
}

void QHeaderView_setCascadingSectionResizes(QHeaderView* self, bool enable) {
	self->setCascadingSectionResizes(enable);
}

int QHeaderView_defaultSectionSize(const QHeaderView* self) {
	return self->defaultSectionSize();
}

void QHeaderView_setDefaultSectionSize(QHeaderView* self, int size) {
	self->setDefaultSectionSize(static_cast<int>(size));
}

void QHeaderView_resetDefaultSectionSize(QHeaderView* self) {
	self->resetDefaultSectionSize();
}

int QHeaderView_minimumSectionSize(const QHeaderView* self) {
	return self->minimumSectionSize();
}

void QHeaderView_setMinimumSectionSize(QHeaderView* self, int size) {
	self->setMinimumSectionSize(static_cast<int>(size));
}

int QHeaderView_maximumSectionSize(const QHeaderView* self) {
	return self->maximumSectionSize();
}

void QHeaderView_setMaximumSectionSize(QHeaderView* self, int size) {
	self->setMaximumSectionSize(static_cast<int>(size));
}

int QHeaderView_defaultAlignment(const QHeaderView* self) {
	Qt::Alignment _ret = self->defaultAlignment();
	return static_cast<int>(_ret);
}

void QHeaderView_setDefaultAlignment(QHeaderView* self, int alignment) {
	self->setDefaultAlignment(static_cast<Qt::Alignment>(alignment));
}

void QHeaderView_doItemsLayout(QHeaderView* self) {
	self->doItemsLayout();
}

bool QHeaderView_sectionsMoved(const QHeaderView* self) {
	return self->sectionsMoved();
}

bool QHeaderView_sectionsHidden(const QHeaderView* self) {
	return self->sectionsHidden();
}

struct miqt_string QHeaderView_saveState(const QHeaderView* self) {
	QByteArray _qb = self->saveState();
	struct miqt_string _ms;
	_ms.len = _qb.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _qb.data(), _ms.len);
	return _ms;
}

bool QHeaderView_restoreState(QHeaderView* self, struct miqt_string state) {
	QByteArray state_QByteArray(state.data, state.len);
	return self->restoreState(state_QByteArray);
}

void QHeaderView_reset(QHeaderView* self) {
	self->reset();
}

void QHeaderView_setOffset(QHeaderView* self, int offset) {
	self->setOffset(static_cast<int>(offset));
}

void QHeaderView_setOffsetToSectionPosition(QHeaderView* self, int visualIndex) {
	self->setOffsetToSectionPosition(static_cast<int>(visualIndex));
}

void QHeaderView_setOffsetToLastSection(QHeaderView* self) {
	self->setOffsetToLastSection();
}

void QHeaderView_headerDataChanged(QHeaderView* self, int orientation, int logicalFirst, int logicalLast) {
	self->headerDataChanged(static_cast<Qt::Orientation>(orientation), static_cast<int>(logicalFirst), static_cast<int>(logicalLast));
}

void QHeaderView_sectionMoved(QHeaderView* self, int logicalIndex, int oldVisualIndex, int newVisualIndex) {
	self->sectionMoved(static_cast<int>(logicalIndex), static_cast<int>(oldVisualIndex), static_cast<int>(newVisualIndex));
}

void QHeaderView_connect_sectionMoved(VirtualQHeaderView* self, intptr_t slot, void (*callback)(intptr_t, int, int, int), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, int, int, int), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, int, int, int);
		void operator()(int logicalIndex, int oldVisualIndex, int newVisualIndex) {
			int sigval1 = logicalIndex;
			int sigval2 = oldVisualIndex;
			int sigval3 = newVisualIndex;
			callback(slot, sigval1, sigval2, sigval3);
		}
	};
	VirtualQHeaderView::connect(self, static_cast<void (QHeaderView::*)(int, int, int)>(&QHeaderView::sectionMoved), self, local_caller{slot, callback, release});
}

void QHeaderView_sectionResized(QHeaderView* self, int logicalIndex, int oldSize, int newSize) {
	self->sectionResized(static_cast<int>(logicalIndex), static_cast<int>(oldSize), static_cast<int>(newSize));
}

void QHeaderView_connect_sectionResized(VirtualQHeaderView* self, intptr_t slot, void (*callback)(intptr_t, int, int, int), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, int, int, int), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, int, int, int);
		void operator()(int logicalIndex, int oldSize, int newSize) {
			int sigval1 = logicalIndex;
			int sigval2 = oldSize;
			int sigval3 = newSize;
			callback(slot, sigval1, sigval2, sigval3);
		}
	};
	VirtualQHeaderView::connect(self, static_cast<void (QHeaderView::*)(int, int, int)>(&QHeaderView::sectionResized), self, local_caller{slot, callback, release});
}

void QHeaderView_sectionPressed(QHeaderView* self, int logicalIndex) {
	self->sectionPressed(static_cast<int>(logicalIndex));
}

void QHeaderView_connect_sectionPressed(VirtualQHeaderView* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, int);
		void operator()(int logicalIndex) {
			int sigval1 = logicalIndex;
			callback(slot, sigval1);
		}
	};
	VirtualQHeaderView::connect(self, static_cast<void (QHeaderView::*)(int)>(&QHeaderView::sectionPressed), self, local_caller{slot, callback, release});
}

void QHeaderView_sectionClicked(QHeaderView* self, int logicalIndex) {
	self->sectionClicked(static_cast<int>(logicalIndex));
}

void QHeaderView_connect_sectionClicked(VirtualQHeaderView* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, int);
		void operator()(int logicalIndex) {
			int sigval1 = logicalIndex;
			callback(slot, sigval1);
		}
	};
	VirtualQHeaderView::connect(self, static_cast<void (QHeaderView::*)(int)>(&QHeaderView::sectionClicked), self, local_caller{slot, callback, release});
}

void QHeaderView_sectionEntered(QHeaderView* self, int logicalIndex) {
	self->sectionEntered(static_cast<int>(logicalIndex));
}

void QHeaderView_connect_sectionEntered(VirtualQHeaderView* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, int);
		void operator()(int logicalIndex) {
			int sigval1 = logicalIndex;
			callback(slot, sigval1);
		}
	};
	VirtualQHeaderView::connect(self, static_cast<void (QHeaderView::*)(int)>(&QHeaderView::sectionEntered), self, local_caller{slot, callback, release});
}

void QHeaderView_sectionDoubleClicked(QHeaderView* self, int logicalIndex) {
	self->sectionDoubleClicked(static_cast<int>(logicalIndex));
}

void QHeaderView_connect_sectionDoubleClicked(VirtualQHeaderView* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, int);
		void operator()(int logicalIndex) {
			int sigval1 = logicalIndex;
			callback(slot, sigval1);
		}
	};
	VirtualQHeaderView::connect(self, static_cast<void (QHeaderView::*)(int)>(&QHeaderView::sectionDoubleClicked), self, local_caller{slot, callback, release});
}

void QHeaderView_sectionCountChanged(QHeaderView* self, int oldCount, int newCount) {
	self->sectionCountChanged(static_cast<int>(oldCount), static_cast<int>(newCount));
}

void QHeaderView_connect_sectionCountChanged(VirtualQHeaderView* self, intptr_t slot, void (*callback)(intptr_t, int, int), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, int, int), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, int, int);
		void operator()(int oldCount, int newCount) {
			int sigval1 = oldCount;
			int sigval2 = newCount;
			callback(slot, sigval1, sigval2);
		}
	};
	VirtualQHeaderView::connect(self, static_cast<void (QHeaderView::*)(int, int)>(&QHeaderView::sectionCountChanged), self, local_caller{slot, callback, release});
}

void QHeaderView_sectionHandleDoubleClicked(QHeaderView* self, int logicalIndex) {
	self->sectionHandleDoubleClicked(static_cast<int>(logicalIndex));
}

void QHeaderView_connect_sectionHandleDoubleClicked(VirtualQHeaderView* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, int);
		void operator()(int logicalIndex) {
			int sigval1 = logicalIndex;
			callback(slot, sigval1);
		}
	};
	VirtualQHeaderView::connect(self, static_cast<void (QHeaderView::*)(int)>(&QHeaderView::sectionHandleDoubleClicked), self, local_caller{slot, callback, release});
}

void QHeaderView_geometriesChanged(QHeaderView* self) {
	self->geometriesChanged();
}

void QHeaderView_connect_geometriesChanged(VirtualQHeaderView* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t);
		void operator()() {
			callback(slot);
		}
	};
	VirtualQHeaderView::connect(self, static_cast<void (QHeaderView::*)()>(&QHeaderView::geometriesChanged), self, local_caller{slot, callback, release});
}

void QHeaderView_sortIndicatorChanged(QHeaderView* self, int logicalIndex, int order) {
	self->sortIndicatorChanged(static_cast<int>(logicalIndex), static_cast<Qt::SortOrder>(order));
}

void QHeaderView_connect_sortIndicatorChanged(VirtualQHeaderView* self, intptr_t slot, void (*callback)(intptr_t, int, int), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, int, int), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, int, int);
		void operator()(int logicalIndex, Qt::SortOrder order) {
			int sigval1 = logicalIndex;
			Qt::SortOrder order_ret = order;
			int sigval2 = static_cast<int>(order_ret);
			callback(slot, sigval1, sigval2);
		}
	};
	VirtualQHeaderView::connect(self, static_cast<void (QHeaderView::*)(int, Qt::SortOrder)>(&QHeaderView::sortIndicatorChanged), self, local_caller{slot, callback, release});
}

struct miqt_string QHeaderView_tr2(const char* s, const char* c) {
	QString _ret = QHeaderView::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QHeaderView_tr3(const char* s, const char* c, int n) {
	QString _ret = QHeaderView::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QHeaderView_trUtf82(const char* s, const char* c) {
	QString _ret = QHeaderView::trUtf8(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QHeaderView_trUtf83(const char* s, const char* c, int n) {
	QString _ret = QHeaderView::trUtf8(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QMetaObject* QHeaderView_virtualbase_metaObject(const VirtualQHeaderView* self) {

	return (QMetaObject*) self->QHeaderView::metaObject();
}

void* QHeaderView_virtualbase_metacast(VirtualQHeaderView* self, const char* param1) {

	return self->QHeaderView::qt_metacast(param1);
}

int QHeaderView_virtualbase_metacall(VirtualQHeaderView* self, int param1, int param2, void** param3) {

	return self->QHeaderView::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

void QHeaderView_virtualbase_setModel(VirtualQHeaderView* self, QAbstractItemModel* model) {

	self->QHeaderView::setModel(model);
}

QSize* QHeaderView_virtualbase_sizeHint(const VirtualQHeaderView* self) {

	return new QSize(self->QHeaderView::sizeHint());
}

void QHeaderView_virtualbase_setVisible(VirtualQHeaderView* self, bool v) {

	self->QHeaderView::setVisible(v);
}

void QHeaderView_virtualbase_doItemsLayout(VirtualQHeaderView* self) {

	self->QHeaderView::doItemsLayout();
}

void QHeaderView_virtualbase_reset(VirtualQHeaderView* self) {

	self->QHeaderView::reset();
}

void QHeaderView_virtualbase_currentChanged(VirtualQHeaderView* self, QModelIndex* current, QModelIndex* old) {

	self->QHeaderView::currentChanged(*current, *old);
}

bool QHeaderView_virtualbase_event(VirtualQHeaderView* self, QEvent* e) {

	return self->QHeaderView::event(e);
}

void QHeaderView_virtualbase_paintEvent(VirtualQHeaderView* self, QPaintEvent* e) {

	self->QHeaderView::paintEvent(e);
}

void QHeaderView_virtualbase_mousePressEvent(VirtualQHeaderView* self, QMouseEvent* e) {

	self->QHeaderView::mousePressEvent(e);
}

void QHeaderView_virtualbase_mouseMoveEvent(VirtualQHeaderView* self, QMouseEvent* e) {

	self->QHeaderView::mouseMoveEvent(e);
}

void QHeaderView_virtualbase_mouseReleaseEvent(VirtualQHeaderView* self, QMouseEvent* e) {

	self->QHeaderView::mouseReleaseEvent(e);
}

void QHeaderView_virtualbase_mouseDoubleClickEvent(VirtualQHeaderView* self, QMouseEvent* e) {

	self->QHeaderView::mouseDoubleClickEvent(e);
}

bool QHeaderView_virtualbase_viewportEvent(VirtualQHeaderView* self, QEvent* e) {

	return self->QHeaderView::viewportEvent(e);
}

void QHeaderView_virtualbase_paintSection(const VirtualQHeaderView* self, QPainter* painter, QRect* rect, int logicalIndex) {

	self->QHeaderView::paintSection(painter, *rect, static_cast<int>(logicalIndex));
}

QSize* QHeaderView_virtualbase_sectionSizeFromContents(const VirtualQHeaderView* self, int logicalIndex) {

	return new QSize(self->QHeaderView::sectionSizeFromContents(static_cast<int>(logicalIndex)));
}

int QHeaderView_virtualbase_horizontalOffset(const VirtualQHeaderView* self) {

	return self->QHeaderView::horizontalOffset();
}

int QHeaderView_virtualbase_verticalOffset(const VirtualQHeaderView* self) {

	return self->QHeaderView::verticalOffset();
}

void QHeaderView_virtualbase_updateGeometries(VirtualQHeaderView* self) {

	self->QHeaderView::updateGeometries();
}

void QHeaderView_virtualbase_scrollContentsBy(VirtualQHeaderView* self, int dx, int dy) {

	self->QHeaderView::scrollContentsBy(static_cast<int>(dx), static_cast<int>(dy));
}

void QHeaderView_virtualbase_dataChanged(VirtualQHeaderView* self, QModelIndex* topLeft, QModelIndex* bottomRight, struct miqt_array /* of int */  roles) {
	QVector<int> roles_QList;
	roles_QList.reserve(roles.len);
	int* roles_arr = static_cast<int*>(roles.data);
	for(size_t i = 0; i < roles.len; ++i) {
		roles_QList.push_back(static_cast<int>(roles_arr[i]));
	}

	self->QHeaderView::dataChanged(*topLeft, *bottomRight, roles_QList);
}

void QHeaderView_virtualbase_rowsInserted(VirtualQHeaderView* self, QModelIndex* parent, int start, int end) {

	self->QHeaderView::rowsInserted(*parent, static_cast<int>(start), static_cast<int>(end));
}

QRect* QHeaderView_virtualbase_visualRect(const VirtualQHeaderView* self, QModelIndex* index) {

	return new QRect(self->QHeaderView::visualRect(*index));
}

void QHeaderView_virtualbase_scrollTo(VirtualQHeaderView* self, QModelIndex* index, int hint) {

	self->QHeaderView::scrollTo(*index, static_cast<VirtualQHeaderView::ScrollHint>(hint));
}

QModelIndex* QHeaderView_virtualbase_indexAt(const VirtualQHeaderView* self, QPoint* p) {

	return new QModelIndex(self->QHeaderView::indexAt(*p));
}

bool QHeaderView_virtualbase_isIndexHidden(const VirtualQHeaderView* self, QModelIndex* index) {

	return self->QHeaderView::isIndexHidden(*index);
}

QModelIndex* QHeaderView_virtualbase_moveCursor(VirtualQHeaderView* self, int param1, int param2) {

	return new QModelIndex(self->QHeaderView::moveCursor(static_cast<VirtualQHeaderView::CursorAction>(param1), static_cast<Qt::KeyboardModifiers>(param2)));
}

void QHeaderView_virtualbase_setSelection(VirtualQHeaderView* self, QRect* rect, int flags) {

	self->QHeaderView::setSelection(*rect, static_cast<QItemSelectionModel::SelectionFlags>(flags));
}

QRegion* QHeaderView_virtualbase_visualRegionForSelection(const VirtualQHeaderView* self, QItemSelection* selection) {

	return new QRegion(self->QHeaderView::visualRegionForSelection(*selection));
}

void QHeaderView_virtualbase_setSelectionModel(VirtualQHeaderView* self, QItemSelectionModel* selectionModel) {

	self->QHeaderView::setSelectionModel(selectionModel);
}

void QHeaderView_virtualbase_keyboardSearch(VirtualQHeaderView* self, struct miqt_string search) {
	QString search_QString = QString::fromUtf8(search.data, search.len);

	self->QHeaderView::keyboardSearch(search_QString);
}

int QHeaderView_virtualbase_sizeHintForRow(const VirtualQHeaderView* self, int row) {

	return self->QHeaderView::sizeHintForRow(static_cast<int>(row));
}

int QHeaderView_virtualbase_sizeHintForColumn(const VirtualQHeaderView* self, int column) {

	return self->QHeaderView::sizeHintForColumn(static_cast<int>(column));
}

QVariant* QHeaderView_virtualbase_inputMethodQuery(const VirtualQHeaderView* self, int query) {

	return new QVariant(self->QHeaderView::inputMethodQuery(static_cast<Qt::InputMethodQuery>(query)));
}

void QHeaderView_virtualbase_setRootIndex(VirtualQHeaderView* self, QModelIndex* index) {

	self->QHeaderView::setRootIndex(*index);
}

void QHeaderView_virtualbase_selectAll(VirtualQHeaderView* self) {

	self->QHeaderView::selectAll();
}

void QHeaderView_virtualbase_rowsAboutToBeRemoved(VirtualQHeaderView* self, QModelIndex* parent, int start, int end) {

	self->QHeaderView::rowsAboutToBeRemoved(*parent, static_cast<int>(start), static_cast<int>(end));
}

void QHeaderView_virtualbase_selectionChanged(VirtualQHeaderView* self, QItemSelection* selected, QItemSelection* deselected) {

	self->QHeaderView::selectionChanged(*selected, *deselected);
}

void QHeaderView_virtualbase_updateEditorData(VirtualQHeaderView* self) {

	self->QHeaderView::updateEditorData();
}

void QHeaderView_virtualbase_updateEditorGeometries(VirtualQHeaderView* self) {

	self->QHeaderView::updateEditorGeometries();
}

void QHeaderView_virtualbase_verticalScrollbarAction(VirtualQHeaderView* self, int action) {

	self->QHeaderView::verticalScrollbarAction(static_cast<int>(action));
}

void QHeaderView_virtualbase_horizontalScrollbarAction(VirtualQHeaderView* self, int action) {

	self->QHeaderView::horizontalScrollbarAction(static_cast<int>(action));
}

void QHeaderView_virtualbase_verticalScrollbarValueChanged(VirtualQHeaderView* self, int value) {

	self->QHeaderView::verticalScrollbarValueChanged(static_cast<int>(value));
}

void QHeaderView_virtualbase_horizontalScrollbarValueChanged(VirtualQHeaderView* self, int value) {

	self->QHeaderView::horizontalScrollbarValueChanged(static_cast<int>(value));
}

void QHeaderView_virtualbase_closeEditor(VirtualQHeaderView* self, QWidget* editor, int hint) {

	self->QHeaderView::closeEditor(editor, static_cast<QAbstractItemDelegate::EndEditHint>(hint));
}

void QHeaderView_virtualbase_commitData(VirtualQHeaderView* self, QWidget* editor) {

	self->QHeaderView::commitData(editor);
}

void QHeaderView_virtualbase_editorDestroyed(VirtualQHeaderView* self, QObject* editor) {

	self->QHeaderView::editorDestroyed(editor);
}

struct miqt_array /* of QModelIndex* */  QHeaderView_virtualbase_selectedIndexes(const VirtualQHeaderView* self) {

	QModelIndexList _ret = self->QHeaderView::selectedIndexes();
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

bool QHeaderView_virtualbase_edit2(VirtualQHeaderView* self, QModelIndex* index, int trigger, QEvent* event) {

	return self->QHeaderView::edit(*index, static_cast<VirtualQHeaderView::EditTrigger>(trigger), event);
}

int QHeaderView_virtualbase_selectionCommand(const VirtualQHeaderView* self, QModelIndex* index, QEvent* event) {

	QItemSelectionModel::SelectionFlags _ret = self->QHeaderView::selectionCommand(*index, event);
	return static_cast<int>(_ret);
}

void QHeaderView_virtualbase_startDrag(VirtualQHeaderView* self, int supportedActions) {

	self->QHeaderView::startDrag(static_cast<Qt::DropActions>(supportedActions));
}

QStyleOptionViewItem* QHeaderView_virtualbase_viewOptions(const VirtualQHeaderView* self) {

	return new QStyleOptionViewItem(self->QHeaderView::viewOptions());
}

bool QHeaderView_virtualbase_focusNextPrevChild(VirtualQHeaderView* self, bool next) {

	return self->QHeaderView::focusNextPrevChild(next);
}

void QHeaderView_virtualbase_dragEnterEvent(VirtualQHeaderView* self, QDragEnterEvent* event) {

	self->QHeaderView::dragEnterEvent(event);
}

void QHeaderView_virtualbase_dragMoveEvent(VirtualQHeaderView* self, QDragMoveEvent* event) {

	self->QHeaderView::dragMoveEvent(event);
}

void QHeaderView_virtualbase_dragLeaveEvent(VirtualQHeaderView* self, QDragLeaveEvent* event) {

	self->QHeaderView::dragLeaveEvent(event);
}

void QHeaderView_virtualbase_dropEvent(VirtualQHeaderView* self, QDropEvent* event) {

	self->QHeaderView::dropEvent(event);
}

void QHeaderView_virtualbase_focusInEvent(VirtualQHeaderView* self, QFocusEvent* event) {

	self->QHeaderView::focusInEvent(event);
}

void QHeaderView_virtualbase_focusOutEvent(VirtualQHeaderView* self, QFocusEvent* event) {

	self->QHeaderView::focusOutEvent(event);
}

void QHeaderView_virtualbase_keyPressEvent(VirtualQHeaderView* self, QKeyEvent* event) {

	self->QHeaderView::keyPressEvent(event);
}

void QHeaderView_virtualbase_resizeEvent(VirtualQHeaderView* self, QResizeEvent* event) {

	self->QHeaderView::resizeEvent(event);
}

void QHeaderView_virtualbase_timerEvent(VirtualQHeaderView* self, QTimerEvent* event) {

	self->QHeaderView::timerEvent(event);
}

void QHeaderView_virtualbase_inputMethodEvent(VirtualQHeaderView* self, QInputMethodEvent* event) {

	self->QHeaderView::inputMethodEvent(event);
}

bool QHeaderView_virtualbase_eventFilter(VirtualQHeaderView* self, QObject* object, QEvent* event) {

	return self->QHeaderView::eventFilter(object, event);
}

QSize* QHeaderView_virtualbase_viewportSizeHint(const VirtualQHeaderView* self) {

	return new QSize(self->QHeaderView::viewportSizeHint());
}

QSize* QHeaderView_virtualbase_minimumSizeHint(const VirtualQHeaderView* self) {

	return new QSize(self->QHeaderView::minimumSizeHint());
}

void QHeaderView_virtualbase_setupViewport(VirtualQHeaderView* self, QWidget* viewport) {

	self->QHeaderView::setupViewport(viewport);
}

void QHeaderView_virtualbase_wheelEvent(VirtualQHeaderView* self, QWheelEvent* param1) {

	self->QHeaderView::wheelEvent(param1);
}

void QHeaderView_virtualbase_contextMenuEvent(VirtualQHeaderView* self, QContextMenuEvent* param1) {

	self->QHeaderView::contextMenuEvent(param1);
}

void QHeaderView_virtualbase_changeEvent(VirtualQHeaderView* self, QEvent* param1) {

	self->QHeaderView::changeEvent(param1);
}

int QHeaderView_virtualbase_devType(const VirtualQHeaderView* self) {

	return self->QHeaderView::devType();
}

int QHeaderView_virtualbase_heightForWidth(const VirtualQHeaderView* self, int param1) {

	return self->QHeaderView::heightForWidth(static_cast<int>(param1));
}

bool QHeaderView_virtualbase_hasHeightForWidth(const VirtualQHeaderView* self) {

	return self->QHeaderView::hasHeightForWidth();
}

QPaintEngine* QHeaderView_virtualbase_paintEngine(const VirtualQHeaderView* self) {

	return self->QHeaderView::paintEngine();
}

void QHeaderView_virtualbase_keyReleaseEvent(VirtualQHeaderView* self, QKeyEvent* event) {

	self->QHeaderView::keyReleaseEvent(event);
}

void QHeaderView_virtualbase_enterEvent(VirtualQHeaderView* self, QEvent* event) {

	self->QHeaderView::enterEvent(event);
}

void QHeaderView_virtualbase_leaveEvent(VirtualQHeaderView* self, QEvent* event) {

	self->QHeaderView::leaveEvent(event);
}

void QHeaderView_virtualbase_moveEvent(VirtualQHeaderView* self, QMoveEvent* event) {

	self->QHeaderView::moveEvent(event);
}

void QHeaderView_virtualbase_closeEvent(VirtualQHeaderView* self, QCloseEvent* event) {

	self->QHeaderView::closeEvent(event);
}

void QHeaderView_virtualbase_tabletEvent(VirtualQHeaderView* self, QTabletEvent* event) {

	self->QHeaderView::tabletEvent(event);
}

void QHeaderView_virtualbase_actionEvent(VirtualQHeaderView* self, QActionEvent* event) {

	self->QHeaderView::actionEvent(event);
}

void QHeaderView_virtualbase_showEvent(VirtualQHeaderView* self, QShowEvent* event) {

	self->QHeaderView::showEvent(event);
}

void QHeaderView_virtualbase_hideEvent(VirtualQHeaderView* self, QHideEvent* event) {

	self->QHeaderView::hideEvent(event);
}

bool QHeaderView_virtualbase_nativeEvent(VirtualQHeaderView* self, struct miqt_string eventType, void* message, long* result) {
	QByteArray eventType_QByteArray(eventType.data, eventType.len);

	return self->QHeaderView::nativeEvent(eventType_QByteArray, message, static_cast<long*>(result));
}

int QHeaderView_virtualbase_metric(const VirtualQHeaderView* self, int param1) {

	return self->QHeaderView::metric(static_cast<VirtualQHeaderView::PaintDeviceMetric>(param1));
}

void QHeaderView_virtualbase_initPainter(const VirtualQHeaderView* self, QPainter* painter) {

	self->QHeaderView::initPainter(painter);
}

QPaintDevice* QHeaderView_virtualbase_redirected(const VirtualQHeaderView* self, QPoint* offset) {

	return self->QHeaderView::redirected(offset);
}

QPainter* QHeaderView_virtualbase_sharedPainter(const VirtualQHeaderView* self) {

	return self->QHeaderView::sharedPainter();
}

void QHeaderView_virtualbase_childEvent(VirtualQHeaderView* self, QChildEvent* event) {

	self->QHeaderView::childEvent(event);
}

void QHeaderView_virtualbase_customEvent(VirtualQHeaderView* self, QEvent* event) {

	self->QHeaderView::customEvent(event);
}

void QHeaderView_virtualbase_connectNotify(VirtualQHeaderView* self, QMetaMethod* signal) {

	self->QHeaderView::connectNotify(*signal);
}

void QHeaderView_virtualbase_disconnectNotify(VirtualQHeaderView* self, QMetaMethod* signal) {

	self->QHeaderView::disconnectNotify(*signal);
}

const QMetaObject* QHeaderView_staticMetaObject() { return &QHeaderView::staticMetaObject; }

const QHeaderView_VTable* QHeaderView_vtbl(const VirtualQHeaderView* self) { return self->vtbl; }
void* QHeaderView_vdata(const VirtualQHeaderView* self) { return self->vdata; }
void QHeaderView_setVdata(VirtualQHeaderView* self, void* vdata) { self->vdata = vdata; }

void QHeaderView_protectedbase_updateSection(VirtualQHeaderView* self, int logicalIndex) {
	self->updateSection(static_cast<int>(logicalIndex));
}

void QHeaderView_protectedbase_resizeSections2(VirtualQHeaderView* self) {
	self->resizeSections();
}

void QHeaderView_protectedbase_sectionsInserted(VirtualQHeaderView* self, QModelIndex* parent, int logicalFirst, int logicalLast) {
	self->sectionsInserted(*parent, static_cast<int>(logicalFirst), static_cast<int>(logicalLast));
}

void QHeaderView_protectedbase_sectionsAboutToBeRemoved(VirtualQHeaderView* self, QModelIndex* parent, int logicalFirst, int logicalLast) {
	self->sectionsAboutToBeRemoved(*parent, static_cast<int>(logicalFirst), static_cast<int>(logicalLast));
}

void QHeaderView_protectedbase_initialize(VirtualQHeaderView* self) {
	self->initialize();
}

void QHeaderView_protectedbase_initializeSections(VirtualQHeaderView* self) {
	self->initializeSections();
}

void QHeaderView_protectedbase_initializeSections2(VirtualQHeaderView* self, int start, int end) {
	self->initializeSections(static_cast<int>(start), static_cast<int>(end));
}

void QHeaderView_protectedbase_initStyleOption(const VirtualQHeaderView* self, QStyleOptionHeader* option) {
	self->initStyleOption(option);
}

void QHeaderView_protectedbase_setHorizontalStepsPerItem(VirtualQHeaderView* self, int steps) {
	self->setHorizontalStepsPerItem(static_cast<int>(steps));
}

int QHeaderView_protectedbase_horizontalStepsPerItem(const VirtualQHeaderView* self) {
	return self->horizontalStepsPerItem();
}

void QHeaderView_protectedbase_setVerticalStepsPerItem(VirtualQHeaderView* self, int steps) {
	self->setVerticalStepsPerItem(static_cast<int>(steps));
}

int QHeaderView_protectedbase_verticalStepsPerItem(const VirtualQHeaderView* self) {
	return self->verticalStepsPerItem();
}

int QHeaderView_protectedbase_state(const VirtualQHeaderView* self) {
	VirtualQHeaderView::State _ret = self->state();
	return static_cast<int>(_ret);
}

void QHeaderView_protectedbase_setState(VirtualQHeaderView* self, int state) {
	self->setState(static_cast<VirtualQHeaderView::State>(state));
}

void QHeaderView_protectedbase_scheduleDelayedItemsLayout(VirtualQHeaderView* self) {
	self->scheduleDelayedItemsLayout();
}

void QHeaderView_protectedbase_executeDelayedItemsLayout(VirtualQHeaderView* self) {
	self->executeDelayedItemsLayout();
}

void QHeaderView_protectedbase_setDirtyRegion(VirtualQHeaderView* self, QRegion* region) {
	self->setDirtyRegion(*region);
}

void QHeaderView_protectedbase_scrollDirtyRegion(VirtualQHeaderView* self, int dx, int dy) {
	self->scrollDirtyRegion(static_cast<int>(dx), static_cast<int>(dy));
}

QPoint* QHeaderView_protectedbase_dirtyRegionOffset(const VirtualQHeaderView* self) {
	return new QPoint(self->dirtyRegionOffset());
}

void QHeaderView_protectedbase_startAutoScroll(VirtualQHeaderView* self) {
	self->startAutoScroll();
}

void QHeaderView_protectedbase_stopAutoScroll(VirtualQHeaderView* self) {
	self->stopAutoScroll();
}

void QHeaderView_protectedbase_doAutoScroll(VirtualQHeaderView* self) {
	self->doAutoScroll();
}

int QHeaderView_protectedbase_dropIndicatorPosition(const VirtualQHeaderView* self) {
	VirtualQHeaderView::DropIndicatorPosition _ret = self->dropIndicatorPosition();
	return static_cast<int>(_ret);
}

void QHeaderView_protectedbase_setViewportMargins(VirtualQHeaderView* self, int left, int top, int right, int bottom) {
	self->setViewportMargins(static_cast<int>(left), static_cast<int>(top), static_cast<int>(right), static_cast<int>(bottom));
}

QMargins* QHeaderView_protectedbase_viewportMargins(const VirtualQHeaderView* self) {
	return new QMargins(self->viewportMargins());
}

void QHeaderView_protectedbase_drawFrame(VirtualQHeaderView* self, QPainter* param1) {
	self->drawFrame(param1);
}

void QHeaderView_protectedbase_updateMicroFocus(VirtualQHeaderView* self) {
	self->updateMicroFocus();
}

void QHeaderView_protectedbase_create(VirtualQHeaderView* self) {
	self->create();
}

void QHeaderView_protectedbase_destroy(VirtualQHeaderView* self) {
	self->destroy();
}

bool QHeaderView_protectedbase_focusNextChild(VirtualQHeaderView* self) {
	return self->focusNextChild();
}

bool QHeaderView_protectedbase_focusPreviousChild(VirtualQHeaderView* self) {
	return self->focusPreviousChild();
}

QObject* QHeaderView_protectedbase_sender(const VirtualQHeaderView* self) {
	return self->sender();
}

int QHeaderView_protectedbase_senderSignalIndex(const VirtualQHeaderView* self) {
	return self->senderSignalIndex();
}

int QHeaderView_protectedbase_receivers(const VirtualQHeaderView* self, const char* signal) {
	return self->receivers(signal);
}

bool QHeaderView_protectedbase_isSignalConnected(const VirtualQHeaderView* self, QMetaMethod* signal) {
	return self->isSignalConnected(*signal);
}

void QHeaderView_delete(QHeaderView* self) {
	delete self;
}

