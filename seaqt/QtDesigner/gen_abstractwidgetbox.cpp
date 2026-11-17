#include <QActionEvent>
#include <QByteArray>
#include <QChildEvent>
#include <QCloseEvent>
#include <QContextMenuEvent>
#include <QDesignerDnDItemInterface>
#include <QDesignerWidgetBoxInterface>
#define WORKAROUND_INNER_CLASS_DEFINITION_QDesignerWidgetBoxInterface__Category
#define WORKAROUND_INNER_CLASS_DEFINITION_QDesignerWidgetBoxInterface__Widget
#include <QDragEnterEvent>
#include <QDragLeaveEvent>
#include <QDragMoveEvent>
#include <QDropEvent>
#include <QEnterEvent>
#include <QEvent>
#include <QFocusEvent>
#include <QHideEvent>
#include <QInputMethodEvent>
#include <QKeyEvent>
#include <QList>
#include <QMetaMethod>
#include <QMetaObject>
#include <QMouseEvent>
#include <QMoveEvent>
#include <QObject>
#include <QPaintDevice>
#include <QPaintEngine>
#include <QPaintEvent>
#include <QPainter>
#include <QPoint>
#include <QResizeEvent>
#include <QShowEvent>
#include <QSize>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QTabletEvent>
#include <QTimerEvent>
#include <QVariant>
#include <QWheelEvent>
#include <QWidget>
#include <abstractwidgetbox.h>
#include "gen_abstractwidgetbox.h"

#ifndef SEAQT_ALIGNED_SIZEOF
#define SEAQT_ALIGNED_SIZEOF 1
#include <cstddef>
template<typename T>
static constexpr std::size_t seaqt_aligned_sizeof() {
	constexpr auto alignment = sizeof(std::max_align_t);
	return (sizeof(T) + alignment - 1) & ~(alignment - 1);
}
#endif

class VirtualQDesignerWidgetBoxInterface final : public QDesignerWidgetBoxInterface {
	const QDesignerWidgetBoxInterface_VTable* vtbl;
public:
	friend void* QDesignerWidgetBoxInterface_vdata(VirtualQDesignerWidgetBoxInterface* self);
	friend VirtualQDesignerWidgetBoxInterface* vdata_QDesignerWidgetBoxInterface(void* vdata);

	VirtualQDesignerWidgetBoxInterface(const QDesignerWidgetBoxInterface_VTable* vtbl): QDesignerWidgetBoxInterface(), vtbl(vtbl) {}
	VirtualQDesignerWidgetBoxInterface(const QDesignerWidgetBoxInterface_VTable* vtbl, QWidget* parent): QDesignerWidgetBoxInterface(parent), vtbl(vtbl) {}
	VirtualQDesignerWidgetBoxInterface(const QDesignerWidgetBoxInterface_VTable* vtbl, QWidget* parent, Qt::WindowFlags flags): QDesignerWidgetBoxInterface(parent, flags), vtbl(vtbl) {}

	virtual ~VirtualQDesignerWidgetBoxInterface() override { if(vtbl->destructor) vtbl->destructor(this); }

