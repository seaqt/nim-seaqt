#include <QAbstractItemDelegate>
#include <QAbstractItemModel>
#include <QAbstractItemView>
#include <QActionEvent>
#include <QByteArray>
#include <QChildEvent>
#include <QCloseEvent>
#include <QComboBox>
#include <QCompleter>
#include <QContextMenuEvent>
#include <QDragEnterEvent>
#include <QDragLeaveEvent>
#include <QDragMoveEvent>
#include <QDropEvent>
#include <QEnterEvent>
#include <QEvent>
#include <QFocusEvent>
#include <QHideEvent>
#include <QIcon>
#include <QInputMethodEvent>
#include <QKeyEvent>
#include <QLineEdit>
#include <QList>
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
#include <QResizeEvent>
#include <QShowEvent>
#include <QSize>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QStyleOptionComboBox>
#include <QTabletEvent>
#include <QTimerEvent>
#include <QValidator>
#include <QVariant>
#include <QWheelEvent>
#include <QWidget>
#include <qcombobox.h>
#include "gen_qcombobox.h"
class VirtualQComboBox final : public QComboBox {
	const QComboBox_VTable* vtbl;
	void* vdata;
public:
	friend const QComboBox_VTable* QComboBox_vtbl(const VirtualQComboBox* self);
	friend void* QComboBox_vdata(const VirtualQComboBox* self);
	friend void QComboBox_setVdata(VirtualQComboBox* self, void* vdata);

	VirtualQComboBox(const QComboBox_VTable* vtbl, void* vdata, QWidget* parent): QComboBox(parent), vtbl(vtbl), vdata(vdata) {}
	VirtualQComboBox(const QComboBox_VTable* vtbl, void* vdata): QComboBox(), vtbl(vtbl), vdata(vdata) {}

	virtual ~VirtualQComboBox() override { if(vtbl->destructor) vtbl->destructor(this); }

	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QComboBox::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(this);

