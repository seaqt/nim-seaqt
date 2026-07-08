#include <QAction>
#include <QActionEvent>
#include <QByteArray>
#include <QChildEvent>
#include <QCloseEvent>
#include <QContextMenuEvent>
#include <QDesignerActionEditorInterface>
#include <QDesignerFormWindowInterface>
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
#include <abstractactioneditor.h>
#include "gen_abstractactioneditor.h"

#ifndef SEAQT_ALIGNED_SIZEOF
#define SEAQT_ALIGNED_SIZEOF 1
#include <cstddef>
template<typename T>
static constexpr std::size_t seaqt_aligned_sizeof() {
	constexpr auto alignment = sizeof(std::max_align_t);
	return (sizeof(T) + alignment - 1) & ~(alignment - 1);
}
#endif

class VirtualQDesignerActionEditorInterface final : public QDesignerActionEditorInterface {
	const QDesignerActionEditorInterface_VTable* vtbl;
public:
	friend void* QDesignerActionEditorInterface_vdata(VirtualQDesignerActionEditorInterface* self);
	friend VirtualQDesignerActionEditorInterface* vdata_QDesignerActionEditorInterface(void* vdata);

	VirtualQDesignerActionEditorInterface(const QDesignerActionEditorInterface_VTable* vtbl, QWidget* parent): QDesignerActionEditorInterface(parent), vtbl(vtbl) {}
	VirtualQDesignerActionEditorInterface(const QDesignerActionEditorInterface_VTable* vtbl, QWidget* parent, Qt::WindowFlags flags): QDesignerActionEditorInterface(parent, flags), vtbl(vtbl) {}

	virtual ~VirtualQDesignerActionEditorInterface() override { if(vtbl->destructor) vtbl->destructor(this); }