	void operator delete(void* p) { ::operator delete(p); }
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QDesignerWidgetBoxInterface::metaObject();
		}

		QMetaObject* callback_return_value = vtbl->metaObject(this);
		return callback_return_value;
	}

	friend QMetaObject* QDesignerWidgetBoxInterface_virtualbase_metaObject(const VirtualQDesignerWidgetBoxInterface* self);

	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QDesignerWidgetBoxInterface::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;
		void* callback_return_value = vtbl->metacast(this, sigval1);
		return callback_return_value;
	}

	friend void* QDesignerWidgetBoxInterface_virtualbase_metacast(VirtualQDesignerWidgetBoxInterface* self, const char* param1);

	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QDesignerWidgetBoxInterface::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;
		int callback_return_value = vtbl->metacall(this, sigval1, sigval2, sigval3);
		return static_cast<int>(callback_return_value);
	}

	friend int QDesignerWidgetBoxInterface_virtualbase_metacall(VirtualQDesignerWidgetBoxInterface* self, int param1, int param2, void** param3);

	virtual int categoryCount() const override {
		if (vtbl->categoryCount == 0) {
			return 0; // Pure virtual, there is no base we can call
		}

		int callback_return_value = vtbl->categoryCount(this);
		return static_cast<int>(callback_return_value);
	}

	virtual QDesignerWidgetBoxInterface::Category category(int cat_idx) const override {
		if (vtbl->category == 0) {
			return QDesignerWidgetBoxInterface::Category(); // Pure virtual, there is no base we can call
		}

		int sigval1 = cat_idx;
		QDesignerWidgetBoxInterface__Category* callback_return_value = vtbl->category(this, sigval1);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;
		return callback_return_value_Value;
	}

	virtual void addCategory(const QDesignerWidgetBoxInterface::Category& cat) override {
		if (vtbl->addCategory == 0) {
			return; // Pure virtual, there is no base we can call
		}

		const QDesignerWidgetBoxInterface::Category& cat_ret = cat;
		// Cast returned reference into pointer
		QDesignerWidgetBoxInterface__Category* sigval1 = const_cast<QDesignerWidgetBoxInterface::Category*>(&cat_ret);
		vtbl->addCategory(this, sigval1);
	}

	virtual void removeCategory(int cat_idx) override {
		if (vtbl->removeCategory == 0) {
			return; // Pure virtual, there is no base we can call
		}

		int sigval1 = cat_idx;
		vtbl->removeCategory(this, sigval1);
	}

	virtual int widgetCount(int cat_idx) const override {
		if (vtbl->widgetCount == 0) {
			return 0; // Pure virtual, there is no base we can call
		}

		int sigval1 = cat_idx;
		int callback_return_value = vtbl->widgetCount(this, sigval1);
		return static_cast<int>(callback_return_value);
	}

	virtual QDesignerWidgetBoxInterface::Widget widget(int cat_idx, int wgt_idx) const override {
		if (vtbl->widget == 0) {
			return QDesignerWidgetBoxInterface::Widget(); // Pure virtual, there is no base we can call
		}

		int sigval1 = cat_idx;
		int sigval2 = wgt_idx;
		QDesignerWidgetBoxInterface__Widget* callback_return_value = vtbl->widget(this, sigval1, sigval2);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;
		return callback_return_value_Value;
	}

	virtual void addWidget(int cat_idx, const QDesignerWidgetBoxInterface::Widget& wgt) override {
		if (vtbl->addWidget == 0) {
			return; // Pure virtual, there is no base we can call
		}

		int sigval1 = cat_idx;
		const QDesignerWidgetBoxInterface::Widget& wgt_ret = wgt;
		// Cast returned reference into pointer
		QDesignerWidgetBoxInterface__Widget* sigval2 = const_cast<QDesignerWidgetBoxInterface::Widget*>(&wgt_ret);
		vtbl->addWidget(this, sigval1, sigval2);
	}

	virtual void removeWidget(int cat_idx, int wgt_idx) override {
		if (vtbl->removeWidget == 0) {
			return; // Pure virtual, there is no base we can call
		}

		int sigval1 = cat_idx;
		int sigval2 = wgt_idx;
		vtbl->removeWidget(this, sigval1, sigval2);
	}

	virtual void dropWidgets(const QList<QDesignerDnDItemInterface *>& item_list, const QPoint& global_mouse_pos) override {
		if (vtbl->dropWidgets == 0) {
			return; // Pure virtual, there is no base we can call
		}

		const QList<QDesignerDnDItemInterface *>& item_list_ret = item_list;
		// Convert QList<> from C++ memory to manually-managed C memory
		QDesignerDnDItemInterface** item_list_arr = static_cast<QDesignerDnDItemInterface**>(malloc(sizeof(QDesignerDnDItemInterface*) * item_list_ret.length()));
		for (size_t i = 0, e = item_list_ret.length(); i < e; ++i) {
			item_list_arr[i] = item_list_ret[i];
		}
		struct seaqt_array item_list_out;
		item_list_out.len = item_list_ret.length();
		item_list_out.data = static_cast<void*>(item_list_arr);
		struct seaqt_array /* of QDesignerDnDItemInterface* */  sigval1 = item_list_out;
		const QPoint& global_mouse_pos_ret = global_mouse_pos;
		// Cast returned reference into pointer
		QPoint* sigval2 = const_cast<QPoint*>(&global_mouse_pos_ret);
		vtbl->dropWidgets(this, sigval1, sigval2);
	}

	virtual void setFileName(const QString& file_name) override {
		if (vtbl->setFileName == 0) {
			return; // Pure virtual, there is no base we can call
		}

		const QString file_name_ret = file_name;
		// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
		QByteArray file_name_b = file_name_ret.toUtf8();
		struct seaqt_string file_name_ms;
		file_name_ms.len = file_name_b.length();
		file_name_ms.data = static_cast<char*>(malloc(file_name_ms.len));
		memcpy(file_name_ms.data, file_name_b.data(), file_name_ms.len);
		struct seaqt_string sigval1 = file_name_ms;
		vtbl->setFileName(this, sigval1);
	}

	virtual QString fileName() const override {
		if (vtbl->fileName == 0) {
			return QString(); // Pure virtual, there is no base we can call
		}

		struct seaqt_string callback_return_value = vtbl->fileName(this);
		QString callback_return_value_QString = QString::fromUtf8(callback_return_value.data, callback_return_value.len);
		free(callback_return_value.data);
		return callback_return_value_QString;
	}

	virtual bool load() override {
		if (vtbl->load == 0) {
			return false; // Pure virtual, there is no base we can call
		}

		bool callback_return_value = vtbl->load(this);
		return callback_return_value;
	}

	virtual bool save() override {
		if (vtbl->save == 0) {
			return false; // Pure virtual, there is no base we can call
		}

		bool callback_return_value = vtbl->save(this);
		return callback_return_value;
	}

	virtual int devType() const override {
		if (vtbl->devType == 0) {
			return QDesignerWidgetBoxInterface::devType();
		}

		int callback_return_value = vtbl->devType(this);
		return static_cast<int>(callback_return_value);
	}

	friend int QDesignerWidgetBoxInterface_virtualbase_devType(const VirtualQDesignerWidgetBoxInterface* self);

	virtual void setVisible(bool visible) override {
		if (vtbl->setVisible == 0) {
			QDesignerWidgetBoxInterface::setVisible(visible);
			return;
		}

		bool sigval1 = visible;
		vtbl->setVisible(this, sigval1);
	}

	friend void QDesignerWidgetBoxInterface_virtualbase_setVisible(VirtualQDesignerWidgetBoxInterface* self, bool visible);

	virtual QSize sizeHint() const override {
		if (vtbl->sizeHint == 0) {
			return QDesignerWidgetBoxInterface::sizeHint();
		}

		QSize* callback_return_value = vtbl->sizeHint(this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;
		return callback_return_value_Value;
	}

	friend QSize* QDesignerWidgetBoxInterface_virtualbase_sizeHint(const VirtualQDesignerWidgetBoxInterface* self);

	virtual QSize minimumSizeHint() const override {
		if (vtbl->minimumSizeHint == 0) {
			return QDesignerWidgetBoxInterface::minimumSizeHint();
		}

		QSize* callback_return_value = vtbl->minimumSizeHint(this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;
		return callback_return_value_Value;
	}

	friend QSize* QDesignerWidgetBoxInterface_virtualbase_minimumSizeHint(const VirtualQDesignerWidgetBoxInterface* self);

	virtual int heightForWidth(int param1) const override {
		if (vtbl->heightForWidth == 0) {
			return QDesignerWidgetBoxInterface::heightForWidth(param1);
		}

		int sigval1 = param1;
		int callback_return_value = vtbl->heightForWidth(this, sigval1);
		return static_cast<int>(callback_return_value);
	}

	friend int QDesignerWidgetBoxInterface_virtualbase_heightForWidth(const VirtualQDesignerWidgetBoxInterface* self, int param1);

	virtual bool hasHeightForWidth() const override {
		if (vtbl->hasHeightForWidth == 0) {
			return QDesignerWidgetBoxInterface::hasHeightForWidth();
		}

		bool callback_return_value = vtbl->hasHeightForWidth(this);
		return callback_return_value;
	}

	friend bool QDesignerWidgetBoxInterface_virtualbase_hasHeightForWidth(const VirtualQDesignerWidgetBoxInterface* self);

	virtual QPaintEngine* paintEngine() const override {
		if (vtbl->paintEngine == 0) {
			return QDesignerWidgetBoxInterface::paintEngine();
		}

		QPaintEngine* callback_return_value = vtbl->paintEngine(this);
		return callback_return_value;
	}

	friend QPaintEngine* QDesignerWidgetBoxInterface_virtualbase_paintEngine(const VirtualQDesignerWidgetBoxInterface* self);

	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QDesignerWidgetBoxInterface::event(event);
		}

		QEvent* sigval1 = event;
		bool callback_return_value = vtbl->event(this, sigval1);
		return callback_return_value;
	}

	friend bool QDesignerWidgetBoxInterface_virtualbase_event(VirtualQDesignerWidgetBoxInterface* self, QEvent* event);

	virtual void mousePressEvent(QMouseEvent* event) override {
		if (vtbl->mousePressEvent == 0) {
			QDesignerWidgetBoxInterface::mousePressEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;
		vtbl->mousePressEvent(this, sigval1);
	}

	friend void QDesignerWidgetBoxInterface_virtualbase_mousePressEvent(VirtualQDesignerWidgetBoxInterface* self, QMouseEvent* event);

	virtual void mouseReleaseEvent(QMouseEvent* event) override {
		if (vtbl->mouseReleaseEvent == 0) {
			QDesignerWidgetBoxInterface::mouseReleaseEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;
		vtbl->mouseReleaseEvent(this, sigval1);
	}

	friend void QDesignerWidgetBoxInterface_virtualbase_mouseReleaseEvent(VirtualQDesignerWidgetBoxInterface* self, QMouseEvent* event);

	virtual void mouseDoubleClickEvent(QMouseEvent* event) override {
		if (vtbl->mouseDoubleClickEvent == 0) {
			QDesignerWidgetBoxInterface::mouseDoubleClickEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;
		vtbl->mouseDoubleClickEvent(this, sigval1);
	}

	friend void QDesignerWidgetBoxInterface_virtualbase_mouseDoubleClickEvent(VirtualQDesignerWidgetBoxInterface* self, QMouseEvent* event);

	virtual void mouseMoveEvent(QMouseEvent* event) override {
		if (vtbl->mouseMoveEvent == 0) {
			QDesignerWidgetBoxInterface::mouseMoveEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;
		vtbl->mouseMoveEvent(this, sigval1);
	}

	friend void QDesignerWidgetBoxInterface_virtualbase_mouseMoveEvent(VirtualQDesignerWidgetBoxInterface* self, QMouseEvent* event);

	virtual void wheelEvent(QWheelEvent* event) override {
		if (vtbl->wheelEvent == 0) {
			QDesignerWidgetBoxInterface::wheelEvent(event);
			return;
		}

		QWheelEvent* sigval1 = event;
		vtbl->wheelEvent(this, sigval1);
	}

	friend void QDesignerWidgetBoxInterface_virtualbase_wheelEvent(VirtualQDesignerWidgetBoxInterface* self, QWheelEvent* event);

	virtual void keyPressEvent(QKeyEvent* event) override {
		if (vtbl->keyPressEvent == 0) {
			QDesignerWidgetBoxInterface::keyPressEvent(event);
			return;
		}

		QKeyEvent* sigval1 = event;
		vtbl->keyPressEvent(this, sigval1);
	}

	friend void QDesignerWidgetBoxInterface_virtualbase_keyPressEvent(VirtualQDesignerWidgetBoxInterface* self, QKeyEvent* event);

	virtual void keyReleaseEvent(QKeyEvent* event) override {
		if (vtbl->keyReleaseEvent == 0) {
			QDesignerWidgetBoxInterface::keyReleaseEvent(event);
			return;
		}

		QKeyEvent* sigval1 = event;
		vtbl->keyReleaseEvent(this, sigval1);
	}

	friend void QDesignerWidgetBoxInterface_virtualbase_keyReleaseEvent(VirtualQDesignerWidgetBoxInterface* self, QKeyEvent* event);

	virtual void focusInEvent(QFocusEvent* event) override {
		if (vtbl->focusInEvent == 0) {
			QDesignerWidgetBoxInterface::focusInEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;
		vtbl->focusInEvent(this, sigval1);
	}

	friend void QDesignerWidgetBoxInterface_virtualbase_focusInEvent(VirtualQDesignerWidgetBoxInterface* self, QFocusEvent* event);

	virtual void focusOutEvent(QFocusEvent* event) override {
		if (vtbl->focusOutEvent == 0) {
			QDesignerWidgetBoxInterface::focusOutEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;
		vtbl->focusOutEvent(this, sigval1);
	}

	friend void QDesignerWidgetBoxInterface_virtualbase_focusOutEvent(VirtualQDesignerWidgetBoxInterface* self, QFocusEvent* event);

	virtual void enterEvent(QEnterEvent* event) override {
		if (vtbl->enterEvent == 0) {
			QDesignerWidgetBoxInterface::enterEvent(event);
			return;
		}

		QEnterEvent* sigval1 = event;
		vtbl->enterEvent(this, sigval1);
	}

	friend void QDesignerWidgetBoxInterface_virtualbase_enterEvent(VirtualQDesignerWidgetBoxInterface* self, QEnterEvent* event);

	virtual void leaveEvent(QEvent* event) override {
		if (vtbl->leaveEvent == 0) {
			QDesignerWidgetBoxInterface::leaveEvent(event);
			return;
		}

		QEvent* sigval1 = event;
		vtbl->leaveEvent(this, sigval1);
	}

	friend void QDesignerWidgetBoxInterface_virtualbase_leaveEvent(VirtualQDesignerWidgetBoxInterface* self, QEvent* event);

	virtual void paintEvent(QPaintEvent* event) override {
		if (vtbl->paintEvent == 0) {
			QDesignerWidgetBoxInterface::paintEvent(event);
			return;
		}

		QPaintEvent* sigval1 = event;
		vtbl->paintEvent(this, sigval1);
	}

	friend void QDesignerWidgetBoxInterface_virtualbase_paintEvent(VirtualQDesignerWidgetBoxInterface* self, QPaintEvent* event);

	virtual void moveEvent(QMoveEvent* event) override {
		if (vtbl->moveEvent == 0) {
			QDesignerWidgetBoxInterface::moveEvent(event);
			return;
		}

		QMoveEvent* sigval1 = event;
		vtbl->moveEvent(this, sigval1);
	}

	friend void QDesignerWidgetBoxInterface_virtualbase_moveEvent(VirtualQDesignerWidgetBoxInterface* self, QMoveEvent* event);

	virtual void resizeEvent(QResizeEvent* event) override {
		if (vtbl->resizeEvent == 0) {
			QDesignerWidgetBoxInterface::resizeEvent(event);
			return;
		}

		QResizeEvent* sigval1 = event;
		vtbl->resizeEvent(this, sigval1);
	}

	friend void QDesignerWidgetBoxInterface_virtualbase_resizeEvent(VirtualQDesignerWidgetBoxInterface* self, QResizeEvent* event);

	virtual void closeEvent(QCloseEvent* event) override {
		if (vtbl->closeEvent == 0) {
			QDesignerWidgetBoxInterface::closeEvent(event);
			return;
		}

		QCloseEvent* sigval1 = event;
		vtbl->closeEvent(this, sigval1);
	}

	friend void QDesignerWidgetBoxInterface_virtualbase_closeEvent(VirtualQDesignerWidgetBoxInterface* self, QCloseEvent* event);

	virtual void contextMenuEvent(QContextMenuEvent* event) override {
		if (vtbl->contextMenuEvent == 0) {
			QDesignerWidgetBoxInterface::contextMenuEvent(event);
			return;
		}

		QContextMenuEvent* sigval1 = event;
		vtbl->contextMenuEvent(this, sigval1);
	}

	friend void QDesignerWidgetBoxInterface_virtualbase_contextMenuEvent(VirtualQDesignerWidgetBoxInterface* self, QContextMenuEvent* event);

	virtual void tabletEvent(QTabletEvent* event) override {
		if (vtbl->tabletEvent == 0) {
			QDesignerWidgetBoxInterface::tabletEvent(event);
			return;
		}

		QTabletEvent* sigval1 = event;
		vtbl->tabletEvent(this, sigval1);
	}

	friend void QDesignerWidgetBoxInterface_virtualbase_tabletEvent(VirtualQDesignerWidgetBoxInterface* self, QTabletEvent* event);

	virtual void actionEvent(QActionEvent* event) override {
		if (vtbl->actionEvent == 0) {
			QDesignerWidgetBoxInterface::actionEvent(event);
			return;
		}

		QActionEvent* sigval1 = event;
		vtbl->actionEvent(this, sigval1);
	}

	friend void QDesignerWidgetBoxInterface_virtualbase_actionEvent(VirtualQDesignerWidgetBoxInterface* self, QActionEvent* event);

	virtual void dragEnterEvent(QDragEnterEvent* event) override {
		if (vtbl->dragEnterEvent == 0) {
			QDesignerWidgetBoxInterface::dragEnterEvent(event);
			return;
		}

		QDragEnterEvent* sigval1 = event;
		vtbl->dragEnterEvent(this, sigval1);
	}

	friend void QDesignerWidgetBoxInterface_virtualbase_dragEnterEvent(VirtualQDesignerWidgetBoxInterface* self, QDragEnterEvent* event);

	virtual void dragMoveEvent(QDragMoveEvent* event) override {
		if (vtbl->dragMoveEvent == 0) {
			QDesignerWidgetBoxInterface::dragMoveEvent(event);
			return;
		}

		QDragMoveEvent* sigval1 = event;
		vtbl->dragMoveEvent(this, sigval1);
	}

	friend void QDesignerWidgetBoxInterface_virtualbase_dragMoveEvent(VirtualQDesignerWidgetBoxInterface* self, QDragMoveEvent* event);

	virtual void dragLeaveEvent(QDragLeaveEvent* event) override {
		if (vtbl->dragLeaveEvent == 0) {
			QDesignerWidgetBoxInterface::dragLeaveEvent(event);
			return;
		}

		QDragLeaveEvent* sigval1 = event;
		vtbl->dragLeaveEvent(this, sigval1);
	}

	friend void QDesignerWidgetBoxInterface_virtualbase_dragLeaveEvent(VirtualQDesignerWidgetBoxInterface* self, QDragLeaveEvent* event);

	virtual void dropEvent(QDropEvent* event) override {
		if (vtbl->dropEvent == 0) {
			QDesignerWidgetBoxInterface::dropEvent(event);
			return;
		}

		QDropEvent* sigval1 = event;
		vtbl->dropEvent(this, sigval1);
	}

	friend void QDesignerWidgetBoxInterface_virtualbase_dropEvent(VirtualQDesignerWidgetBoxInterface* self, QDropEvent* event);

	virtual void showEvent(QShowEvent* event) override {
		if (vtbl->showEvent == 0) {
			QDesignerWidgetBoxInterface::showEvent(event);
			return;
		}

		QShowEvent* sigval1 = event;
		vtbl->showEvent(this, sigval1);
	}

	friend void QDesignerWidgetBoxInterface_virtualbase_showEvent(VirtualQDesignerWidgetBoxInterface* self, QShowEvent* event);

	virtual void hideEvent(QHideEvent* event) override {
		if (vtbl->hideEvent == 0) {
			QDesignerWidgetBoxInterface::hideEvent(event);
			return;
		}

		QHideEvent* sigval1 = event;
		vtbl->hideEvent(this, sigval1);
	}

	friend void QDesignerWidgetBoxInterface_virtualbase_hideEvent(VirtualQDesignerWidgetBoxInterface* self, QHideEvent* event);

	virtual bool nativeEvent(const QByteArray& eventType, void* message, qintptr* result) override {
		if (vtbl->nativeEvent == 0) {
			return QDesignerWidgetBoxInterface::nativeEvent(eventType, message, result);
		}

		const QByteArray eventType_qb = eventType;
		struct seaqt_string eventType_ms;
		eventType_ms.len = eventType_qb.length();
		eventType_ms.data = static_cast<char*>(malloc(eventType_ms.len));
		memcpy(eventType_ms.data, eventType_qb.data(), eventType_ms.len);
		struct seaqt_string sigval1 = eventType_ms;
		void* sigval2 = message;
		qintptr* result_ret = result;
		intptr_t* sigval3 = (intptr_t*)(result_ret);
		bool callback_return_value = vtbl->nativeEvent(this, sigval1, sigval2, sigval3);
		return callback_return_value;
	}

	friend bool QDesignerWidgetBoxInterface_virtualbase_nativeEvent(VirtualQDesignerWidgetBoxInterface* self, struct seaqt_string eventType, void* message, intptr_t* result);

	virtual void changeEvent(QEvent* param1) override {
		if (vtbl->changeEvent == 0) {
			QDesignerWidgetBoxInterface::changeEvent(param1);
			return;
		}

		QEvent* sigval1 = param1;
		vtbl->changeEvent(this, sigval1);
	}

	friend void QDesignerWidgetBoxInterface_virtualbase_changeEvent(VirtualQDesignerWidgetBoxInterface* self, QEvent* param1);

	virtual int metric(QPaintDevice::PaintDeviceMetric param1) const override {
		if (vtbl->metric == 0) {
			return QDesignerWidgetBoxInterface::metric(param1);
		}

		QPaintDevice::PaintDeviceMetric param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int callback_return_value = vtbl->metric(this, sigval1);
		return static_cast<int>(callback_return_value);
	}

	friend int QDesignerWidgetBoxInterface_virtualbase_metric(const VirtualQDesignerWidgetBoxInterface* self, int param1);

	virtual void initPainter(QPainter* painter) const override {
		if (vtbl->initPainter == 0) {
			QDesignerWidgetBoxInterface::initPainter(painter);
			return;
		}

		QPainter* sigval1 = painter;
		vtbl->initPainter(this, sigval1);
	}

	friend void QDesignerWidgetBoxInterface_virtualbase_initPainter(const VirtualQDesignerWidgetBoxInterface* self, QPainter* painter);

	virtual QPaintDevice* redirected(QPoint* offset) const override {
		if (vtbl->redirected == 0) {
			return QDesignerWidgetBoxInterface::redirected(offset);
		}

		QPoint* sigval1 = offset;
		QPaintDevice* callback_return_value = vtbl->redirected(this, sigval1);
		return callback_return_value;
	}

	friend QPaintDevice* QDesignerWidgetBoxInterface_virtualbase_redirected(const VirtualQDesignerWidgetBoxInterface* self, QPoint* offset);

	virtual QPainter* sharedPainter() const override {
		if (vtbl->sharedPainter == 0) {
			return QDesignerWidgetBoxInterface::sharedPainter();
		}

		QPainter* callback_return_value = vtbl->sharedPainter(this);
		return callback_return_value;
	}

	friend QPainter* QDesignerWidgetBoxInterface_virtualbase_sharedPainter(const VirtualQDesignerWidgetBoxInterface* self);

	virtual void inputMethodEvent(QInputMethodEvent* param1) override {
		if (vtbl->inputMethodEvent == 0) {
			QDesignerWidgetBoxInterface::inputMethodEvent(param1);
			return;
		}

		QInputMethodEvent* sigval1 = param1;
		vtbl->inputMethodEvent(this, sigval1);
	}

	friend void QDesignerWidgetBoxInterface_virtualbase_inputMethodEvent(VirtualQDesignerWidgetBoxInterface* self, QInputMethodEvent* param1);

	virtual QVariant inputMethodQuery(Qt::InputMethodQuery param1) const override {
		if (vtbl->inputMethodQuery == 0) {
			return QDesignerWidgetBoxInterface::inputMethodQuery(param1);
		}

		Qt::InputMethodQuery param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		QVariant* callback_return_value = vtbl->inputMethodQuery(this, sigval1);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;
		return callback_return_value_Value;
	}

	friend QVariant* QDesignerWidgetBoxInterface_virtualbase_inputMethodQuery(const VirtualQDesignerWidgetBoxInterface* self, int param1);

	virtual bool focusNextPrevChild(bool next) override {
		if (vtbl->focusNextPrevChild == 0) {
			return QDesignerWidgetBoxInterface::focusNextPrevChild(next);
		}

		bool sigval1 = next;
		bool callback_return_value = vtbl->focusNextPrevChild(this, sigval1);
		return callback_return_value;
	}

	friend bool QDesignerWidgetBoxInterface_virtualbase_focusNextPrevChild(VirtualQDesignerWidgetBoxInterface* self, bool next);

	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QDesignerWidgetBoxInterface::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;
		bool callback_return_value = vtbl->eventFilter(this, sigval1, sigval2);
		return callback_return_value;
	}

	friend bool QDesignerWidgetBoxInterface_virtualbase_eventFilter(VirtualQDesignerWidgetBoxInterface* self, QObject* watched, QEvent* event);

	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QDesignerWidgetBoxInterface::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;
		vtbl->timerEvent(this, sigval1);
	}

	friend void QDesignerWidgetBoxInterface_virtualbase_timerEvent(VirtualQDesignerWidgetBoxInterface* self, QTimerEvent* event);

	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QDesignerWidgetBoxInterface::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;
		vtbl->childEvent(this, sigval1);
	}

	friend void QDesignerWidgetBoxInterface_virtualbase_childEvent(VirtualQDesignerWidgetBoxInterface* self, QChildEvent* event);

	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QDesignerWidgetBoxInterface::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;
		vtbl->customEvent(this, sigval1);
	}

	friend void QDesignerWidgetBoxInterface_virtualbase_customEvent(VirtualQDesignerWidgetBoxInterface* self, QEvent* event);

	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QDesignerWidgetBoxInterface::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);
		vtbl->connectNotify(this, sigval1);
	}

	friend void QDesignerWidgetBoxInterface_virtualbase_connectNotify(VirtualQDesignerWidgetBoxInterface* self, QMetaMethod* signal);

	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QDesignerWidgetBoxInterface::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);
		vtbl->disconnectNotify(this, sigval1);
	}

	friend void QDesignerWidgetBoxInterface_virtualbase_disconnectNotify(VirtualQDesignerWidgetBoxInterface* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend void QDesignerWidgetBoxInterface_protectedbase_updateMicroFocus(VirtualQDesignerWidgetBoxInterface* self);
	friend void QDesignerWidgetBoxInterface_protectedbase_create(VirtualQDesignerWidgetBoxInterface* self);
	friend void QDesignerWidgetBoxInterface_protectedbase_destroy(VirtualQDesignerWidgetBoxInterface* self);
	friend bool QDesignerWidgetBoxInterface_protectedbase_focusNextChild(VirtualQDesignerWidgetBoxInterface* self);
	friend bool QDesignerWidgetBoxInterface_protectedbase_focusPreviousChild(VirtualQDesignerWidgetBoxInterface* self);
	friend QObject* QDesignerWidgetBoxInterface_protectedbase_sender(const VirtualQDesignerWidgetBoxInterface* self);
	friend int QDesignerWidgetBoxInterface_protectedbase_senderSignalIndex(const VirtualQDesignerWidgetBoxInterface* self);
	friend int QDesignerWidgetBoxInterface_protectedbase_receivers(const VirtualQDesignerWidgetBoxInterface* self, const char* signal);
	friend bool QDesignerWidgetBoxInterface_protectedbase_isSignalConnected(const VirtualQDesignerWidgetBoxInterface* self, QMetaMethod* signal);
};