		return callback_return_value;
	}

	friend QMetaObject* QComboBox_virtualbase_metaObject(const VirtualQComboBox* self);

	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QComboBox::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(this, sigval1);

		return callback_return_value;
	}

	friend void* QComboBox_virtualbase_metacast(VirtualQComboBox* self, const char* param1);

	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QComboBox::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QComboBox_virtualbase_metacall(VirtualQComboBox* self, int param1, int param2, void** param3);

	virtual void setModel(QAbstractItemModel* model) override {
		if (vtbl->setModel == 0) {
			QComboBox::setModel(model);
			return;
		}

		QAbstractItemModel* sigval1 = model;

		vtbl->setModel(this, sigval1);

	}

	friend void QComboBox_virtualbase_setModel(VirtualQComboBox* self, QAbstractItemModel* model);

	virtual QSize sizeHint() const override {
		if (vtbl->sizeHint == 0) {
			return QComboBox::sizeHint();
		}


		QSize* callback_return_value = vtbl->sizeHint(this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QSize* QComboBox_virtualbase_sizeHint(const VirtualQComboBox* self);

	virtual QSize minimumSizeHint() const override {
		if (vtbl->minimumSizeHint == 0) {
			return QComboBox::minimumSizeHint();
		}


		QSize* callback_return_value = vtbl->minimumSizeHint(this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QSize* QComboBox_virtualbase_minimumSizeHint(const VirtualQComboBox* self);

	virtual void showPopup() override {
		if (vtbl->showPopup == 0) {
			QComboBox::showPopup();
			return;
		}


		vtbl->showPopup(this);

	}

	friend void QComboBox_virtualbase_showPopup(VirtualQComboBox* self);

	virtual void hidePopup() override {
		if (vtbl->hidePopup == 0) {
			QComboBox::hidePopup();
			return;
		}


		vtbl->hidePopup(this);

	}

	friend void QComboBox_virtualbase_hidePopup(VirtualQComboBox* self);

	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QComboBox::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(this, sigval1);

		return callback_return_value;
	}

	friend bool QComboBox_virtualbase_event(VirtualQComboBox* self, QEvent* event);

	virtual QVariant inputMethodQuery(Qt::InputMethodQuery param1) const override {
		if (vtbl->inputMethodQuery == 0) {
			return QComboBox::inputMethodQuery(param1);
		}

		Qt::InputMethodQuery param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);

		QVariant* callback_return_value = vtbl->inputMethodQuery(this, sigval1);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QVariant* QComboBox_virtualbase_inputMethodQuery(const VirtualQComboBox* self, int param1);

	virtual void focusInEvent(QFocusEvent* e) override {
		if (vtbl->focusInEvent == 0) {
			QComboBox::focusInEvent(e);
			return;
		}

		QFocusEvent* sigval1 = e;

		vtbl->focusInEvent(this, sigval1);

	}

	friend void QComboBox_virtualbase_focusInEvent(VirtualQComboBox* self, QFocusEvent* e);

	virtual void focusOutEvent(QFocusEvent* e) override {
		if (vtbl->focusOutEvent == 0) {
			QComboBox::focusOutEvent(e);
			return;
		}

		QFocusEvent* sigval1 = e;

		vtbl->focusOutEvent(this, sigval1);

	}

	friend void QComboBox_virtualbase_focusOutEvent(VirtualQComboBox* self, QFocusEvent* e);

	virtual void changeEvent(QEvent* e) override {
		if (vtbl->changeEvent == 0) {
			QComboBox::changeEvent(e);
			return;
		}

		QEvent* sigval1 = e;

		vtbl->changeEvent(this, sigval1);

	}

	friend void QComboBox_virtualbase_changeEvent(VirtualQComboBox* self, QEvent* e);

	virtual void resizeEvent(QResizeEvent* e) override {
		if (vtbl->resizeEvent == 0) {
			QComboBox::resizeEvent(e);
			return;
		}

		QResizeEvent* sigval1 = e;

		vtbl->resizeEvent(this, sigval1);

	}

	friend void QComboBox_virtualbase_resizeEvent(VirtualQComboBox* self, QResizeEvent* e);

	virtual void paintEvent(QPaintEvent* e) override {
		if (vtbl->paintEvent == 0) {
			QComboBox::paintEvent(e);
			return;
		}

		QPaintEvent* sigval1 = e;

		vtbl->paintEvent(this, sigval1);

	}

	friend void QComboBox_virtualbase_paintEvent(VirtualQComboBox* self, QPaintEvent* e);

	virtual void showEvent(QShowEvent* e) override {
		if (vtbl->showEvent == 0) {
			QComboBox::showEvent(e);
			return;
		}

		QShowEvent* sigval1 = e;

		vtbl->showEvent(this, sigval1);

	}

	friend void QComboBox_virtualbase_showEvent(VirtualQComboBox* self, QShowEvent* e);

	virtual void hideEvent(QHideEvent* e) override {
		if (vtbl->hideEvent == 0) {
			QComboBox::hideEvent(e);
			return;
		}

		QHideEvent* sigval1 = e;

		vtbl->hideEvent(this, sigval1);

	}

	friend void QComboBox_virtualbase_hideEvent(VirtualQComboBox* self, QHideEvent* e);

	virtual void mousePressEvent(QMouseEvent* e) override {
		if (vtbl->mousePressEvent == 0) {
			QComboBox::mousePressEvent(e);
			return;
		}

		QMouseEvent* sigval1 = e;

		vtbl->mousePressEvent(this, sigval1);

	}

	friend void QComboBox_virtualbase_mousePressEvent(VirtualQComboBox* self, QMouseEvent* e);

	virtual void mouseReleaseEvent(QMouseEvent* e) override {
		if (vtbl->mouseReleaseEvent == 0) {
			QComboBox::mouseReleaseEvent(e);
			return;
		}

		QMouseEvent* sigval1 = e;

		vtbl->mouseReleaseEvent(this, sigval1);

	}

	friend void QComboBox_virtualbase_mouseReleaseEvent(VirtualQComboBox* self, QMouseEvent* e);

	virtual void keyPressEvent(QKeyEvent* e) override {
		if (vtbl->keyPressEvent == 0) {
			QComboBox::keyPressEvent(e);
			return;
		}

		QKeyEvent* sigval1 = e;

		vtbl->keyPressEvent(this, sigval1);

	}

	friend void QComboBox_virtualbase_keyPressEvent(VirtualQComboBox* self, QKeyEvent* e);

	virtual void keyReleaseEvent(QKeyEvent* e) override {
		if (vtbl->keyReleaseEvent == 0) {
			QComboBox::keyReleaseEvent(e);
			return;
		}

		QKeyEvent* sigval1 = e;

		vtbl->keyReleaseEvent(this, sigval1);

	}

	friend void QComboBox_virtualbase_keyReleaseEvent(VirtualQComboBox* self, QKeyEvent* e);

	virtual void wheelEvent(QWheelEvent* e) override {
		if (vtbl->wheelEvent == 0) {
			QComboBox::wheelEvent(e);
			return;
		}

		QWheelEvent* sigval1 = e;

		vtbl->wheelEvent(this, sigval1);

	}

	friend void QComboBox_virtualbase_wheelEvent(VirtualQComboBox* self, QWheelEvent* e);

	virtual void contextMenuEvent(QContextMenuEvent* e) override {
		if (vtbl->contextMenuEvent == 0) {
			QComboBox::contextMenuEvent(e);
			return;
		}

		QContextMenuEvent* sigval1 = e;

		vtbl->contextMenuEvent(this, sigval1);

	}

	friend void QComboBox_virtualbase_contextMenuEvent(VirtualQComboBox* self, QContextMenuEvent* e);

	virtual void inputMethodEvent(QInputMethodEvent* param1) override {
		if (vtbl->inputMethodEvent == 0) {
			QComboBox::inputMethodEvent(param1);
			return;
		}

		QInputMethodEvent* sigval1 = param1;

		vtbl->inputMethodEvent(this, sigval1);

	}

	friend void QComboBox_virtualbase_inputMethodEvent(VirtualQComboBox* self, QInputMethodEvent* param1);

	virtual void initStyleOption(QStyleOptionComboBox* option) const override {
		if (vtbl->initStyleOption == 0) {
			QComboBox::initStyleOption(option);
			return;
		}

		QStyleOptionComboBox* sigval1 = option;

		vtbl->initStyleOption(this, sigval1);

	}

	friend void QComboBox_virtualbase_initStyleOption(const VirtualQComboBox* self, QStyleOptionComboBox* option);

	virtual int devType() const override {
		if (vtbl->devType == 0) {
			return QComboBox::devType();
		}


		int callback_return_value = vtbl->devType(this);

		return static_cast<int>(callback_return_value);
	}

	friend int QComboBox_virtualbase_devType(const VirtualQComboBox* self);

	virtual void setVisible(bool visible) override {
		if (vtbl->setVisible == 0) {
			QComboBox::setVisible(visible);
			return;
		}

		bool sigval1 = visible;

		vtbl->setVisible(this, sigval1);

	}

	friend void QComboBox_virtualbase_setVisible(VirtualQComboBox* self, bool visible);

	virtual int heightForWidth(int param1) const override {
		if (vtbl->heightForWidth == 0) {
			return QComboBox::heightForWidth(param1);
		}

		int sigval1 = param1;

		int callback_return_value = vtbl->heightForWidth(this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QComboBox_virtualbase_heightForWidth(const VirtualQComboBox* self, int param1);

	virtual bool hasHeightForWidth() const override {
		if (vtbl->hasHeightForWidth == 0) {
			return QComboBox::hasHeightForWidth();
		}


		bool callback_return_value = vtbl->hasHeightForWidth(this);

		return callback_return_value;
	}

	friend bool QComboBox_virtualbase_hasHeightForWidth(const VirtualQComboBox* self);

	virtual QPaintEngine* paintEngine() const override {
		if (vtbl->paintEngine == 0) {
			return QComboBox::paintEngine();
		}


		QPaintEngine* callback_return_value = vtbl->paintEngine(this);

		return callback_return_value;
	}

	friend QPaintEngine* QComboBox_virtualbase_paintEngine(const VirtualQComboBox* self);

	virtual void mouseDoubleClickEvent(QMouseEvent* event) override {
		if (vtbl->mouseDoubleClickEvent == 0) {
			QComboBox::mouseDoubleClickEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseDoubleClickEvent(this, sigval1);

	}

	friend void QComboBox_virtualbase_mouseDoubleClickEvent(VirtualQComboBox* self, QMouseEvent* event);

	virtual void mouseMoveEvent(QMouseEvent* event) override {
		if (vtbl->mouseMoveEvent == 0) {
			QComboBox::mouseMoveEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseMoveEvent(this, sigval1);

	}

	friend void QComboBox_virtualbase_mouseMoveEvent(VirtualQComboBox* self, QMouseEvent* event);

	virtual void enterEvent(QEnterEvent* event) override {
		if (vtbl->enterEvent == 0) {
			QComboBox::enterEvent(event);
			return;
		}

		QEnterEvent* sigval1 = event;

		vtbl->enterEvent(this, sigval1);

	}

	friend void QComboBox_virtualbase_enterEvent(VirtualQComboBox* self, QEnterEvent* event);

	virtual void leaveEvent(QEvent* event) override {
		if (vtbl->leaveEvent == 0) {
			QComboBox::leaveEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->leaveEvent(this, sigval1);

	}

	friend void QComboBox_virtualbase_leaveEvent(VirtualQComboBox* self, QEvent* event);

	virtual void moveEvent(QMoveEvent* event) override {
		if (vtbl->moveEvent == 0) {
			QComboBox::moveEvent(event);
			return;
		}

		QMoveEvent* sigval1 = event;

		vtbl->moveEvent(this, sigval1);

	}

	friend void QComboBox_virtualbase_moveEvent(VirtualQComboBox* self, QMoveEvent* event);

	virtual void closeEvent(QCloseEvent* event) override {
		if (vtbl->closeEvent == 0) {
			QComboBox::closeEvent(event);
			return;
		}

		QCloseEvent* sigval1 = event;

		vtbl->closeEvent(this, sigval1);

	}

	friend void QComboBox_virtualbase_closeEvent(VirtualQComboBox* self, QCloseEvent* event);

	virtual void tabletEvent(QTabletEvent* event) override {
		if (vtbl->tabletEvent == 0) {
			QComboBox::tabletEvent(event);
			return;
		}

		QTabletEvent* sigval1 = event;

		vtbl->tabletEvent(this, sigval1);

	}

	friend void QComboBox_virtualbase_tabletEvent(VirtualQComboBox* self, QTabletEvent* event);

	virtual void actionEvent(QActionEvent* event) override {
		if (vtbl->actionEvent == 0) {
			QComboBox::actionEvent(event);
			return;
		}

		QActionEvent* sigval1 = event;

		vtbl->actionEvent(this, sigval1);

	}

	friend void QComboBox_virtualbase_actionEvent(VirtualQComboBox* self, QActionEvent* event);

	virtual void dragEnterEvent(QDragEnterEvent* event) override {
		if (vtbl->dragEnterEvent == 0) {
			QComboBox::dragEnterEvent(event);
			return;
		}

		QDragEnterEvent* sigval1 = event;

		vtbl->dragEnterEvent(this, sigval1);

	}

	friend void QComboBox_virtualbase_dragEnterEvent(VirtualQComboBox* self, QDragEnterEvent* event);

	virtual void dragMoveEvent(QDragMoveEvent* event) override {
		if (vtbl->dragMoveEvent == 0) {
			QComboBox::dragMoveEvent(event);
			return;
		}

		QDragMoveEvent* sigval1 = event;

		vtbl->dragMoveEvent(this, sigval1);

	}

	friend void QComboBox_virtualbase_dragMoveEvent(VirtualQComboBox* self, QDragMoveEvent* event);

	virtual void dragLeaveEvent(QDragLeaveEvent* event) override {
		if (vtbl->dragLeaveEvent == 0) {
			QComboBox::dragLeaveEvent(event);
			return;
		}

		QDragLeaveEvent* sigval1 = event;

		vtbl->dragLeaveEvent(this, sigval1);

	}

	friend void QComboBox_virtualbase_dragLeaveEvent(VirtualQComboBox* self, QDragLeaveEvent* event);

	virtual void dropEvent(QDropEvent* event) override {
		if (vtbl->dropEvent == 0) {
			QComboBox::dropEvent(event);
			return;
		}

		QDropEvent* sigval1 = event;

		vtbl->dropEvent(this, sigval1);

	}

	friend void QComboBox_virtualbase_dropEvent(VirtualQComboBox* self, QDropEvent* event);

	virtual bool nativeEvent(const QByteArray& eventType, void* message, qintptr* result) override {
		if (vtbl->nativeEvent == 0) {
			return QComboBox::nativeEvent(eventType, message, result);
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

	friend bool QComboBox_virtualbase_nativeEvent(VirtualQComboBox* self, struct miqt_string eventType, void* message, intptr_t* result);

	virtual int metric(QPaintDevice::PaintDeviceMetric param1) const override {
		if (vtbl->metric == 0) {
			return QComboBox::metric(param1);
		}

		QPaintDevice::PaintDeviceMetric param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);

		int callback_return_value = vtbl->metric(this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QComboBox_virtualbase_metric(const VirtualQComboBox* self, int param1);

	virtual void initPainter(QPainter* painter) const override {
		if (vtbl->initPainter == 0) {
			QComboBox::initPainter(painter);
			return;
		}

		QPainter* sigval1 = painter;

		vtbl->initPainter(this, sigval1);

	}

	friend void QComboBox_virtualbase_initPainter(const VirtualQComboBox* self, QPainter* painter);

	virtual QPaintDevice* redirected(QPoint* offset) const override {
		if (vtbl->redirected == 0) {
			return QComboBox::redirected(offset);
		}

		QPoint* sigval1 = offset;

		QPaintDevice* callback_return_value = vtbl->redirected(this, sigval1);

		return callback_return_value;
	}

	friend QPaintDevice* QComboBox_virtualbase_redirected(const VirtualQComboBox* self, QPoint* offset);

	virtual QPainter* sharedPainter() const override {
		if (vtbl->sharedPainter == 0) {
			return QComboBox::sharedPainter();
		}


		QPainter* callback_return_value = vtbl->sharedPainter(this);

		return callback_return_value;
	}

	friend QPainter* QComboBox_virtualbase_sharedPainter(const VirtualQComboBox* self);

	virtual bool focusNextPrevChild(bool next) override {
		if (vtbl->focusNextPrevChild == 0) {
			return QComboBox::focusNextPrevChild(next);
		}

		bool sigval1 = next;

		bool callback_return_value = vtbl->focusNextPrevChild(this, sigval1);

		return callback_return_value;
	}

	friend bool QComboBox_virtualbase_focusNextPrevChild(VirtualQComboBox* self, bool next);

	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QComboBox::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QComboBox_virtualbase_eventFilter(VirtualQComboBox* self, QObject* watched, QEvent* event);

	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QComboBox::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(this, sigval1);

	}

	friend void QComboBox_virtualbase_timerEvent(VirtualQComboBox* self, QTimerEvent* event);

	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QComboBox::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(this, sigval1);

	}

	friend void QComboBox_virtualbase_childEvent(VirtualQComboBox* self, QChildEvent* event);

	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QComboBox::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(this, sigval1);

	}

	friend void QComboBox_virtualbase_customEvent(VirtualQComboBox* self, QEvent* event);

	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QComboBox::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(this, sigval1);

	}

	friend void QComboBox_virtualbase_connectNotify(VirtualQComboBox* self, QMetaMethod* signal);

	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QComboBox::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(this, sigval1);

	}

	friend void QComboBox_virtualbase_disconnectNotify(VirtualQComboBox* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend void QComboBox_protectedbase_updateMicroFocus(VirtualQComboBox* self);
	friend void QComboBox_protectedbase_create(VirtualQComboBox* self);
	friend void QComboBox_protectedbase_destroy(VirtualQComboBox* self);
	friend bool QComboBox_protectedbase_focusNextChild(VirtualQComboBox* self);
	friend bool QComboBox_protectedbase_focusPreviousChild(VirtualQComboBox* self);
	friend QObject* QComboBox_protectedbase_sender(const VirtualQComboBox* self);
	friend int QComboBox_protectedbase_senderSignalIndex(const VirtualQComboBox* self);
	friend int QComboBox_protectedbase_receivers(const VirtualQComboBox* self, const char* signal);
	friend bool QComboBox_protectedbase_isSignalConnected(const VirtualQComboBox* self, QMetaMethod* signal);
};

VirtualQComboBox* QComboBox_new(const QComboBox_VTable* vtbl, void* vdata, QWidget* parent) {
	return new VirtualQComboBox(vtbl, vdata, parent);
}

VirtualQComboBox* QComboBox_new2(const QComboBox_VTable* vtbl, void* vdata) {
	return new VirtualQComboBox(vtbl, vdata);
}

void QComboBox_virtbase(QComboBox* src, QWidget** outptr_QWidget) {
	*outptr_QWidget = static_cast<QWidget*>(src);
}

QMetaObject* QComboBox_metaObject(const QComboBox* self) {
	return (QMetaObject*) self->metaObject();
}

void* QComboBox_metacast(QComboBox* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QComboBox_metacall(QComboBox* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QComboBox_tr(const char* s) {
	QString _ret = QComboBox::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

int QComboBox_maxVisibleItems(const QComboBox* self) {
	return self->maxVisibleItems();
}

void QComboBox_setMaxVisibleItems(QComboBox* self, int maxItems) {
	self->setMaxVisibleItems(static_cast<int>(maxItems));
}

int QComboBox_count(const QComboBox* self) {
	return self->count();
}

void QComboBox_setMaxCount(QComboBox* self, int max) {
	self->setMaxCount(static_cast<int>(max));
}

int QComboBox_maxCount(const QComboBox* self) {
	return self->maxCount();
}

bool QComboBox_duplicatesEnabled(const QComboBox* self) {
	return self->duplicatesEnabled();
}

void QComboBox_setDuplicatesEnabled(QComboBox* self, bool enable) {
	self->setDuplicatesEnabled(enable);
}

void QComboBox_setFrame(QComboBox* self, bool frame) {
	self->setFrame(frame);
}

bool QComboBox_hasFrame(const QComboBox* self) {
	return self->hasFrame();
}

int QComboBox_findText(const QComboBox* self, struct miqt_string text) {
	QString text_QString = QString::fromUtf8(text.data, text.len);
	return self->findText(text_QString);
}

int QComboBox_findData(const QComboBox* self, QVariant* data) {
	return self->findData(*data);
}

int QComboBox_insertPolicy(const QComboBox* self) {
	QComboBox::InsertPolicy _ret = self->insertPolicy();
	return static_cast<int>(_ret);
}

void QComboBox_setInsertPolicy(QComboBox* self, int policy) {
	self->setInsertPolicy(static_cast<QComboBox::InsertPolicy>(policy));
}

int QComboBox_sizeAdjustPolicy(const QComboBox* self) {
	QComboBox::SizeAdjustPolicy _ret = self->sizeAdjustPolicy();
	return static_cast<int>(_ret);
}

void QComboBox_setSizeAdjustPolicy(QComboBox* self, int policy) {
	self->setSizeAdjustPolicy(static_cast<QComboBox::SizeAdjustPolicy>(policy));
}

int QComboBox_minimumContentsLength(const QComboBox* self) {
	return self->minimumContentsLength();
}

void QComboBox_setMinimumContentsLength(QComboBox* self, int characters) {
	self->setMinimumContentsLength(static_cast<int>(characters));
}

QSize* QComboBox_iconSize(const QComboBox* self) {
	return new QSize(self->iconSize());
}

void QComboBox_setIconSize(QComboBox* self, QSize* size) {
	self->setIconSize(*size);
}

void QComboBox_setPlaceholderText(QComboBox* self, struct miqt_string placeholderText) {
	QString placeholderText_QString = QString::fromUtf8(placeholderText.data, placeholderText.len);
	self->setPlaceholderText(placeholderText_QString);
}

struct miqt_string QComboBox_placeholderText(const QComboBox* self) {
	QString _ret = self->placeholderText();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

bool QComboBox_isEditable(const QComboBox* self) {
	return self->isEditable();
}

void QComboBox_setEditable(QComboBox* self, bool editable) {
	self->setEditable(editable);
}

void QComboBox_setLineEdit(QComboBox* self, QLineEdit* edit) {
	self->setLineEdit(edit);
}

QLineEdit* QComboBox_lineEdit(const QComboBox* self) {
	return self->lineEdit();
}

void QComboBox_setValidator(QComboBox* self, QValidator* v) {
	self->setValidator(v);
}

QValidator* QComboBox_validator(const QComboBox* self) {
	return (QValidator*) self->validator();
}

void QComboBox_setCompleter(QComboBox* self, QCompleter* c) {
	self->setCompleter(c);
}

QCompleter* QComboBox_completer(const QComboBox* self) {
	return self->completer();
}

QAbstractItemDelegate* QComboBox_itemDelegate(const QComboBox* self) {
	return self->itemDelegate();
}

void QComboBox_setItemDelegate(QComboBox* self, QAbstractItemDelegate* delegate) {
	self->setItemDelegate(delegate);
}

QAbstractItemModel* QComboBox_model(const QComboBox* self) {
	return self->model();
}

void QComboBox_setModel(QComboBox* self, QAbstractItemModel* model) {
	self->setModel(model);
}

QModelIndex* QComboBox_rootModelIndex(const QComboBox* self) {
	return new QModelIndex(self->rootModelIndex());
}

void QComboBox_setRootModelIndex(QComboBox* self, QModelIndex* index) {
	self->setRootModelIndex(*index);
}

int QComboBox_modelColumn(const QComboBox* self) {
	return self->modelColumn();
}

void QComboBox_setModelColumn(QComboBox* self, int visibleColumn) {
	self->setModelColumn(static_cast<int>(visibleColumn));
}

int QComboBox_currentIndex(const QComboBox* self) {
	return self->currentIndex();
}

struct miqt_string QComboBox_currentText(const QComboBox* self) {
	QString _ret = self->currentText();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QVariant* QComboBox_currentData(const QComboBox* self) {
	return new QVariant(self->currentData());
}

struct miqt_string QComboBox_itemText(const QComboBox* self, int index) {
	QString _ret = self->itemText(static_cast<int>(index));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QIcon* QComboBox_itemIcon(const QComboBox* self, int index) {
	return new QIcon(self->itemIcon(static_cast<int>(index)));
}

QVariant* QComboBox_itemData(const QComboBox* self, int index) {
	return new QVariant(self->itemData(static_cast<int>(index)));
}

void QComboBox_addItem(QComboBox* self, struct miqt_string text) {
	QString text_QString = QString::fromUtf8(text.data, text.len);
	self->addItem(text_QString);
}

void QComboBox_addItem2(QComboBox* self, QIcon* icon, struct miqt_string text) {
	QString text_QString = QString::fromUtf8(text.data, text.len);
	self->addItem(*icon, text_QString);
}

void QComboBox_addItems(QComboBox* self, struct miqt_array /* of struct miqt_string */  texts) {
	QStringList texts_QList;
	texts_QList.reserve(texts.len);
	struct miqt_string* texts_arr = static_cast<struct miqt_string*>(texts.data);
	for(size_t i = 0; i < texts.len; ++i) {
		QString texts_arr_i_QString = QString::fromUtf8(texts_arr[i].data, texts_arr[i].len);
		texts_QList.push_back(texts_arr_i_QString);
	}
	self->addItems(texts_QList);
}

void QComboBox_insertItem(QComboBox* self, int index, struct miqt_string text) {
	QString text_QString = QString::fromUtf8(text.data, text.len);
	self->insertItem(static_cast<int>(index), text_QString);
}

void QComboBox_insertItem2(QComboBox* self, int index, QIcon* icon, struct miqt_string text) {
	QString text_QString = QString::fromUtf8(text.data, text.len);
	self->insertItem(static_cast<int>(index), *icon, text_QString);
}

void QComboBox_insertItems(QComboBox* self, int index, struct miqt_array /* of struct miqt_string */  texts) {
	QStringList texts_QList;
	texts_QList.reserve(texts.len);
	struct miqt_string* texts_arr = static_cast<struct miqt_string*>(texts.data);
	for(size_t i = 0; i < texts.len; ++i) {
		QString texts_arr_i_QString = QString::fromUtf8(texts_arr[i].data, texts_arr[i].len);
		texts_QList.push_back(texts_arr_i_QString);
	}
	self->insertItems(static_cast<int>(index), texts_QList);
}

void QComboBox_insertSeparator(QComboBox* self, int index) {
	self->insertSeparator(static_cast<int>(index));
}

void QComboBox_removeItem(QComboBox* self, int index) {
	self->removeItem(static_cast<int>(index));
}

void QComboBox_setItemText(QComboBox* self, int index, struct miqt_string text) {
	QString text_QString = QString::fromUtf8(text.data, text.len);
	self->setItemText(static_cast<int>(index), text_QString);
}

void QComboBox_setItemIcon(QComboBox* self, int index, QIcon* icon) {
	self->setItemIcon(static_cast<int>(index), *icon);
}

void QComboBox_setItemData(QComboBox* self, int index, QVariant* value) {
	self->setItemData(static_cast<int>(index), *value);
}

QAbstractItemView* QComboBox_view(const QComboBox* self) {
	return self->view();
}

void QComboBox_setView(QComboBox* self, QAbstractItemView* itemView) {
	self->setView(itemView);
}

QSize* QComboBox_sizeHint(const QComboBox* self) {
	return new QSize(self->sizeHint());
}

QSize* QComboBox_minimumSizeHint(const QComboBox* self) {
	return new QSize(self->minimumSizeHint());
}

void QComboBox_showPopup(QComboBox* self) {
	self->showPopup();
}

void QComboBox_hidePopup(QComboBox* self) {
	self->hidePopup();
}

bool QComboBox_event(QComboBox* self, QEvent* event) {
	return self->event(event);
}

QVariant* QComboBox_inputMethodQuery(const QComboBox* self, int param1) {
	return new QVariant(self->inputMethodQuery(static_cast<Qt::InputMethodQuery>(param1)));
}

QVariant* QComboBox_inputMethodQuery2(const QComboBox* self, int query, QVariant* argument) {
	return new QVariant(self->inputMethodQuery(static_cast<Qt::InputMethodQuery>(query), *argument));
}

void QComboBox_clear(QComboBox* self) {
	self->clear();
}

void QComboBox_clearEditText(QComboBox* self) {
	self->clearEditText();
}

void QComboBox_setEditText(QComboBox* self, struct miqt_string text) {
	QString text_QString = QString::fromUtf8(text.data, text.len);
	self->setEditText(text_QString);
}

void QComboBox_setCurrentIndex(QComboBox* self, int index) {
	self->setCurrentIndex(static_cast<int>(index));
}

void QComboBox_setCurrentText(QComboBox* self, struct miqt_string text) {
	QString text_QString = QString::fromUtf8(text.data, text.len);
	self->setCurrentText(text_QString);
}

void QComboBox_editTextChanged(QComboBox* self, struct miqt_string param1) {
	QString param1_QString = QString::fromUtf8(param1.data, param1.len);
	self->editTextChanged(param1_QString);
}

void QComboBox_connect_editTextChanged(VirtualQComboBox* self, intptr_t slot, void (*callback)(intptr_t, struct miqt_string), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, struct miqt_string), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, struct miqt_string);
		void operator()(const QString& param1) {
			const QString param1_ret = param1;
			// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
			QByteArray param1_b = param1_ret.toUtf8();
			struct miqt_string param1_ms;
			param1_ms.len = param1_b.length();
			param1_ms.data = static_cast<char*>(malloc(param1_ms.len));
			memcpy(param1_ms.data, param1_b.data(), param1_ms.len);
			struct miqt_string sigval1 = param1_ms;
			callback(slot, sigval1);
		}
	};
	VirtualQComboBox::connect(self, static_cast<void (QComboBox::*)(const QString&)>(&QComboBox::editTextChanged), self, local_caller{slot, callback, release});
}

void QComboBox_activated(QComboBox* self, int index) {
	self->activated(static_cast<int>(index));
}

void QComboBox_connect_activated(VirtualQComboBox* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, int);
		void operator()(int index) {
			int sigval1 = index;
			callback(slot, sigval1);
		}
	};
	VirtualQComboBox::connect(self, static_cast<void (QComboBox::*)(int)>(&QComboBox::activated), self, local_caller{slot, callback, release});
}

void QComboBox_textActivated(QComboBox* self, struct miqt_string param1) {
	QString param1_QString = QString::fromUtf8(param1.data, param1.len);
	self->textActivated(param1_QString);
}

void QComboBox_connect_textActivated(VirtualQComboBox* self, intptr_t slot, void (*callback)(intptr_t, struct miqt_string), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, struct miqt_string), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, struct miqt_string);
		void operator()(const QString& param1) {
			const QString param1_ret = param1;
			// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
			QByteArray param1_b = param1_ret.toUtf8();
			struct miqt_string param1_ms;
			param1_ms.len = param1_b.length();
			param1_ms.data = static_cast<char*>(malloc(param1_ms.len));
			memcpy(param1_ms.data, param1_b.data(), param1_ms.len);
			struct miqt_string sigval1 = param1_ms;
			callback(slot, sigval1);
		}
	};
	VirtualQComboBox::connect(self, static_cast<void (QComboBox::*)(const QString&)>(&QComboBox::textActivated), self, local_caller{slot, callback, release});
}

void QComboBox_highlighted(QComboBox* self, int index) {
	self->highlighted(static_cast<int>(index));
}

void QComboBox_connect_highlighted(VirtualQComboBox* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, int);
		void operator()(int index) {
			int sigval1 = index;
			callback(slot, sigval1);
		}
	};
	VirtualQComboBox::connect(self, static_cast<void (QComboBox::*)(int)>(&QComboBox::highlighted), self, local_caller{slot, callback, release});
}

void QComboBox_textHighlighted(QComboBox* self, struct miqt_string param1) {
	QString param1_QString = QString::fromUtf8(param1.data, param1.len);
	self->textHighlighted(param1_QString);
}

void QComboBox_connect_textHighlighted(VirtualQComboBox* self, intptr_t slot, void (*callback)(intptr_t, struct miqt_string), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, struct miqt_string), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, struct miqt_string);
		void operator()(const QString& param1) {
			const QString param1_ret = param1;
			// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
			QByteArray param1_b = param1_ret.toUtf8();
			struct miqt_string param1_ms;
			param1_ms.len = param1_b.length();
			param1_ms.data = static_cast<char*>(malloc(param1_ms.len));
			memcpy(param1_ms.data, param1_b.data(), param1_ms.len);
			struct miqt_string sigval1 = param1_ms;
			callback(slot, sigval1);
		}
	};
	VirtualQComboBox::connect(self, static_cast<void (QComboBox::*)(const QString&)>(&QComboBox::textHighlighted), self, local_caller{slot, callback, release});
}