	void operator delete(void* p) { ::operator delete(p); }
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QDesignerActionEditorInterface::metaObject();
		}

		QMetaObject* callback_return_value = vtbl->metaObject(this);
		return callback_return_value;
	}

	friend QMetaObject* QDesignerActionEditorInterface_virtualbase_metaObject(const VirtualQDesignerActionEditorInterface* self);

	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QDesignerActionEditorInterface::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;
		void* callback_return_value = vtbl->metacast(this, sigval1);
		return callback_return_value;
	}

	friend void* QDesignerActionEditorInterface_virtualbase_metacast(VirtualQDesignerActionEditorInterface* self, const char* param1);

	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QDesignerActionEditorInterface::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;
		int callback_return_value = vtbl->metacall(this, sigval1, sigval2, sigval3);
		return static_cast<int>(callback_return_value);
	}

	friend int QDesignerActionEditorInterface_virtualbase_metacall(VirtualQDesignerActionEditorInterface* self, int param1, int param2, void** param3);

	virtual void manageAction(QAction* action) override {
		if (vtbl->manageAction == 0) {
			return; // Pure virtual, there is no base we can call
		}

		QAction* sigval1 = action;
		vtbl->manageAction(this, sigval1);
	}

	virtual void unmanageAction(QAction* action) override {
		if (vtbl->unmanageAction == 0) {
			return; // Pure virtual, there is no base we can call
		}

		QAction* sigval1 = action;
		vtbl->unmanageAction(this, sigval1);
	}

	virtual void setFormWindow(QDesignerFormWindowInterface* formWindow) override {
		if (vtbl->setFormWindow == 0) {
			return; // Pure virtual, there is no base we can call
		}

		QDesignerFormWindowInterface* sigval1 = formWindow;
		vtbl->setFormWindow(this, sigval1);
	}

	virtual int devType() const override {
		if (vtbl->devType == 0) {
			return QDesignerActionEditorInterface::devType();
		}

		int callback_return_value = vtbl->devType(this);
		return static_cast<int>(callback_return_value);
	}

	friend int QDesignerActionEditorInterface_virtualbase_devType(const VirtualQDesignerActionEditorInterface* self);

	virtual void setVisible(bool visible) override {
		if (vtbl->setVisible == 0) {
			QDesignerActionEditorInterface::setVisible(visible);
			return;
		}

		bool sigval1 = visible;
		vtbl->setVisible(this, sigval1);
	}

	friend void QDesignerActionEditorInterface_virtualbase_setVisible(VirtualQDesignerActionEditorInterface* self, bool visible);

	virtual QSize sizeHint() const override {
		if (vtbl->sizeHint == 0) {
			return QDesignerActionEditorInterface::sizeHint();
		}

		QSize* callback_return_value = vtbl->sizeHint(this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;
		return callback_return_value_Value;
	}

	friend QSize* QDesignerActionEditorInterface_virtualbase_sizeHint(const VirtualQDesignerActionEditorInterface* self);

	virtual QSize minimumSizeHint() const override {
		if (vtbl->minimumSizeHint == 0) {
			return QDesignerActionEditorInterface::minimumSizeHint();
		}

		QSize* callback_return_value = vtbl->minimumSizeHint(this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;
		return callback_return_value_Value;
	}

	friend QSize* QDesignerActionEditorInterface_virtualbase_minimumSizeHint(const VirtualQDesignerActionEditorInterface* self);

	virtual int heightForWidth(int param1) const override {
		if (vtbl->heightForWidth == 0) {
			return QDesignerActionEditorInterface::heightForWidth(param1);
		}

		int sigval1 = param1;
		int callback_return_value = vtbl->heightForWidth(this, sigval1);
		return static_cast<int>(callback_return_value);
	}

	friend int QDesignerActionEditorInterface_virtualbase_heightForWidth(const VirtualQDesignerActionEditorInterface* self, int param1);

	virtual bool hasHeightForWidth() const override {
		if (vtbl->hasHeightForWidth == 0) {
			return QDesignerActionEditorInterface::hasHeightForWidth();
		}

		bool callback_return_value = vtbl->hasHeightForWidth(this);
		return callback_return_value;
	}

	friend bool QDesignerActionEditorInterface_virtualbase_hasHeightForWidth(const VirtualQDesignerActionEditorInterface* self);

	virtual QPaintEngine* paintEngine() const override {
		if (vtbl->paintEngine == 0) {
			return QDesignerActionEditorInterface::paintEngine();
		}

		QPaintEngine* callback_return_value = vtbl->paintEngine(this);
		return callback_return_value;
	}

	friend QPaintEngine* QDesignerActionEditorInterface_virtualbase_paintEngine(const VirtualQDesignerActionEditorInterface* self);

	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QDesignerActionEditorInterface::event(event);
		}

		QEvent* sigval1 = event;
		bool callback_return_value = vtbl->event(this, sigval1);
		return callback_return_value;
	}

	friend bool QDesignerActionEditorInterface_virtualbase_event(VirtualQDesignerActionEditorInterface* self, QEvent* event);

	virtual void mousePressEvent(QMouseEvent* event) override {
		if (vtbl->mousePressEvent == 0) {
			QDesignerActionEditorInterface::mousePressEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;
		vtbl->mousePressEvent(this, sigval1);
	}

	friend void QDesignerActionEditorInterface_virtualbase_mousePressEvent(VirtualQDesignerActionEditorInterface* self, QMouseEvent* event);

	virtual void mouseReleaseEvent(QMouseEvent* event) override {
		if (vtbl->mouseReleaseEvent == 0) {
			QDesignerActionEditorInterface::mouseReleaseEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;
		vtbl->mouseReleaseEvent(this, sigval1);
	}

	friend void QDesignerActionEditorInterface_virtualbase_mouseReleaseEvent(VirtualQDesignerActionEditorInterface* self, QMouseEvent* event);

	virtual void mouseDoubleClickEvent(QMouseEvent* event) override {
		if (vtbl->mouseDoubleClickEvent == 0) {
			QDesignerActionEditorInterface::mouseDoubleClickEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;
		vtbl->mouseDoubleClickEvent(this, sigval1);
	}

	friend void QDesignerActionEditorInterface_virtualbase_mouseDoubleClickEvent(VirtualQDesignerActionEditorInterface* self, QMouseEvent* event);

	virtual void mouseMoveEvent(QMouseEvent* event) override {
		if (vtbl->mouseMoveEvent == 0) {
			QDesignerActionEditorInterface::mouseMoveEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;
		vtbl->mouseMoveEvent(this, sigval1);
	}

	friend void QDesignerActionEditorInterface_virtualbase_mouseMoveEvent(VirtualQDesignerActionEditorInterface* self, QMouseEvent* event);

	virtual void wheelEvent(QWheelEvent* event) override {
		if (vtbl->wheelEvent == 0) {
			QDesignerActionEditorInterface::wheelEvent(event);
			return;
		}

		QWheelEvent* sigval1 = event;
		vtbl->wheelEvent(this, sigval1);
	}

	friend void QDesignerActionEditorInterface_virtualbase_wheelEvent(VirtualQDesignerActionEditorInterface* self, QWheelEvent* event);

	virtual void keyPressEvent(QKeyEvent* event) override {
		if (vtbl->keyPressEvent == 0) {
			QDesignerActionEditorInterface::keyPressEvent(event);
			return;
		}

		QKeyEvent* sigval1 = event;
		vtbl->keyPressEvent(this, sigval1);
	}

	friend void QDesignerActionEditorInterface_virtualbase_keyPressEvent(VirtualQDesignerActionEditorInterface* self, QKeyEvent* event);

	virtual void keyReleaseEvent(QKeyEvent* event) override {
		if (vtbl->keyReleaseEvent == 0) {
			QDesignerActionEditorInterface::keyReleaseEvent(event);
			return;
		}

		QKeyEvent* sigval1 = event;
		vtbl->keyReleaseEvent(this, sigval1);
	}

	friend void QDesignerActionEditorInterface_virtualbase_keyReleaseEvent(VirtualQDesignerActionEditorInterface* self, QKeyEvent* event);

	virtual void focusInEvent(QFocusEvent* event) override {
		if (vtbl->focusInEvent == 0) {
			QDesignerActionEditorInterface::focusInEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;
		vtbl->focusInEvent(this, sigval1);
	}

	friend void QDesignerActionEditorInterface_virtualbase_focusInEvent(VirtualQDesignerActionEditorInterface* self, QFocusEvent* event);

	virtual void focusOutEvent(QFocusEvent* event) override {
		if (vtbl->focusOutEvent == 0) {
			QDesignerActionEditorInterface::focusOutEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;
		vtbl->focusOutEvent(this, sigval1);
	}

	friend void QDesignerActionEditorInterface_virtualbase_focusOutEvent(VirtualQDesignerActionEditorInterface* self, QFocusEvent* event);

	virtual void enterEvent(QEnterEvent* event) override {
		if (vtbl->enterEvent == 0) {
			QDesignerActionEditorInterface::enterEvent(event);
			return;
		}

		QEnterEvent* sigval1 = event;
		vtbl->enterEvent(this, sigval1);
	}

	friend void QDesignerActionEditorInterface_virtualbase_enterEvent(VirtualQDesignerActionEditorInterface* self, QEnterEvent* event);

	virtual void leaveEvent(QEvent* event) override {
		if (vtbl->leaveEvent == 0) {
			QDesignerActionEditorInterface::leaveEvent(event);
			return;
		}

		QEvent* sigval1 = event;
		vtbl->leaveEvent(this, sigval1);
	}

	friend void QDesignerActionEditorInterface_virtualbase_leaveEvent(VirtualQDesignerActionEditorInterface* self, QEvent* event);

	virtual void paintEvent(QPaintEvent* event) override {
		if (vtbl->paintEvent == 0) {
			QDesignerActionEditorInterface::paintEvent(event);
			return;
		}

		QPaintEvent* sigval1 = event;
		vtbl->paintEvent(this, sigval1);
	}

	friend void QDesignerActionEditorInterface_virtualbase_paintEvent(VirtualQDesignerActionEditorInterface* self, QPaintEvent* event);

	virtual void moveEvent(QMoveEvent* event) override {
		if (vtbl->moveEvent == 0) {
			QDesignerActionEditorInterface::moveEvent(event);
			return;
		}

		QMoveEvent* sigval1 = event;
		vtbl->moveEvent(this, sigval1);
	}

	friend void QDesignerActionEditorInterface_virtualbase_moveEvent(VirtualQDesignerActionEditorInterface* self, QMoveEvent* event);

	virtual void resizeEvent(QResizeEvent* event) override {
		if (vtbl->resizeEvent == 0) {
			QDesignerActionEditorInterface::resizeEvent(event);
			return;
		}

		QResizeEvent* sigval1 = event;
		vtbl->resizeEvent(this, sigval1);
	}

	friend void QDesignerActionEditorInterface_virtualbase_resizeEvent(VirtualQDesignerActionEditorInterface* self, QResizeEvent* event);

	virtual void closeEvent(QCloseEvent* event) override {
		if (vtbl->closeEvent == 0) {
			QDesignerActionEditorInterface::closeEvent(event);
			return;
		}

		QCloseEvent* sigval1 = event;
		vtbl->closeEvent(this, sigval1);
	}

	friend void QDesignerActionEditorInterface_virtualbase_closeEvent(VirtualQDesignerActionEditorInterface* self, QCloseEvent* event);

	virtual void contextMenuEvent(QContextMenuEvent* event) override {
		if (vtbl->contextMenuEvent == 0) {
			QDesignerActionEditorInterface::contextMenuEvent(event);
			return;
		}

		QContextMenuEvent* sigval1 = event;
		vtbl->contextMenuEvent(this, sigval1);
	}

	friend void QDesignerActionEditorInterface_virtualbase_contextMenuEvent(VirtualQDesignerActionEditorInterface* self, QContextMenuEvent* event);

	virtual void tabletEvent(QTabletEvent* event) override {
		if (vtbl->tabletEvent == 0) {
			QDesignerActionEditorInterface::tabletEvent(event);
			return;
		}

		QTabletEvent* sigval1 = event;
		vtbl->tabletEvent(this, sigval1);
	}

	friend void QDesignerActionEditorInterface_virtualbase_tabletEvent(VirtualQDesignerActionEditorInterface* self, QTabletEvent* event);

	virtual void actionEvent(QActionEvent* event) override {
		if (vtbl->actionEvent == 0) {
			QDesignerActionEditorInterface::actionEvent(event);
			return;
		}

		QActionEvent* sigval1 = event;
		vtbl->actionEvent(this, sigval1);
	}

	friend void QDesignerActionEditorInterface_virtualbase_actionEvent(VirtualQDesignerActionEditorInterface* self, QActionEvent* event);

	virtual void dragEnterEvent(QDragEnterEvent* event) override {
		if (vtbl->dragEnterEvent == 0) {
			QDesignerActionEditorInterface::dragEnterEvent(event);
			return;
		}

		QDragEnterEvent* sigval1 = event;
		vtbl->dragEnterEvent(this, sigval1);
	}

	friend void QDesignerActionEditorInterface_virtualbase_dragEnterEvent(VirtualQDesignerActionEditorInterface* self, QDragEnterEvent* event);

	virtual void dragMoveEvent(QDragMoveEvent* event) override {
		if (vtbl->dragMoveEvent == 0) {
			QDesignerActionEditorInterface::dragMoveEvent(event);
			return;
		}

		QDragMoveEvent* sigval1 = event;
		vtbl->dragMoveEvent(this, sigval1);
	}

	friend void QDesignerActionEditorInterface_virtualbase_dragMoveEvent(VirtualQDesignerActionEditorInterface* self, QDragMoveEvent* event);

	virtual void dragLeaveEvent(QDragLeaveEvent* event) override {
		if (vtbl->dragLeaveEvent == 0) {
			QDesignerActionEditorInterface::dragLeaveEvent(event);
			return;
		}

		QDragLeaveEvent* sigval1 = event;
		vtbl->dragLeaveEvent(this, sigval1);
	}

	friend void QDesignerActionEditorInterface_virtualbase_dragLeaveEvent(VirtualQDesignerActionEditorInterface* self, QDragLeaveEvent* event);

	virtual void dropEvent(QDropEvent* event) override {
		if (vtbl->dropEvent == 0) {
			QDesignerActionEditorInterface::dropEvent(event);
			return;
		}

		QDropEvent* sigval1 = event;
		vtbl->dropEvent(this, sigval1);
	}

	friend void QDesignerActionEditorInterface_virtualbase_dropEvent(VirtualQDesignerActionEditorInterface* self, QDropEvent* event);

	virtual void showEvent(QShowEvent* event) override {
		if (vtbl->showEvent == 0) {
			QDesignerActionEditorInterface::showEvent(event);
			return;
		}

		QShowEvent* sigval1 = event;
		vtbl->showEvent(this, sigval1);
	}

	friend void QDesignerActionEditorInterface_virtualbase_showEvent(VirtualQDesignerActionEditorInterface* self, QShowEvent* event);

	virtual void hideEvent(QHideEvent* event) override {
		if (vtbl->hideEvent == 0) {
			QDesignerActionEditorInterface::hideEvent(event);
			return;
		}

		QHideEvent* sigval1 = event;
		vtbl->hideEvent(this, sigval1);
	}

	friend void QDesignerActionEditorInterface_virtualbase_hideEvent(VirtualQDesignerActionEditorInterface* self, QHideEvent* event);

	virtual bool nativeEvent(const QByteArray& eventType, void* message, qintptr* result) override {
		if (vtbl->nativeEvent == 0) {
			return QDesignerActionEditorInterface::nativeEvent(eventType, message, result);
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

	friend bool QDesignerActionEditorInterface_virtualbase_nativeEvent(VirtualQDesignerActionEditorInterface* self, struct seaqt_string eventType, void* message, intptr_t* result);

	virtual void changeEvent(QEvent* param1) override {
		if (vtbl->changeEvent == 0) {
			QDesignerActionEditorInterface::changeEvent(param1);
			return;
		}

		QEvent* sigval1 = param1;
		vtbl->changeEvent(this, sigval1);
	}

	friend void QDesignerActionEditorInterface_virtualbase_changeEvent(VirtualQDesignerActionEditorInterface* self, QEvent* param1);

	virtual int metric(QPaintDevice::PaintDeviceMetric param1) const override {
		if (vtbl->metric == 0) {
			return QDesignerActionEditorInterface::metric(param1);
		}

		QPaintDevice::PaintDeviceMetric param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int callback_return_value = vtbl->metric(this, sigval1);
		return static_cast<int>(callback_return_value);
	}

	friend int QDesignerActionEditorInterface_virtualbase_metric(const VirtualQDesignerActionEditorInterface* self, int param1);

	virtual void initPainter(QPainter* painter) const override {
		if (vtbl->initPainter == 0) {
			QDesignerActionEditorInterface::initPainter(painter);
			return;
		}

		QPainter* sigval1 = painter;
		vtbl->initPainter(this, sigval1);
	}

	friend void QDesignerActionEditorInterface_virtualbase_initPainter(const VirtualQDesignerActionEditorInterface* self, QPainter* painter);

	virtual QPaintDevice* redirected(QPoint* offset) const override {
		if (vtbl->redirected == 0) {
			return QDesignerActionEditorInterface::redirected(offset);
		}

		QPoint* sigval1 = offset;
		QPaintDevice* callback_return_value = vtbl->redirected(this, sigval1);
		return callback_return_value;
	}

	friend QPaintDevice* QDesignerActionEditorInterface_virtualbase_redirected(const VirtualQDesignerActionEditorInterface* self, QPoint* offset);

	virtual QPainter* sharedPainter() const override {
		if (vtbl->sharedPainter == 0) {
			return QDesignerActionEditorInterface::sharedPainter();
		}

		QPainter* callback_return_value = vtbl->sharedPainter(this);
		return callback_return_value;
	}

	friend QPainter* QDesignerActionEditorInterface_virtualbase_sharedPainter(const VirtualQDesignerActionEditorInterface* self);

	virtual void inputMethodEvent(QInputMethodEvent* param1) override {
		if (vtbl->inputMethodEvent == 0) {
			QDesignerActionEditorInterface::inputMethodEvent(param1);
			return;
		}

		QInputMethodEvent* sigval1 = param1;
		vtbl->inputMethodEvent(this, sigval1);
	}

	friend void QDesignerActionEditorInterface_virtualbase_inputMethodEvent(VirtualQDesignerActionEditorInterface* self, QInputMethodEvent* param1);

	virtual QVariant inputMethodQuery(Qt::InputMethodQuery param1) const override {
		if (vtbl->inputMethodQuery == 0) {
			return QDesignerActionEditorInterface::inputMethodQuery(param1);
		}

		Qt::InputMethodQuery param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		QVariant* callback_return_value = vtbl->inputMethodQuery(this, sigval1);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;
		return callback_return_value_Value;
	}

	friend QVariant* QDesignerActionEditorInterface_virtualbase_inputMethodQuery(const VirtualQDesignerActionEditorInterface* self, int param1);

	virtual bool focusNextPrevChild(bool next) override {
		if (vtbl->focusNextPrevChild == 0) {
			return QDesignerActionEditorInterface::focusNextPrevChild(next);
		}

		bool sigval1 = next;
		bool callback_return_value = vtbl->focusNextPrevChild(this, sigval1);
		return callback_return_value;
	}

	friend bool QDesignerActionEditorInterface_virtualbase_focusNextPrevChild(VirtualQDesignerActionEditorInterface* self, bool next);

	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QDesignerActionEditorInterface::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;
		bool callback_return_value = vtbl->eventFilter(this, sigval1, sigval2);
		return callback_return_value;
	}

	friend bool QDesignerActionEditorInterface_virtualbase_eventFilter(VirtualQDesignerActionEditorInterface* self, QObject* watched, QEvent* event);

	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QDesignerActionEditorInterface::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;
		vtbl->timerEvent(this, sigval1);
	}

	friend void QDesignerActionEditorInterface_virtualbase_timerEvent(VirtualQDesignerActionEditorInterface* self, QTimerEvent* event);

	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QDesignerActionEditorInterface::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;
		vtbl->childEvent(this, sigval1);
	}

	friend void QDesignerActionEditorInterface_virtualbase_childEvent(VirtualQDesignerActionEditorInterface* self, QChildEvent* event);

	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QDesignerActionEditorInterface::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;
		vtbl->customEvent(this, sigval1);
	}

	friend void QDesignerActionEditorInterface_virtualbase_customEvent(VirtualQDesignerActionEditorInterface* self, QEvent* event);

	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QDesignerActionEditorInterface::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);
		vtbl->connectNotify(this, sigval1);
	}

	friend void QDesignerActionEditorInterface_virtualbase_connectNotify(VirtualQDesignerActionEditorInterface* self, QMetaMethod* signal);

	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QDesignerActionEditorInterface::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);
		vtbl->disconnectNotify(this, sigval1);
	}

	friend void QDesignerActionEditorInterface_virtualbase_disconnectNotify(VirtualQDesignerActionEditorInterface* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend void QDesignerActionEditorInterface_protectedbase_updateMicroFocus(VirtualQDesignerActionEditorInterface* self);
	friend void QDesignerActionEditorInterface_protectedbase_create(VirtualQDesignerActionEditorInterface* self);
	friend void QDesignerActionEditorInterface_protectedbase_destroy(VirtualQDesignerActionEditorInterface* self);
	friend bool QDesignerActionEditorInterface_protectedbase_focusNextChild(VirtualQDesignerActionEditorInterface* self);
	friend bool QDesignerActionEditorInterface_protectedbase_focusPreviousChild(VirtualQDesignerActionEditorInterface* self);
	friend QObject* QDesignerActionEditorInterface_protectedbase_sender(const VirtualQDesignerActionEditorInterface* self);
	friend int QDesignerActionEditorInterface_protectedbase_senderSignalIndex(const VirtualQDesignerActionEditorInterface* self);
	friend int QDesignerActionEditorInterface_protectedbase_receivers(const VirtualQDesignerActionEditorInterface* self, const char* signal);
	friend bool QDesignerActionEditorInterface_protectedbase_isSignalConnected(const VirtualQDesignerActionEditorInterface* self, QMetaMethod* signal);
};

