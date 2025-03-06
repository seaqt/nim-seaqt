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
#include <QStyleOptionHeader>
#include <QStyleOptionViewItem>
#include <QTabletEvent>
#include <QTimerEvent>
#include <QVariant>
#include <QWheelEvent>
#include <QWidget>
#include <qheaderview.h>
#include "gen_qheaderview.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
} /* extern C */
#endif

class VirtualQHeaderView final : public QHeaderView {
	struct QHeaderView_VTable* vtbl;
public:

	VirtualQHeaderView(struct QHeaderView_VTable* vtbl, Qt::Orientation orientation): QHeaderView(orientation), vtbl(vtbl) {};
	VirtualQHeaderView(struct QHeaderView_VTable* vtbl, Qt::Orientation orientation, QWidget* parent): QHeaderView(orientation, parent), vtbl(vtbl) {};

	virtual ~VirtualQHeaderView() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QHeaderView::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(vtbl, this);

		return callback_return_value;
	}

	friend QMetaObject* QHeaderView_virtualbase_metaObject(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QHeaderView::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend void* QHeaderView_virtualbase_metacast(void* self, const char* param1);

	// Subclass to allow providing a Go implementation
	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QHeaderView::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(vtbl, this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QHeaderView_virtualbase_metacall(void* self, int param1, int param2, void** param3);

	// Subclass to allow providing a Go implementation
	virtual void setModel(QAbstractItemModel* model) override {
		if (vtbl->setModel == 0) {
			QHeaderView::setModel(model);
			return;
		}

		QAbstractItemModel* sigval1 = model;

		vtbl->setModel(vtbl, this, sigval1);

	}

	friend void QHeaderView_virtualbase_setModel(void* self, QAbstractItemModel* model);

	// Subclass to allow providing a Go implementation
	virtual QSize sizeHint() const override {
		if (vtbl->sizeHint == 0) {
			return QHeaderView::sizeHint();
		}


		QSize* callback_return_value = vtbl->sizeHint(vtbl, this);

		return *callback_return_value;
	}

	friend QSize* QHeaderView_virtualbase_sizeHint(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void setVisible(bool v) override {
		if (vtbl->setVisible == 0) {
			QHeaderView::setVisible(v);
			return;
		}

		bool sigval1 = v;

		vtbl->setVisible(vtbl, this, sigval1);

	}

	friend void QHeaderView_virtualbase_setVisible(void* self, bool v);

	// Subclass to allow providing a Go implementation
	virtual void doItemsLayout() override {
		if (vtbl->doItemsLayout == 0) {
			QHeaderView::doItemsLayout();
			return;
		}


		vtbl->doItemsLayout(vtbl, this);

	}

	friend void QHeaderView_virtualbase_doItemsLayout(void* self);

	// Subclass to allow providing a Go implementation
	virtual void reset() override {
		if (vtbl->reset == 0) {
			QHeaderView::reset();
			return;
		}


		vtbl->reset(vtbl, this);

	}

	friend void QHeaderView_virtualbase_reset(void* self);

	// Subclass to allow providing a Go implementation
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

		vtbl->currentChanged(vtbl, this, sigval1, sigval2);

	}

	friend void QHeaderView_virtualbase_currentChanged(void* self, QModelIndex* current, QModelIndex* old);

	// Subclass to allow providing a Go implementation
	virtual bool event(QEvent* e) override {
		if (vtbl->event == 0) {
			return QHeaderView::event(e);
		}

		QEvent* sigval1 = e;

		bool callback_return_value = vtbl->event(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend bool QHeaderView_virtualbase_event(void* self, QEvent* e);

	// Subclass to allow providing a Go implementation
	virtual void paintEvent(QPaintEvent* e) override {
		if (vtbl->paintEvent == 0) {
			QHeaderView::paintEvent(e);
			return;
		}

		QPaintEvent* sigval1 = e;

		vtbl->paintEvent(vtbl, this, sigval1);

	}

	friend void QHeaderView_virtualbase_paintEvent(void* self, QPaintEvent* e);

	// Subclass to allow providing a Go implementation
	virtual void mousePressEvent(QMouseEvent* e) override {
		if (vtbl->mousePressEvent == 0) {
			QHeaderView::mousePressEvent(e);
			return;
		}

		QMouseEvent* sigval1 = e;

		vtbl->mousePressEvent(vtbl, this, sigval1);

	}

	friend void QHeaderView_virtualbase_mousePressEvent(void* self, QMouseEvent* e);

	// Subclass to allow providing a Go implementation
	virtual void mouseMoveEvent(QMouseEvent* e) override {
		if (vtbl->mouseMoveEvent == 0) {
			QHeaderView::mouseMoveEvent(e);
			return;
		}

		QMouseEvent* sigval1 = e;

		vtbl->mouseMoveEvent(vtbl, this, sigval1);

	}

	friend void QHeaderView_virtualbase_mouseMoveEvent(void* self, QMouseEvent* e);

	// Subclass to allow providing a Go implementation
	virtual void mouseReleaseEvent(QMouseEvent* e) override {
		if (vtbl->mouseReleaseEvent == 0) {
			QHeaderView::mouseReleaseEvent(e);
			return;
		}

		QMouseEvent* sigval1 = e;

		vtbl->mouseReleaseEvent(vtbl, this, sigval1);

	}

	friend void QHeaderView_virtualbase_mouseReleaseEvent(void* self, QMouseEvent* e);

	// Subclass to allow providing a Go implementation
	virtual void mouseDoubleClickEvent(QMouseEvent* e) override {
		if (vtbl->mouseDoubleClickEvent == 0) {
			QHeaderView::mouseDoubleClickEvent(e);
			return;
		}

		QMouseEvent* sigval1 = e;

		vtbl->mouseDoubleClickEvent(vtbl, this, sigval1);

	}

	friend void QHeaderView_virtualbase_mouseDoubleClickEvent(void* self, QMouseEvent* e);

	// Subclass to allow providing a Go implementation
	virtual bool viewportEvent(QEvent* e) override {
		if (vtbl->viewportEvent == 0) {
			return QHeaderView::viewportEvent(e);
		}

		QEvent* sigval1 = e;

		bool callback_return_value = vtbl->viewportEvent(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend bool QHeaderView_virtualbase_viewportEvent(void* self, QEvent* e);

	// Subclass to allow providing a Go implementation
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

		vtbl->paintSection(vtbl, this, sigval1, sigval2, sigval3);

	}

	friend void QHeaderView_virtualbase_paintSection(const void* self, QPainter* painter, QRect* rect, int logicalIndex);

	// Subclass to allow providing a Go implementation
	virtual QSize sectionSizeFromContents(int logicalIndex) const override {
		if (vtbl->sectionSizeFromContents == 0) {
			return QHeaderView::sectionSizeFromContents(logicalIndex);
		}

		int sigval1 = logicalIndex;

		QSize* callback_return_value = vtbl->sectionSizeFromContents(vtbl, this, sigval1);

		return *callback_return_value;
	}

	friend QSize* QHeaderView_virtualbase_sectionSizeFromContents(const void* self, int logicalIndex);

	// Subclass to allow providing a Go implementation
	virtual int horizontalOffset() const override {
		if (vtbl->horizontalOffset == 0) {
			return QHeaderView::horizontalOffset();
		}


		int callback_return_value = vtbl->horizontalOffset(vtbl, this);

		return static_cast<int>(callback_return_value);
	}

	friend int QHeaderView_virtualbase_horizontalOffset(const void* self);

	// Subclass to allow providing a Go implementation
	virtual int verticalOffset() const override {
		if (vtbl->verticalOffset == 0) {
			return QHeaderView::verticalOffset();
		}


		int callback_return_value = vtbl->verticalOffset(vtbl, this);

		return static_cast<int>(callback_return_value);
	}

	friend int QHeaderView_virtualbase_verticalOffset(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void updateGeometries() override {
		if (vtbl->updateGeometries == 0) {
			QHeaderView::updateGeometries();
			return;
		}


		vtbl->updateGeometries(vtbl, this);

	}

	friend void QHeaderView_virtualbase_updateGeometries(void* self);

	// Subclass to allow providing a Go implementation
	virtual void scrollContentsBy(int dx, int dy) override {
		if (vtbl->scrollContentsBy == 0) {
			QHeaderView::scrollContentsBy(dx, dy);
			return;
		}

		int sigval1 = dx;
		int sigval2 = dy;

		vtbl->scrollContentsBy(vtbl, this, sigval1, sigval2);

	}

	friend void QHeaderView_virtualbase_scrollContentsBy(void* self, int dx, int dy);

	// Subclass to allow providing a Go implementation
	virtual void dataChanged(const QModelIndex& topLeft, const QModelIndex& bottomRight, const QList<int>& roles) override {
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

	friend void QHeaderView_virtualbase_dataChanged(void* self, QModelIndex* topLeft, QModelIndex* bottomRight, struct miqt_array /* of int */  roles);

	// Subclass to allow providing a Go implementation
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

		vtbl->rowsInserted(vtbl, this, sigval1, sigval2, sigval3);

	}

	friend void QHeaderView_virtualbase_rowsInserted(void* self, QModelIndex* parent, int start, int end);

	// Subclass to allow providing a Go implementation
	virtual QRect visualRect(const QModelIndex& index) const override {
		if (vtbl->visualRect == 0) {
			return QHeaderView::visualRect(index);
		}

		const QModelIndex& index_ret = index;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&index_ret);

		QRect* callback_return_value = vtbl->visualRect(vtbl, this, sigval1);

		return *callback_return_value;
	}

	friend QRect* QHeaderView_virtualbase_visualRect(const void* self, QModelIndex* index);

	// Subclass to allow providing a Go implementation
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

		vtbl->scrollTo(vtbl, this, sigval1, sigval2);

	}

	friend void QHeaderView_virtualbase_scrollTo(void* self, QModelIndex* index, int hint);

	// Subclass to allow providing a Go implementation
	virtual QModelIndex indexAt(const QPoint& p) const override {
		if (vtbl->indexAt == 0) {
			return QHeaderView::indexAt(p);
		}

		const QPoint& p_ret = p;
		// Cast returned reference into pointer
		QPoint* sigval1 = const_cast<QPoint*>(&p_ret);

		QModelIndex* callback_return_value = vtbl->indexAt(vtbl, this, sigval1);

		return *callback_return_value;
	}

	friend QModelIndex* QHeaderView_virtualbase_indexAt(const void* self, QPoint* p);

	// Subclass to allow providing a Go implementation
	virtual bool isIndexHidden(const QModelIndex& index) const override {
		if (vtbl->isIndexHidden == 0) {
			return QHeaderView::isIndexHidden(index);
		}

		const QModelIndex& index_ret = index;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&index_ret);

		bool callback_return_value = vtbl->isIndexHidden(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend bool QHeaderView_virtualbase_isIndexHidden(const void* self, QModelIndex* index);

	// Subclass to allow providing a Go implementation
	virtual QModelIndex moveCursor(QAbstractItemView::CursorAction param1, Qt::KeyboardModifiers param2) override {
		if (vtbl->moveCursor == 0) {
			return QHeaderView::moveCursor(param1, param2);
		}

		QAbstractItemView::CursorAction param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		Qt::KeyboardModifiers param2_ret = param2;
		int sigval2 = static_cast<int>(param2_ret);

		QModelIndex* callback_return_value = vtbl->moveCursor(vtbl, this, sigval1, sigval2);

		return *callback_return_value;
	}

	friend QModelIndex* QHeaderView_virtualbase_moveCursor(void* self, int param1, int param2);

	// Subclass to allow providing a Go implementation
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

		vtbl->setSelection(vtbl, this, sigval1, sigval2);

	}

	friend void QHeaderView_virtualbase_setSelection(void* self, QRect* rect, int flags);

	// Subclass to allow providing a Go implementation
	virtual QRegion visualRegionForSelection(const QItemSelection& selection) const override {
		if (vtbl->visualRegionForSelection == 0) {
			return QHeaderView::visualRegionForSelection(selection);
		}

		const QItemSelection& selection_ret = selection;
		// Cast returned reference into pointer
		QItemSelection* sigval1 = const_cast<QItemSelection*>(&selection_ret);

		QRegion* callback_return_value = vtbl->visualRegionForSelection(vtbl, this, sigval1);

		return *callback_return_value;
	}

	friend QRegion* QHeaderView_virtualbase_visualRegionForSelection(const void* self, QItemSelection* selection);

	// Subclass to allow providing a Go implementation
	virtual void initStyleOptionForIndex(QStyleOptionHeader* option, int logicalIndex) const override {
		if (vtbl->initStyleOptionForIndex == 0) {
			QHeaderView::initStyleOptionForIndex(option, logicalIndex);
			return;
		}

		QStyleOptionHeader* sigval1 = option;
		int sigval2 = logicalIndex;

		vtbl->initStyleOptionForIndex(vtbl, this, sigval1, sigval2);

	}

	friend void QHeaderView_virtualbase_initStyleOptionForIndex(const void* self, QStyleOptionHeader* option, int logicalIndex);

	// Subclass to allow providing a Go implementation
	virtual void initStyleOption(QStyleOptionHeader* option) const override {
		if (vtbl->initStyleOption == 0) {
			QHeaderView::initStyleOption(option);
			return;
		}

		QStyleOptionHeader* sigval1 = option;

		vtbl->initStyleOption(vtbl, this, sigval1);

	}

	friend void QHeaderView_virtualbase_initStyleOption(const void* self, QStyleOptionHeader* option);

	// Subclass to allow providing a Go implementation
	virtual void setSelectionModel(QItemSelectionModel* selectionModel) override {
		if (vtbl->setSelectionModel == 0) {
			QHeaderView::setSelectionModel(selectionModel);
			return;
		}

		QItemSelectionModel* sigval1 = selectionModel;

		vtbl->setSelectionModel(vtbl, this, sigval1);

	}

	friend void QHeaderView_virtualbase_setSelectionModel(void* self, QItemSelectionModel* selectionModel);

	// Subclass to allow providing a Go implementation
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

		vtbl->keyboardSearch(vtbl, this, sigval1);

	}

	friend void QHeaderView_virtualbase_keyboardSearch(void* self, struct miqt_string search);

	// Subclass to allow providing a Go implementation
	virtual int sizeHintForRow(int row) const override {
		if (vtbl->sizeHintForRow == 0) {
			return QHeaderView::sizeHintForRow(row);
		}

		int sigval1 = row;

		int callback_return_value = vtbl->sizeHintForRow(vtbl, this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QHeaderView_virtualbase_sizeHintForRow(const void* self, int row);

	// Subclass to allow providing a Go implementation
	virtual int sizeHintForColumn(int column) const override {
		if (vtbl->sizeHintForColumn == 0) {
			return QHeaderView::sizeHintForColumn(column);
		}

		int sigval1 = column;

		int callback_return_value = vtbl->sizeHintForColumn(vtbl, this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QHeaderView_virtualbase_sizeHintForColumn(const void* self, int column);

	// Subclass to allow providing a Go implementation
	virtual QAbstractItemDelegate* itemDelegateForIndex(const QModelIndex& index) const override {
		if (vtbl->itemDelegateForIndex == 0) {
			return QHeaderView::itemDelegateForIndex(index);
		}

		const QModelIndex& index_ret = index;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&index_ret);

		QAbstractItemDelegate* callback_return_value = vtbl->itemDelegateForIndex(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend QAbstractItemDelegate* QHeaderView_virtualbase_itemDelegateForIndex(const void* self, QModelIndex* index);

	// Subclass to allow providing a Go implementation
	virtual QVariant inputMethodQuery(Qt::InputMethodQuery query) const override {
		if (vtbl->inputMethodQuery == 0) {
			return QHeaderView::inputMethodQuery(query);
		}

		Qt::InputMethodQuery query_ret = query;
		int sigval1 = static_cast<int>(query_ret);

		QVariant* callback_return_value = vtbl->inputMethodQuery(vtbl, this, sigval1);

		return *callback_return_value;
	}

	friend QVariant* QHeaderView_virtualbase_inputMethodQuery(const void* self, int query);

	// Subclass to allow providing a Go implementation
	virtual void setRootIndex(const QModelIndex& index) override {
		if (vtbl->setRootIndex == 0) {
			QHeaderView::setRootIndex(index);
			return;
		}

		const QModelIndex& index_ret = index;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&index_ret);

		vtbl->setRootIndex(vtbl, this, sigval1);

	}

	friend void QHeaderView_virtualbase_setRootIndex(void* self, QModelIndex* index);

	// Subclass to allow providing a Go implementation
	virtual void selectAll() override {
		if (vtbl->selectAll == 0) {
			QHeaderView::selectAll();
			return;
		}


		vtbl->selectAll(vtbl, this);

	}

	friend void QHeaderView_virtualbase_selectAll(void* self);

	// Subclass to allow providing a Go implementation
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

		vtbl->rowsAboutToBeRemoved(vtbl, this, sigval1, sigval2, sigval3);

	}

	friend void QHeaderView_virtualbase_rowsAboutToBeRemoved(void* self, QModelIndex* parent, int start, int end);

	// Subclass to allow providing a Go implementation
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

		vtbl->selectionChanged(vtbl, this, sigval1, sigval2);

	}

	friend void QHeaderView_virtualbase_selectionChanged(void* self, QItemSelection* selected, QItemSelection* deselected);

	// Subclass to allow providing a Go implementation
	virtual void updateEditorData() override {
		if (vtbl->updateEditorData == 0) {
			QHeaderView::updateEditorData();
			return;
		}


		vtbl->updateEditorData(vtbl, this);

	}

	friend void QHeaderView_virtualbase_updateEditorData(void* self);

	// Subclass to allow providing a Go implementation
	virtual void updateEditorGeometries() override {
		if (vtbl->updateEditorGeometries == 0) {
			QHeaderView::updateEditorGeometries();
			return;
		}


		vtbl->updateEditorGeometries(vtbl, this);

	}

	friend void QHeaderView_virtualbase_updateEditorGeometries(void* self);

	// Subclass to allow providing a Go implementation
	virtual void verticalScrollbarAction(int action) override {
		if (vtbl->verticalScrollbarAction == 0) {
			QHeaderView::verticalScrollbarAction(action);
			return;
		}

		int sigval1 = action;

		vtbl->verticalScrollbarAction(vtbl, this, sigval1);

	}

	friend void QHeaderView_virtualbase_verticalScrollbarAction(void* self, int action);

	// Subclass to allow providing a Go implementation
	virtual void horizontalScrollbarAction(int action) override {
		if (vtbl->horizontalScrollbarAction == 0) {
			QHeaderView::horizontalScrollbarAction(action);
			return;
		}

		int sigval1 = action;

		vtbl->horizontalScrollbarAction(vtbl, this, sigval1);

	}

	friend void QHeaderView_virtualbase_horizontalScrollbarAction(void* self, int action);

	// Subclass to allow providing a Go implementation
	virtual void verticalScrollbarValueChanged(int value) override {
		if (vtbl->verticalScrollbarValueChanged == 0) {
			QHeaderView::verticalScrollbarValueChanged(value);
			return;
		}

		int sigval1 = value;

		vtbl->verticalScrollbarValueChanged(vtbl, this, sigval1);

	}

	friend void QHeaderView_virtualbase_verticalScrollbarValueChanged(void* self, int value);

	// Subclass to allow providing a Go implementation
	virtual void horizontalScrollbarValueChanged(int value) override {
		if (vtbl->horizontalScrollbarValueChanged == 0) {
			QHeaderView::horizontalScrollbarValueChanged(value);
			return;
		}

		int sigval1 = value;

		vtbl->horizontalScrollbarValueChanged(vtbl, this, sigval1);

	}

	friend void QHeaderView_virtualbase_horizontalScrollbarValueChanged(void* self, int value);

	// Subclass to allow providing a Go implementation
	virtual void closeEditor(QWidget* editor, QAbstractItemDelegate::EndEditHint hint) override {
		if (vtbl->closeEditor == 0) {
			QHeaderView::closeEditor(editor, hint);
			return;
		}

		QWidget* sigval1 = editor;
		QAbstractItemDelegate::EndEditHint hint_ret = hint;
		int sigval2 = static_cast<int>(hint_ret);

		vtbl->closeEditor(vtbl, this, sigval1, sigval2);

	}

	friend void QHeaderView_virtualbase_closeEditor(void* self, QWidget* editor, int hint);

	// Subclass to allow providing a Go implementation
	virtual void commitData(QWidget* editor) override {
		if (vtbl->commitData == 0) {
			QHeaderView::commitData(editor);
			return;
		}

		QWidget* sigval1 = editor;

		vtbl->commitData(vtbl, this, sigval1);

	}

	friend void QHeaderView_virtualbase_commitData(void* self, QWidget* editor);

	// Subclass to allow providing a Go implementation
	virtual void editorDestroyed(QObject* editor) override {
		if (vtbl->editorDestroyed == 0) {
			QHeaderView::editorDestroyed(editor);
			return;
		}

		QObject* sigval1 = editor;

		vtbl->editorDestroyed(vtbl, this, sigval1);

	}

	friend void QHeaderView_virtualbase_editorDestroyed(void* self, QObject* editor);

	// Subclass to allow providing a Go implementation
	virtual QModelIndexList selectedIndexes() const override {
		if (vtbl->selectedIndexes == 0) {
			return QHeaderView::selectedIndexes();
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

	friend struct miqt_array /* of QModelIndex* */  QHeaderView_virtualbase_selectedIndexes(const void* self);

	// Subclass to allow providing a Go implementation
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

		bool callback_return_value = vtbl->edit2(vtbl, this, sigval1, sigval2, sigval3);

		return callback_return_value;
	}

	friend bool QHeaderView_virtualbase_edit2(void* self, QModelIndex* index, int trigger, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual QItemSelectionModel::SelectionFlags selectionCommand(const QModelIndex& index, const QEvent* event) const override {
		if (vtbl->selectionCommand == 0) {
			return QHeaderView::selectionCommand(index, event);
		}

		const QModelIndex& index_ret = index;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&index_ret);
		QEvent* sigval2 = (QEvent*) event;

		int callback_return_value = vtbl->selectionCommand(vtbl, this, sigval1, sigval2);

		return static_cast<QItemSelectionModel::SelectionFlags>(callback_return_value);
	}

	friend int QHeaderView_virtualbase_selectionCommand(const void* self, QModelIndex* index, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void startDrag(Qt::DropActions supportedActions) override {
		if (vtbl->startDrag == 0) {
			QHeaderView::startDrag(supportedActions);
			return;
		}

		Qt::DropActions supportedActions_ret = supportedActions;
		int sigval1 = static_cast<int>(supportedActions_ret);

		vtbl->startDrag(vtbl, this, sigval1);

	}

	friend void QHeaderView_virtualbase_startDrag(void* self, int supportedActions);

	// Subclass to allow providing a Go implementation
	virtual void initViewItemOption(QStyleOptionViewItem* option) const override {
		if (vtbl->initViewItemOption == 0) {
			QHeaderView::initViewItemOption(option);
			return;
		}

		QStyleOptionViewItem* sigval1 = option;

		vtbl->initViewItemOption(vtbl, this, sigval1);

	}

	friend void QHeaderView_virtualbase_initViewItemOption(const void* self, QStyleOptionViewItem* option);

	// Subclass to allow providing a Go implementation
	virtual bool focusNextPrevChild(bool next) override {
		if (vtbl->focusNextPrevChild == 0) {
			return QHeaderView::focusNextPrevChild(next);
		}

		bool sigval1 = next;

		bool callback_return_value = vtbl->focusNextPrevChild(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend bool QHeaderView_virtualbase_focusNextPrevChild(void* self, bool next);

	// Subclass to allow providing a Go implementation
	virtual void dragEnterEvent(QDragEnterEvent* event) override {
		if (vtbl->dragEnterEvent == 0) {
			QHeaderView::dragEnterEvent(event);
			return;
		}

		QDragEnterEvent* sigval1 = event;

		vtbl->dragEnterEvent(vtbl, this, sigval1);

	}

	friend void QHeaderView_virtualbase_dragEnterEvent(void* self, QDragEnterEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void dragMoveEvent(QDragMoveEvent* event) override {
		if (vtbl->dragMoveEvent == 0) {
			QHeaderView::dragMoveEvent(event);
			return;
		}

		QDragMoveEvent* sigval1 = event;

		vtbl->dragMoveEvent(vtbl, this, sigval1);

	}

	friend void QHeaderView_virtualbase_dragMoveEvent(void* self, QDragMoveEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void dragLeaveEvent(QDragLeaveEvent* event) override {
		if (vtbl->dragLeaveEvent == 0) {
			QHeaderView::dragLeaveEvent(event);
			return;
		}

		QDragLeaveEvent* sigval1 = event;

		vtbl->dragLeaveEvent(vtbl, this, sigval1);

	}

	friend void QHeaderView_virtualbase_dragLeaveEvent(void* self, QDragLeaveEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void dropEvent(QDropEvent* event) override {
		if (vtbl->dropEvent == 0) {
			QHeaderView::dropEvent(event);
			return;
		}

		QDropEvent* sigval1 = event;

		vtbl->dropEvent(vtbl, this, sigval1);

	}

	friend void QHeaderView_virtualbase_dropEvent(void* self, QDropEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void focusInEvent(QFocusEvent* event) override {
		if (vtbl->focusInEvent == 0) {
			QHeaderView::focusInEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;

		vtbl->focusInEvent(vtbl, this, sigval1);

	}

	friend void QHeaderView_virtualbase_focusInEvent(void* self, QFocusEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void focusOutEvent(QFocusEvent* event) override {
		if (vtbl->focusOutEvent == 0) {
			QHeaderView::focusOutEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;

		vtbl->focusOutEvent(vtbl, this, sigval1);

	}

	friend void QHeaderView_virtualbase_focusOutEvent(void* self, QFocusEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void keyPressEvent(QKeyEvent* event) override {
		if (vtbl->keyPressEvent == 0) {
			QHeaderView::keyPressEvent(event);
			return;
		}

		QKeyEvent* sigval1 = event;

		vtbl->keyPressEvent(vtbl, this, sigval1);

	}

	friend void QHeaderView_virtualbase_keyPressEvent(void* self, QKeyEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void resizeEvent(QResizeEvent* event) override {
		if (vtbl->resizeEvent == 0) {
			QHeaderView::resizeEvent(event);
			return;
		}

		QResizeEvent* sigval1 = event;

		vtbl->resizeEvent(vtbl, this, sigval1);

	}

	friend void QHeaderView_virtualbase_resizeEvent(void* self, QResizeEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QHeaderView::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(vtbl, this, sigval1);

	}

	friend void QHeaderView_virtualbase_timerEvent(void* self, QTimerEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void inputMethodEvent(QInputMethodEvent* event) override {
		if (vtbl->inputMethodEvent == 0) {
			QHeaderView::inputMethodEvent(event);
			return;
		}

		QInputMethodEvent* sigval1 = event;

		vtbl->inputMethodEvent(vtbl, this, sigval1);

	}

	friend void QHeaderView_virtualbase_inputMethodEvent(void* self, QInputMethodEvent* event);

	// Subclass to allow providing a Go implementation
	virtual bool eventFilter(QObject* object, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QHeaderView::eventFilter(object, event);
		}

		QObject* sigval1 = object;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QHeaderView_virtualbase_eventFilter(void* self, QObject* object, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual QSize viewportSizeHint() const override {
		if (vtbl->viewportSizeHint == 0) {
			return QHeaderView::viewportSizeHint();
		}


		QSize* callback_return_value = vtbl->viewportSizeHint(vtbl, this);

		return *callback_return_value;
	}

	friend QSize* QHeaderView_virtualbase_viewportSizeHint(const void* self);

	// Subclass to allow providing a Go implementation
	virtual QSize minimumSizeHint() const override {
		if (vtbl->minimumSizeHint == 0) {
			return QHeaderView::minimumSizeHint();
		}


		QSize* callback_return_value = vtbl->minimumSizeHint(vtbl, this);

		return *callback_return_value;
	}

	friend QSize* QHeaderView_virtualbase_minimumSizeHint(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void setupViewport(QWidget* viewport) override {
		if (vtbl->setupViewport == 0) {
			QHeaderView::setupViewport(viewport);
			return;
		}

		QWidget* sigval1 = viewport;

		vtbl->setupViewport(vtbl, this, sigval1);

	}

	friend void QHeaderView_virtualbase_setupViewport(void* self, QWidget* viewport);

	// Subclass to allow providing a Go implementation
	virtual void wheelEvent(QWheelEvent* param1) override {
		if (vtbl->wheelEvent == 0) {
			QHeaderView::wheelEvent(param1);
			return;
		}

		QWheelEvent* sigval1 = param1;

		vtbl->wheelEvent(vtbl, this, sigval1);

	}

	friend void QHeaderView_virtualbase_wheelEvent(void* self, QWheelEvent* param1);

	// Subclass to allow providing a Go implementation
	virtual void contextMenuEvent(QContextMenuEvent* param1) override {
		if (vtbl->contextMenuEvent == 0) {
			QHeaderView::contextMenuEvent(param1);
			return;
		}

		QContextMenuEvent* sigval1 = param1;

		vtbl->contextMenuEvent(vtbl, this, sigval1);

	}

	friend void QHeaderView_virtualbase_contextMenuEvent(void* self, QContextMenuEvent* param1);

	// Subclass to allow providing a Go implementation
	virtual void changeEvent(QEvent* param1) override {
		if (vtbl->changeEvent == 0) {
			QHeaderView::changeEvent(param1);
			return;
		}

		QEvent* sigval1 = param1;

		vtbl->changeEvent(vtbl, this, sigval1);

	}

	friend void QHeaderView_virtualbase_changeEvent(void* self, QEvent* param1);

	// Subclass to allow providing a Go implementation
	virtual int devType() const override {
		if (vtbl->devType == 0) {
			return QHeaderView::devType();
		}


		int callback_return_value = vtbl->devType(vtbl, this);

		return static_cast<int>(callback_return_value);
	}

	friend int QHeaderView_virtualbase_devType(const void* self);

	// Subclass to allow providing a Go implementation
	virtual int heightForWidth(int param1) const override {
		if (vtbl->heightForWidth == 0) {
			return QHeaderView::heightForWidth(param1);
		}

		int sigval1 = param1;

		int callback_return_value = vtbl->heightForWidth(vtbl, this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QHeaderView_virtualbase_heightForWidth(const void* self, int param1);

	// Subclass to allow providing a Go implementation
	virtual bool hasHeightForWidth() const override {
		if (vtbl->hasHeightForWidth == 0) {
			return QHeaderView::hasHeightForWidth();
		}


		bool callback_return_value = vtbl->hasHeightForWidth(vtbl, this);

		return callback_return_value;
	}

	friend bool QHeaderView_virtualbase_hasHeightForWidth(const void* self);

	// Subclass to allow providing a Go implementation
	virtual QPaintEngine* paintEngine() const override {
		if (vtbl->paintEngine == 0) {
			return QHeaderView::paintEngine();
		}


		QPaintEngine* callback_return_value = vtbl->paintEngine(vtbl, this);

		return callback_return_value;
	}

	friend QPaintEngine* QHeaderView_virtualbase_paintEngine(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void keyReleaseEvent(QKeyEvent* event) override {
		if (vtbl->keyReleaseEvent == 0) {
			QHeaderView::keyReleaseEvent(event);
			return;
		}

		QKeyEvent* sigval1 = event;

		vtbl->keyReleaseEvent(vtbl, this, sigval1);

	}

	friend void QHeaderView_virtualbase_keyReleaseEvent(void* self, QKeyEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void enterEvent(QEnterEvent* event) override {
		if (vtbl->enterEvent == 0) {
			QHeaderView::enterEvent(event);
			return;
		}

		QEnterEvent* sigval1 = event;

		vtbl->enterEvent(vtbl, this, sigval1);

	}

	friend void QHeaderView_virtualbase_enterEvent(void* self, QEnterEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void leaveEvent(QEvent* event) override {
		if (vtbl->leaveEvent == 0) {
			QHeaderView::leaveEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->leaveEvent(vtbl, this, sigval1);

	}

	friend void QHeaderView_virtualbase_leaveEvent(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void moveEvent(QMoveEvent* event) override {
		if (vtbl->moveEvent == 0) {
			QHeaderView::moveEvent(event);
			return;
		}

		QMoveEvent* sigval1 = event;

		vtbl->moveEvent(vtbl, this, sigval1);

	}

	friend void QHeaderView_virtualbase_moveEvent(void* self, QMoveEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void closeEvent(QCloseEvent* event) override {
		if (vtbl->closeEvent == 0) {
			QHeaderView::closeEvent(event);
			return;
		}

		QCloseEvent* sigval1 = event;

		vtbl->closeEvent(vtbl, this, sigval1);

	}

	friend void QHeaderView_virtualbase_closeEvent(void* self, QCloseEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void tabletEvent(QTabletEvent* event) override {
		if (vtbl->tabletEvent == 0) {
			QHeaderView::tabletEvent(event);
			return;
		}

		QTabletEvent* sigval1 = event;

		vtbl->tabletEvent(vtbl, this, sigval1);

	}

	friend void QHeaderView_virtualbase_tabletEvent(void* self, QTabletEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void actionEvent(QActionEvent* event) override {
		if (vtbl->actionEvent == 0) {
			QHeaderView::actionEvent(event);
			return;
		}

		QActionEvent* sigval1 = event;

		vtbl->actionEvent(vtbl, this, sigval1);

	}

	friend void QHeaderView_virtualbase_actionEvent(void* self, QActionEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void showEvent(QShowEvent* event) override {
		if (vtbl->showEvent == 0) {
			QHeaderView::showEvent(event);
			return;
		}

		QShowEvent* sigval1 = event;

		vtbl->showEvent(vtbl, this, sigval1);

	}

	friend void QHeaderView_virtualbase_showEvent(void* self, QShowEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void hideEvent(QHideEvent* event) override {
		if (vtbl->hideEvent == 0) {
			QHeaderView::hideEvent(event);
			return;
		}

		QHideEvent* sigval1 = event;

		vtbl->hideEvent(vtbl, this, sigval1);

	}

	friend void QHeaderView_virtualbase_hideEvent(void* self, QHideEvent* event);

	// Subclass to allow providing a Go implementation
	virtual bool nativeEvent(const QByteArray& eventType, void* message, qintptr* result) override {
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
		qintptr* result_ret = result;
		intptr_t* sigval3 = (intptr_t*)(result_ret);

		bool callback_return_value = vtbl->nativeEvent(vtbl, this, sigval1, sigval2, sigval3);

		return callback_return_value;
	}

	friend bool QHeaderView_virtualbase_nativeEvent(void* self, struct miqt_string eventType, void* message, intptr_t* result);

	// Subclass to allow providing a Go implementation
	virtual int metric(QPaintDevice::PaintDeviceMetric param1) const override {
		if (vtbl->metric == 0) {
			return QHeaderView::metric(param1);
		}

		QPaintDevice::PaintDeviceMetric param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);

		int callback_return_value = vtbl->metric(vtbl, this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QHeaderView_virtualbase_metric(const void* self, int param1);

	// Subclass to allow providing a Go implementation
	virtual void initPainter(QPainter* painter) const override {
		if (vtbl->initPainter == 0) {
			QHeaderView::initPainter(painter);
			return;
		}

		QPainter* sigval1 = painter;

		vtbl->initPainter(vtbl, this, sigval1);

	}

	friend void QHeaderView_virtualbase_initPainter(const void* self, QPainter* painter);

	// Subclass to allow providing a Go implementation
	virtual QPaintDevice* redirected(QPoint* offset) const override {
		if (vtbl->redirected == 0) {
			return QHeaderView::redirected(offset);
		}

		QPoint* sigval1 = offset;

		QPaintDevice* callback_return_value = vtbl->redirected(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend QPaintDevice* QHeaderView_virtualbase_redirected(const void* self, QPoint* offset);

	// Subclass to allow providing a Go implementation
	virtual QPainter* sharedPainter() const override {
		if (vtbl->sharedPainter == 0) {
			return QHeaderView::sharedPainter();
		}


		QPainter* callback_return_value = vtbl->sharedPainter(vtbl, this);

		return callback_return_value;
	}

	friend QPainter* QHeaderView_virtualbase_sharedPainter(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QHeaderView::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(vtbl, this, sigval1);

	}

	friend void QHeaderView_virtualbase_childEvent(void* self, QChildEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QHeaderView::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(vtbl, this, sigval1);

	}

	friend void QHeaderView_virtualbase_customEvent(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QHeaderView::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(vtbl, this, sigval1);

	}

	friend void QHeaderView_virtualbase_connectNotify(void* self, QMetaMethod* signal);

	// Subclass to allow providing a Go implementation
	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QHeaderView::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(vtbl, this, sigval1);

	}

	friend void QHeaderView_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend void QHeaderView_protectedbase_updateSection(bool* _dynamic_cast_ok, void* self, int logicalIndex);
	friend void QHeaderView_protectedbase_resizeSections2(bool* _dynamic_cast_ok, void* self);
	friend void QHeaderView_protectedbase_sectionsInserted(bool* _dynamic_cast_ok, void* self, QModelIndex* parent, int logicalFirst, int logicalLast);
	friend void QHeaderView_protectedbase_sectionsAboutToBeRemoved(bool* _dynamic_cast_ok, void* self, QModelIndex* parent, int logicalFirst, int logicalLast);
	friend void QHeaderView_protectedbase_initialize(bool* _dynamic_cast_ok, void* self);
	friend void QHeaderView_protectedbase_initializeSections(bool* _dynamic_cast_ok, void* self);
	friend void QHeaderView_protectedbase_initializeSections2(bool* _dynamic_cast_ok, void* self, int start, int end);
	friend int QHeaderView_protectedbase_state(bool* _dynamic_cast_ok, const void* self);
	friend void QHeaderView_protectedbase_setState(bool* _dynamic_cast_ok, void* self, int state);
	friend void QHeaderView_protectedbase_scheduleDelayedItemsLayout(bool* _dynamic_cast_ok, void* self);
	friend void QHeaderView_protectedbase_executeDelayedItemsLayout(bool* _dynamic_cast_ok, void* self);
	friend void QHeaderView_protectedbase_setDirtyRegion(bool* _dynamic_cast_ok, void* self, QRegion* region);
	friend void QHeaderView_protectedbase_scrollDirtyRegion(bool* _dynamic_cast_ok, void* self, int dx, int dy);
	friend QPoint* QHeaderView_protectedbase_dirtyRegionOffset(bool* _dynamic_cast_ok, const void* self);
	friend void QHeaderView_protectedbase_startAutoScroll(bool* _dynamic_cast_ok, void* self);
	friend void QHeaderView_protectedbase_stopAutoScroll(bool* _dynamic_cast_ok, void* self);
	friend void QHeaderView_protectedbase_doAutoScroll(bool* _dynamic_cast_ok, void* self);
	friend int QHeaderView_protectedbase_dropIndicatorPosition(bool* _dynamic_cast_ok, const void* self);
	friend void QHeaderView_protectedbase_setViewportMargins(bool* _dynamic_cast_ok, void* self, int left, int top, int right, int bottom);
	friend QMargins* QHeaderView_protectedbase_viewportMargins(bool* _dynamic_cast_ok, const void* self);
	friend void QHeaderView_protectedbase_drawFrame(bool* _dynamic_cast_ok, void* self, QPainter* param1);
	friend void QHeaderView_protectedbase_updateMicroFocus(bool* _dynamic_cast_ok, void* self);
	friend void QHeaderView_protectedbase_create(bool* _dynamic_cast_ok, void* self);
	friend void QHeaderView_protectedbase_destroy(bool* _dynamic_cast_ok, void* self);
	friend bool QHeaderView_protectedbase_focusNextChild(bool* _dynamic_cast_ok, void* self);
	friend bool QHeaderView_protectedbase_focusPreviousChild(bool* _dynamic_cast_ok, void* self);
	friend QObject* QHeaderView_protectedbase_sender(bool* _dynamic_cast_ok, const void* self);
	friend int QHeaderView_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self);
	friend int QHeaderView_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal);
	friend bool QHeaderView_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal);
};

QHeaderView* QHeaderView_new(struct QHeaderView_VTable* vtbl, int orientation) {
	return new VirtualQHeaderView(vtbl, static_cast<Qt::Orientation>(orientation));
}

QHeaderView* QHeaderView_new2(struct QHeaderView_VTable* vtbl, int orientation, QWidget* parent) {
	return new VirtualQHeaderView(vtbl, static_cast<Qt::Orientation>(orientation), parent);
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

void QHeaderView_setSortIndicatorClearable(QHeaderView* self, bool clearable) {
	self->setSortIndicatorClearable(clearable);
}

bool QHeaderView_isSortIndicatorClearable(const QHeaderView* self) {
	return self->isSortIndicatorClearable();
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

void QHeaderView_connect_sectionMoved(QHeaderView* self, intptr_t slot, void (*callback)(intptr_t, int, int, int), void (*release)(intptr_t)) {
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

void QHeaderView_connect_sectionResized(QHeaderView* self, intptr_t slot, void (*callback)(intptr_t, int, int, int), void (*release)(intptr_t)) {
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

void QHeaderView_connect_sectionPressed(QHeaderView* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) {
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

void QHeaderView_connect_sectionClicked(QHeaderView* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) {
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

void QHeaderView_connect_sectionEntered(QHeaderView* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) {
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

void QHeaderView_connect_sectionDoubleClicked(QHeaderView* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) {
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

void QHeaderView_connect_sectionCountChanged(QHeaderView* self, intptr_t slot, void (*callback)(intptr_t, int, int), void (*release)(intptr_t)) {
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

void QHeaderView_connect_sectionHandleDoubleClicked(QHeaderView* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) {
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

void QHeaderView_connect_geometriesChanged(QHeaderView* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
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

void QHeaderView_connect_sortIndicatorChanged(QHeaderView* self, intptr_t slot, void (*callback)(intptr_t, int, int), void (*release)(intptr_t)) {
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

void QHeaderView_sortIndicatorClearableChanged(QHeaderView* self, bool clearable) {
	self->sortIndicatorClearableChanged(clearable);
}

void QHeaderView_connect_sortIndicatorClearableChanged(QHeaderView* self, intptr_t slot, void (*callback)(intptr_t, bool), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, bool), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, bool);
		void operator()(bool clearable) {
			bool sigval1 = clearable;
			callback(slot, sigval1);
		}
	};
	VirtualQHeaderView::connect(self, static_cast<void (QHeaderView::*)(bool)>(&QHeaderView::sortIndicatorClearableChanged), self, local_caller{slot, callback, release});
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

QMetaObject* QHeaderView_virtualbase_metaObject(const void* self) {

	return (QMetaObject*) ( (const VirtualQHeaderView*)(self) )->QHeaderView::metaObject();

}

void* QHeaderView_virtualbase_metacast(void* self, const char* param1) {

	return ( (VirtualQHeaderView*)(self) )->QHeaderView::qt_metacast(param1);

}

int QHeaderView_virtualbase_metacall(void* self, int param1, int param2, void** param3) {

	return ( (VirtualQHeaderView*)(self) )->QHeaderView::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);

}

void QHeaderView_virtualbase_setModel(void* self, QAbstractItemModel* model) {

	( (VirtualQHeaderView*)(self) )->QHeaderView::setModel(model);

}

QSize* QHeaderView_virtualbase_sizeHint(const void* self) {

	return new QSize(( (const VirtualQHeaderView*)(self) )->QHeaderView::sizeHint());

}

void QHeaderView_virtualbase_setVisible(void* self, bool v) {

	( (VirtualQHeaderView*)(self) )->QHeaderView::setVisible(v);

}

void QHeaderView_virtualbase_doItemsLayout(void* self) {

	( (VirtualQHeaderView*)(self) )->QHeaderView::doItemsLayout();

}

void QHeaderView_virtualbase_reset(void* self) {

	( (VirtualQHeaderView*)(self) )->QHeaderView::reset();

}

void QHeaderView_virtualbase_currentChanged(void* self, QModelIndex* current, QModelIndex* old) {

	( (VirtualQHeaderView*)(self) )->QHeaderView::currentChanged(*current, *old);

}

bool QHeaderView_virtualbase_event(void* self, QEvent* e) {

	return ( (VirtualQHeaderView*)(self) )->QHeaderView::event(e);

}

void QHeaderView_virtualbase_paintEvent(void* self, QPaintEvent* e) {

	( (VirtualQHeaderView*)(self) )->QHeaderView::paintEvent(e);

}

void QHeaderView_virtualbase_mousePressEvent(void* self, QMouseEvent* e) {

	( (VirtualQHeaderView*)(self) )->QHeaderView::mousePressEvent(e);

}

void QHeaderView_virtualbase_mouseMoveEvent(void* self, QMouseEvent* e) {

	( (VirtualQHeaderView*)(self) )->QHeaderView::mouseMoveEvent(e);

}

void QHeaderView_virtualbase_mouseReleaseEvent(void* self, QMouseEvent* e) {

	( (VirtualQHeaderView*)(self) )->QHeaderView::mouseReleaseEvent(e);

}

void QHeaderView_virtualbase_mouseDoubleClickEvent(void* self, QMouseEvent* e) {

	( (VirtualQHeaderView*)(self) )->QHeaderView::mouseDoubleClickEvent(e);

}

bool QHeaderView_virtualbase_viewportEvent(void* self, QEvent* e) {

	return ( (VirtualQHeaderView*)(self) )->QHeaderView::viewportEvent(e);

}

void QHeaderView_virtualbase_paintSection(const void* self, QPainter* painter, QRect* rect, int logicalIndex) {

	( (const VirtualQHeaderView*)(self) )->QHeaderView::paintSection(painter, *rect, static_cast<int>(logicalIndex));

}

QSize* QHeaderView_virtualbase_sectionSizeFromContents(const void* self, int logicalIndex) {

	return new QSize(( (const VirtualQHeaderView*)(self) )->QHeaderView::sectionSizeFromContents(static_cast<int>(logicalIndex)));

}

int QHeaderView_virtualbase_horizontalOffset(const void* self) {

	return ( (const VirtualQHeaderView*)(self) )->QHeaderView::horizontalOffset();

}

int QHeaderView_virtualbase_verticalOffset(const void* self) {

	return ( (const VirtualQHeaderView*)(self) )->QHeaderView::verticalOffset();

}

void QHeaderView_virtualbase_updateGeometries(void* self) {

	( (VirtualQHeaderView*)(self) )->QHeaderView::updateGeometries();

}

void QHeaderView_virtualbase_scrollContentsBy(void* self, int dx, int dy) {

	( (VirtualQHeaderView*)(self) )->QHeaderView::scrollContentsBy(static_cast<int>(dx), static_cast<int>(dy));

}

void QHeaderView_virtualbase_dataChanged(void* self, QModelIndex* topLeft, QModelIndex* bottomRight, struct miqt_array /* of int */  roles) {
	QList<int> roles_QList;
	roles_QList.reserve(roles.len);
	int* roles_arr = static_cast<int*>(roles.data);
	for(size_t i = 0; i < roles.len; ++i) {
		roles_QList.push_back(static_cast<int>(roles_arr[i]));
	}

	( (VirtualQHeaderView*)(self) )->QHeaderView::dataChanged(*topLeft, *bottomRight, roles_QList);

}

void QHeaderView_virtualbase_rowsInserted(void* self, QModelIndex* parent, int start, int end) {

	( (VirtualQHeaderView*)(self) )->QHeaderView::rowsInserted(*parent, static_cast<int>(start), static_cast<int>(end));

}

QRect* QHeaderView_virtualbase_visualRect(const void* self, QModelIndex* index) {

	return new QRect(( (const VirtualQHeaderView*)(self) )->QHeaderView::visualRect(*index));

}

void QHeaderView_virtualbase_scrollTo(void* self, QModelIndex* index, int hint) {

	( (VirtualQHeaderView*)(self) )->QHeaderView::scrollTo(*index, static_cast<VirtualQHeaderView::ScrollHint>(hint));

}

QModelIndex* QHeaderView_virtualbase_indexAt(const void* self, QPoint* p) {

	return new QModelIndex(( (const VirtualQHeaderView*)(self) )->QHeaderView::indexAt(*p));

}

bool QHeaderView_virtualbase_isIndexHidden(const void* self, QModelIndex* index) {

	return ( (const VirtualQHeaderView*)(self) )->QHeaderView::isIndexHidden(*index);

}

QModelIndex* QHeaderView_virtualbase_moveCursor(void* self, int param1, int param2) {

	return new QModelIndex(( (VirtualQHeaderView*)(self) )->QHeaderView::moveCursor(static_cast<VirtualQHeaderView::CursorAction>(param1), static_cast<Qt::KeyboardModifiers>(param2)));

}

void QHeaderView_virtualbase_setSelection(void* self, QRect* rect, int flags) {

	( (VirtualQHeaderView*)(self) )->QHeaderView::setSelection(*rect, static_cast<QItemSelectionModel::SelectionFlags>(flags));

}

QRegion* QHeaderView_virtualbase_visualRegionForSelection(const void* self, QItemSelection* selection) {

	return new QRegion(( (const VirtualQHeaderView*)(self) )->QHeaderView::visualRegionForSelection(*selection));

}

void QHeaderView_virtualbase_initStyleOptionForIndex(const void* self, QStyleOptionHeader* option, int logicalIndex) {

	( (const VirtualQHeaderView*)(self) )->QHeaderView::initStyleOptionForIndex(option, static_cast<int>(logicalIndex));

}

void QHeaderView_virtualbase_initStyleOption(const void* self, QStyleOptionHeader* option) {

	( (const VirtualQHeaderView*)(self) )->QHeaderView::initStyleOption(option);

}

void QHeaderView_virtualbase_setSelectionModel(void* self, QItemSelectionModel* selectionModel) {

	( (VirtualQHeaderView*)(self) )->QHeaderView::setSelectionModel(selectionModel);

}

void QHeaderView_virtualbase_keyboardSearch(void* self, struct miqt_string search) {
	QString search_QString = QString::fromUtf8(search.data, search.len);

	( (VirtualQHeaderView*)(self) )->QHeaderView::keyboardSearch(search_QString);

}

int QHeaderView_virtualbase_sizeHintForRow(const void* self, int row) {

	return ( (const VirtualQHeaderView*)(self) )->QHeaderView::sizeHintForRow(static_cast<int>(row));

}

int QHeaderView_virtualbase_sizeHintForColumn(const void* self, int column) {

	return ( (const VirtualQHeaderView*)(self) )->QHeaderView::sizeHintForColumn(static_cast<int>(column));

}

QAbstractItemDelegate* QHeaderView_virtualbase_itemDelegateForIndex(const void* self, QModelIndex* index) {

	return ( (const VirtualQHeaderView*)(self) )->QHeaderView::itemDelegateForIndex(*index);

}

QVariant* QHeaderView_virtualbase_inputMethodQuery(const void* self, int query) {

	return new QVariant(( (const VirtualQHeaderView*)(self) )->QHeaderView::inputMethodQuery(static_cast<Qt::InputMethodQuery>(query)));

}

void QHeaderView_virtualbase_setRootIndex(void* self, QModelIndex* index) {

	( (VirtualQHeaderView*)(self) )->QHeaderView::setRootIndex(*index);

}

void QHeaderView_virtualbase_selectAll(void* self) {

	( (VirtualQHeaderView*)(self) )->QHeaderView::selectAll();

}

void QHeaderView_virtualbase_rowsAboutToBeRemoved(void* self, QModelIndex* parent, int start, int end) {

	( (VirtualQHeaderView*)(self) )->QHeaderView::rowsAboutToBeRemoved(*parent, static_cast<int>(start), static_cast<int>(end));

}

void QHeaderView_virtualbase_selectionChanged(void* self, QItemSelection* selected, QItemSelection* deselected) {

	( (VirtualQHeaderView*)(self) )->QHeaderView::selectionChanged(*selected, *deselected);

}

void QHeaderView_virtualbase_updateEditorData(void* self) {

	( (VirtualQHeaderView*)(self) )->QHeaderView::updateEditorData();

}

void QHeaderView_virtualbase_updateEditorGeometries(void* self) {

	( (VirtualQHeaderView*)(self) )->QHeaderView::updateEditorGeometries();

}

void QHeaderView_virtualbase_verticalScrollbarAction(void* self, int action) {

	( (VirtualQHeaderView*)(self) )->QHeaderView::verticalScrollbarAction(static_cast<int>(action));

}

void QHeaderView_virtualbase_horizontalScrollbarAction(void* self, int action) {

	( (VirtualQHeaderView*)(self) )->QHeaderView::horizontalScrollbarAction(static_cast<int>(action));

}

void QHeaderView_virtualbase_verticalScrollbarValueChanged(void* self, int value) {

	( (VirtualQHeaderView*)(self) )->QHeaderView::verticalScrollbarValueChanged(static_cast<int>(value));

}

void QHeaderView_virtualbase_horizontalScrollbarValueChanged(void* self, int value) {

	( (VirtualQHeaderView*)(self) )->QHeaderView::horizontalScrollbarValueChanged(static_cast<int>(value));

}

void QHeaderView_virtualbase_closeEditor(void* self, QWidget* editor, int hint) {

	( (VirtualQHeaderView*)(self) )->QHeaderView::closeEditor(editor, static_cast<QAbstractItemDelegate::EndEditHint>(hint));

}

void QHeaderView_virtualbase_commitData(void* self, QWidget* editor) {

	( (VirtualQHeaderView*)(self) )->QHeaderView::commitData(editor);

}

void QHeaderView_virtualbase_editorDestroyed(void* self, QObject* editor) {

	( (VirtualQHeaderView*)(self) )->QHeaderView::editorDestroyed(editor);

}

struct miqt_array /* of QModelIndex* */  QHeaderView_virtualbase_selectedIndexes(const void* self) {

	QModelIndexList _ret = ( (const VirtualQHeaderView*)(self) )->QHeaderView::selectedIndexes();
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

bool QHeaderView_virtualbase_edit2(void* self, QModelIndex* index, int trigger, QEvent* event) {

	return ( (VirtualQHeaderView*)(self) )->QHeaderView::edit(*index, static_cast<VirtualQHeaderView::EditTrigger>(trigger), event);

}

int QHeaderView_virtualbase_selectionCommand(const void* self, QModelIndex* index, QEvent* event) {

	QItemSelectionModel::SelectionFlags _ret = ( (const VirtualQHeaderView*)(self) )->QHeaderView::selectionCommand(*index, event);
	return static_cast<int>(_ret);

}

void QHeaderView_virtualbase_startDrag(void* self, int supportedActions) {

	( (VirtualQHeaderView*)(self) )->QHeaderView::startDrag(static_cast<Qt::DropActions>(supportedActions));

}

void QHeaderView_virtualbase_initViewItemOption(const void* self, QStyleOptionViewItem* option) {

	( (const VirtualQHeaderView*)(self) )->QHeaderView::initViewItemOption(option);

}

bool QHeaderView_virtualbase_focusNextPrevChild(void* self, bool next) {

	return ( (VirtualQHeaderView*)(self) )->QHeaderView::focusNextPrevChild(next);

}

void QHeaderView_virtualbase_dragEnterEvent(void* self, QDragEnterEvent* event) {

	( (VirtualQHeaderView*)(self) )->QHeaderView::dragEnterEvent(event);

}

void QHeaderView_virtualbase_dragMoveEvent(void* self, QDragMoveEvent* event) {

	( (VirtualQHeaderView*)(self) )->QHeaderView::dragMoveEvent(event);

}

void QHeaderView_virtualbase_dragLeaveEvent(void* self, QDragLeaveEvent* event) {

	( (VirtualQHeaderView*)(self) )->QHeaderView::dragLeaveEvent(event);

}

void QHeaderView_virtualbase_dropEvent(void* self, QDropEvent* event) {

	( (VirtualQHeaderView*)(self) )->QHeaderView::dropEvent(event);

}

void QHeaderView_virtualbase_focusInEvent(void* self, QFocusEvent* event) {

	( (VirtualQHeaderView*)(self) )->QHeaderView::focusInEvent(event);

}

void QHeaderView_virtualbase_focusOutEvent(void* self, QFocusEvent* event) {

	( (VirtualQHeaderView*)(self) )->QHeaderView::focusOutEvent(event);

}

void QHeaderView_virtualbase_keyPressEvent(void* self, QKeyEvent* event) {

	( (VirtualQHeaderView*)(self) )->QHeaderView::keyPressEvent(event);

}

void QHeaderView_virtualbase_resizeEvent(void* self, QResizeEvent* event) {

	( (VirtualQHeaderView*)(self) )->QHeaderView::resizeEvent(event);

}

void QHeaderView_virtualbase_timerEvent(void* self, QTimerEvent* event) {

	( (VirtualQHeaderView*)(self) )->QHeaderView::timerEvent(event);

}

void QHeaderView_virtualbase_inputMethodEvent(void* self, QInputMethodEvent* event) {

	( (VirtualQHeaderView*)(self) )->QHeaderView::inputMethodEvent(event);

}

bool QHeaderView_virtualbase_eventFilter(void* self, QObject* object, QEvent* event) {

	return ( (VirtualQHeaderView*)(self) )->QHeaderView::eventFilter(object, event);

}

QSize* QHeaderView_virtualbase_viewportSizeHint(const void* self) {

	return new QSize(( (const VirtualQHeaderView*)(self) )->QHeaderView::viewportSizeHint());

}

QSize* QHeaderView_virtualbase_minimumSizeHint(const void* self) {

	return new QSize(( (const VirtualQHeaderView*)(self) )->QHeaderView::minimumSizeHint());

}

void QHeaderView_virtualbase_setupViewport(void* self, QWidget* viewport) {

	( (VirtualQHeaderView*)(self) )->QHeaderView::setupViewport(viewport);

}

void QHeaderView_virtualbase_wheelEvent(void* self, QWheelEvent* param1) {

	( (VirtualQHeaderView*)(self) )->QHeaderView::wheelEvent(param1);

}

void QHeaderView_virtualbase_contextMenuEvent(void* self, QContextMenuEvent* param1) {

	( (VirtualQHeaderView*)(self) )->QHeaderView::contextMenuEvent(param1);

}

void QHeaderView_virtualbase_changeEvent(void* self, QEvent* param1) {

	( (VirtualQHeaderView*)(self) )->QHeaderView::changeEvent(param1);

}

int QHeaderView_virtualbase_devType(const void* self) {

	return ( (const VirtualQHeaderView*)(self) )->QHeaderView::devType();

}

int QHeaderView_virtualbase_heightForWidth(const void* self, int param1) {

	return ( (const VirtualQHeaderView*)(self) )->QHeaderView::heightForWidth(static_cast<int>(param1));

}

bool QHeaderView_virtualbase_hasHeightForWidth(const void* self) {

	return ( (const VirtualQHeaderView*)(self) )->QHeaderView::hasHeightForWidth();

}

QPaintEngine* QHeaderView_virtualbase_paintEngine(const void* self) {

	return ( (const VirtualQHeaderView*)(self) )->QHeaderView::paintEngine();

}

void QHeaderView_virtualbase_keyReleaseEvent(void* self, QKeyEvent* event) {

	( (VirtualQHeaderView*)(self) )->QHeaderView::keyReleaseEvent(event);

}

void QHeaderView_virtualbase_enterEvent(void* self, QEnterEvent* event) {

	( (VirtualQHeaderView*)(self) )->QHeaderView::enterEvent(event);

}

void QHeaderView_virtualbase_leaveEvent(void* self, QEvent* event) {

	( (VirtualQHeaderView*)(self) )->QHeaderView::leaveEvent(event);

}

void QHeaderView_virtualbase_moveEvent(void* self, QMoveEvent* event) {

	( (VirtualQHeaderView*)(self) )->QHeaderView::moveEvent(event);

}

void QHeaderView_virtualbase_closeEvent(void* self, QCloseEvent* event) {

	( (VirtualQHeaderView*)(self) )->QHeaderView::closeEvent(event);

}

void QHeaderView_virtualbase_tabletEvent(void* self, QTabletEvent* event) {

	( (VirtualQHeaderView*)(self) )->QHeaderView::tabletEvent(event);

}

void QHeaderView_virtualbase_actionEvent(void* self, QActionEvent* event) {

	( (VirtualQHeaderView*)(self) )->QHeaderView::actionEvent(event);

}

void QHeaderView_virtualbase_showEvent(void* self, QShowEvent* event) {

	( (VirtualQHeaderView*)(self) )->QHeaderView::showEvent(event);

}

void QHeaderView_virtualbase_hideEvent(void* self, QHideEvent* event) {

	( (VirtualQHeaderView*)(self) )->QHeaderView::hideEvent(event);

}

bool QHeaderView_virtualbase_nativeEvent(void* self, struct miqt_string eventType, void* message, intptr_t* result) {
	QByteArray eventType_QByteArray(eventType.data, eventType.len);

	return ( (VirtualQHeaderView*)(self) )->QHeaderView::nativeEvent(eventType_QByteArray, message, (qintptr*)(result));

}

int QHeaderView_virtualbase_metric(const void* self, int param1) {

	return ( (const VirtualQHeaderView*)(self) )->QHeaderView::metric(static_cast<VirtualQHeaderView::PaintDeviceMetric>(param1));

}

void QHeaderView_virtualbase_initPainter(const void* self, QPainter* painter) {

	( (const VirtualQHeaderView*)(self) )->QHeaderView::initPainter(painter);

}

QPaintDevice* QHeaderView_virtualbase_redirected(const void* self, QPoint* offset) {

	return ( (const VirtualQHeaderView*)(self) )->QHeaderView::redirected(offset);

}

QPainter* QHeaderView_virtualbase_sharedPainter(const void* self) {

	return ( (const VirtualQHeaderView*)(self) )->QHeaderView::sharedPainter();

}

void QHeaderView_virtualbase_childEvent(void* self, QChildEvent* event) {

	( (VirtualQHeaderView*)(self) )->QHeaderView::childEvent(event);

}

void QHeaderView_virtualbase_customEvent(void* self, QEvent* event) {

	( (VirtualQHeaderView*)(self) )->QHeaderView::customEvent(event);

}

void QHeaderView_virtualbase_connectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQHeaderView*)(self) )->QHeaderView::connectNotify(*signal);

}

void QHeaderView_virtualbase_disconnectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQHeaderView*)(self) )->QHeaderView::disconnectNotify(*signal);

}

const QMetaObject* QHeaderView_staticMetaObject() { return &QHeaderView::staticMetaObject; }
void QHeaderView_protectedbase_updateSection(bool* _dynamic_cast_ok, void* self, int logicalIndex) {
	VirtualQHeaderView* self_cast = dynamic_cast<VirtualQHeaderView*>( (QHeaderView*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->updateSection(static_cast<int>(logicalIndex));

}

void QHeaderView_protectedbase_resizeSections2(bool* _dynamic_cast_ok, void* self) {
	VirtualQHeaderView* self_cast = dynamic_cast<VirtualQHeaderView*>( (QHeaderView*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->resizeSections();

}

void QHeaderView_protectedbase_sectionsInserted(bool* _dynamic_cast_ok, void* self, QModelIndex* parent, int logicalFirst, int logicalLast) {
	VirtualQHeaderView* self_cast = dynamic_cast<VirtualQHeaderView*>( (QHeaderView*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->sectionsInserted(*parent, static_cast<int>(logicalFirst), static_cast<int>(logicalLast));

}

void QHeaderView_protectedbase_sectionsAboutToBeRemoved(bool* _dynamic_cast_ok, void* self, QModelIndex* parent, int logicalFirst, int logicalLast) {
	VirtualQHeaderView* self_cast = dynamic_cast<VirtualQHeaderView*>( (QHeaderView*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->sectionsAboutToBeRemoved(*parent, static_cast<int>(logicalFirst), static_cast<int>(logicalLast));

}

void QHeaderView_protectedbase_initialize(bool* _dynamic_cast_ok, void* self) {
	VirtualQHeaderView* self_cast = dynamic_cast<VirtualQHeaderView*>( (QHeaderView*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->initialize();

}

void QHeaderView_protectedbase_initializeSections(bool* _dynamic_cast_ok, void* self) {
	VirtualQHeaderView* self_cast = dynamic_cast<VirtualQHeaderView*>( (QHeaderView*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->initializeSections();

}

void QHeaderView_protectedbase_initializeSections2(bool* _dynamic_cast_ok, void* self, int start, int end) {
	VirtualQHeaderView* self_cast = dynamic_cast<VirtualQHeaderView*>( (QHeaderView*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->initializeSections(static_cast<int>(start), static_cast<int>(end));

}

int QHeaderView_protectedbase_state(bool* _dynamic_cast_ok, const void* self) {
	VirtualQHeaderView* self_cast = dynamic_cast<VirtualQHeaderView*>( (QHeaderView*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return (int)(0);
	}
	
	*_dynamic_cast_ok = true;
	
	VirtualQHeaderView::State _ret = self_cast->state();
	return static_cast<int>(_ret);

}

void QHeaderView_protectedbase_setState(bool* _dynamic_cast_ok, void* self, int state) {
	VirtualQHeaderView* self_cast = dynamic_cast<VirtualQHeaderView*>( (QHeaderView*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->setState(static_cast<VirtualQHeaderView::State>(state));

}

void QHeaderView_protectedbase_scheduleDelayedItemsLayout(bool* _dynamic_cast_ok, void* self) {
	VirtualQHeaderView* self_cast = dynamic_cast<VirtualQHeaderView*>( (QHeaderView*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->scheduleDelayedItemsLayout();

}

void QHeaderView_protectedbase_executeDelayedItemsLayout(bool* _dynamic_cast_ok, void* self) {
	VirtualQHeaderView* self_cast = dynamic_cast<VirtualQHeaderView*>( (QHeaderView*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->executeDelayedItemsLayout();

}

void QHeaderView_protectedbase_setDirtyRegion(bool* _dynamic_cast_ok, void* self, QRegion* region) {
	VirtualQHeaderView* self_cast = dynamic_cast<VirtualQHeaderView*>( (QHeaderView*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->setDirtyRegion(*region);

}

void QHeaderView_protectedbase_scrollDirtyRegion(bool* _dynamic_cast_ok, void* self, int dx, int dy) {
	VirtualQHeaderView* self_cast = dynamic_cast<VirtualQHeaderView*>( (QHeaderView*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->scrollDirtyRegion(static_cast<int>(dx), static_cast<int>(dy));

}

QPoint* QHeaderView_protectedbase_dirtyRegionOffset(bool* _dynamic_cast_ok, const void* self) {
	VirtualQHeaderView* self_cast = dynamic_cast<VirtualQHeaderView*>( (QHeaderView*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return nullptr;
	}
	
	*_dynamic_cast_ok = true;
	
	return new QPoint(self_cast->dirtyRegionOffset());

}

void QHeaderView_protectedbase_startAutoScroll(bool* _dynamic_cast_ok, void* self) {
	VirtualQHeaderView* self_cast = dynamic_cast<VirtualQHeaderView*>( (QHeaderView*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->startAutoScroll();

}

void QHeaderView_protectedbase_stopAutoScroll(bool* _dynamic_cast_ok, void* self) {
	VirtualQHeaderView* self_cast = dynamic_cast<VirtualQHeaderView*>( (QHeaderView*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->stopAutoScroll();

}

void QHeaderView_protectedbase_doAutoScroll(bool* _dynamic_cast_ok, void* self) {
	VirtualQHeaderView* self_cast = dynamic_cast<VirtualQHeaderView*>( (QHeaderView*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->doAutoScroll();

}

int QHeaderView_protectedbase_dropIndicatorPosition(bool* _dynamic_cast_ok, const void* self) {
	VirtualQHeaderView* self_cast = dynamic_cast<VirtualQHeaderView*>( (QHeaderView*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return (int)(0);
	}
	
	*_dynamic_cast_ok = true;
	
	VirtualQHeaderView::DropIndicatorPosition _ret = self_cast->dropIndicatorPosition();
	return static_cast<int>(_ret);

}

void QHeaderView_protectedbase_setViewportMargins(bool* _dynamic_cast_ok, void* self, int left, int top, int right, int bottom) {
	VirtualQHeaderView* self_cast = dynamic_cast<VirtualQHeaderView*>( (QHeaderView*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->setViewportMargins(static_cast<int>(left), static_cast<int>(top), static_cast<int>(right), static_cast<int>(bottom));

}

QMargins* QHeaderView_protectedbase_viewportMargins(bool* _dynamic_cast_ok, const void* self) {
	VirtualQHeaderView* self_cast = dynamic_cast<VirtualQHeaderView*>( (QHeaderView*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return nullptr;
	}
	
	*_dynamic_cast_ok = true;
	
	return new QMargins(self_cast->viewportMargins());

}

void QHeaderView_protectedbase_drawFrame(bool* _dynamic_cast_ok, void* self, QPainter* param1) {
	VirtualQHeaderView* self_cast = dynamic_cast<VirtualQHeaderView*>( (QHeaderView*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->drawFrame(param1);

}

void QHeaderView_protectedbase_updateMicroFocus(bool* _dynamic_cast_ok, void* self) {
	VirtualQHeaderView* self_cast = dynamic_cast<VirtualQHeaderView*>( (QHeaderView*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->updateMicroFocus();

}

void QHeaderView_protectedbase_create(bool* _dynamic_cast_ok, void* self) {
	VirtualQHeaderView* self_cast = dynamic_cast<VirtualQHeaderView*>( (QHeaderView*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->create();

}

void QHeaderView_protectedbase_destroy(bool* _dynamic_cast_ok, void* self) {
	VirtualQHeaderView* self_cast = dynamic_cast<VirtualQHeaderView*>( (QHeaderView*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->destroy();

}

bool QHeaderView_protectedbase_focusNextChild(bool* _dynamic_cast_ok, void* self) {
	VirtualQHeaderView* self_cast = dynamic_cast<VirtualQHeaderView*>( (QHeaderView*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return false;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->focusNextChild();

}

bool QHeaderView_protectedbase_focusPreviousChild(bool* _dynamic_cast_ok, void* self) {
	VirtualQHeaderView* self_cast = dynamic_cast<VirtualQHeaderView*>( (QHeaderView*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return false;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->focusPreviousChild();

}

QObject* QHeaderView_protectedbase_sender(bool* _dynamic_cast_ok, const void* self) {
	VirtualQHeaderView* self_cast = dynamic_cast<VirtualQHeaderView*>( (QHeaderView*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return nullptr;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->sender();

}

int QHeaderView_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self) {
	VirtualQHeaderView* self_cast = dynamic_cast<VirtualQHeaderView*>( (QHeaderView*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return 0;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->senderSignalIndex();

}

int QHeaderView_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal) {
	VirtualQHeaderView* self_cast = dynamic_cast<VirtualQHeaderView*>( (QHeaderView*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return 0;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->receivers(signal);

}

bool QHeaderView_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal) {
	VirtualQHeaderView* self_cast = dynamic_cast<VirtualQHeaderView*>( (QHeaderView*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return false;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->isSignalConnected(*signal);

}

void QHeaderView_delete(QHeaderView* self) {
	delete self;
}