void QComboBox_currentIndexChanged(QComboBox* self, int index) {
	self->currentIndexChanged(static_cast<int>(index));
}

void QComboBox_connect_currentIndexChanged(VirtualQComboBox* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, int);
		void operator()(int index) {
			int sigval1 = index;
			callback(slot, sigval1);
		}
	};
	VirtualQComboBox::connect(self, static_cast<void (QComboBox::*)(int)>(&QComboBox::currentIndexChanged), self, local_caller{slot, callback, release});
}

void QComboBox_currentTextChanged(QComboBox* self, struct miqt_string param1) {
	QString param1_QString = QString::fromUtf8(param1.data, param1.len);
	self->currentTextChanged(param1_QString);
}

void QComboBox_connect_currentTextChanged(VirtualQComboBox* self, intptr_t slot, void (*callback)(intptr_t, struct miqt_string), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, struct miqt_string), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, struct miqt_string);
		void operator()(const QString& param1) {
			const QString param1_ret = param1;
			// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
			QByteArray param1_b = param1_ret.toUtf8();
			struct miqt_string param1_ms;
			param1_ms.len = param1_b.length();
			param1_ms.data = static_cast<char*>(malloc(param1_ms.len));
			memcpy(param1_ms.data, param1_b.data(), param1_ms.len);
			struct miqt_string sigval1 = param1_ms;
			callback(slot, sigval1);
		}
	};
	VirtualQComboBox::connect(self, static_cast<void (QComboBox::*)(const QString&)>(&QComboBox::currentTextChanged), self, local_caller{slot, callback, release});
}

