#include <QAbstractSpinBox>
#include <QActionEvent>
#include <QByteArray>
#include <QChildEvent>
#include <QCloseEvent>
#include <QContextMenuEvent>
#include <QDoubleSpinBox>
#include <QDragEnterEvent>
#include <QDragLeaveEvent>
#include <QDragMoveEvent>
#include <QDropEvent>
#include <QEvent>
#include <QFocusEvent>
#include <QHideEvent>
#include <QInputMethodEvent>
#include <QKeyEvent>
#include <QLineEdit>
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
#include <QSpinBox>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QStyleOptionSpinBox>
#include <QTabletEvent>
#include <QTimerEvent>
#include <QVariant>
#include <QWheelEvent>
#include <QWidget>
#include <qspinbox.h>
#include "gen_qspinbox.h"
class VirtualQSpinBox final : public QSpinBox {
	const QSpinBox_VTable* vtbl;
	void* vdata;
public:
	friend const QSpinBox_VTable* QSpinBox_vtbl(const VirtualQSpinBox* self);
	friend void* QSpinBox_vdata(const VirtualQSpinBox* self);
	friend void QSpinBox_setVdata(VirtualQSpinBox* self, void* vdata);

	VirtualQSpinBox(const QSpinBox_VTable* vtbl, void* vdata, QWidget* parent): QSpinBox(parent), vtbl(vtbl), vdata(vdata) {}
	VirtualQSpinBox(const QSpinBox_VTable* vtbl, void* vdata): QSpinBox(), vtbl(vtbl), vdata(vdata) {}

	virtual ~VirtualQSpinBox() override { if(vtbl->destructor) vtbl->destructor(this); }

	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QSpinBox::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(this);