VirtualQDesignerWidgetBoxInterface* QDesignerWidgetBoxInterface_new(const QDesignerWidgetBoxInterface_VTable* vtbl, size_t vdata) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQDesignerWidgetBoxInterface>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQDesignerWidgetBoxInterface(vtbl) : nullptr;
}

VirtualQDesignerWidgetBoxInterface* QDesignerWidgetBoxInterface_new_parent(const QDesignerWidgetBoxInterface_VTable* vtbl, size_t vdata, QWidget* parent) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQDesignerWidgetBoxInterface>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQDesignerWidgetBoxInterface(vtbl, parent) : nullptr;
}

VirtualQDesignerWidgetBoxInterface* QDesignerWidgetBoxInterface_new_parent_flags(const QDesignerWidgetBoxInterface_VTable* vtbl, size_t vdata, QWidget* parent, int flags) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQDesignerWidgetBoxInterface>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQDesignerWidgetBoxInterface(vtbl, parent, static_cast<Qt::WindowFlags>(flags)) : nullptr;
}

void QDesignerWidgetBoxInterface_virtbase(QDesignerWidgetBoxInterface* src, QWidget** outptr_QWidget) {
	*outptr_QWidget = static_cast<QWidget*>(src);
}

QMetaObject* QDesignerWidgetBoxInterface_metaObject(const QDesignerWidgetBoxInterface* self) {
	return (QMetaObject*) self->metaObject();
}