VirtualQDesignerActionEditorInterface* QDesignerActionEditorInterface_new_parent(const QDesignerActionEditorInterface_VTable* vtbl, size_t vdata, QWidget* parent) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQDesignerActionEditorInterface>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQDesignerActionEditorInterface(vtbl, parent) : nullptr;
}

VirtualQDesignerActionEditorInterface* QDesignerActionEditorInterface_new_parent_flags(const QDesignerActionEditorInterface_VTable* vtbl, size_t vdata, QWidget* parent, int flags) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQDesignerActionEditorInterface>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQDesignerActionEditorInterface(vtbl, parent, static_cast<Qt::WindowFlags>(flags)) : nullptr;
}

void QDesignerActionEditorInterface_virtbase(QDesignerActionEditorInterface* src, QWidget** outptr_QWidget) {
	*outptr_QWidget = static_cast<QWidget*>(src);
}

QMetaObject* QDesignerActionEditorInterface_metaObject(const QDesignerActionEditorInterface* self) {
	return (QMetaObject*) self->metaObject();
}

void* QDesignerActionEditorInterface_metacast(QDesignerActionEditorInterface* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QDesignerActionEditorInterface_metacall(QDesignerActionEditorInterface* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct seaqt_string QDesignerActionEditorInterface_tr_s(const char* s) {
	QString _ret = QDesignerActionEditorInterface::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QDesignerActionEditorInterface_manageAction(QDesignerActionEditorInterface* self, QAction* action) {
	self->manageAction(action);
}

void QDesignerActionEditorInterface_unmanageAction(QDesignerActionEditorInterface* self, QAction* action) {
	self->unmanageAction(action);
}

void QDesignerActionEditorInterface_setFormWindow(QDesignerActionEditorInterface* self, QDesignerFormWindowInterface* formWindow) {
	self->setFormWindow(formWindow);
}

struct seaqt_string QDesignerActionEditorInterface_tr_s_c(const char* s, const char* c) {
	QString _ret = QDesignerActionEditorInterface::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QDesignerActionEditorInterface_tr_s_c_n(const char* s, const char* c, int n) {
	QString _ret = QDesignerActionEditorInterface::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

const QMetaObject* QDesignerActionEditorInterface_staticMetaObject() { return &QDesignerActionEditorInterface::staticMetaObject; }
void* QDesignerActionEditorInterface_vdata(VirtualQDesignerActionEditorInterface* self) { return reinterpret_cast<void*>(reinterpret_cast<char*>(self) + seaqt_aligned_sizeof<VirtualQDesignerActionEditorInterface>()); }
VirtualQDesignerActionEditorInterface* vdata_QDesignerActionEditorInterface(void* vdata) { return reinterpret_cast<VirtualQDesignerActionEditorInterface*>(reinterpret_cast<char*>(vdata) - seaqt_aligned_sizeof<VirtualQDesignerActionEditorInterface>()); }

QMetaObject* QDesignerActionEditorInterface_virtualbase_metaObject(const VirtualQDesignerActionEditorInterface* self) {

	return (QMetaObject*) self->QDesignerActionEditorInterface::metaObject();
}

void* QDesignerActionEditorInterface_virtualbase_metacast(VirtualQDesignerActionEditorInterface* self, const char* param1) {

	return self->QDesignerActionEditorInterface::qt_metacast(param1);
}

int QDesignerActionEditorInterface_virtualbase_metacall(VirtualQDesignerActionEditorInterface* self, int param1, int param2, void** param3) {

	return self->QDesignerActionEditorInterface::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

int QDesignerActionEditorInterface_virtualbase_devType(const VirtualQDesignerActionEditorInterface* self) {

	return self->QDesignerActionEditorInterface::devType();
}

void QDesignerActionEditorInterface_virtualbase_setVisible(VirtualQDesignerActionEditorInterface* self, bool visible) {

	self->QDesignerActionEditorInterface::setVisible(visible);
}

QSize* QDesignerActionEditorInterface_virtualbase_sizeHint(const VirtualQDesignerActionEditorInterface* self) {

	return new QSize(self->QDesignerActionEditorInterface::sizeHint());
}

QSize* QDesignerActionEditorInterface_virtualbase_minimumSizeHint(const VirtualQDesignerActionEditorInterface* self) {

	return new QSize(self->QDesignerActionEditorInterface::minimumSizeHint());
}

int QDesignerActionEditorInterface_virtualbase_heightForWidth(const VirtualQDesignerActionEditorInterface* self, int param1) {

	return self->QDesignerActionEditorInterface::heightForWidth(static_cast<int>(param1));
}

bool QDesignerActionEditorInterface_virtualbase_hasHeightForWidth(const VirtualQDesignerActionEditorInterface* self) {

	return self->QDesignerActionEditorInterface::hasHeightForWidth();
}

QPaintEngine* QDesignerActionEditorInterface_virtualbase_paintEngine(const VirtualQDesignerActionEditorInterface* self) {

	return self->QDesignerActionEditorInterface::paintEngine();
}

bool QDesignerActionEditorInterface_virtualbase_event(VirtualQDesignerActionEditorInterface* self, QEvent* event) {

	return self->QDesignerActionEditorInterface::event(event);
}

void QDesignerActionEditorInterface_virtualbase_mousePressEvent(VirtualQDesignerActionEditorInterface* self, QMouseEvent* event) {

	self->QDesignerActionEditorInterface::mousePressEvent(event);
}

void QDesignerActionEditorInterface_virtualbase_mouseReleaseEvent(VirtualQDesignerActionEditorInterface* self, QMouseEvent* event) {

	self->QDesignerActionEditorInterface::mouseReleaseEvent(event);
}

void QDesignerActionEditorInterface_virtualbase_mouseDoubleClickEvent(VirtualQDesignerActionEditorInterface* self, QMouseEvent* event) {

	self->QDesignerActionEditorInterface::mouseDoubleClickEvent(event);
}

void QDesignerActionEditorInterface_virtualbase_mouseMoveEvent(VirtualQDesignerActionEditorInterface* self, QMouseEvent* event) {

	self->QDesignerActionEditorInterface::mouseMoveEvent(event);
}

void QDesignerActionEditorInterface_virtualbase_wheelEvent(VirtualQDesignerActionEditorInterface* self, QWheelEvent* event) {

	self->QDesignerActionEditorInterface::wheelEvent(event);
}

void QDesignerActionEditorInterface_virtualbase_keyPressEvent(VirtualQDesignerActionEditorInterface* self, QKeyEvent* event) {

	self->QDesignerActionEditorInterface::keyPressEvent(event);
}

void QDesignerActionEditorInterface_virtualbase_keyReleaseEvent(VirtualQDesignerActionEditorInterface* self, QKeyEvent* event) {

	self->QDesignerActionEditorInterface::keyReleaseEvent(event);
}

void QDesignerActionEditorInterface_virtualbase_focusInEvent(VirtualQDesignerActionEditorInterface* self, QFocusEvent* event) {

	self->QDesignerActionEditorInterface::focusInEvent(event);
}

void QDesignerActionEditorInterface_virtualbase_focusOutEvent(VirtualQDesignerActionEditorInterface* self, QFocusEvent* event) {

	self->QDesignerActionEditorInterface::focusOutEvent(event);
}

void QDesignerActionEditorInterface_virtualbase_enterEvent(VirtualQDesignerActionEditorInterface* self, QEnterEvent* event) {

	self->QDesignerActionEditorInterface::enterEvent(event);
}

void QDesignerActionEditorInterface_virtualbase_leaveEvent(VirtualQDesignerActionEditorInterface* self, QEvent* event) {

	self->QDesignerActionEditorInterface::leaveEvent(event);
}

void QDesignerActionEditorInterface_virtualbase_paintEvent(VirtualQDesignerActionEditorInterface* self, QPaintEvent* event) {

	self->QDesignerActionEditorInterface::paintEvent(event);
}

void QDesignerActionEditorInterface_virtualbase_moveEvent(VirtualQDesignerActionEditorInterface* self, QMoveEvent* event) {

	self->QDesignerActionEditorInterface::moveEvent(event);
}

void QDesignerActionEditorInterface_virtualbase_resizeEvent(VirtualQDesignerActionEditorInterface* self, QResizeEvent* event) {

	self->QDesignerActionEditorInterface::resizeEvent(event);
}

void QDesignerActionEditorInterface_virtualbase_closeEvent(VirtualQDesignerActionEditorInterface* self, QCloseEvent* event) {

	self->QDesignerActionEditorInterface::closeEvent(event);
}

void QDesignerActionEditorInterface_virtualbase_contextMenuEvent(VirtualQDesignerActionEditorInterface* self, QContextMenuEvent* event) {

	self->QDesignerActionEditorInterface::contextMenuEvent(event);
}

void QDesignerActionEditorInterface_virtualbase_tabletEvent(VirtualQDesignerActionEditorInterface* self, QTabletEvent* event) {

	self->QDesignerActionEditorInterface::tabletEvent(event);
}

void QDesignerActionEditorInterface_virtualbase_actionEvent(VirtualQDesignerActionEditorInterface* self, QActionEvent* event) {

	self->QDesignerActionEditorInterface::actionEvent(event);
}

void QDesignerActionEditorInterface_virtualbase_dragEnterEvent(VirtualQDesignerActionEditorInterface* self, QDragEnterEvent* event) {

	self->QDesignerActionEditorInterface::dragEnterEvent(event);
}

void QDesignerActionEditorInterface_virtualbase_dragMoveEvent(VirtualQDesignerActionEditorInterface* self, QDragMoveEvent* event) {

	self->QDesignerActionEditorInterface::dragMoveEvent(event);
}

void QDesignerActionEditorInterface_virtualbase_dragLeaveEvent(VirtualQDesignerActionEditorInterface* self, QDragLeaveEvent* event) {

	self->QDesignerActionEditorInterface::dragLeaveEvent(event);
}

void QDesignerActionEditorInterface_virtualbase_dropEvent(VirtualQDesignerActionEditorInterface* self, QDropEvent* event) {

	self->QDesignerActionEditorInterface::dropEvent(event);
}

void QDesignerActionEditorInterface_virtualbase_showEvent(VirtualQDesignerActionEditorInterface* self, QShowEvent* event) {

	self->QDesignerActionEditorInterface::showEvent(event);
}

void QDesignerActionEditorInterface_virtualbase_hideEvent(VirtualQDesignerActionEditorInterface* self, QHideEvent* event) {

	self->QDesignerActionEditorInterface::hideEvent(event);
}

bool QDesignerActionEditorInterface_virtualbase_nativeEvent(VirtualQDesignerActionEditorInterface* self, struct seaqt_string eventType, void* message, intptr_t* result) {
	QByteArray eventType_QByteArray(eventType.data, eventType.len);

	return self->QDesignerActionEditorInterface::nativeEvent(eventType_QByteArray, message, (qintptr*)(result));
}

void QDesignerActionEditorInterface_virtualbase_changeEvent(VirtualQDesignerActionEditorInterface* self, QEvent* param1) {

	self->QDesignerActionEditorInterface::changeEvent(param1);
}

int QDesignerActionEditorInterface_virtualbase_metric(const VirtualQDesignerActionEditorInterface* self, int param1) {

	return self->QDesignerActionEditorInterface::metric(static_cast<VirtualQDesignerActionEditorInterface::PaintDeviceMetric>(param1));
}

void QDesignerActionEditorInterface_virtualbase_initPainter(const VirtualQDesignerActionEditorInterface* self, QPainter* painter) {

	self->QDesignerActionEditorInterface::initPainter(painter);
}

QPaintDevice* QDesignerActionEditorInterface_virtualbase_redirected(const VirtualQDesignerActionEditorInterface* self, QPoint* offset) {

	return self->QDesignerActionEditorInterface::redirected(offset);
}

QPainter* QDesignerActionEditorInterface_virtualbase_sharedPainter(const VirtualQDesignerActionEditorInterface* self) {

	return self->QDesignerActionEditorInterface::sharedPainter();
}

void QDesignerActionEditorInterface_virtualbase_inputMethodEvent(VirtualQDesignerActionEditorInterface* self, QInputMethodEvent* param1) {

	self->QDesignerActionEditorInterface::inputMethodEvent(param1);
}

QVariant* QDesignerActionEditorInterface_virtualbase_inputMethodQuery(const VirtualQDesignerActionEditorInterface* self, int param1) {

	return new QVariant(self->QDesignerActionEditorInterface::inputMethodQuery(static_cast<Qt::InputMethodQuery>(param1)));
}

bool QDesignerActionEditorInterface_virtualbase_focusNextPrevChild(VirtualQDesignerActionEditorInterface* self, bool next) {

	return self->QDesignerActionEditorInterface::focusNextPrevChild(next);
}

bool QDesignerActionEditorInterface_virtualbase_eventFilter(VirtualQDesignerActionEditorInterface* self, QObject* watched, QEvent* event) {

	return self->QDesignerActionEditorInterface::eventFilter(watched, event);
}

void QDesignerActionEditorInterface_virtualbase_timerEvent(VirtualQDesignerActionEditorInterface* self, QTimerEvent* event) {

	self->QDesignerActionEditorInterface::timerEvent(event);
}

void QDesignerActionEditorInterface_virtualbase_childEvent(VirtualQDesignerActionEditorInterface* self, QChildEvent* event) {

	self->QDesignerActionEditorInterface::childEvent(event);
}

void QDesignerActionEditorInterface_virtualbase_customEvent(VirtualQDesignerActionEditorInterface* self, QEvent* event) {

	self->QDesignerActionEditorInterface::customEvent(event);
}

void QDesignerActionEditorInterface_virtualbase_connectNotify(VirtualQDesignerActionEditorInterface* self, QMetaMethod* signal) {

	self->QDesignerActionEditorInterface::connectNotify(*signal);
}

void QDesignerActionEditorInterface_virtualbase_disconnectNotify(VirtualQDesignerActionEditorInterface* self, QMetaMethod* signal) {

	self->QDesignerActionEditorInterface::disconnectNotify(*signal);
}

void QDesignerActionEditorInterface_protectedbase_updateMicroFocus(VirtualQDesignerActionEditorInterface* self) {
	self->updateMicroFocus();
}

void QDesignerActionEditorInterface_protectedbase_create(VirtualQDesignerActionEditorInterface* self) {
	self->create();
}

void QDesignerActionEditorInterface_protectedbase_destroy(VirtualQDesignerActionEditorInterface* self) {
	self->destroy();
}

bool QDesignerActionEditorInterface_protectedbase_focusNextChild(VirtualQDesignerActionEditorInterface* self) {
	return self->focusNextChild();
}

bool QDesignerActionEditorInterface_protectedbase_focusPreviousChild(VirtualQDesignerActionEditorInterface* self) {
	return self->focusPreviousChild();
}

QObject* QDesignerActionEditorInterface_protectedbase_sender(const VirtualQDesignerActionEditorInterface* self) {
	return self->sender();
}

int QDesignerActionEditorInterface_protectedbase_senderSignalIndex(const VirtualQDesignerActionEditorInterface* self) {
	return self->senderSignalIndex();
}

int QDesignerActionEditorInterface_protectedbase_receivers(const VirtualQDesignerActionEditorInterface* self, const char* signal) {
	return self->receivers(signal);
}

bool QDesignerActionEditorInterface_protectedbase_isSignalConnected(const VirtualQDesignerActionEditorInterface* self, QMetaMethod* signal) {
	return self->isSignalConnected(*signal);
}

void QDesignerActionEditorInterface_delete(QDesignerActionEditorInterface* self) {
	delete self;
}

