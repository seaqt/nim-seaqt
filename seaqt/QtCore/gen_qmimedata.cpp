#include <QByteArray>
#include <QChildEvent>
#include <QEvent>
#include <QList>
#include <QMetaMethod>
#include <QMetaObject>
#include <QMimeData>
#include <QObject>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QTimerEvent>
#include <QUrl>
#include <QVariant>
#include <qmimedata.h>
#include "gen_qmimedata.h"
class VirtualQMimeData final : public QMimeData {
	const QMimeData_VTable* vtbl;
	void* vdata;
public:
	friend const QMimeData_VTable* QMimeData_vtbl(const VirtualQMimeData* self);
	friend void* QMimeData_vdata(const VirtualQMimeData* self);
	friend void QMimeData_setVdata(VirtualQMimeData* self, void* vdata);

	VirtualQMimeData(const QMimeData_VTable* vtbl, void* vdata): QMimeData(), vtbl(vtbl), vdata(vdata) {}

	virtual ~VirtualQMimeData() override { if(vtbl->destructor) vtbl->destructor(this); }

	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QMimeData::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(this);

		return callback_return_value;
	}

	friend QMetaObject* QMimeData_virtualbase_metaObject(const VirtualQMimeData* self);

	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QMimeData::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(this, sigval1);

		return callback_return_value;
	}

	friend void* QMimeData_virtualbase_metacast(VirtualQMimeData* self, const char* param1);

	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QMimeData::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QMimeData_virtualbase_metacall(VirtualQMimeData* self, int param1, int param2, void** param3);

	virtual bool hasFormat(const QString& mimetype) const override {
		if (vtbl->hasFormat == 0) {
			return QMimeData::hasFormat(mimetype);
		}

		const QString mimetype_ret = mimetype;
		// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
		QByteArray mimetype_b = mimetype_ret.toUtf8();
		struct miqt_string mimetype_ms;
		mimetype_ms.len = mimetype_b.length();
		mimetype_ms.data = static_cast<char*>(malloc(mimetype_ms.len));
		memcpy(mimetype_ms.data, mimetype_b.data(), mimetype_ms.len);
		struct miqt_string sigval1 = mimetype_ms;

		bool callback_return_value = vtbl->hasFormat(this, sigval1);

		return callback_return_value;
	}

	friend bool QMimeData_virtualbase_hasFormat(const VirtualQMimeData* self, struct miqt_string mimetype);

	virtual QStringList formats() const override {
		if (vtbl->formats == 0) {
			return QMimeData::formats();
		}


		struct miqt_array /* of struct miqt_string */  callback_return_value = vtbl->formats(this);
		QStringList callback_return_value_QList;
		callback_return_value_QList.reserve(callback_return_value.len);
		struct miqt_string* callback_return_value_arr = static_cast<struct miqt_string*>(callback_return_value.data);
		for(size_t i = 0; i < callback_return_value.len; ++i) {
			QString callback_return_value_arr_i_QString = QString::fromUtf8(callback_return_value_arr[i].data, callback_return_value_arr[i].len);
			free(callback_return_value_arr[i].data);
			callback_return_value_QList.push_back(callback_return_value_arr_i_QString);
		}
		free(callback_return_value.data);

		return callback_return_value_QList;
	}

	friend struct miqt_array /* of struct miqt_string */  QMimeData_virtualbase_formats(const VirtualQMimeData* self);

	virtual QVariant retrieveData(const QString& mimetype, QVariant::Type preferredType) const override {
		if (vtbl->retrieveData == 0) {
			return QMimeData::retrieveData(mimetype, preferredType);
		}

		const QString mimetype_ret = mimetype;
		// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
		QByteArray mimetype_b = mimetype_ret.toUtf8();
		struct miqt_string mimetype_ms;
		mimetype_ms.len = mimetype_b.length();
		mimetype_ms.data = static_cast<char*>(malloc(mimetype_ms.len));
		memcpy(mimetype_ms.data, mimetype_b.data(), mimetype_ms.len);
		struct miqt_string sigval1 = mimetype_ms;
		QVariant::Type preferredType_ret = preferredType;
		int sigval2 = static_cast<int>(preferredType_ret);

		QVariant* callback_return_value = vtbl->retrieveData(this, sigval1, sigval2);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QVariant* QMimeData_virtualbase_retrieveData(const VirtualQMimeData* self, struct miqt_string mimetype, int preferredType);

	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QMimeData::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(this, sigval1);

		return callback_return_value;
	}

	friend bool QMimeData_virtualbase_event(VirtualQMimeData* self, QEvent* event);

	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QMimeData::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QMimeData_virtualbase_eventFilter(VirtualQMimeData* self, QObject* watched, QEvent* event);

	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QMimeData::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(this, sigval1);

	}

	friend void QMimeData_virtualbase_timerEvent(VirtualQMimeData* self, QTimerEvent* event);

	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QMimeData::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(this, sigval1);

	}

	friend void QMimeData_virtualbase_childEvent(VirtualQMimeData* self, QChildEvent* event);

	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QMimeData::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(this, sigval1);

	}

	friend void QMimeData_virtualbase_customEvent(VirtualQMimeData* self, QEvent* event);

	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QMimeData::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(this, sigval1);

	}

	friend void QMimeData_virtualbase_connectNotify(VirtualQMimeData* self, QMetaMethod* signal);

	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QMimeData::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(this, sigval1);

	}

	friend void QMimeData_virtualbase_disconnectNotify(VirtualQMimeData* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend QObject* QMimeData_protectedbase_sender(const VirtualQMimeData* self);
	friend int QMimeData_protectedbase_senderSignalIndex(const VirtualQMimeData* self);
	friend int QMimeData_protectedbase_receivers(const VirtualQMimeData* self, const char* signal);
	friend bool QMimeData_protectedbase_isSignalConnected(const VirtualQMimeData* self, QMetaMethod* signal);
};