void* QDesignerWidgetBoxInterface_metacast(QDesignerWidgetBoxInterface* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QDesignerWidgetBoxInterface_metacall(QDesignerWidgetBoxInterface* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct seaqt_string QDesignerWidgetBoxInterface_tr_s(const char* s) {
	QString _ret = QDesignerWidgetBoxInterface::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

int QDesignerWidgetBoxInterface_categoryCount(const QDesignerWidgetBoxInterface* self) {
	return self->categoryCount();
}

QDesignerWidgetBoxInterface__Category* QDesignerWidgetBoxInterface_category(const QDesignerWidgetBoxInterface* self, int cat_idx) {
	return new QDesignerWidgetBoxInterface::Category(self->category(static_cast<int>(cat_idx)));
}

void QDesignerWidgetBoxInterface_addCategory(QDesignerWidgetBoxInterface* self, QDesignerWidgetBoxInterface__Category* cat) {
	self->addCategory(*cat);
}

void QDesignerWidgetBoxInterface_removeCategory(QDesignerWidgetBoxInterface* self, int cat_idx) {
	self->removeCategory(static_cast<int>(cat_idx));
}

int QDesignerWidgetBoxInterface_widgetCount(const QDesignerWidgetBoxInterface* self, int cat_idx) {
	return self->widgetCount(static_cast<int>(cat_idx));
}

QDesignerWidgetBoxInterface__Widget* QDesignerWidgetBoxInterface_widget(const QDesignerWidgetBoxInterface* self, int cat_idx, int wgt_idx) {
	return new QDesignerWidgetBoxInterface::Widget(self->widget(static_cast<int>(cat_idx), static_cast<int>(wgt_idx)));
}

void QDesignerWidgetBoxInterface_addWidget(QDesignerWidgetBoxInterface* self, int cat_idx, QDesignerWidgetBoxInterface__Widget* wgt) {
	self->addWidget(static_cast<int>(cat_idx), *wgt);
}

void QDesignerWidgetBoxInterface_removeWidget(QDesignerWidgetBoxInterface* self, int cat_idx, int wgt_idx) {
	self->removeWidget(static_cast<int>(cat_idx), static_cast<int>(wgt_idx));
}

int QDesignerWidgetBoxInterface_findOrInsertCategory(QDesignerWidgetBoxInterface* self, struct seaqt_string categoryName) {
	QString categoryName_QString = QString::fromUtf8(categoryName.data, categoryName.len);
	return self->findOrInsertCategory(categoryName_QString);
}

void QDesignerWidgetBoxInterface_dropWidgets(QDesignerWidgetBoxInterface* self, struct seaqt_array /* of QDesignerDnDItemInterface* */  item_list, QPoint* global_mouse_pos) {
	QList<QDesignerDnDItemInterface *> item_list_QList;
	item_list_QList.reserve(item_list.len);
	QDesignerDnDItemInterface** item_list_arr = static_cast<QDesignerDnDItemInterface**>(item_list.data);
	for(size_t i = 0; i < item_list.len; ++i) {
		item_list_QList.push_back(item_list_arr[i]);
	}
	self->dropWidgets(item_list_QList, *global_mouse_pos);
}

void QDesignerWidgetBoxInterface_setFileName(QDesignerWidgetBoxInterface* self, struct seaqt_string file_name) {
	QString file_name_QString = QString::fromUtf8(file_name.data, file_name.len);
	self->setFileName(file_name_QString);
}

struct seaqt_string QDesignerWidgetBoxInterface_fileName(const QDesignerWidgetBoxInterface* self) {
	QString _ret = self->fileName();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

bool QDesignerWidgetBoxInterface_load(QDesignerWidgetBoxInterface* self) {
	return self->load();
}

bool QDesignerWidgetBoxInterface_save(QDesignerWidgetBoxInterface* self) {
	return self->save();
}

struct seaqt_string QDesignerWidgetBoxInterface_tr_s_c(const char* s, const char* c) {
	QString _ret = QDesignerWidgetBoxInterface::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QDesignerWidgetBoxInterface_tr_s_c_n(const char* s, const char* c, int n) {
	QString _ret = QDesignerWidgetBoxInterface::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

const QMetaObject* QDesignerWidgetBoxInterface_staticMetaObject() { return &QDesignerWidgetBoxInterface::staticMetaObject; }
void* QDesignerWidgetBoxInterface_vdata(VirtualQDesignerWidgetBoxInterface* self) { return reinterpret_cast<void*>(reinterpret_cast<char*>(self) + seaqt_aligned_sizeof<VirtualQDesignerWidgetBoxInterface>()); }
VirtualQDesignerWidgetBoxInterface* vdata_QDesignerWidgetBoxInterface(void* vdata) { return reinterpret_cast<VirtualQDesignerWidgetBoxInterface*>(reinterpret_cast<char*>(vdata) - seaqt_aligned_sizeof<VirtualQDesignerWidgetBoxInterface>()); }

QMetaObject* QDesignerWidgetBoxInterface_virtualbase_metaObject(const VirtualQDesignerWidgetBoxInterface* self) {

	return (QMetaObject*) self->QDesignerWidgetBoxInterface::metaObject();
}

void* QDesignerWidgetBoxInterface_virtualbase_metacast(VirtualQDesignerWidgetBoxInterface* self, const char* param1) {

	return self->QDesignerWidgetBoxInterface::qt_metacast(param1);
}

int QDesignerWidgetBoxInterface_virtualbase_metacall(VirtualQDesignerWidgetBoxInterface* self, int param1, int param2, void** param3) {

	return self->QDesignerWidgetBoxInterface::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

int QDesignerWidgetBoxInterface_virtualbase_devType(const VirtualQDesignerWidgetBoxInterface* self) {

	return self->QDesignerWidgetBoxInterface::devType();
}

void QDesignerWidgetBoxInterface_virtualbase_setVisible(VirtualQDesignerWidgetBoxInterface* self, bool visible) {

	self->QDesignerWidgetBoxInterface::setVisible(visible);
}

QSize* QDesignerWidgetBoxInterface_virtualbase_sizeHint(const VirtualQDesignerWidgetBoxInterface* self) {

	return new QSize(self->QDesignerWidgetBoxInterface::sizeHint());
}

QSize* QDesignerWidgetBoxInterface_virtualbase_minimumSizeHint(const VirtualQDesignerWidgetBoxInterface* self) {

	return new QSize(self->QDesignerWidgetBoxInterface::minimumSizeHint());
}

int QDesignerWidgetBoxInterface_virtualbase_heightForWidth(const VirtualQDesignerWidgetBoxInterface* self, int param1) {

	return self->QDesignerWidgetBoxInterface::heightForWidth(static_cast<int>(param1));
}

bool QDesignerWidgetBoxInterface_virtualbase_hasHeightForWidth(const VirtualQDesignerWidgetBoxInterface* self) {

	return self->QDesignerWidgetBoxInterface::hasHeightForWidth();
}

QPaintEngine* QDesignerWidgetBoxInterface_virtualbase_paintEngine(const VirtualQDesignerWidgetBoxInterface* self) {

	return self->QDesignerWidgetBoxInterface::paintEngine();
}

bool QDesignerWidgetBoxInterface_virtualbase_event(VirtualQDesignerWidgetBoxInterface* self, QEvent* event) {

	return self->QDesignerWidgetBoxInterface::event(event);
}

void QDesignerWidgetBoxInterface_virtualbase_mousePressEvent(VirtualQDesignerWidgetBoxInterface* self, QMouseEvent* event) {

	self->QDesignerWidgetBoxInterface::mousePressEvent(event);
}

void QDesignerWidgetBoxInterface_virtualbase_mouseReleaseEvent(VirtualQDesignerWidgetBoxInterface* self, QMouseEvent* event) {

	self->QDesignerWidgetBoxInterface::mouseReleaseEvent(event);
}

void QDesignerWidgetBoxInterface_virtualbase_mouseDoubleClickEvent(VirtualQDesignerWidgetBoxInterface* self, QMouseEvent* event) {

	self->QDesignerWidgetBoxInterface::mouseDoubleClickEvent(event);
}

void QDesignerWidgetBoxInterface_virtualbase_mouseMoveEvent(VirtualQDesignerWidgetBoxInterface* self, QMouseEvent* event) {

	self->QDesignerWidgetBoxInterface::mouseMoveEvent(event);
}

void QDesignerWidgetBoxInterface_virtualbase_wheelEvent(VirtualQDesignerWidgetBoxInterface* self, QWheelEvent* event) {

	self->QDesignerWidgetBoxInterface::wheelEvent(event);
}

void QDesignerWidgetBoxInterface_virtualbase_keyPressEvent(VirtualQDesignerWidgetBoxInterface* self, QKeyEvent* event) {

	self->QDesignerWidgetBoxInterface::keyPressEvent(event);
}

void QDesignerWidgetBoxInterface_virtualbase_keyReleaseEvent(VirtualQDesignerWidgetBoxInterface* self, QKeyEvent* event) {

	self->QDesignerWidgetBoxInterface::keyReleaseEvent(event);
}

void QDesignerWidgetBoxInterface_virtualbase_focusInEvent(VirtualQDesignerWidgetBoxInterface* self, QFocusEvent* event) {

	self->QDesignerWidgetBoxInterface::focusInEvent(event);
}

void QDesignerWidgetBoxInterface_virtualbase_focusOutEvent(VirtualQDesignerWidgetBoxInterface* self, QFocusEvent* event) {

	self->QDesignerWidgetBoxInterface::focusOutEvent(event);
}

void QDesignerWidgetBoxInterface_virtualbase_enterEvent(VirtualQDesignerWidgetBoxInterface* self, QEnterEvent* event) {

	self->QDesignerWidgetBoxInterface::enterEvent(event);
}

void QDesignerWidgetBoxInterface_virtualbase_leaveEvent(VirtualQDesignerWidgetBoxInterface* self, QEvent* event) {

	self->QDesignerWidgetBoxInterface::leaveEvent(event);
}

void QDesignerWidgetBoxInterface_virtualbase_paintEvent(VirtualQDesignerWidgetBoxInterface* self, QPaintEvent* event) {

	self->QDesignerWidgetBoxInterface::paintEvent(event);
}

void QDesignerWidgetBoxInterface_virtualbase_moveEvent(VirtualQDesignerWidgetBoxInterface* self, QMoveEvent* event) {

	self->QDesignerWidgetBoxInterface::moveEvent(event);
}

void QDesignerWidgetBoxInterface_virtualbase_resizeEvent(VirtualQDesignerWidgetBoxInterface* self, QResizeEvent* event) {

	self->QDesignerWidgetBoxInterface::resizeEvent(event);
}

void QDesignerWidgetBoxInterface_virtualbase_closeEvent(VirtualQDesignerWidgetBoxInterface* self, QCloseEvent* event) {

	self->QDesignerWidgetBoxInterface::closeEvent(event);
}

void QDesignerWidgetBoxInterface_virtualbase_contextMenuEvent(VirtualQDesignerWidgetBoxInterface* self, QContextMenuEvent* event) {

	self->QDesignerWidgetBoxInterface::contextMenuEvent(event);
}

void QDesignerWidgetBoxInterface_virtualbase_tabletEvent(VirtualQDesignerWidgetBoxInterface* self, QTabletEvent* event) {

	self->QDesignerWidgetBoxInterface::tabletEvent(event);
}

void QDesignerWidgetBoxInterface_virtualbase_actionEvent(VirtualQDesignerWidgetBoxInterface* self, QActionEvent* event) {

	self->QDesignerWidgetBoxInterface::actionEvent(event);
}

void QDesignerWidgetBoxInterface_virtualbase_dragEnterEvent(VirtualQDesignerWidgetBoxInterface* self, QDragEnterEvent* event) {

	self->QDesignerWidgetBoxInterface::dragEnterEvent(event);
}

void QDesignerWidgetBoxInterface_virtualbase_dragMoveEvent(VirtualQDesignerWidgetBoxInterface* self, QDragMoveEvent* event) {

	self->QDesignerWidgetBoxInterface::dragMoveEvent(event);
}

void QDesignerWidgetBoxInterface_virtualbase_dragLeaveEvent(VirtualQDesignerWidgetBoxInterface* self, QDragLeaveEvent* event) {

	self->QDesignerWidgetBoxInterface::dragLeaveEvent(event);
}

void QDesignerWidgetBoxInterface_virtualbase_dropEvent(VirtualQDesignerWidgetBoxInterface* self, QDropEvent* event) {

	self->QDesignerWidgetBoxInterface::dropEvent(event);
}

void QDesignerWidgetBoxInterface_virtualbase_showEvent(VirtualQDesignerWidgetBoxInterface* self, QShowEvent* event) {

	self->QDesignerWidgetBoxInterface::showEvent(event);
}

void QDesignerWidgetBoxInterface_virtualbase_hideEvent(VirtualQDesignerWidgetBoxInterface* self, QHideEvent* event) {

	self->QDesignerWidgetBoxInterface::hideEvent(event);
}

bool QDesignerWidgetBoxInterface_virtualbase_nativeEvent(VirtualQDesignerWidgetBoxInterface* self, struct seaqt_string eventType, void* message, intptr_t* result) {
	QByteArray eventType_QByteArray(eventType.data, eventType.len);

	return self->QDesignerWidgetBoxInterface::nativeEvent(eventType_QByteArray, message, (qintptr*)(result));
}

void QDesignerWidgetBoxInterface_virtualbase_changeEvent(VirtualQDesignerWidgetBoxInterface* self, QEvent* param1) {

	self->QDesignerWidgetBoxInterface::changeEvent(param1);
}

int QDesignerWidgetBoxInterface_virtualbase_metric(const VirtualQDesignerWidgetBoxInterface* self, int param1) {

	return self->QDesignerWidgetBoxInterface::metric(static_cast<VirtualQDesignerWidgetBoxInterface::PaintDeviceMetric>(param1));
}

void QDesignerWidgetBoxInterface_virtualbase_initPainter(const VirtualQDesignerWidgetBoxInterface* self, QPainter* painter) {

	self->QDesignerWidgetBoxInterface::initPainter(painter);
}

QPaintDevice* QDesignerWidgetBoxInterface_virtualbase_redirected(const VirtualQDesignerWidgetBoxInterface* self, QPoint* offset) {

	return self->QDesignerWidgetBoxInterface::redirected(offset);
}

QPainter* QDesignerWidgetBoxInterface_virtualbase_sharedPainter(const VirtualQDesignerWidgetBoxInterface* self) {

	return self->QDesignerWidgetBoxInterface::sharedPainter();
}

void QDesignerWidgetBoxInterface_virtualbase_inputMethodEvent(VirtualQDesignerWidgetBoxInterface* self, QInputMethodEvent* param1) {

	self->QDesignerWidgetBoxInterface::inputMethodEvent(param1);
}

QVariant* QDesignerWidgetBoxInterface_virtualbase_inputMethodQuery(const VirtualQDesignerWidgetBoxInterface* self, int param1) {

	return new QVariant(self->QDesignerWidgetBoxInterface::inputMethodQuery(static_cast<Qt::InputMethodQuery>(param1)));
}

bool QDesignerWidgetBoxInterface_virtualbase_focusNextPrevChild(VirtualQDesignerWidgetBoxInterface* self, bool next) {

	return self->QDesignerWidgetBoxInterface::focusNextPrevChild(next);
}

bool QDesignerWidgetBoxInterface_virtualbase_eventFilter(VirtualQDesignerWidgetBoxInterface* self, QObject* watched, QEvent* event) {

	return self->QDesignerWidgetBoxInterface::eventFilter(watched, event);
}

void QDesignerWidgetBoxInterface_virtualbase_timerEvent(VirtualQDesignerWidgetBoxInterface* self, QTimerEvent* event) {

	self->QDesignerWidgetBoxInterface::timerEvent(event);
}

void QDesignerWidgetBoxInterface_virtualbase_childEvent(VirtualQDesignerWidgetBoxInterface* self, QChildEvent* event) {

	self->QDesignerWidgetBoxInterface::childEvent(event);
}

void QDesignerWidgetBoxInterface_virtualbase_customEvent(VirtualQDesignerWidgetBoxInterface* self, QEvent* event) {

	self->QDesignerWidgetBoxInterface::customEvent(event);
}

void QDesignerWidgetBoxInterface_virtualbase_connectNotify(VirtualQDesignerWidgetBoxInterface* self, QMetaMethod* signal) {

	self->QDesignerWidgetBoxInterface::connectNotify(*signal);
}

void QDesignerWidgetBoxInterface_virtualbase_disconnectNotify(VirtualQDesignerWidgetBoxInterface* self, QMetaMethod* signal) {

	self->QDesignerWidgetBoxInterface::disconnectNotify(*signal);
}

void QDesignerWidgetBoxInterface_protectedbase_updateMicroFocus(VirtualQDesignerWidgetBoxInterface* self) {
	self->QDesignerWidgetBoxInterface::updateMicroFocus();
}

void QDesignerWidgetBoxInterface_protectedbase_create(VirtualQDesignerWidgetBoxInterface* self) {
	self->QDesignerWidgetBoxInterface::create();
}

void QDesignerWidgetBoxInterface_protectedbase_destroy(VirtualQDesignerWidgetBoxInterface* self) {
	self->QDesignerWidgetBoxInterface::destroy();
}

bool QDesignerWidgetBoxInterface_protectedbase_focusNextChild(VirtualQDesignerWidgetBoxInterface* self) {
	return self->QDesignerWidgetBoxInterface::focusNextChild();
}

bool QDesignerWidgetBoxInterface_protectedbase_focusPreviousChild(VirtualQDesignerWidgetBoxInterface* self) {
	return self->QDesignerWidgetBoxInterface::focusPreviousChild();
}

QObject* QDesignerWidgetBoxInterface_protectedbase_sender(const VirtualQDesignerWidgetBoxInterface* self) {
	return self->QDesignerWidgetBoxInterface::sender();
}

int QDesignerWidgetBoxInterface_protectedbase_senderSignalIndex(const VirtualQDesignerWidgetBoxInterface* self) {
	return self->QDesignerWidgetBoxInterface::senderSignalIndex();
}

int QDesignerWidgetBoxInterface_protectedbase_receivers(const VirtualQDesignerWidgetBoxInterface* self, const char* signal) {
	return self->QDesignerWidgetBoxInterface::receivers(signal);
}

bool QDesignerWidgetBoxInterface_protectedbase_isSignalConnected(const VirtualQDesignerWidgetBoxInterface* self, QMetaMethod* signal) {
	return self->QDesignerWidgetBoxInterface::isSignalConnected(*signal);
}

void QDesignerWidgetBoxInterface_delete(QDesignerWidgetBoxInterface* self) {
	delete self;
}

QDesignerWidgetBoxInterface__Widget* QDesignerWidgetBoxInterface__Widget_new() {
	return new (std::nothrow) QDesignerWidgetBoxInterface__Widget();
}

QDesignerWidgetBoxInterface__Widget* QDesignerWidgetBoxInterface__Widget_new_from(QDesignerWidgetBoxInterface__Widget* from) {
	return new (std::nothrow) QDesignerWidgetBoxInterface__Widget(*from);
}

QDesignerWidgetBoxInterface__Widget* QDesignerWidgetBoxInterface__Widget_new_aname(struct seaqt_string aname) {
	QString aname_QString = QString::fromUtf8(aname.data, aname.len);
	return new (std::nothrow) QDesignerWidgetBoxInterface__Widget(aname_QString);
}

QDesignerWidgetBoxInterface__Widget* QDesignerWidgetBoxInterface__Widget_new_aname_xml(struct seaqt_string aname, struct seaqt_string xml) {
	QString aname_QString = QString::fromUtf8(aname.data, aname.len);
	QString xml_QString = QString::fromUtf8(xml.data, xml.len);
	return new (std::nothrow) QDesignerWidgetBoxInterface__Widget(aname_QString, xml_QString);
}

QDesignerWidgetBoxInterface__Widget* QDesignerWidgetBoxInterface__Widget_new_aname_xml_icon_name(struct seaqt_string aname, struct seaqt_string xml, struct seaqt_string icon_name) {
	QString aname_QString = QString::fromUtf8(aname.data, aname.len);
	QString xml_QString = QString::fromUtf8(xml.data, xml.len);
	QString icon_name_QString = QString::fromUtf8(icon_name.data, icon_name.len);
	return new (std::nothrow) QDesignerWidgetBoxInterface__Widget(aname_QString, xml_QString, icon_name_QString);
}

QDesignerWidgetBoxInterface__Widget* QDesignerWidgetBoxInterface__Widget_new_aname_xml_icon_name_atype(struct seaqt_string aname, struct seaqt_string xml, struct seaqt_string icon_name, int atype) {
	QString aname_QString = QString::fromUtf8(aname.data, aname.len);
	QString xml_QString = QString::fromUtf8(xml.data, xml.len);
	QString icon_name_QString = QString::fromUtf8(icon_name.data, icon_name.len);
	return new (std::nothrow) QDesignerWidgetBoxInterface__Widget(aname_QString, xml_QString, icon_name_QString, static_cast<QDesignerWidgetBoxInterface::Widget::Type>(atype));
}

void QDesignerWidgetBoxInterface__Widget_operatorAssign(QDesignerWidgetBoxInterface__Widget* self, QDesignerWidgetBoxInterface__Widget* from) {
	self->operator=(*from);
}

struct seaqt_string QDesignerWidgetBoxInterface__Widget_name(const QDesignerWidgetBoxInterface__Widget* self) {
	QString _ret = self->name();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QDesignerWidgetBoxInterface__Widget_setName(QDesignerWidgetBoxInterface__Widget* self, struct seaqt_string aname) {
	QString aname_QString = QString::fromUtf8(aname.data, aname.len);
	self->setName(aname_QString);
}

struct seaqt_string QDesignerWidgetBoxInterface__Widget_domXml(const QDesignerWidgetBoxInterface__Widget* self) {
	QString _ret = self->domXml();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QDesignerWidgetBoxInterface__Widget_setDomXml(QDesignerWidgetBoxInterface__Widget* self, struct seaqt_string xml) {
	QString xml_QString = QString::fromUtf8(xml.data, xml.len);
	self->setDomXml(xml_QString);
}

struct seaqt_string QDesignerWidgetBoxInterface__Widget_iconName(const QDesignerWidgetBoxInterface__Widget* self) {
	QString _ret = self->iconName();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QDesignerWidgetBoxInterface__Widget_setIconName(QDesignerWidgetBoxInterface__Widget* self, struct seaqt_string icon_name) {
	QString icon_name_QString = QString::fromUtf8(icon_name.data, icon_name.len);
	self->setIconName(icon_name_QString);
}

int QDesignerWidgetBoxInterface__Widget_type(const QDesignerWidgetBoxInterface__Widget* self) {
	QDesignerWidgetBoxInterface::Widget::Type _ret = self->type();
	return static_cast<int>(_ret);
}

void QDesignerWidgetBoxInterface__Widget_setType(QDesignerWidgetBoxInterface__Widget* self, int atype) {
	self->setType(static_cast<QDesignerWidgetBoxInterface::Widget::Type>(atype));
}

bool QDesignerWidgetBoxInterface__Widget_isNull(const QDesignerWidgetBoxInterface__Widget* self) {
	return self->isNull();
}

void QDesignerWidgetBoxInterface__Widget_delete(QDesignerWidgetBoxInterface__Widget* self) {
	delete self;
}

QDesignerWidgetBoxInterface__Category* QDesignerWidgetBoxInterface__Category_new() {
	return new (std::nothrow) QDesignerWidgetBoxInterface__Category();
}

QDesignerWidgetBoxInterface__Category* QDesignerWidgetBoxInterface__Category_new_from(QDesignerWidgetBoxInterface__Category* from) {
	return new (std::nothrow) QDesignerWidgetBoxInterface__Category(*from);
}

QDesignerWidgetBoxInterface__Category* QDesignerWidgetBoxInterface__Category_new_aname(struct seaqt_string aname) {
	QString aname_QString = QString::fromUtf8(aname.data, aname.len);
	return new (std::nothrow) QDesignerWidgetBoxInterface__Category(aname_QString);
}

QDesignerWidgetBoxInterface__Category* QDesignerWidgetBoxInterface__Category_new_aname_atype(struct seaqt_string aname, int atype) {
	QString aname_QString = QString::fromUtf8(aname.data, aname.len);
	return new (std::nothrow) QDesignerWidgetBoxInterface__Category(aname_QString, static_cast<QDesignerWidgetBoxInterface::Category::Type>(atype));
}

struct seaqt_string QDesignerWidgetBoxInterface__Category_name(const QDesignerWidgetBoxInterface__Category* self) {
	QString _ret = self->name();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QDesignerWidgetBoxInterface__Category_setName(QDesignerWidgetBoxInterface__Category* self, struct seaqt_string aname) {
	QString aname_QString = QString::fromUtf8(aname.data, aname.len);
	self->setName(aname_QString);
}

int QDesignerWidgetBoxInterface__Category_widgetCount(const QDesignerWidgetBoxInterface__Category* self) {
	return self->widgetCount();
}

QDesignerWidgetBoxInterface__Widget* QDesignerWidgetBoxInterface__Category_widget(const QDesignerWidgetBoxInterface__Category* self, int idx) {
	return new QDesignerWidgetBoxInterface::Widget(self->widget(static_cast<int>(idx)));
}

void QDesignerWidgetBoxInterface__Category_removeWidget(QDesignerWidgetBoxInterface__Category* self, int idx) {
	self->removeWidget(static_cast<int>(idx));
}

void QDesignerWidgetBoxInterface__Category_addWidget(QDesignerWidgetBoxInterface__Category* self, QDesignerWidgetBoxInterface__Widget* awidget) {
	self->addWidget(*awidget);
}

int QDesignerWidgetBoxInterface__Category_type(const QDesignerWidgetBoxInterface__Category* self) {
	QDesignerWidgetBoxInterface::Category::Type _ret = self->type();
	return static_cast<int>(_ret);
}

void QDesignerWidgetBoxInterface__Category_setType(QDesignerWidgetBoxInterface__Category* self, int atype) {
	self->setType(static_cast<QDesignerWidgetBoxInterface::Category::Type>(atype));
}

bool QDesignerWidgetBoxInterface__Category_isNull(const QDesignerWidgetBoxInterface__Category* self) {
	return self->isNull();
}

void QDesignerWidgetBoxInterface__Category_operatorAssign(QDesignerWidgetBoxInterface__Category* self, QDesignerWidgetBoxInterface__Category* from) {
	self->operator=(*from);
}

void QDesignerWidgetBoxInterface__Category_delete(QDesignerWidgetBoxInterface__Category* self) {
	delete self;
}

