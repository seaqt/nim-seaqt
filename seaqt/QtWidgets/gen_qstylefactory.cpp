#include <QList>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QStyle>
#include <QStyleFactory>
#include <qstylefactory.h>
#include "gen_qstylefactory.h"
struct miqt_array /* of struct miqt_string */  QStyleFactory_keys() {
	QStringList _ret = QStyleFactory::keys();
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

QStyle* QStyleFactory_create(struct miqt_string param1) {
	QString param1_QString = QString::fromUtf8(param1.data, param1.len);
	return QStyleFactory::create(param1_QString);
}

void QStyleFactory_delete(QStyleFactory* self) {
	delete self;
}