struct miqt_string QComboBox_tr2(const char* s, const char* c) {
	QString _ret = QComboBox::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QComboBox_tr3(const char* s, const char* c, int n) {
	QString _ret = QComboBox::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

int QComboBox_findText2(const QComboBox* self, struct miqt_string text, int flags) {
	QString text_QString = QString::fromUtf8(text.data, text.len);
	return self->findText(text_QString, static_cast<Qt::MatchFlags>(flags));
}

int QComboBox_findData2(const QComboBox* self, QVariant* data, int role) {
	return self->findData(*data, static_cast<int>(role));
}

int QComboBox_findData3(const QComboBox* self, QVariant* data, int role, int flags) {
	return self->findData(*data, static_cast<int>(role), static_cast<Qt::MatchFlags>(flags));
}

QVariant* QComboBox_currentData1(const QComboBox* self, int role) {
	return new QVariant(self->currentData(static_cast<int>(role)));
}

QVariant* QComboBox_itemData2(const QComboBox* self, int index, int role) {
	return new QVariant(self->itemData(static_cast<int>(index), static_cast<int>(role)));
}

void QComboBox_addItem22(QComboBox* self, struct miqt_string text, QVariant* userData) {
	QString text_QString = QString::fromUtf8(text.data, text.len);
	self->addItem(text_QString, *userData);
}

void QComboBox_addItem3(QComboBox* self, QIcon* icon, struct miqt_string text, QVariant* userData) {
	QString text_QString = QString::fromUtf8(text.data, text.len);
	self->addItem(*icon, text_QString, *userData);
}

void QComboBox_insertItem3(QComboBox* self, int index, struct miqt_string text, QVariant* userData) {
	QString text_QString = QString::fromUtf8(text.data, text.len);
	self->insertItem(static_cast<int>(index), text_QString, *userData);
}

void QComboBox_insertItem4(QComboBox* self, int index, QIcon* icon, struct miqt_string text, QVariant* userData) {
	QString text_QString = QString::fromUtf8(text.data, text.len);
	self->insertItem(static_cast<int>(index), *icon, text_QString, *userData);
}

void QComboBox_setItemData3(QComboBox* self, int index, QVariant* value, int role) {
	self->setItemData(static_cast<int>(index), *value, static_cast<int>(role));
}

QMetaObject* QComboBox_virtualbase_metaObject(const VirtualQComboBox* self) {

	return (QMetaObject*) self->QComboBox::metaObject();
}

void* QComboBox_virtualbase_metacast(VirtualQComboBox* self, const char* param1) {

	return self->QComboBox::qt_metacast(param1);
}

int QComboBox_virtualbase_metacall(VirtualQComboBox* self, int param1, int param2, void** param3) {

	return self->QComboBox::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

void QComboBox_virtualbase_setModel(VirtualQComboBox* self, QAbstractItemModel* model) {

	self->QComboBox::setModel(model);
}

QSize* QComboBox_virtualbase_sizeHint(const VirtualQComboBox* self) {

	return new QSize(self->QComboBox::sizeHint());
}

QSize* QComboBox_virtualbase_minimumSizeHint(const VirtualQComboBox* self) {

	return new QSize(self->QComboBox::minimumSizeHint());
}

void QComboBox_virtualbase_showPopup(VirtualQComboBox* self) {

	self->QComboBox::showPopup();
}

void QComboBox_virtualbase_hidePopup(VirtualQComboBox* self) {

	self->QComboBox::hidePopup();
}

bool QComboBox_virtualbase_event(VirtualQComboBox* self, QEvent* event) {

	return self->QComboBox::event(event);
}

QVariant* QComboBox_virtualbase_inputMethodQuery(const VirtualQComboBox* self, int param1) {

	return new QVariant(self->QComboBox::inputMethodQuery(static_cast<Qt::InputMethodQuery>(param1)));
}

void QComboBox_virtualbase_focusInEvent(VirtualQComboBox* self, QFocusEvent* e) {

	self->QComboBox::focusInEvent(e);
}

void QComboBox_virtualbase_focusOutEvent(VirtualQComboBox* self, QFocusEvent* e) {

	self->QComboBox::focusOutEvent(e);
}

void QComboBox_virtualbase_changeEvent(VirtualQComboBox* self, QEvent* e) {

	self->QComboBox::changeEvent(e);
}

void QComboBox_virtualbase_resizeEvent(VirtualQComboBox* self, QResizeEvent* e) {

	self->QComboBox::resizeEvent(e);
}

void QComboBox_virtualbase_paintEvent(VirtualQComboBox* self, QPaintEvent* e) {

	self->QComboBox::paintEvent(e);
}

void QComboBox_virtualbase_showEvent(VirtualQComboBox* self, QShowEvent* e) {

	self->QComboBox::showEvent(e);
}

void QComboBox_virtualbase_hideEvent(VirtualQComboBox* self, QHideEvent* e) {

	self->QComboBox::hideEvent(e);
}

void QComboBox_virtualbase_mousePressEvent(VirtualQComboBox* self, QMouseEvent* e) {

	self->QComboBox::mousePressEvent(e);
}

void QComboBox_virtualbase_mouseReleaseEvent(VirtualQComboBox* self, QMouseEvent* e) {

	self->QComboBox::mouseReleaseEvent(e);
}

void QComboBox_virtualbase_keyPressEvent(VirtualQComboBox* self, QKeyEvent* e) {

	self->QComboBox::keyPressEvent(e);
}

void QComboBox_virtualbase_keyReleaseEvent(VirtualQComboBox* self, QKeyEvent* e) {

	self->QComboBox::keyReleaseEvent(e);
}

void QComboBox_virtualbase_wheelEvent(VirtualQComboBox* self, QWheelEvent* e) {

	self->QComboBox::wheelEvent(e);
}

void QComboBox_virtualbase_contextMenuEvent(VirtualQComboBox* self, QContextMenuEvent* e) {

	self->QComboBox::contextMenuEvent(e);
}

void QComboBox_virtualbase_inputMethodEvent(VirtualQComboBox* self, QInputMethodEvent* param1) {

	self->QComboBox::inputMethodEvent(param1);
}

void QComboBox_virtualbase_initStyleOption(const VirtualQComboBox* self, QStyleOptionComboBox* option) {

	self->QComboBox::initStyleOption(option);
}

int QComboBox_virtualbase_devType(const VirtualQComboBox* self) {

	return self->QComboBox::devType();
}

void QComboBox_virtualbase_setVisible(VirtualQComboBox* self, bool visible) {

	self->QComboBox::setVisible(visible);
}

int QComboBox_virtualbase_heightForWidth(const VirtualQComboBox* self, int param1) {

	return self->QComboBox::heightForWidth(static_cast<int>(param1));
}

bool QComboBox_virtualbase_hasHeightForWidth(const VirtualQComboBox* self) {

	return self->QComboBox::hasHeightForWidth();
}

QPaintEngine* QComboBox_virtualbase_paintEngine(const VirtualQComboBox* self) {

	return self->QComboBox::paintEngine();
}

void QComboBox_virtualbase_mouseDoubleClickEvent(VirtualQComboBox* self, QMouseEvent* event) {

	self->QComboBox::mouseDoubleClickEvent(event);
}

void QComboBox_virtualbase_mouseMoveEvent(VirtualQComboBox* self, QMouseEvent* event) {

	self->QComboBox::mouseMoveEvent(event);
}

void QComboBox_virtualbase_enterEvent(VirtualQComboBox* self, QEnterEvent* event) {

	self->QComboBox::enterEvent(event);
}

void QComboBox_virtualbase_leaveEvent(VirtualQComboBox* self, QEvent* event) {

	self->QComboBox::leaveEvent(event);
}

void QComboBox_virtualbase_moveEvent(VirtualQComboBox* self, QMoveEvent* event) {

	self->QComboBox::moveEvent(event);
}

void QComboBox_virtualbase_closeEvent(VirtualQComboBox* self, QCloseEvent* event) {

	self->QComboBox::closeEvent(event);
}

void QComboBox_virtualbase_tabletEvent(VirtualQComboBox* self, QTabletEvent* event) {

	self->QComboBox::tabletEvent(event);
}

void QComboBox_virtualbase_actionEvent(VirtualQComboBox* self, QActionEvent* event) {

	self->QComboBox::actionEvent(event);
}

void QComboBox_virtualbase_dragEnterEvent(VirtualQComboBox* self, QDragEnterEvent* event) {

	self->QComboBox::dragEnterEvent(event);
}

void QComboBox_virtualbase_dragMoveEvent(VirtualQComboBox* self, QDragMoveEvent* event) {

	self->QComboBox::dragMoveEvent(event);
}

void QComboBox_virtualbase_dragLeaveEvent(VirtualQComboBox* self, QDragLeaveEvent* event) {

	self->QComboBox::dragLeaveEvent(event);
}

void QComboBox_virtualbase_dropEvent(VirtualQComboBox* self, QDropEvent* event) {

	self->QComboBox::dropEvent(event);
}

bool QComboBox_virtualbase_nativeEvent(VirtualQComboBox* self, struct miqt_string eventType, void* message, intptr_t* result) {
	QByteArray eventType_QByteArray(eventType.data, eventType.len);

	return self->QComboBox::nativeEvent(eventType_QByteArray, message, (qintptr*)(result));
}

int QComboBox_virtualbase_metric(const VirtualQComboBox* self, int param1) {

	return self->QComboBox::metric(static_cast<VirtualQComboBox::PaintDeviceMetric>(param1));
}

void QComboBox_virtualbase_initPainter(const VirtualQComboBox* self, QPainter* painter) {

	self->QComboBox::initPainter(painter);
}

QPaintDevice* QComboBox_virtualbase_redirected(const VirtualQComboBox* self, QPoint* offset) {

	return self->QComboBox::redirected(offset);
}

QPainter* QComboBox_virtualbase_sharedPainter(const VirtualQComboBox* self) {

	return self->QComboBox::sharedPainter();
}

bool QComboBox_virtualbase_focusNextPrevChild(VirtualQComboBox* self, bool next) {

	return self->QComboBox::focusNextPrevChild(next);
}

bool QComboBox_virtualbase_eventFilter(VirtualQComboBox* self, QObject* watched, QEvent* event) {

	return self->QComboBox::eventFilter(watched, event);
}

void QComboBox_virtualbase_timerEvent(VirtualQComboBox* self, QTimerEvent* event) {

	self->QComboBox::timerEvent(event);
}

void QComboBox_virtualbase_childEvent(VirtualQComboBox* self, QChildEvent* event) {

	self->QComboBox::childEvent(event);
}

void QComboBox_virtualbase_customEvent(VirtualQComboBox* self, QEvent* event) {

	self->QComboBox::customEvent(event);
}

void QComboBox_virtualbase_connectNotify(VirtualQComboBox* self, QMetaMethod* signal) {

	self->QComboBox::connectNotify(*signal);
}

void QComboBox_virtualbase_disconnectNotify(VirtualQComboBox* self, QMetaMethod* signal) {

	self->QComboBox::disconnectNotify(*signal);
}

const QMetaObject* QComboBox_staticMetaObject() { return &QComboBox::staticMetaObject; }

const QComboBox_VTable* QComboBox_vtbl(const VirtualQComboBox* self) { return self->vtbl; }
void* QComboBox_vdata(const VirtualQComboBox* self) { return self->vdata; }
void QComboBox_setVdata(VirtualQComboBox* self, void* vdata) { self->vdata = vdata; }

void QComboBox_protectedbase_updateMicroFocus(VirtualQComboBox* self) {
	self->updateMicroFocus();
}

void QComboBox_protectedbase_create(VirtualQComboBox* self) {
	self->create();
}

void QComboBox_protectedbase_destroy(VirtualQComboBox* self) {
	self->destroy();
}

bool QComboBox_protectedbase_focusNextChild(VirtualQComboBox* self) {
	return self->focusNextChild();
}

bool QComboBox_protectedbase_focusPreviousChild(VirtualQComboBox* self) {
	return self->focusPreviousChild();
}

QObject* QComboBox_protectedbase_sender(const VirtualQComboBox* self) {
	return self->sender();
}

int QComboBox_protectedbase_senderSignalIndex(const VirtualQComboBox* self) {
	return self->senderSignalIndex();
}

int QComboBox_protectedbase_receivers(const VirtualQComboBox* self, const char* signal) {
	return self->receivers(signal);
}

bool QComboBox_protectedbase_isSignalConnected(const VirtualQComboBox* self, QMetaMethod* signal) {
	return self->isSignalConnected(*signal);
}

void QComboBox_delete(QComboBox* self) {
	delete self;
}