VirtualQMimeData* QMimeData_new(const QMimeData_VTable* vtbl, void* vdata) {
	return new VirtualQMimeData(vtbl, vdata);
}

void QMimeData_virtbase(QMimeData* src, QObject** outptr_QObject) {
	*outptr_QObject = static_cast<QObject*>(src);
}

QMetaObject* QMimeData_metaObject(const QMimeData* self) {
	return (QMetaObject*) self->metaObject();
}

void* QMimeData_metacast(QMimeData* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QMimeData_metacall(QMimeData* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QMimeData_tr(const char* s) {
	QString _ret = QMimeData::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QMimeData_trUtf8(const char* s) {
	QString _ret = QMimeData::trUtf8(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_array /* of QUrl* */  QMimeData_urls(const QMimeData* self) {
	QList<QUrl> _ret = self->urls();
	// Convert QList<> from C++ memory to manually-managed C memory
	QUrl** _arr = static_cast<QUrl**>(malloc(sizeof(QUrl*) * _ret.length()));
	for (size_t i = 0, e = _ret.length(); i < e; ++i) {
		_arr[i] = new QUrl(_ret[i]);
	}
	struct miqt_array _out;
	_out.len = _ret.length();
	_out.data = static_cast<void*>(_arr);
	return _out;
}

void QMimeData_setUrls(QMimeData* self, struct miqt_array /* of QUrl* */  urls) {
	QList<QUrl> urls_QList;
	urls_QList.reserve(urls.len);
	QUrl** urls_arr = static_cast<QUrl**>(urls.data);
	for(size_t i = 0; i < urls.len; ++i) {
		urls_QList.push_back(*(urls_arr[i]));
	}
	self->setUrls(urls_QList);
}

bool QMimeData_hasUrls(const QMimeData* self) {
	return self->hasUrls();
}

struct miqt_string QMimeData_text(const QMimeData* self) {
	QString _ret = self->text();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QMimeData_setText(QMimeData* self, struct miqt_string text) {
	QString text_QString = QString::fromUtf8(text.data, text.len);
	self->setText(text_QString);
}

bool QMimeData_hasText(const QMimeData* self) {
	return self->hasText();
}

struct miqt_string QMimeData_html(const QMimeData* self) {
	QString _ret = self->html();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QMimeData_setHtml(QMimeData* self, struct miqt_string html) {
	QString html_QString = QString::fromUtf8(html.data, html.len);
	self->setHtml(html_QString);
}

bool QMimeData_hasHtml(const QMimeData* self) {
	return self->hasHtml();
}

QVariant* QMimeData_imageData(const QMimeData* self) {
	return new QVariant(self->imageData());
}

void QMimeData_setImageData(QMimeData* self, QVariant* image) {
	self->setImageData(*image);
}

bool QMimeData_hasImage(const QMimeData* self) {
	return self->hasImage();
}

QVariant* QMimeData_colorData(const QMimeData* self) {
	return new QVariant(self->colorData());
}

void QMimeData_setColorData(QMimeData* self, QVariant* color) {
	self->setColorData(*color);
}

bool QMimeData_hasColor(const QMimeData* self) {
	return self->hasColor();
}

struct miqt_string QMimeData_data(const QMimeData* self, struct miqt_string mimetype) {
	QString mimetype_QString = QString::fromUtf8(mimetype.data, mimetype.len);
	QByteArray _qb = self->data(mimetype_QString);
	struct miqt_string _ms;
	_ms.len = _qb.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _qb.data(), _ms.len);
	return _ms;
}

void QMimeData_setData(QMimeData* self, struct miqt_string mimetype, struct miqt_string data) {
	QString mimetype_QString = QString::fromUtf8(mimetype.data, mimetype.len);
	QByteArray data_QByteArray(data.data, data.len);
	self->setData(mimetype_QString, data_QByteArray);
}

void QMimeData_removeFormat(QMimeData* self, struct miqt_string mimetype) {
	QString mimetype_QString = QString::fromUtf8(mimetype.data, mimetype.len);
	self->removeFormat(mimetype_QString);
}

bool QMimeData_hasFormat(const QMimeData* self, struct miqt_string mimetype) {
	QString mimetype_QString = QString::fromUtf8(mimetype.data, mimetype.len);
	return self->hasFormat(mimetype_QString);
}

struct miqt_array /* of struct miqt_string */  QMimeData_formats(const QMimeData* self) {
	QStringList _ret = self->formats();
	// Convert QList<> from C++ memory to manually-managed C memory
	struct miqt_string* _arr = static_cast<struct miqt_string*>(malloc(sizeof(struct miqt_string) * _ret.length()));
	for (size_t i = 0, e = _ret.length(); i < e; ++i) {
		QString _lv_ret = _ret[i];
		// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
		QByteArray _lv_b = _lv_ret.toUtf8();
		struct miqt_string _lv_ms;
		_lv_ms.len = _lv_b.length();
		_lv_ms.data = static_cast<char*>(malloc(_lv_ms.len));
		memcpy(_lv_ms.data, _lv_b.data(), _lv_ms.len);
		_arr[i] = _lv_ms;
	}
	struct miqt_array _out;
	_out.len = _ret.length();
	_out.data = static_cast<void*>(_arr);
	return _out;
}

void QMimeData_clear(QMimeData* self) {
	self->clear();
}

struct miqt_string QMimeData_tr2(const char* s, const char* c) {
	QString _ret = QMimeData::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QMimeData_tr3(const char* s, const char* c, int n) {
	QString _ret = QMimeData::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QMimeData_trUtf82(const char* s, const char* c) {
	QString _ret = QMimeData::trUtf8(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QMimeData_trUtf83(const char* s, const char* c, int n) {
	QString _ret = QMimeData::trUtf8(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QMetaObject* QMimeData_virtualbase_metaObject(const VirtualQMimeData* self) {

	return (QMetaObject*) self->QMimeData::metaObject();
}

void* QMimeData_virtualbase_metacast(VirtualQMimeData* self, const char* param1) {

	return self->QMimeData::qt_metacast(param1);
}

int QMimeData_virtualbase_metacall(VirtualQMimeData* self, int param1, int param2, void** param3) {

	return self->QMimeData::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

bool QMimeData_virtualbase_hasFormat(const VirtualQMimeData* self, struct miqt_string mimetype) {
	QString mimetype_QString = QString::fromUtf8(mimetype.data, mimetype.len);

	return self->QMimeData::hasFormat(mimetype_QString);
}

struct miqt_array /* of struct miqt_string */  QMimeData_virtualbase_formats(const VirtualQMimeData* self) {

	QStringList _ret = self->QMimeData::formats();
	// Convert QList<> from C++ memory to manually-managed C memory
	struct miqt_string* _arr = static_cast<struct miqt_string*>(malloc(sizeof(struct miqt_string) * _ret.length()));
	for (size_t i = 0, e = _ret.length(); i < e; ++i) {
		QString _lv_ret = _ret[i];
		// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
		QByteArray _lv_b = _lv_ret.toUtf8();
		struct miqt_string _lv_ms;
		_lv_ms.len = _lv_b.length();
		_lv_ms.data = static_cast<char*>(malloc(_lv_ms.len));
		memcpy(_lv_ms.data, _lv_b.data(), _lv_ms.len);
		_arr[i] = _lv_ms;
	}
	struct miqt_array _out;
	_out.len = _ret.length();
	_out.data = static_cast<void*>(_arr);
	return _out;
}

QVariant* QMimeData_virtualbase_retrieveData(const VirtualQMimeData* self, struct miqt_string mimetype, int preferredType) {
	QString mimetype_QString = QString::fromUtf8(mimetype.data, mimetype.len);

	return new QVariant(self->QMimeData::retrieveData(mimetype_QString, static_cast<QVariant::Type>(preferredType)));
}

bool QMimeData_virtualbase_event(VirtualQMimeData* self, QEvent* event) {

	return self->QMimeData::event(event);
}

bool QMimeData_virtualbase_eventFilter(VirtualQMimeData* self, QObject* watched, QEvent* event) {

	return self->QMimeData::eventFilter(watched, event);
}

void QMimeData_virtualbase_timerEvent(VirtualQMimeData* self, QTimerEvent* event) {

	self->QMimeData::timerEvent(event);
}

void QMimeData_virtualbase_childEvent(VirtualQMimeData* self, QChildEvent* event) {

	self->QMimeData::childEvent(event);
}

void QMimeData_virtualbase_customEvent(VirtualQMimeData* self, QEvent* event) {

	self->QMimeData::customEvent(event);
}

void QMimeData_virtualbase_connectNotify(VirtualQMimeData* self, QMetaMethod* signal) {

	self->QMimeData::connectNotify(*signal);
}

void QMimeData_virtualbase_disconnectNotify(VirtualQMimeData* self, QMetaMethod* signal) {

	self->QMimeData::disconnectNotify(*signal);
}

const QMetaObject* QMimeData_staticMetaObject() { return &QMimeData::staticMetaObject; }

const QMimeData_VTable* QMimeData_vtbl(const VirtualQMimeData* self) { return self->vtbl; }
void* QMimeData_vdata(const VirtualQMimeData* self) { return self->vdata; }
void QMimeData_setVdata(VirtualQMimeData* self, void* vdata) { self->vdata = vdata; }

QObject* QMimeData_protectedbase_sender(const VirtualQMimeData* self) {
	return self->sender();
}

int QMimeData_protectedbase_senderSignalIndex(const VirtualQMimeData* self) {
	return self->senderSignalIndex();
}

int QMimeData_protectedbase_receivers(const VirtualQMimeData* self, const char* signal) {
	return self->receivers(signal);
}

bool QMimeData_protectedbase_isSignalConnected(const VirtualQMimeData* self, QMetaMethod* signal) {
	return self->isSignalConnected(*signal);
}

void QMimeData_delete(QMimeData* self) {
	delete self;
}