		return callback_return_value;
	}

	friend QMetaObject* QSpinBox_virtualbase_metaObject(const VirtualQSpinBox* self);

	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QSpinBox::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(this, sigval1);

		return callback_return_value;
	}

	friend void* QSpinBox_virtualbase_metacast(VirtualQSpinBox* self, const char* param1);

	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QSpinBox::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QSpinBox_virtualbase_metacall(VirtualQSpinBox* self, int param1, int param2, void** param3);

	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QSpinBox::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(this, sigval1);

		return callback_return_value;
	}

	friend bool QSpinBox_virtualbase_event(VirtualQSpinBox* self, QEvent* event);

	virtual QValidator::State validate(QString& input, int& pos) const override {
		if (vtbl->validate == 0) {
			return QSpinBox::validate(input, pos);
		}

		QString input_ret = input;
		// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
		QByteArray input_b = input_ret.toUtf8();
		struct miqt_string input_ms;
		input_ms.len = input_b.length();
		input_ms.data = static_cast<char*>(malloc(input_ms.len));
		memcpy(input_ms.data, input_b.data(), input_ms.len);
		struct miqt_string sigval1 = input_ms;
		int* sigval2 = &pos;

		int callback_return_value = vtbl->validate(this, sigval1, sigval2);

		return static_cast<QValidator::State>(callback_return_value);
	}

	friend int QSpinBox_virtualbase_validate(const VirtualQSpinBox* self, struct miqt_string input, int* pos);

	virtual int valueFromText(const QString& text) const override {
		if (vtbl->valueFromText == 0) {
			return QSpinBox::valueFromText(text);
		}

		const QString text_ret = text;
		// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
		QByteArray text_b = text_ret.toUtf8();
		struct miqt_string text_ms;
		text_ms.len = text_b.length();
		text_ms.data = static_cast<char*>(malloc(text_ms.len));
		memcpy(text_ms.data, text_b.data(), text_ms.len);
		struct miqt_string sigval1 = text_ms;

		int callback_return_value = vtbl->valueFromText(this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QSpinBox_virtualbase_valueFromText(const VirtualQSpinBox* self, struct miqt_string text);

	virtual QString textFromValue(int val) const override {
		if (vtbl->textFromValue == 0) {
			return QSpinBox::textFromValue(val);
		}

		int sigval1 = val;

		struct miqt_string callback_return_value = vtbl->textFromValue(this, sigval1);
		QString callback_return_value_QString = QString::fromUtf8(callback_return_value.data, callback_return_value.len);
		free(callback_return_value.data);

		return callback_return_value_QString;
	}

	friend struct miqt_string QSpinBox_virtualbase_textFromValue(const VirtualQSpinBox* self, int val);

	virtual void fixup(QString& str) const override {
		if (vtbl->fixup == 0) {
			QSpinBox::fixup(str);
			return;
		}

		QString str_ret = str;
		// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
		QByteArray str_b = str_ret.toUtf8();
		struct miqt_string str_ms;
		str_ms.len = str_b.length();
		str_ms.data = static_cast<char*>(malloc(str_ms.len));
		memcpy(str_ms.data, str_b.data(), str_ms.len);
		struct miqt_string sigval1 = str_ms;

		vtbl->fixup(this, sigval1);

	}

	friend void QSpinBox_virtualbase_fixup(const VirtualQSpinBox* self, struct miqt_string str);

	virtual QSize sizeHint() const override {
		if (vtbl->sizeHint == 0) {
			return QSpinBox::sizeHint();
		}


		QSize* callback_return_value = vtbl->sizeHint(this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QSize* QSpinBox_virtualbase_sizeHint(const VirtualQSpinBox* self);

	virtual QSize minimumSizeHint() const override {
		if (vtbl->minimumSizeHint == 0) {
			return QSpinBox::minimumSizeHint();
		}


		QSize* callback_return_value = vtbl->minimumSizeHint(this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QSize* QSpinBox_virtualbase_minimumSizeHint(const VirtualQSpinBox* self);

	virtual QVariant inputMethodQuery(Qt::InputMethodQuery param1) const override {
		if (vtbl->inputMethodQuery == 0) {
			return QSpinBox::inputMethodQuery(param1);
		}

		Qt::InputMethodQuery param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);

		QVariant* callback_return_value = vtbl->inputMethodQuery(this, sigval1);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QVariant* QSpinBox_virtualbase_inputMethodQuery(const VirtualQSpinBox* self, int param1);

	virtual void stepBy(int steps) override {
		if (vtbl->stepBy == 0) {
			QSpinBox::stepBy(steps);
			return;
		}

		int sigval1 = steps;

		vtbl->stepBy(this, sigval1);

	}

	friend void QSpinBox_virtualbase_stepBy(VirtualQSpinBox* self, int steps);

	virtual void clear() override {
		if (vtbl->clear == 0) {
			QSpinBox::clear();
			return;
		}


		vtbl->clear(this);

	}

	friend void QSpinBox_virtualbase_clear(VirtualQSpinBox* self);

	virtual void resizeEvent(QResizeEvent* event) override {
		if (vtbl->resizeEvent == 0) {
			QSpinBox::resizeEvent(event);
			return;
		}

		QResizeEvent* sigval1 = event;

		vtbl->resizeEvent(this, sigval1);

	}

	friend void QSpinBox_virtualbase_resizeEvent(VirtualQSpinBox* self, QResizeEvent* event);

	virtual void keyPressEvent(QKeyEvent* event) override {
		if (vtbl->keyPressEvent == 0) {
			QSpinBox::keyPressEvent(event);
			return;
		}

		QKeyEvent* sigval1 = event;

		vtbl->keyPressEvent(this, sigval1);

	}

	friend void QSpinBox_virtualbase_keyPressEvent(VirtualQSpinBox* self, QKeyEvent* event);

	virtual void keyReleaseEvent(QKeyEvent* event) override {
		if (vtbl->keyReleaseEvent == 0) {
			QSpinBox::keyReleaseEvent(event);
			return;
		}

		QKeyEvent* sigval1 = event;

		vtbl->keyReleaseEvent(this, sigval1);

	}

	friend void QSpinBox_virtualbase_keyReleaseEvent(VirtualQSpinBox* self, QKeyEvent* event);

	virtual void wheelEvent(QWheelEvent* event) override {
		if (vtbl->wheelEvent == 0) {
			QSpinBox::wheelEvent(event);
			return;
		}

		QWheelEvent* sigval1 = event;

		vtbl->wheelEvent(this, sigval1);

	}

	friend void QSpinBox_virtualbase_wheelEvent(VirtualQSpinBox* self, QWheelEvent* event);

	virtual void focusInEvent(QFocusEvent* event) override {
		if (vtbl->focusInEvent == 0) {
			QSpinBox::focusInEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;

		vtbl->focusInEvent(this, sigval1);

	}

	friend void QSpinBox_virtualbase_focusInEvent(VirtualQSpinBox* self, QFocusEvent* event);

	virtual void focusOutEvent(QFocusEvent* event) override {
		if (vtbl->focusOutEvent == 0) {
			QSpinBox::focusOutEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;

		vtbl->focusOutEvent(this, sigval1);

	}

	friend void QSpinBox_virtualbase_focusOutEvent(VirtualQSpinBox* self, QFocusEvent* event);

	virtual void contextMenuEvent(QContextMenuEvent* event) override {
		if (vtbl->contextMenuEvent == 0) {
			QSpinBox::contextMenuEvent(event);
			return;
		}

		QContextMenuEvent* sigval1 = event;

		vtbl->contextMenuEvent(this, sigval1);

	}

	friend void QSpinBox_virtualbase_contextMenuEvent(VirtualQSpinBox* self, QContextMenuEvent* event);

	virtual void changeEvent(QEvent* event) override {
		if (vtbl->changeEvent == 0) {
			QSpinBox::changeEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->changeEvent(this, sigval1);

	}

	friend void QSpinBox_virtualbase_changeEvent(VirtualQSpinBox* self, QEvent* event);

	virtual void closeEvent(QCloseEvent* event) override {
		if (vtbl->closeEvent == 0) {
			QSpinBox::closeEvent(event);
			return;
		}

		QCloseEvent* sigval1 = event;

		vtbl->closeEvent(this, sigval1);

	}

	friend void QSpinBox_virtualbase_closeEvent(VirtualQSpinBox* self, QCloseEvent* event);

	virtual void hideEvent(QHideEvent* event) override {
		if (vtbl->hideEvent == 0) {
			QSpinBox::hideEvent(event);
			return;
		}

		QHideEvent* sigval1 = event;

		vtbl->hideEvent(this, sigval1);

	}

	friend void QSpinBox_virtualbase_hideEvent(VirtualQSpinBox* self, QHideEvent* event);

	virtual void mousePressEvent(QMouseEvent* event) override {
		if (vtbl->mousePressEvent == 0) {
			QSpinBox::mousePressEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mousePressEvent(this, sigval1);

	}

	friend void QSpinBox_virtualbase_mousePressEvent(VirtualQSpinBox* self, QMouseEvent* event);

	virtual void mouseReleaseEvent(QMouseEvent* event) override {
		if (vtbl->mouseReleaseEvent == 0) {
			QSpinBox::mouseReleaseEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseReleaseEvent(this, sigval1);

	}

	friend void QSpinBox_virtualbase_mouseReleaseEvent(VirtualQSpinBox* self, QMouseEvent* event);

	virtual void mouseMoveEvent(QMouseEvent* event) override {
		if (vtbl->mouseMoveEvent == 0) {
			QSpinBox::mouseMoveEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseMoveEvent(this, sigval1);

	}

	friend void QSpinBox_virtualbase_mouseMoveEvent(VirtualQSpinBox* self, QMouseEvent* event);

	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QSpinBox::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(this, sigval1);

	}

	friend void QSpinBox_virtualbase_timerEvent(VirtualQSpinBox* self, QTimerEvent* event);

	virtual void paintEvent(QPaintEvent* event) override {
		if (vtbl->paintEvent == 0) {
			QSpinBox::paintEvent(event);
			return;
		}

		QPaintEvent* sigval1 = event;

		vtbl->paintEvent(this, sigval1);

	}

	friend void QSpinBox_virtualbase_paintEvent(VirtualQSpinBox* self, QPaintEvent* event);

	virtual void showEvent(QShowEvent* event) override {
		if (vtbl->showEvent == 0) {
			QSpinBox::showEvent(event);
			return;
		}

		QShowEvent* sigval1 = event;

		vtbl->showEvent(this, sigval1);

	}

	friend void QSpinBox_virtualbase_showEvent(VirtualQSpinBox* self, QShowEvent* event);

	virtual QAbstractSpinBox::StepEnabled stepEnabled() const override {
		if (vtbl->stepEnabled == 0) {
			return QSpinBox::stepEnabled();
		}


		int callback_return_value = vtbl->stepEnabled(this);

		return static_cast<QAbstractSpinBox::StepEnabled>(callback_return_value);
	}

	friend int QSpinBox_virtualbase_stepEnabled(const VirtualQSpinBox* self);

	virtual int devType() const override {
		if (vtbl->devType == 0) {
			return QSpinBox::devType();
		}


		int callback_return_value = vtbl->devType(this);

		return static_cast<int>(callback_return_value);
	}

	friend int QSpinBox_virtualbase_devType(const VirtualQSpinBox* self);

	virtual void setVisible(bool visible) override {
		if (vtbl->setVisible == 0) {
			QSpinBox::setVisible(visible);
			return;
		}

		bool sigval1 = visible;

		vtbl->setVisible(this, sigval1);

	}

	friend void QSpinBox_virtualbase_setVisible(VirtualQSpinBox* self, bool visible);

	virtual int heightForWidth(int param1) const override {
		if (vtbl->heightForWidth == 0) {
			return QSpinBox::heightForWidth(param1);
		}

		int sigval1 = param1;

		int callback_return_value = vtbl->heightForWidth(this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QSpinBox_virtualbase_heightForWidth(const VirtualQSpinBox* self, int param1);

	virtual bool hasHeightForWidth() const override {
		if (vtbl->hasHeightForWidth == 0) {
			return QSpinBox::hasHeightForWidth();
		}


		bool callback_return_value = vtbl->hasHeightForWidth(this);

		return callback_return_value;
	}

	friend bool QSpinBox_virtualbase_hasHeightForWidth(const VirtualQSpinBox* self);

	virtual QPaintEngine* paintEngine() const override {
		if (vtbl->paintEngine == 0) {
			return QSpinBox::paintEngine();
		}


		QPaintEngine* callback_return_value = vtbl->paintEngine(this);

		return callback_return_value;
	}

	friend QPaintEngine* QSpinBox_virtualbase_paintEngine(const VirtualQSpinBox* self);

	virtual void mouseDoubleClickEvent(QMouseEvent* event) override {
		if (vtbl->mouseDoubleClickEvent == 0) {
			QSpinBox::mouseDoubleClickEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseDoubleClickEvent(this, sigval1);

	}

	friend void QSpinBox_virtualbase_mouseDoubleClickEvent(VirtualQSpinBox* self, QMouseEvent* event);

	virtual void enterEvent(QEvent* event) override {
		if (vtbl->enterEvent == 0) {
			QSpinBox::enterEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->enterEvent(this, sigval1);

	}

	friend void QSpinBox_virtualbase_enterEvent(VirtualQSpinBox* self, QEvent* event);

	virtual void leaveEvent(QEvent* event) override {
		if (vtbl->leaveEvent == 0) {
			QSpinBox::leaveEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->leaveEvent(this, sigval1);

	}

	friend void QSpinBox_virtualbase_leaveEvent(VirtualQSpinBox* self, QEvent* event);

	virtual void moveEvent(QMoveEvent* event) override {
		if (vtbl->moveEvent == 0) {
			QSpinBox::moveEvent(event);
			return;
		}

		QMoveEvent* sigval1 = event;

		vtbl->moveEvent(this, sigval1);

	}

	friend void QSpinBox_virtualbase_moveEvent(VirtualQSpinBox* self, QMoveEvent* event);

	virtual void tabletEvent(QTabletEvent* event) override {
		if (vtbl->tabletEvent == 0) {
			QSpinBox::tabletEvent(event);
			return;
		}

		QTabletEvent* sigval1 = event;

		vtbl->tabletEvent(this, sigval1);

	}

	friend void QSpinBox_virtualbase_tabletEvent(VirtualQSpinBox* self, QTabletEvent* event);

	virtual void actionEvent(QActionEvent* event) override {
		if (vtbl->actionEvent == 0) {
			QSpinBox::actionEvent(event);
			return;
		}

		QActionEvent* sigval1 = event;

		vtbl->actionEvent(this, sigval1);

	}

	friend void QSpinBox_virtualbase_actionEvent(VirtualQSpinBox* self, QActionEvent* event);

	virtual void dragEnterEvent(QDragEnterEvent* event) override {
		if (vtbl->dragEnterEvent == 0) {
			QSpinBox::dragEnterEvent(event);
			return;
		}

		QDragEnterEvent* sigval1 = event;

		vtbl->dragEnterEvent(this, sigval1);

	}

	friend void QSpinBox_virtualbase_dragEnterEvent(VirtualQSpinBox* self, QDragEnterEvent* event);

	virtual void dragMoveEvent(QDragMoveEvent* event) override {
		if (vtbl->dragMoveEvent == 0) {
			QSpinBox::dragMoveEvent(event);
			return;
		}

		QDragMoveEvent* sigval1 = event;

		vtbl->dragMoveEvent(this, sigval1);

	}

	friend void QSpinBox_virtualbase_dragMoveEvent(VirtualQSpinBox* self, QDragMoveEvent* event);

	virtual void dragLeaveEvent(QDragLeaveEvent* event) override {
		if (vtbl->dragLeaveEvent == 0) {
			QSpinBox::dragLeaveEvent(event);
			return;
		}

		QDragLeaveEvent* sigval1 = event;

		vtbl->dragLeaveEvent(this, sigval1);

	}

	friend void QSpinBox_virtualbase_dragLeaveEvent(VirtualQSpinBox* self, QDragLeaveEvent* event);

	virtual void dropEvent(QDropEvent* event) override {
		if (vtbl->dropEvent == 0) {
			QSpinBox::dropEvent(event);
			return;
		}

		QDropEvent* sigval1 = event;

		vtbl->dropEvent(this, sigval1);

	}

	friend void QSpinBox_virtualbase_dropEvent(VirtualQSpinBox* self, QDropEvent* event);

	virtual bool nativeEvent(const QByteArray& eventType, void* message, long* result) override {
		if (vtbl->nativeEvent == 0) {
			return QSpinBox::nativeEvent(eventType, message, result);
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

	friend bool QSpinBox_virtualbase_nativeEvent(VirtualQSpinBox* self, struct miqt_string eventType, void* message, long* result);

	virtual int metric(QPaintDevice::PaintDeviceMetric param1) const override {
		if (vtbl->metric == 0) {
			return QSpinBox::metric(param1);
		}

		QPaintDevice::PaintDeviceMetric param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);

		int callback_return_value = vtbl->metric(this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QSpinBox_virtualbase_metric(const VirtualQSpinBox* self, int param1);

	virtual void initPainter(QPainter* painter) const override {
		if (vtbl->initPainter == 0) {
			QSpinBox::initPainter(painter);
			return;
		}

		QPainter* sigval1 = painter;

		vtbl->initPainter(this, sigval1);

	}

	friend void QSpinBox_virtualbase_initPainter(const VirtualQSpinBox* self, QPainter* painter);

	virtual QPaintDevice* redirected(QPoint* offset) const override {
		if (vtbl->redirected == 0) {
			return QSpinBox::redirected(offset);
		}

		QPoint* sigval1 = offset;

		QPaintDevice* callback_return_value = vtbl->redirected(this, sigval1);

		return callback_return_value;
	}

	friend QPaintDevice* QSpinBox_virtualbase_redirected(const VirtualQSpinBox* self, QPoint* offset);

	virtual QPainter* sharedPainter() const override {
		if (vtbl->sharedPainter == 0) {
			return QSpinBox::sharedPainter();
		}


		QPainter* callback_return_value = vtbl->sharedPainter(this);

		return callback_return_value;
	}

	friend QPainter* QSpinBox_virtualbase_sharedPainter(const VirtualQSpinBox* self);

	virtual void inputMethodEvent(QInputMethodEvent* param1) override {
		if (vtbl->inputMethodEvent == 0) {
			QSpinBox::inputMethodEvent(param1);
			return;
		}

		QInputMethodEvent* sigval1 = param1;

		vtbl->inputMethodEvent(this, sigval1);

	}

	friend void QSpinBox_virtualbase_inputMethodEvent(VirtualQSpinBox* self, QInputMethodEvent* param1);

	virtual bool focusNextPrevChild(bool next) override {
		if (vtbl->focusNextPrevChild == 0) {
			return QSpinBox::focusNextPrevChild(next);
		}

		bool sigval1 = next;

		bool callback_return_value = vtbl->focusNextPrevChild(this, sigval1);

		return callback_return_value;
	}

	friend bool QSpinBox_virtualbase_focusNextPrevChild(VirtualQSpinBox* self, bool next);

	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QSpinBox::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QSpinBox_virtualbase_eventFilter(VirtualQSpinBox* self, QObject* watched, QEvent* event);

	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QSpinBox::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(this, sigval1);

	}

	friend void QSpinBox_virtualbase_childEvent(VirtualQSpinBox* self, QChildEvent* event);

	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QSpinBox::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(this, sigval1);

	}

	friend void QSpinBox_virtualbase_customEvent(VirtualQSpinBox* self, QEvent* event);

	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QSpinBox::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(this, sigval1);

	}

	friend void QSpinBox_virtualbase_connectNotify(VirtualQSpinBox* self, QMetaMethod* signal);

	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QSpinBox::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(this, sigval1);

	}

	friend void QSpinBox_virtualbase_disconnectNotify(VirtualQSpinBox* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend void QSpinBox_protectedbase_initStyleOption(const VirtualQSpinBox* self, QStyleOptionSpinBox* option);
	friend QLineEdit* QSpinBox_protectedbase_lineEdit(const VirtualQSpinBox* self);
	friend void QSpinBox_protectedbase_setLineEdit(VirtualQSpinBox* self, QLineEdit* edit);
	friend void QSpinBox_protectedbase_updateMicroFocus(VirtualQSpinBox* self);
	friend void QSpinBox_protectedbase_create(VirtualQSpinBox* self);
	friend void QSpinBox_protectedbase_destroy(VirtualQSpinBox* self);
	friend bool QSpinBox_protectedbase_focusNextChild(VirtualQSpinBox* self);
	friend bool QSpinBox_protectedbase_focusPreviousChild(VirtualQSpinBox* self);
	friend QObject* QSpinBox_protectedbase_sender(const VirtualQSpinBox* self);
	friend int QSpinBox_protectedbase_senderSignalIndex(const VirtualQSpinBox* self);
	friend int QSpinBox_protectedbase_receivers(const VirtualQSpinBox* self, const char* signal);
	friend bool QSpinBox_protectedbase_isSignalConnected(const VirtualQSpinBox* self, QMetaMethod* signal);
};

VirtualQSpinBox* QSpinBox_new(const QSpinBox_VTable* vtbl, void* vdata, QWidget* parent) {
	return new VirtualQSpinBox(vtbl, vdata, parent);
}

VirtualQSpinBox* QSpinBox_new2(const QSpinBox_VTable* vtbl, void* vdata) {
	return new VirtualQSpinBox(vtbl, vdata);
}

void QSpinBox_virtbase(QSpinBox* src, QAbstractSpinBox** outptr_QAbstractSpinBox) {
	*outptr_QAbstractSpinBox = static_cast<QAbstractSpinBox*>(src);
}

QMetaObject* QSpinBox_metaObject(const QSpinBox* self) {
	return (QMetaObject*) self->metaObject();
}

void* QSpinBox_metacast(QSpinBox* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QSpinBox_metacall(QSpinBox* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QSpinBox_tr(const char* s) {
	QString _ret = QSpinBox::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QSpinBox_trUtf8(const char* s) {
	QString _ret = QSpinBox::trUtf8(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

int QSpinBox_value(const QSpinBox* self) {
	return self->value();
}

struct miqt_string QSpinBox_prefix(const QSpinBox* self) {
	QString _ret = self->prefix();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QSpinBox_setPrefix(QSpinBox* self, struct miqt_string prefix) {
	QString prefix_QString = QString::fromUtf8(prefix.data, prefix.len);
	self->setPrefix(prefix_QString);
}

struct miqt_string QSpinBox_suffix(const QSpinBox* self) {
	QString _ret = self->suffix();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QSpinBox_setSuffix(QSpinBox* self, struct miqt_string suffix) {
	QString suffix_QString = QString::fromUtf8(suffix.data, suffix.len);
	self->setSuffix(suffix_QString);
}

struct miqt_string QSpinBox_cleanText(const QSpinBox* self) {
	QString _ret = self->cleanText();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

int QSpinBox_singleStep(const QSpinBox* self) {
	return self->singleStep();
}

void QSpinBox_setSingleStep(QSpinBox* self, int val) {
	self->setSingleStep(static_cast<int>(val));
}

int QSpinBox_minimum(const QSpinBox* self) {
	return self->minimum();
}

void QSpinBox_setMinimum(QSpinBox* self, int min) {
	self->setMinimum(static_cast<int>(min));
}

int QSpinBox_maximum(const QSpinBox* self) {
	return self->maximum();
}

void QSpinBox_setMaximum(QSpinBox* self, int max) {
	self->setMaximum(static_cast<int>(max));
}

void QSpinBox_setRange(QSpinBox* self, int min, int max) {
	self->setRange(static_cast<int>(min), static_cast<int>(max));
}

int QSpinBox_stepType(const QSpinBox* self) {
	QAbstractSpinBox::StepType _ret = self->stepType();
	return static_cast<int>(_ret);
}

void QSpinBox_setStepType(QSpinBox* self, int stepType) {
	self->setStepType(static_cast<QAbstractSpinBox::StepType>(stepType));
}

int QSpinBox_displayIntegerBase(const QSpinBox* self) {
	return self->displayIntegerBase();
}

void QSpinBox_setDisplayIntegerBase(QSpinBox* self, int base) {
	self->setDisplayIntegerBase(static_cast<int>(base));
}

void QSpinBox_setValue(QSpinBox* self, int val) {
	self->setValue(static_cast<int>(val));
}

void QSpinBox_valueChanged(QSpinBox* self, int param1) {
	self->valueChanged(static_cast<int>(param1));
}

void QSpinBox_connect_valueChanged(VirtualQSpinBox* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, int);
		void operator()(int param1) {
			int sigval1 = param1;
			callback(slot, sigval1);
		}
	};
	VirtualQSpinBox::connect(self, static_cast<void (QSpinBox::*)(int)>(&QSpinBox::valueChanged), self, local_caller{slot, callback, release});
}

void QSpinBox_textChanged(QSpinBox* self, struct miqt_string param1) {
	QString param1_QString = QString::fromUtf8(param1.data, param1.len);
	self->textChanged(param1_QString);
}

void QSpinBox_connect_textChanged(VirtualQSpinBox* self, intptr_t slot, void (*callback)(intptr_t, struct miqt_string), void (*release)(intptr_t)) {
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
	VirtualQSpinBox::connect(self, static_cast<void (QSpinBox::*)(const QString&)>(&QSpinBox::textChanged), self, local_caller{slot, callback, release});
}

void QSpinBox_valueChangedWithQString(QSpinBox* self, struct miqt_string param1) {
	QString param1_QString = QString::fromUtf8(param1.data, param1.len);
	self->valueChanged(param1_QString);
}

void QSpinBox_connect_valueChangedWithQString(VirtualQSpinBox* self, intptr_t slot, void (*callback)(intptr_t, struct miqt_string), void (*release)(intptr_t)) {
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
	VirtualQSpinBox::connect(self, static_cast<void (QSpinBox::*)(const QString&)>(&QSpinBox::valueChanged), self, local_caller{slot, callback, release});
}

struct miqt_string QSpinBox_tr2(const char* s, const char* c) {
	QString _ret = QSpinBox::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QSpinBox_tr3(const char* s, const char* c, int n) {
	QString _ret = QSpinBox::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QSpinBox_trUtf82(const char* s, const char* c) {
	QString _ret = QSpinBox::trUtf8(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QSpinBox_trUtf83(const char* s, const char* c, int n) {
	QString _ret = QSpinBox::trUtf8(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QMetaObject* QSpinBox_virtualbase_metaObject(const VirtualQSpinBox* self) {

	return (QMetaObject*) self->QSpinBox::metaObject();
}

void* QSpinBox_virtualbase_metacast(VirtualQSpinBox* self, const char* param1) {

	return self->QSpinBox::qt_metacast(param1);
}

int QSpinBox_virtualbase_metacall(VirtualQSpinBox* self, int param1, int param2, void** param3) {

	return self->QSpinBox::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

bool QSpinBox_virtualbase_event(VirtualQSpinBox* self, QEvent* event) {

	return self->QSpinBox::event(event);
}

int QSpinBox_virtualbase_validate(const VirtualQSpinBox* self, struct miqt_string input, int* pos) {
	QString input_QString = QString::fromUtf8(input.data, input.len);

	QValidator::State _ret = self->QSpinBox::validate(input_QString, static_cast<int&>(*pos));
	return static_cast<int>(_ret);
}

int QSpinBox_virtualbase_valueFromText(const VirtualQSpinBox* self, struct miqt_string text) {
	QString text_QString = QString::fromUtf8(text.data, text.len);

	return self->QSpinBox::valueFromText(text_QString);
}

struct miqt_string QSpinBox_virtualbase_textFromValue(const VirtualQSpinBox* self, int val) {

	QString _ret = self->QSpinBox::textFromValue(static_cast<int>(val));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QSpinBox_virtualbase_fixup(const VirtualQSpinBox* self, struct miqt_string str) {
	QString str_QString = QString::fromUtf8(str.data, str.len);

	self->QSpinBox::fixup(str_QString);
}

QSize* QSpinBox_virtualbase_sizeHint(const VirtualQSpinBox* self) {

	return new QSize(self->QSpinBox::sizeHint());
}

QSize* QSpinBox_virtualbase_minimumSizeHint(const VirtualQSpinBox* self) {

	return new QSize(self->QSpinBox::minimumSizeHint());
}

QVariant* QSpinBox_virtualbase_inputMethodQuery(const VirtualQSpinBox* self, int param1) {

	return new QVariant(self->QSpinBox::inputMethodQuery(static_cast<Qt::InputMethodQuery>(param1)));
}

void QSpinBox_virtualbase_stepBy(VirtualQSpinBox* self, int steps) {

	self->QSpinBox::stepBy(static_cast<int>(steps));
}

void QSpinBox_virtualbase_clear(VirtualQSpinBox* self) {

	self->QSpinBox::clear();
}

void QSpinBox_virtualbase_resizeEvent(VirtualQSpinBox* self, QResizeEvent* event) {

	self->QSpinBox::resizeEvent(event);
}

void QSpinBox_virtualbase_keyPressEvent(VirtualQSpinBox* self, QKeyEvent* event) {

	self->QSpinBox::keyPressEvent(event);
}

void QSpinBox_virtualbase_keyReleaseEvent(VirtualQSpinBox* self, QKeyEvent* event) {

	self->QSpinBox::keyReleaseEvent(event);
}

void QSpinBox_virtualbase_wheelEvent(VirtualQSpinBox* self, QWheelEvent* event) {

	self->QSpinBox::wheelEvent(event);
}

void QSpinBox_virtualbase_focusInEvent(VirtualQSpinBox* self, QFocusEvent* event) {

	self->QSpinBox::focusInEvent(event);
}

void QSpinBox_virtualbase_focusOutEvent(VirtualQSpinBox* self, QFocusEvent* event) {

	self->QSpinBox::focusOutEvent(event);
}

void QSpinBox_virtualbase_contextMenuEvent(VirtualQSpinBox* self, QContextMenuEvent* event) {

	self->QSpinBox::contextMenuEvent(event);
}

void QSpinBox_virtualbase_changeEvent(VirtualQSpinBox* self, QEvent* event) {

	self->QSpinBox::changeEvent(event);
}

void QSpinBox_virtualbase_closeEvent(VirtualQSpinBox* self, QCloseEvent* event) {

	self->QSpinBox::closeEvent(event);
}

void QSpinBox_virtualbase_hideEvent(VirtualQSpinBox* self, QHideEvent* event) {

	self->QSpinBox::hideEvent(event);
}

void QSpinBox_virtualbase_mousePressEvent(VirtualQSpinBox* self, QMouseEvent* event) {

	self->QSpinBox::mousePressEvent(event);
}

void QSpinBox_virtualbase_mouseReleaseEvent(VirtualQSpinBox* self, QMouseEvent* event) {

	self->QSpinBox::mouseReleaseEvent(event);
}

void QSpinBox_virtualbase_mouseMoveEvent(VirtualQSpinBox* self, QMouseEvent* event) {

	self->QSpinBox::mouseMoveEvent(event);
}

void QSpinBox_virtualbase_timerEvent(VirtualQSpinBox* self, QTimerEvent* event) {

	self->QSpinBox::timerEvent(event);
}

void QSpinBox_virtualbase_paintEvent(VirtualQSpinBox* self, QPaintEvent* event) {

	self->QSpinBox::paintEvent(event);
}

void QSpinBox_virtualbase_showEvent(VirtualQSpinBox* self, QShowEvent* event) {

	self->QSpinBox::showEvent(event);
}

int QSpinBox_virtualbase_stepEnabled(const VirtualQSpinBox* self) {

	VirtualQSpinBox::StepEnabled _ret = self->QSpinBox::stepEnabled();
	return static_cast<int>(_ret);
}

int QSpinBox_virtualbase_devType(const VirtualQSpinBox* self) {

	return self->QSpinBox::devType();
}

void QSpinBox_virtualbase_setVisible(VirtualQSpinBox* self, bool visible) {

	self->QSpinBox::setVisible(visible);
}

int QSpinBox_virtualbase_heightForWidth(const VirtualQSpinBox* self, int param1) {

	return self->QSpinBox::heightForWidth(static_cast<int>(param1));
}

bool QSpinBox_virtualbase_hasHeightForWidth(const VirtualQSpinBox* self) {

	return self->QSpinBox::hasHeightForWidth();
}

QPaintEngine* QSpinBox_virtualbase_paintEngine(const VirtualQSpinBox* self) {

	return self->QSpinBox::paintEngine();
}

void QSpinBox_virtualbase_mouseDoubleClickEvent(VirtualQSpinBox* self, QMouseEvent* event) {

	self->QSpinBox::mouseDoubleClickEvent(event);
}

void QSpinBox_virtualbase_enterEvent(VirtualQSpinBox* self, QEvent* event) {

	self->QSpinBox::enterEvent(event);
}

void QSpinBox_virtualbase_leaveEvent(VirtualQSpinBox* self, QEvent* event) {

	self->QSpinBox::leaveEvent(event);
}

void QSpinBox_virtualbase_moveEvent(VirtualQSpinBox* self, QMoveEvent* event) {

	self->QSpinBox::moveEvent(event);
}

void QSpinBox_virtualbase_tabletEvent(VirtualQSpinBox* self, QTabletEvent* event) {

	self->QSpinBox::tabletEvent(event);
}

void QSpinBox_virtualbase_actionEvent(VirtualQSpinBox* self, QActionEvent* event) {

	self->QSpinBox::actionEvent(event);
}

void QSpinBox_virtualbase_dragEnterEvent(VirtualQSpinBox* self, QDragEnterEvent* event) {

	self->QSpinBox::dragEnterEvent(event);
}

void QSpinBox_virtualbase_dragMoveEvent(VirtualQSpinBox* self, QDragMoveEvent* event) {

	self->QSpinBox::dragMoveEvent(event);
}

void QSpinBox_virtualbase_dragLeaveEvent(VirtualQSpinBox* self, QDragLeaveEvent* event) {

	self->QSpinBox::dragLeaveEvent(event);
}

void QSpinBox_virtualbase_dropEvent(VirtualQSpinBox* self, QDropEvent* event) {

	self->QSpinBox::dropEvent(event);
}

bool QSpinBox_virtualbase_nativeEvent(VirtualQSpinBox* self, struct miqt_string eventType, void* message, long* result) {
	QByteArray eventType_QByteArray(eventType.data, eventType.len);

	return self->QSpinBox::nativeEvent(eventType_QByteArray, message, static_cast<long*>(result));
}

int QSpinBox_virtualbase_metric(const VirtualQSpinBox* self, int param1) {

	return self->QSpinBox::metric(static_cast<VirtualQSpinBox::PaintDeviceMetric>(param1));
}

void QSpinBox_virtualbase_initPainter(const VirtualQSpinBox* self, QPainter* painter) {

	self->QSpinBox::initPainter(painter);
}

QPaintDevice* QSpinBox_virtualbase_redirected(const VirtualQSpinBox* self, QPoint* offset) {

	return self->QSpinBox::redirected(offset);
}

QPainter* QSpinBox_virtualbase_sharedPainter(const VirtualQSpinBox* self) {

	return self->QSpinBox::sharedPainter();
}

void QSpinBox_virtualbase_inputMethodEvent(VirtualQSpinBox* self, QInputMethodEvent* param1) {

	self->QSpinBox::inputMethodEvent(param1);
}

bool QSpinBox_virtualbase_focusNextPrevChild(VirtualQSpinBox* self, bool next) {

	return self->QSpinBox::focusNextPrevChild(next);
}

bool QSpinBox_virtualbase_eventFilter(VirtualQSpinBox* self, QObject* watched, QEvent* event) {

	return self->QSpinBox::eventFilter(watched, event);
}

void QSpinBox_virtualbase_childEvent(VirtualQSpinBox* self, QChildEvent* event) {

	self->QSpinBox::childEvent(event);
}

void QSpinBox_virtualbase_customEvent(VirtualQSpinBox* self, QEvent* event) {

	self->QSpinBox::customEvent(event);
}

void QSpinBox_virtualbase_connectNotify(VirtualQSpinBox* self, QMetaMethod* signal) {

	self->QSpinBox::connectNotify(*signal);
}

void QSpinBox_virtualbase_disconnectNotify(VirtualQSpinBox* self, QMetaMethod* signal) {

	self->QSpinBox::disconnectNotify(*signal);
}

const QMetaObject* QSpinBox_staticMetaObject() { return &QSpinBox::staticMetaObject; }

const QSpinBox_VTable* QSpinBox_vtbl(const VirtualQSpinBox* self) { return self->vtbl; }
void* QSpinBox_vdata(const VirtualQSpinBox* self) { return self->vdata; }
void QSpinBox_setVdata(VirtualQSpinBox* self, void* vdata) { self->vdata = vdata; }

void QSpinBox_protectedbase_initStyleOption(const VirtualQSpinBox* self, QStyleOptionSpinBox* option) {
	self->initStyleOption(option);
}

QLineEdit* QSpinBox_protectedbase_lineEdit(const VirtualQSpinBox* self) {
	return self->lineEdit();
}

void QSpinBox_protectedbase_setLineEdit(VirtualQSpinBox* self, QLineEdit* edit) {
	self->setLineEdit(edit);
}

void QSpinBox_protectedbase_updateMicroFocus(VirtualQSpinBox* self) {
	self->updateMicroFocus();
}

void QSpinBox_protectedbase_create(VirtualQSpinBox* self) {
	self->create();
}

void QSpinBox_protectedbase_destroy(VirtualQSpinBox* self) {
	self->destroy();
}

bool QSpinBox_protectedbase_focusNextChild(VirtualQSpinBox* self) {
	return self->focusNextChild();
}

bool QSpinBox_protectedbase_focusPreviousChild(VirtualQSpinBox* self) {
	return self->focusPreviousChild();
}

QObject* QSpinBox_protectedbase_sender(const VirtualQSpinBox* self) {
	return self->sender();
}

int QSpinBox_protectedbase_senderSignalIndex(const VirtualQSpinBox* self) {
	return self->senderSignalIndex();
}

int QSpinBox_protectedbase_receivers(const VirtualQSpinBox* self, const char* signal) {
	return self->receivers(signal);
}

bool QSpinBox_protectedbase_isSignalConnected(const VirtualQSpinBox* self, QMetaMethod* signal) {
	return self->isSignalConnected(*signal);
}

void QSpinBox_delete(QSpinBox* self) {
	delete self;
}

class VirtualQDoubleSpinBox final : public QDoubleSpinBox {
	const QDoubleSpinBox_VTable* vtbl;
	void* vdata;
public:
	friend const QDoubleSpinBox_VTable* QDoubleSpinBox_vtbl(const VirtualQDoubleSpinBox* self);
	friend void* QDoubleSpinBox_vdata(const VirtualQDoubleSpinBox* self);
	friend void QDoubleSpinBox_setVdata(VirtualQDoubleSpinBox* self, void* vdata);

	VirtualQDoubleSpinBox(const QDoubleSpinBox_VTable* vtbl, void* vdata, QWidget* parent): QDoubleSpinBox(parent), vtbl(vtbl), vdata(vdata) {}
	VirtualQDoubleSpinBox(const QDoubleSpinBox_VTable* vtbl, void* vdata): QDoubleSpinBox(), vtbl(vtbl), vdata(vdata) {}

	virtual ~VirtualQDoubleSpinBox() override { if(vtbl->destructor) vtbl->destructor(this); }

	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QDoubleSpinBox::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(this);

		return callback_return_value;
	}

	friend QMetaObject* QDoubleSpinBox_virtualbase_metaObject(const VirtualQDoubleSpinBox* self);

	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QDoubleSpinBox::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(this, sigval1);

		return callback_return_value;
	}

	friend void* QDoubleSpinBox_virtualbase_metacast(VirtualQDoubleSpinBox* self, const char* param1);

	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QDoubleSpinBox::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QDoubleSpinBox_virtualbase_metacall(VirtualQDoubleSpinBox* self, int param1, int param2, void** param3);

	virtual QValidator::State validate(QString& input, int& pos) const override {
		if (vtbl->validate == 0) {
			return QDoubleSpinBox::validate(input, pos);
		}

		QString input_ret = input;
		// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
		QByteArray input_b = input_ret.toUtf8();
		struct miqt_string input_ms;
		input_ms.len = input_b.length();
		input_ms.data = static_cast<char*>(malloc(input_ms.len));
		memcpy(input_ms.data, input_b.data(), input_ms.len);
		struct miqt_string sigval1 = input_ms;
		int* sigval2 = &pos;

		int callback_return_value = vtbl->validate(this, sigval1, sigval2);

		return static_cast<QValidator::State>(callback_return_value);
	}

	friend int QDoubleSpinBox_virtualbase_validate(const VirtualQDoubleSpinBox* self, struct miqt_string input, int* pos);

	virtual double valueFromText(const QString& text) const override {
		if (vtbl->valueFromText == 0) {
			return QDoubleSpinBox::valueFromText(text);
		}

		const QString text_ret = text;
		// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
		QByteArray text_b = text_ret.toUtf8();
		struct miqt_string text_ms;
		text_ms.len = text_b.length();
		text_ms.data = static_cast<char*>(malloc(text_ms.len));
		memcpy(text_ms.data, text_b.data(), text_ms.len);
		struct miqt_string sigval1 = text_ms;

		double callback_return_value = vtbl->valueFromText(this, sigval1);

		return static_cast<double>(callback_return_value);
	}

	friend double QDoubleSpinBox_virtualbase_valueFromText(const VirtualQDoubleSpinBox* self, struct miqt_string text);

	virtual QString textFromValue(double val) const override {
		if (vtbl->textFromValue == 0) {
			return QDoubleSpinBox::textFromValue(val);
		}

		double sigval1 = val;

		struct miqt_string callback_return_value = vtbl->textFromValue(this, sigval1);
		QString callback_return_value_QString = QString::fromUtf8(callback_return_value.data, callback_return_value.len);
		free(callback_return_value.data);

		return callback_return_value_QString;
	}

	friend struct miqt_string QDoubleSpinBox_virtualbase_textFromValue(const VirtualQDoubleSpinBox* self, double val);

	virtual void fixup(QString& str) const override {
		if (vtbl->fixup == 0) {
			QDoubleSpinBox::fixup(str);
			return;
		}

		QString str_ret = str;
		// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
		QByteArray str_b = str_ret.toUtf8();
		struct miqt_string str_ms;
		str_ms.len = str_b.length();
		str_ms.data = static_cast<char*>(malloc(str_ms.len));
		memcpy(str_ms.data, str_b.data(), str_ms.len);
		struct miqt_string sigval1 = str_ms;

		vtbl->fixup(this, sigval1);

	}

	friend void QDoubleSpinBox_virtualbase_fixup(const VirtualQDoubleSpinBox* self, struct miqt_string str);

	virtual QSize sizeHint() const override {
		if (vtbl->sizeHint == 0) {
			return QDoubleSpinBox::sizeHint();
		}


		QSize* callback_return_value = vtbl->sizeHint(this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QSize* QDoubleSpinBox_virtualbase_sizeHint(const VirtualQDoubleSpinBox* self);

	virtual QSize minimumSizeHint() const override {
		if (vtbl->minimumSizeHint == 0) {
			return QDoubleSpinBox::minimumSizeHint();
		}


		QSize* callback_return_value = vtbl->minimumSizeHint(this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QSize* QDoubleSpinBox_virtualbase_minimumSizeHint(const VirtualQDoubleSpinBox* self);

	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QDoubleSpinBox::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(this, sigval1);

		return callback_return_value;
	}

	friend bool QDoubleSpinBox_virtualbase_event(VirtualQDoubleSpinBox* self, QEvent* event);

	virtual QVariant inputMethodQuery(Qt::InputMethodQuery param1) const override {
		if (vtbl->inputMethodQuery == 0) {
			return QDoubleSpinBox::inputMethodQuery(param1);
		}

		Qt::InputMethodQuery param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);

		QVariant* callback_return_value = vtbl->inputMethodQuery(this, sigval1);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QVariant* QDoubleSpinBox_virtualbase_inputMethodQuery(const VirtualQDoubleSpinBox* self, int param1);

	virtual void stepBy(int steps) override {
		if (vtbl->stepBy == 0) {
			QDoubleSpinBox::stepBy(steps);
			return;
		}

		int sigval1 = steps;

		vtbl->stepBy(this, sigval1);

	}

	friend void QDoubleSpinBox_virtualbase_stepBy(VirtualQDoubleSpinBox* self, int steps);

	virtual void clear() override {
		if (vtbl->clear == 0) {
			QDoubleSpinBox::clear();
			return;
		}


		vtbl->clear(this);

	}

	friend void QDoubleSpinBox_virtualbase_clear(VirtualQDoubleSpinBox* self);

	virtual void resizeEvent(QResizeEvent* event) override {
		if (vtbl->resizeEvent == 0) {
			QDoubleSpinBox::resizeEvent(event);
			return;
		}

		QResizeEvent* sigval1 = event;

		vtbl->resizeEvent(this, sigval1);

	}

	friend void QDoubleSpinBox_virtualbase_resizeEvent(VirtualQDoubleSpinBox* self, QResizeEvent* event);

	virtual void keyPressEvent(QKeyEvent* event) override {
		if (vtbl->keyPressEvent == 0) {
			QDoubleSpinBox::keyPressEvent(event);
			return;
		}

		QKeyEvent* sigval1 = event;

		vtbl->keyPressEvent(this, sigval1);

	}

	friend void QDoubleSpinBox_virtualbase_keyPressEvent(VirtualQDoubleSpinBox* self, QKeyEvent* event);

	virtual void keyReleaseEvent(QKeyEvent* event) override {
		if (vtbl->keyReleaseEvent == 0) {
			QDoubleSpinBox::keyReleaseEvent(event);
			return;
		}

		QKeyEvent* sigval1 = event;

		vtbl->keyReleaseEvent(this, sigval1);

	}

	friend void QDoubleSpinBox_virtualbase_keyReleaseEvent(VirtualQDoubleSpinBox* self, QKeyEvent* event);

	virtual void wheelEvent(QWheelEvent* event) override {
		if (vtbl->wheelEvent == 0) {
			QDoubleSpinBox::wheelEvent(event);
			return;
		}

		QWheelEvent* sigval1 = event;

		vtbl->wheelEvent(this, sigval1);

	}

	friend void QDoubleSpinBox_virtualbase_wheelEvent(VirtualQDoubleSpinBox* self, QWheelEvent* event);

	virtual void focusInEvent(QFocusEvent* event) override {
		if (vtbl->focusInEvent == 0) {
			QDoubleSpinBox::focusInEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;

		vtbl->focusInEvent(this, sigval1);

	}

	friend void QDoubleSpinBox_virtualbase_focusInEvent(VirtualQDoubleSpinBox* self, QFocusEvent* event);

	virtual void focusOutEvent(QFocusEvent* event) override {
		if (vtbl->focusOutEvent == 0) {
			QDoubleSpinBox::focusOutEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;

		vtbl->focusOutEvent(this, sigval1);

	}

	friend void QDoubleSpinBox_virtualbase_focusOutEvent(VirtualQDoubleSpinBox* self, QFocusEvent* event);

	virtual void contextMenuEvent(QContextMenuEvent* event) override {
		if (vtbl->contextMenuEvent == 0) {
			QDoubleSpinBox::contextMenuEvent(event);
			return;
		}

		QContextMenuEvent* sigval1 = event;

		vtbl->contextMenuEvent(this, sigval1);

	}

	friend void QDoubleSpinBox_virtualbase_contextMenuEvent(VirtualQDoubleSpinBox* self, QContextMenuEvent* event);

	virtual void changeEvent(QEvent* event) override {
		if (vtbl->changeEvent == 0) {
			QDoubleSpinBox::changeEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->changeEvent(this, sigval1);

	}

	friend void QDoubleSpinBox_virtualbase_changeEvent(VirtualQDoubleSpinBox* self, QEvent* event);

	virtual void closeEvent(QCloseEvent* event) override {
		if (vtbl->closeEvent == 0) {
			QDoubleSpinBox::closeEvent(event);
			return;
		}

		QCloseEvent* sigval1 = event;

		vtbl->closeEvent(this, sigval1);

	}

	friend void QDoubleSpinBox_virtualbase_closeEvent(VirtualQDoubleSpinBox* self, QCloseEvent* event);

	virtual void hideEvent(QHideEvent* event) override {
		if (vtbl->hideEvent == 0) {
			QDoubleSpinBox::hideEvent(event);
			return;
		}

		QHideEvent* sigval1 = event;

		vtbl->hideEvent(this, sigval1);

	}

	friend void QDoubleSpinBox_virtualbase_hideEvent(VirtualQDoubleSpinBox* self, QHideEvent* event);

	virtual void mousePressEvent(QMouseEvent* event) override {
		if (vtbl->mousePressEvent == 0) {
			QDoubleSpinBox::mousePressEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mousePressEvent(this, sigval1);

	}

	friend void QDoubleSpinBox_virtualbase_mousePressEvent(VirtualQDoubleSpinBox* self, QMouseEvent* event);

	virtual void mouseReleaseEvent(QMouseEvent* event) override {
		if (vtbl->mouseReleaseEvent == 0) {
			QDoubleSpinBox::mouseReleaseEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseReleaseEvent(this, sigval1);

	}

	friend void QDoubleSpinBox_virtualbase_mouseReleaseEvent(VirtualQDoubleSpinBox* self, QMouseEvent* event);

	virtual void mouseMoveEvent(QMouseEvent* event) override {
		if (vtbl->mouseMoveEvent == 0) {
			QDoubleSpinBox::mouseMoveEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseMoveEvent(this, sigval1);

	}

	friend void QDoubleSpinBox_virtualbase_mouseMoveEvent(VirtualQDoubleSpinBox* self, QMouseEvent* event);

	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QDoubleSpinBox::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(this, sigval1);

	}

	friend void QDoubleSpinBox_virtualbase_timerEvent(VirtualQDoubleSpinBox* self, QTimerEvent* event);

	virtual void paintEvent(QPaintEvent* event) override {
		if (vtbl->paintEvent == 0) {
			QDoubleSpinBox::paintEvent(event);
			return;
		}

		QPaintEvent* sigval1 = event;

		vtbl->paintEvent(this, sigval1);

	}

	friend void QDoubleSpinBox_virtualbase_paintEvent(VirtualQDoubleSpinBox* self, QPaintEvent* event);

	virtual void showEvent(QShowEvent* event) override {
		if (vtbl->showEvent == 0) {
			QDoubleSpinBox::showEvent(event);
			return;
		}

		QShowEvent* sigval1 = event;

		vtbl->showEvent(this, sigval1);

	}

	friend void QDoubleSpinBox_virtualbase_showEvent(VirtualQDoubleSpinBox* self, QShowEvent* event);

	virtual QAbstractSpinBox::StepEnabled stepEnabled() const override {
		if (vtbl->stepEnabled == 0) {
			return QDoubleSpinBox::stepEnabled();
		}


		int callback_return_value = vtbl->stepEnabled(this);

		return static_cast<QAbstractSpinBox::StepEnabled>(callback_return_value);
	}

	friend int QDoubleSpinBox_virtualbase_stepEnabled(const VirtualQDoubleSpinBox* self);

	virtual int devType() const override {
		if (vtbl->devType == 0) {
			return QDoubleSpinBox::devType();
		}


		int callback_return_value = vtbl->devType(this);

		return static_cast<int>(callback_return_value);
	}

	friend int QDoubleSpinBox_virtualbase_devType(const VirtualQDoubleSpinBox* self);

	virtual void setVisible(bool visible) override {
		if (vtbl->setVisible == 0) {
			QDoubleSpinBox::setVisible(visible);
			return;
		}

		bool sigval1 = visible;

		vtbl->setVisible(this, sigval1);

	}

	friend void QDoubleSpinBox_virtualbase_setVisible(VirtualQDoubleSpinBox* self, bool visible);

	virtual int heightForWidth(int param1) const override {
		if (vtbl->heightForWidth == 0) {
			return QDoubleSpinBox::heightForWidth(param1);
		}

		int sigval1 = param1;

		int callback_return_value = vtbl->heightForWidth(this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QDoubleSpinBox_virtualbase_heightForWidth(const VirtualQDoubleSpinBox* self, int param1);

	virtual bool hasHeightForWidth() const override {
		if (vtbl->hasHeightForWidth == 0) {
			return QDoubleSpinBox::hasHeightForWidth();
		}


		bool callback_return_value = vtbl->hasHeightForWidth(this);

		return callback_return_value;
	}

	friend bool QDoubleSpinBox_virtualbase_hasHeightForWidth(const VirtualQDoubleSpinBox* self);

	virtual QPaintEngine* paintEngine() const override {
		if (vtbl->paintEngine == 0) {
			return QDoubleSpinBox::paintEngine();
		}


		QPaintEngine* callback_return_value = vtbl->paintEngine(this);

		return callback_return_value;
	}

	friend QPaintEngine* QDoubleSpinBox_virtualbase_paintEngine(const VirtualQDoubleSpinBox* self);

	virtual void mouseDoubleClickEvent(QMouseEvent* event) override {
		if (vtbl->mouseDoubleClickEvent == 0) {
			QDoubleSpinBox::mouseDoubleClickEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseDoubleClickEvent(this, sigval1);

	}

	friend void QDoubleSpinBox_virtualbase_mouseDoubleClickEvent(VirtualQDoubleSpinBox* self, QMouseEvent* event);

	virtual void enterEvent(QEvent* event) override {
		if (vtbl->enterEvent == 0) {
			QDoubleSpinBox::enterEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->enterEvent(this, sigval1);

	}

	friend void QDoubleSpinBox_virtualbase_enterEvent(VirtualQDoubleSpinBox* self, QEvent* event);

	virtual void leaveEvent(QEvent* event) override {
		if (vtbl->leaveEvent == 0) {
			QDoubleSpinBox::leaveEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->leaveEvent(this, sigval1);

	}

	friend void QDoubleSpinBox_virtualbase_leaveEvent(VirtualQDoubleSpinBox* self, QEvent* event);

	virtual void moveEvent(QMoveEvent* event) override {
		if (vtbl->moveEvent == 0) {
			QDoubleSpinBox::moveEvent(event);
			return;
		}

		QMoveEvent* sigval1 = event;

		vtbl->moveEvent(this, sigval1);

	}

	friend void QDoubleSpinBox_virtualbase_moveEvent(VirtualQDoubleSpinBox* self, QMoveEvent* event);

	virtual void tabletEvent(QTabletEvent* event) override {
		if (vtbl->tabletEvent == 0) {
			QDoubleSpinBox::tabletEvent(event);
			return;
		}

		QTabletEvent* sigval1 = event;

		vtbl->tabletEvent(this, sigval1);

	}

	friend void QDoubleSpinBox_virtualbase_tabletEvent(VirtualQDoubleSpinBox* self, QTabletEvent* event);

	virtual void actionEvent(QActionEvent* event) override {
		if (vtbl->actionEvent == 0) {
			QDoubleSpinBox::actionEvent(event);
			return;
		}

		QActionEvent* sigval1 = event;

		vtbl->actionEvent(this, sigval1);

	}

	friend void QDoubleSpinBox_virtualbase_actionEvent(VirtualQDoubleSpinBox* self, QActionEvent* event);

	virtual void dragEnterEvent(QDragEnterEvent* event) override {
		if (vtbl->dragEnterEvent == 0) {
			QDoubleSpinBox::dragEnterEvent(event);
			return;
		}

		QDragEnterEvent* sigval1 = event;

		vtbl->dragEnterEvent(this, sigval1);

	}

	friend void QDoubleSpinBox_virtualbase_dragEnterEvent(VirtualQDoubleSpinBox* self, QDragEnterEvent* event);

	virtual void dragMoveEvent(QDragMoveEvent* event) override {
		if (vtbl->dragMoveEvent == 0) {
			QDoubleSpinBox::dragMoveEvent(event);
			return;
		}

		QDragMoveEvent* sigval1 = event;

		vtbl->dragMoveEvent(this, sigval1);

	}

	friend void QDoubleSpinBox_virtualbase_dragMoveEvent(VirtualQDoubleSpinBox* self, QDragMoveEvent* event);

	virtual void dragLeaveEvent(QDragLeaveEvent* event) override {
		if (vtbl->dragLeaveEvent == 0) {
			QDoubleSpinBox::dragLeaveEvent(event);
			return;
		}

		QDragLeaveEvent* sigval1 = event;

		vtbl->dragLeaveEvent(this, sigval1);

	}

	friend void QDoubleSpinBox_virtualbase_dragLeaveEvent(VirtualQDoubleSpinBox* self, QDragLeaveEvent* event);

	virtual void dropEvent(QDropEvent* event) override {
		if (vtbl->dropEvent == 0) {
			QDoubleSpinBox::dropEvent(event);
			return;
		}

		QDropEvent* sigval1 = event;

		vtbl->dropEvent(this, sigval1);

	}

	friend void QDoubleSpinBox_virtualbase_dropEvent(VirtualQDoubleSpinBox* self, QDropEvent* event);

	virtual bool nativeEvent(const QByteArray& eventType, void* message, long* result) override {
		if (vtbl->nativeEvent == 0) {
			return QDoubleSpinBox::nativeEvent(eventType, message, result);
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

	friend bool QDoubleSpinBox_virtualbase_nativeEvent(VirtualQDoubleSpinBox* self, struct miqt_string eventType, void* message, long* result);

	virtual int metric(QPaintDevice::PaintDeviceMetric param1) const override {
		if (vtbl->metric == 0) {
			return QDoubleSpinBox::metric(param1);
		}

		QPaintDevice::PaintDeviceMetric param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);

		int callback_return_value = vtbl->metric(this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QDoubleSpinBox_virtualbase_metric(const VirtualQDoubleSpinBox* self, int param1);

	virtual void initPainter(QPainter* painter) const override {
		if (vtbl->initPainter == 0) {
			QDoubleSpinBox::initPainter(painter);
			return;
		}

		QPainter* sigval1 = painter;

		vtbl->initPainter(this, sigval1);

	}

	friend void QDoubleSpinBox_virtualbase_initPainter(const VirtualQDoubleSpinBox* self, QPainter* painter);

	virtual QPaintDevice* redirected(QPoint* offset) const override {
		if (vtbl->redirected == 0) {
			return QDoubleSpinBox::redirected(offset);
		}

		QPoint* sigval1 = offset;

		QPaintDevice* callback_return_value = vtbl->redirected(this, sigval1);

		return callback_return_value;
	}

	friend QPaintDevice* QDoubleSpinBox_virtualbase_redirected(const VirtualQDoubleSpinBox* self, QPoint* offset);

	virtual QPainter* sharedPainter() const override {
		if (vtbl->sharedPainter == 0) {
			return QDoubleSpinBox::sharedPainter();
		}


		QPainter* callback_return_value = vtbl->sharedPainter(this);

		return callback_return_value;
	}

	friend QPainter* QDoubleSpinBox_virtualbase_sharedPainter(const VirtualQDoubleSpinBox* self);

	virtual void inputMethodEvent(QInputMethodEvent* param1) override {
		if (vtbl->inputMethodEvent == 0) {
			QDoubleSpinBox::inputMethodEvent(param1);
			return;
		}

		QInputMethodEvent* sigval1 = param1;

		vtbl->inputMethodEvent(this, sigval1);

	}

	friend void QDoubleSpinBox_virtualbase_inputMethodEvent(VirtualQDoubleSpinBox* self, QInputMethodEvent* param1);

	virtual bool focusNextPrevChild(bool next) override {
		if (vtbl->focusNextPrevChild == 0) {
			return QDoubleSpinBox::focusNextPrevChild(next);
		}

		bool sigval1 = next;

		bool callback_return_value = vtbl->focusNextPrevChild(this, sigval1);

		return callback_return_value;
	}

	friend bool QDoubleSpinBox_virtualbase_focusNextPrevChild(VirtualQDoubleSpinBox* self, bool next);

	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QDoubleSpinBox::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QDoubleSpinBox_virtualbase_eventFilter(VirtualQDoubleSpinBox* self, QObject* watched, QEvent* event);

	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QDoubleSpinBox::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(this, sigval1);

	}

	friend void QDoubleSpinBox_virtualbase_childEvent(VirtualQDoubleSpinBox* self, QChildEvent* event);

	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QDoubleSpinBox::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(this, sigval1);

	}

	friend void QDoubleSpinBox_virtualbase_customEvent(VirtualQDoubleSpinBox* self, QEvent* event);

	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QDoubleSpinBox::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(this, sigval1);

	}

	friend void QDoubleSpinBox_virtualbase_connectNotify(VirtualQDoubleSpinBox* self, QMetaMethod* signal);

	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QDoubleSpinBox::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(this, sigval1);

	}

	friend void QDoubleSpinBox_virtualbase_disconnectNotify(VirtualQDoubleSpinBox* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend void QDoubleSpinBox_protectedbase_initStyleOption(const VirtualQDoubleSpinBox* self, QStyleOptionSpinBox* option);
	friend QLineEdit* QDoubleSpinBox_protectedbase_lineEdit(const VirtualQDoubleSpinBox* self);
	friend void QDoubleSpinBox_protectedbase_setLineEdit(VirtualQDoubleSpinBox* self, QLineEdit* edit);
	friend void QDoubleSpinBox_protectedbase_updateMicroFocus(VirtualQDoubleSpinBox* self);
	friend void QDoubleSpinBox_protectedbase_create(VirtualQDoubleSpinBox* self);
	friend void QDoubleSpinBox_protectedbase_destroy(VirtualQDoubleSpinBox* self);
	friend bool QDoubleSpinBox_protectedbase_focusNextChild(VirtualQDoubleSpinBox* self);
	friend bool QDoubleSpinBox_protectedbase_focusPreviousChild(VirtualQDoubleSpinBox* self);
	friend QObject* QDoubleSpinBox_protectedbase_sender(const VirtualQDoubleSpinBox* self);
	friend int QDoubleSpinBox_protectedbase_senderSignalIndex(const VirtualQDoubleSpinBox* self);
	friend int QDoubleSpinBox_protectedbase_receivers(const VirtualQDoubleSpinBox* self, const char* signal);
	friend bool QDoubleSpinBox_protectedbase_isSignalConnected(const VirtualQDoubleSpinBox* self, QMetaMethod* signal);
};

VirtualQDoubleSpinBox* QDoubleSpinBox_new(const QDoubleSpinBox_VTable* vtbl, void* vdata, QWidget* parent) {
	return new VirtualQDoubleSpinBox(vtbl, vdata, parent);
}

VirtualQDoubleSpinBox* QDoubleSpinBox_new2(const QDoubleSpinBox_VTable* vtbl, void* vdata) {
	return new VirtualQDoubleSpinBox(vtbl, vdata);
}

void QDoubleSpinBox_virtbase(QDoubleSpinBox* src, QAbstractSpinBox** outptr_QAbstractSpinBox) {
	*outptr_QAbstractSpinBox = static_cast<QAbstractSpinBox*>(src);
}

QMetaObject* QDoubleSpinBox_metaObject(const QDoubleSpinBox* self) {
	return (QMetaObject*) self->metaObject();
}

void* QDoubleSpinBox_metacast(QDoubleSpinBox* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QDoubleSpinBox_metacall(QDoubleSpinBox* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QDoubleSpinBox_tr(const char* s) {
	QString _ret = QDoubleSpinBox::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QDoubleSpinBox_trUtf8(const char* s) {
	QString _ret = QDoubleSpinBox::trUtf8(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

double QDoubleSpinBox_value(const QDoubleSpinBox* self) {
	return self->value();
}

struct miqt_string QDoubleSpinBox_prefix(const QDoubleSpinBox* self) {
	QString _ret = self->prefix();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QDoubleSpinBox_setPrefix(QDoubleSpinBox* self, struct miqt_string prefix) {
	QString prefix_QString = QString::fromUtf8(prefix.data, prefix.len);
	self->setPrefix(prefix_QString);
}

struct miqt_string QDoubleSpinBox_suffix(const QDoubleSpinBox* self) {
	QString _ret = self->suffix();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QDoubleSpinBox_setSuffix(QDoubleSpinBox* self, struct miqt_string suffix) {
	QString suffix_QString = QString::fromUtf8(suffix.data, suffix.len);
	self->setSuffix(suffix_QString);
}

struct miqt_string QDoubleSpinBox_cleanText(const QDoubleSpinBox* self) {
	QString _ret = self->cleanText();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

double QDoubleSpinBox_singleStep(const QDoubleSpinBox* self) {
	return self->singleStep();
}

void QDoubleSpinBox_setSingleStep(QDoubleSpinBox* self, double val) {
	self->setSingleStep(static_cast<double>(val));
}

double QDoubleSpinBox_minimum(const QDoubleSpinBox* self) {
	return self->minimum();
}

void QDoubleSpinBox_setMinimum(QDoubleSpinBox* self, double min) {
	self->setMinimum(static_cast<double>(min));
}

double QDoubleSpinBox_maximum(const QDoubleSpinBox* self) {
	return self->maximum();
}

void QDoubleSpinBox_setMaximum(QDoubleSpinBox* self, double max) {
	self->setMaximum(static_cast<double>(max));
}

void QDoubleSpinBox_setRange(QDoubleSpinBox* self, double min, double max) {
	self->setRange(static_cast<double>(min), static_cast<double>(max));
}

int QDoubleSpinBox_stepType(const QDoubleSpinBox* self) {
	QAbstractSpinBox::StepType _ret = self->stepType();
	return static_cast<int>(_ret);
}

void QDoubleSpinBox_setStepType(QDoubleSpinBox* self, int stepType) {
	self->setStepType(static_cast<QAbstractSpinBox::StepType>(stepType));
}

int QDoubleSpinBox_decimals(const QDoubleSpinBox* self) {
	return self->decimals();
}

void QDoubleSpinBox_setDecimals(QDoubleSpinBox* self, int prec) {
	self->setDecimals(static_cast<int>(prec));
}

int QDoubleSpinBox_validate(const QDoubleSpinBox* self, struct miqt_string input, int* pos) {
	QString input_QString = QString::fromUtf8(input.data, input.len);
	QValidator::State _ret = self->validate(input_QString, static_cast<int&>(*pos));
	return static_cast<int>(_ret);
}

double QDoubleSpinBox_valueFromText(const QDoubleSpinBox* self, struct miqt_string text) {
	QString text_QString = QString::fromUtf8(text.data, text.len);
	return self->valueFromText(text_QString);
}

struct miqt_string QDoubleSpinBox_textFromValue(const QDoubleSpinBox* self, double val) {
	QString _ret = self->textFromValue(static_cast<double>(val));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QDoubleSpinBox_fixup(const QDoubleSpinBox* self, struct miqt_string str) {
	QString str_QString = QString::fromUtf8(str.data, str.len);
	self->fixup(str_QString);
}

void QDoubleSpinBox_setValue(QDoubleSpinBox* self, double val) {
	self->setValue(static_cast<double>(val));
}

void QDoubleSpinBox_valueChanged(QDoubleSpinBox* self, double param1) {
	self->valueChanged(static_cast<double>(param1));
}

void QDoubleSpinBox_connect_valueChanged(VirtualQDoubleSpinBox* self, intptr_t slot, void (*callback)(intptr_t, double), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, double), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, double);
		void operator()(double param1) {
			double sigval1 = param1;
			callback(slot, sigval1);
		}
	};
	VirtualQDoubleSpinBox::connect(self, static_cast<void (QDoubleSpinBox::*)(double)>(&QDoubleSpinBox::valueChanged), self, local_caller{slot, callback, release});
}

void QDoubleSpinBox_textChanged(QDoubleSpinBox* self, struct miqt_string param1) {
	QString param1_QString = QString::fromUtf8(param1.data, param1.len);
	self->textChanged(param1_QString);
}

void QDoubleSpinBox_connect_textChanged(VirtualQDoubleSpinBox* self, intptr_t slot, void (*callback)(intptr_t, struct miqt_string), void (*release)(intptr_t)) {
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
	VirtualQDoubleSpinBox::connect(self, static_cast<void (QDoubleSpinBox::*)(const QString&)>(&QDoubleSpinBox::textChanged), self, local_caller{slot, callback, release});
}

void QDoubleSpinBox_valueChangedWithQString(QDoubleSpinBox* self, struct miqt_string param1) {
	QString param1_QString = QString::fromUtf8(param1.data, param1.len);
	self->valueChanged(param1_QString);
}

void QDoubleSpinBox_connect_valueChangedWithQString(VirtualQDoubleSpinBox* self, intptr_t slot, void (*callback)(intptr_t, struct miqt_string), void (*release)(intptr_t)) {
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
	VirtualQDoubleSpinBox::connect(self, static_cast<void (QDoubleSpinBox::*)(const QString&)>(&QDoubleSpinBox::valueChanged), self, local_caller{slot, callback, release});
}

struct miqt_string QDoubleSpinBox_tr2(const char* s, const char* c) {
	QString _ret = QDoubleSpinBox::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QDoubleSpinBox_tr3(const char* s, const char* c, int n) {
	QString _ret = QDoubleSpinBox::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QDoubleSpinBox_trUtf82(const char* s, const char* c) {
	QString _ret = QDoubleSpinBox::trUtf8(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QDoubleSpinBox_trUtf83(const char* s, const char* c, int n) {
	QString _ret = QDoubleSpinBox::trUtf8(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QMetaObject* QDoubleSpinBox_virtualbase_metaObject(const VirtualQDoubleSpinBox* self) {

	return (QMetaObject*) self->QDoubleSpinBox::metaObject();
}

void* QDoubleSpinBox_virtualbase_metacast(VirtualQDoubleSpinBox* self, const char* param1) {

	return self->QDoubleSpinBox::qt_metacast(param1);
}

int QDoubleSpinBox_virtualbase_metacall(VirtualQDoubleSpinBox* self, int param1, int param2, void** param3) {

	return self->QDoubleSpinBox::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

int QDoubleSpinBox_virtualbase_validate(const VirtualQDoubleSpinBox* self, struct miqt_string input, int* pos) {
	QString input_QString = QString::fromUtf8(input.data, input.len);

	QValidator::State _ret = self->QDoubleSpinBox::validate(input_QString, static_cast<int&>(*pos));
	return static_cast<int>(_ret);
}

double QDoubleSpinBox_virtualbase_valueFromText(const VirtualQDoubleSpinBox* self, struct miqt_string text) {
	QString text_QString = QString::fromUtf8(text.data, text.len);

	return self->QDoubleSpinBox::valueFromText(text_QString);
}

struct miqt_string QDoubleSpinBox_virtualbase_textFromValue(const VirtualQDoubleSpinBox* self, double val) {

	QString _ret = self->QDoubleSpinBox::textFromValue(static_cast<double>(val));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QDoubleSpinBox_virtualbase_fixup(const VirtualQDoubleSpinBox* self, struct miqt_string str) {
	QString str_QString = QString::fromUtf8(str.data, str.len);

	self->QDoubleSpinBox::fixup(str_QString);
}

QSize* QDoubleSpinBox_virtualbase_sizeHint(const VirtualQDoubleSpinBox* self) {

	return new QSize(self->QDoubleSpinBox::sizeHint());
}

QSize* QDoubleSpinBox_virtualbase_minimumSizeHint(const VirtualQDoubleSpinBox* self) {

	return new QSize(self->QDoubleSpinBox::minimumSizeHint());
}

bool QDoubleSpinBox_virtualbase_event(VirtualQDoubleSpinBox* self, QEvent* event) {

	return self->QDoubleSpinBox::event(event);
}

QVariant* QDoubleSpinBox_virtualbase_inputMethodQuery(const VirtualQDoubleSpinBox* self, int param1) {

	return new QVariant(self->QDoubleSpinBox::inputMethodQuery(static_cast<Qt::InputMethodQuery>(param1)));
}

void QDoubleSpinBox_virtualbase_stepBy(VirtualQDoubleSpinBox* self, int steps) {

	self->QDoubleSpinBox::stepBy(static_cast<int>(steps));
}

void QDoubleSpinBox_virtualbase_clear(VirtualQDoubleSpinBox* self) {

	self->QDoubleSpinBox::clear();
}

void QDoubleSpinBox_virtualbase_resizeEvent(VirtualQDoubleSpinBox* self, QResizeEvent* event) {

	self->QDoubleSpinBox::resizeEvent(event);
}

void QDoubleSpinBox_virtualbase_keyPressEvent(VirtualQDoubleSpinBox* self, QKeyEvent* event) {

	self->QDoubleSpinBox::keyPressEvent(event);
}

void QDoubleSpinBox_virtualbase_keyReleaseEvent(VirtualQDoubleSpinBox* self, QKeyEvent* event) {

	self->QDoubleSpinBox::keyReleaseEvent(event);
}

void QDoubleSpinBox_virtualbase_wheelEvent(VirtualQDoubleSpinBox* self, QWheelEvent* event) {

	self->QDoubleSpinBox::wheelEvent(event);
}

void QDoubleSpinBox_virtualbase_focusInEvent(VirtualQDoubleSpinBox* self, QFocusEvent* event) {

	self->QDoubleSpinBox::focusInEvent(event);
}

void QDoubleSpinBox_virtualbase_focusOutEvent(VirtualQDoubleSpinBox* self, QFocusEvent* event) {

	self->QDoubleSpinBox::focusOutEvent(event);
}

void QDoubleSpinBox_virtualbase_contextMenuEvent(VirtualQDoubleSpinBox* self, QContextMenuEvent* event) {

	self->QDoubleSpinBox::contextMenuEvent(event);
}

void QDoubleSpinBox_virtualbase_changeEvent(VirtualQDoubleSpinBox* self, QEvent* event) {

	self->QDoubleSpinBox::changeEvent(event);
}

void QDoubleSpinBox_virtualbase_closeEvent(VirtualQDoubleSpinBox* self, QCloseEvent* event) {

	self->QDoubleSpinBox::closeEvent(event);
}

void QDoubleSpinBox_virtualbase_hideEvent(VirtualQDoubleSpinBox* self, QHideEvent* event) {

	self->QDoubleSpinBox::hideEvent(event);
}

void QDoubleSpinBox_virtualbase_mousePressEvent(VirtualQDoubleSpinBox* self, QMouseEvent* event) {

	self->QDoubleSpinBox::mousePressEvent(event);
}

void QDoubleSpinBox_virtualbase_mouseReleaseEvent(VirtualQDoubleSpinBox* self, QMouseEvent* event) {

	self->QDoubleSpinBox::mouseReleaseEvent(event);
}

void QDoubleSpinBox_virtualbase_mouseMoveEvent(VirtualQDoubleSpinBox* self, QMouseEvent* event) {

	self->QDoubleSpinBox::mouseMoveEvent(event);
}

void QDoubleSpinBox_virtualbase_timerEvent(VirtualQDoubleSpinBox* self, QTimerEvent* event) {

	self->QDoubleSpinBox::timerEvent(event);
}

void QDoubleSpinBox_virtualbase_paintEvent(VirtualQDoubleSpinBox* self, QPaintEvent* event) {

	self->QDoubleSpinBox::paintEvent(event);
}

void QDoubleSpinBox_virtualbase_showEvent(VirtualQDoubleSpinBox* self, QShowEvent* event) {

	self->QDoubleSpinBox::showEvent(event);
}

int QDoubleSpinBox_virtualbase_stepEnabled(const VirtualQDoubleSpinBox* self) {

	VirtualQDoubleSpinBox::StepEnabled _ret = self->QDoubleSpinBox::stepEnabled();
	return static_cast<int>(_ret);
}

int QDoubleSpinBox_virtualbase_devType(const VirtualQDoubleSpinBox* self) {

	return self->QDoubleSpinBox::devType();
}

void QDoubleSpinBox_virtualbase_setVisible(VirtualQDoubleSpinBox* self, bool visible) {

	self->QDoubleSpinBox::setVisible(visible);
}

int QDoubleSpinBox_virtualbase_heightForWidth(const VirtualQDoubleSpinBox* self, int param1) {

	return self->QDoubleSpinBox::heightForWidth(static_cast<int>(param1));
}

bool QDoubleSpinBox_virtualbase_hasHeightForWidth(const VirtualQDoubleSpinBox* self) {

	return self->QDoubleSpinBox::hasHeightForWidth();
}

QPaintEngine* QDoubleSpinBox_virtualbase_paintEngine(const VirtualQDoubleSpinBox* self) {

	return self->QDoubleSpinBox::paintEngine();
}

void QDoubleSpinBox_virtualbase_mouseDoubleClickEvent(VirtualQDoubleSpinBox* self, QMouseEvent* event) {

	self->QDoubleSpinBox::mouseDoubleClickEvent(event);
}

void QDoubleSpinBox_virtualbase_enterEvent(VirtualQDoubleSpinBox* self, QEvent* event) {

	self->QDoubleSpinBox::enterEvent(event);
}

void QDoubleSpinBox_virtualbase_leaveEvent(VirtualQDoubleSpinBox* self, QEvent* event) {

	self->QDoubleSpinBox::leaveEvent(event);
}

void QDoubleSpinBox_virtualbase_moveEvent(VirtualQDoubleSpinBox* self, QMoveEvent* event) {

	self->QDoubleSpinBox::moveEvent(event);
}

void QDoubleSpinBox_virtualbase_tabletEvent(VirtualQDoubleSpinBox* self, QTabletEvent* event) {

	self->QDoubleSpinBox::tabletEvent(event);
}

void QDoubleSpinBox_virtualbase_actionEvent(VirtualQDoubleSpinBox* self, QActionEvent* event) {

	self->QDoubleSpinBox::actionEvent(event);
}

void QDoubleSpinBox_virtualbase_dragEnterEvent(VirtualQDoubleSpinBox* self, QDragEnterEvent* event) {

	self->QDoubleSpinBox::dragEnterEvent(event);
}

void QDoubleSpinBox_virtualbase_dragMoveEvent(VirtualQDoubleSpinBox* self, QDragMoveEvent* event) {

	self->QDoubleSpinBox::dragMoveEvent(event);
}

void QDoubleSpinBox_virtualbase_dragLeaveEvent(VirtualQDoubleSpinBox* self, QDragLeaveEvent* event) {

	self->QDoubleSpinBox::dragLeaveEvent(event);
}

void QDoubleSpinBox_virtualbase_dropEvent(VirtualQDoubleSpinBox* self, QDropEvent* event) {

	self->QDoubleSpinBox::dropEvent(event);
}

bool QDoubleSpinBox_virtualbase_nativeEvent(VirtualQDoubleSpinBox* self, struct miqt_string eventType, void* message, long* result) {
	QByteArray eventType_QByteArray(eventType.data, eventType.len);

	return self->QDoubleSpinBox::nativeEvent(eventType_QByteArray, message, static_cast<long*>(result));
}

int QDoubleSpinBox_virtualbase_metric(const VirtualQDoubleSpinBox* self, int param1) {

	return self->QDoubleSpinBox::metric(static_cast<VirtualQDoubleSpinBox::PaintDeviceMetric>(param1));
}

void QDoubleSpinBox_virtualbase_initPainter(const VirtualQDoubleSpinBox* self, QPainter* painter) {

	self->QDoubleSpinBox::initPainter(painter);
}

QPaintDevice* QDoubleSpinBox_virtualbase_redirected(const VirtualQDoubleSpinBox* self, QPoint* offset) {

	return self->QDoubleSpinBox::redirected(offset);
}

QPainter* QDoubleSpinBox_virtualbase_sharedPainter(const VirtualQDoubleSpinBox* self) {

	return self->QDoubleSpinBox::sharedPainter();
}

void QDoubleSpinBox_virtualbase_inputMethodEvent(VirtualQDoubleSpinBox* self, QInputMethodEvent* param1) {

	self->QDoubleSpinBox::inputMethodEvent(param1);
}

bool QDoubleSpinBox_virtualbase_focusNextPrevChild(VirtualQDoubleSpinBox* self, bool next) {

	return self->QDoubleSpinBox::focusNextPrevChild(next);
}

bool QDoubleSpinBox_virtualbase_eventFilter(VirtualQDoubleSpinBox* self, QObject* watched, QEvent* event) {

	return self->QDoubleSpinBox::eventFilter(watched, event);
}

void QDoubleSpinBox_virtualbase_childEvent(VirtualQDoubleSpinBox* self, QChildEvent* event) {

	self->QDoubleSpinBox::childEvent(event);
}

void QDoubleSpinBox_virtualbase_customEvent(VirtualQDoubleSpinBox* self, QEvent* event) {

	self->QDoubleSpinBox::customEvent(event);
}

void QDoubleSpinBox_virtualbase_connectNotify(VirtualQDoubleSpinBox* self, QMetaMethod* signal) {

	self->QDoubleSpinBox::connectNotify(*signal);
}

void QDoubleSpinBox_virtualbase_disconnectNotify(VirtualQDoubleSpinBox* self, QMetaMethod* signal) {

	self->QDoubleSpinBox::disconnectNotify(*signal);
}

const QMetaObject* QDoubleSpinBox_staticMetaObject() { return &QDoubleSpinBox::staticMetaObject; }

const QDoubleSpinBox_VTable* QDoubleSpinBox_vtbl(const VirtualQDoubleSpinBox* self) { return self->vtbl; }
void* QDoubleSpinBox_vdata(const VirtualQDoubleSpinBox* self) { return self->vdata; }
void QDoubleSpinBox_setVdata(VirtualQDoubleSpinBox* self, void* vdata) { self->vdata = vdata; }

void QDoubleSpinBox_protectedbase_initStyleOption(const VirtualQDoubleSpinBox* self, QStyleOptionSpinBox* option) {
	self->initStyleOption(option);
}

QLineEdit* QDoubleSpinBox_protectedbase_lineEdit(const VirtualQDoubleSpinBox* self) {
	return self->lineEdit();
}

void QDoubleSpinBox_protectedbase_setLineEdit(VirtualQDoubleSpinBox* self, QLineEdit* edit) {
	self->setLineEdit(edit);
}

void QDoubleSpinBox_protectedbase_updateMicroFocus(VirtualQDoubleSpinBox* self) {
	self->updateMicroFocus();
}

void QDoubleSpinBox_protectedbase_create(VirtualQDoubleSpinBox* self) {
	self->create();
}

void QDoubleSpinBox_protectedbase_destroy(VirtualQDoubleSpinBox* self) {
	self->destroy();
}

bool QDoubleSpinBox_protectedbase_focusNextChild(VirtualQDoubleSpinBox* self) {
	return self->focusNextChild();
}

bool QDoubleSpinBox_protectedbase_focusPreviousChild(VirtualQDoubleSpinBox* self) {
	return self->focusPreviousChild();
}

QObject* QDoubleSpinBox_protectedbase_sender(const VirtualQDoubleSpinBox* self) {
	return self->sender();
}

int QDoubleSpinBox_protectedbase_senderSignalIndex(const VirtualQDoubleSpinBox* self) {
	return self->senderSignalIndex();
}

int QDoubleSpinBox_protectedbase_receivers(const VirtualQDoubleSpinBox* self, const char* signal) {
	return self->receivers(signal);
}

bool QDoubleSpinBox_protectedbase_isSignalConnected(const VirtualQDoubleSpinBox* self, QMetaMethod* signal) {
	return self->isSignalConnected(*signal);
}

void QDoubleSpinBox_delete(QDoubleSpinBox* self) {
	delete self;
}

