# -*- coding: utf-8 -*-

# Form implementation generated from reading ui file 'mmqgis_geocode_street_layer_form.ui'
#
# Created: Fri Dec 20 08:54:19 2013
#      by: PyQt4 UI code generator 4.9.1
#
# WARNING! All changes made in this file will be lost!

from PyQt4 import QtCore, QtGui

try:
    _fromUtf8 = QtCore.QString.fromUtf8
except AttributeError:
    _fromUtf8 = lambda s: s

class Ui_mmqgis_geocode_street_layer_form(object):
    def setupUi(self, mmqgis_geocode_street_layer_form):
        mmqgis_geocode_street_layer_form.setObjectName(_fromUtf8("mmqgis_geocode_street_layer_form"))
        mmqgis_geocode_street_layer_form.setWindowModality(QtCore.Qt.ApplicationModal)
        mmqgis_geocode_street_layer_form.setEnabled(True)
        mmqgis_geocode_street_layer_form.resize(490, 537)
        mmqgis_geocode_street_layer_form.setMouseTracking(False)
        self.buttonBox = QtGui.QDialogButtonBox(mmqgis_geocode_street_layer_form)
        self.buttonBox.setGeometry(QtCore.QRect(190, 500, 160, 26))
        self.buttonBox.setOrientation(QtCore.Qt.Horizontal)
        self.buttonBox.setStandardButtons(QtGui.QDialogButtonBox.Cancel|QtGui.QDialogButtonBox.Ok)
        self.buttonBox.setObjectName(_fromUtf8("buttonBox"))
        self.label = QtGui.QLabel(mmqgis_geocode_street_layer_form)
        self.label.setGeometry(QtCore.QRect(10, 410, 141, 22))
        self.label.setObjectName(_fromUtf8("label"))
        self.label_3 = QtGui.QLabel(mmqgis_geocode_street_layer_form)
        self.label_3.setGeometry(QtCore.QRect(10, 110, 111, 22))
        self.label_3.setObjectName(_fromUtf8("label_3"))
        self.shapefilename = QtGui.QLineEdit(mmqgis_geocode_street_layer_form)
        self.shapefilename.setGeometry(QtCore.QRect(10, 430, 371, 21))
        self.shapefilename.setReadOnly(False)
        self.shapefilename.setObjectName(_fromUtf8("shapefilename"))
        self.browse_shapefile = QtGui.QPushButton(mmqgis_geocode_street_layer_form)
        self.browse_shapefile.setGeometry(QtCore.QRect(400, 430, 79, 26))
        self.browse_shapefile.setObjectName(_fromUtf8("browse_shapefile"))
        self.streetlayer = QtGui.QComboBox(mmqgis_geocode_street_layer_form)
        self.streetlayer.setGeometry(QtCore.QRect(10, 130, 471, 27))
        self.streetlayer.setObjectName(_fromUtf8("streetlayer"))
        self.streetnamefield = QtGui.QComboBox(mmqgis_geocode_street_layer_form)
        self.streetnamefield.setGeometry(QtCore.QRect(10, 80, 151, 27))
        self.streetnamefield.setObjectName(_fromUtf8("streetnamefield"))
        self.label_4 = QtGui.QLabel(mmqgis_geocode_street_layer_form)
        self.label_4.setGeometry(QtCore.QRect(10, 60, 131, 16))
        self.label_4.setObjectName(_fromUtf8("label_4"))
        self.label_2 = QtGui.QLabel(mmqgis_geocode_street_layer_form)
        self.label_2.setGeometry(QtCore.QRect(10, 0, 151, 22))
        self.label_2.setObjectName(_fromUtf8("label_2"))
        self.infilename = QtGui.QLineEdit(mmqgis_geocode_street_layer_form)
        self.infilename.setGeometry(QtCore.QRect(10, 20, 371, 31))
        self.infilename.setText(_fromUtf8(""))
        self.infilename.setReadOnly(False)
        self.infilename.setObjectName(_fromUtf8("infilename"))
        self.browse_infile = QtGui.QPushButton(mmqgis_geocode_street_layer_form)
        self.browse_infile.setGeometry(QtCore.QRect(400, 20, 79, 31))
        self.browse_infile.setObjectName(_fromUtf8("browse_infile"))
        self.label_5 = QtGui.QLabel(mmqgis_geocode_street_layer_form)
        self.label_5.setGeometry(QtCore.QRect(10, 450, 171, 22))
        self.label_5.setObjectName(_fromUtf8("label_5"))
        self.notfoundfilename = QtGui.QLineEdit(mmqgis_geocode_street_layer_form)
        self.notfoundfilename.setGeometry(QtCore.QRect(10, 470, 371, 21))
        self.notfoundfilename.setReadOnly(False)
        self.notfoundfilename.setObjectName(_fromUtf8("notfoundfilename"))
        self.browse_notfound = QtGui.QPushButton(mmqgis_geocode_street_layer_form)
        self.browse_notfound.setGeometry(QtCore.QRect(400, 470, 79, 26))
        self.browse_notfound.setObjectName(_fromUtf8("browse_notfound"))
        self.streetname = QtGui.QComboBox(mmqgis_geocode_street_layer_form)
        self.streetname.setGeometry(QtCore.QRect(10, 180, 151, 27))
        self.streetname.setObjectName(_fromUtf8("streetname"))
        self.fromx = QtGui.QComboBox(mmqgis_geocode_street_layer_form)
        self.fromx.setGeometry(QtCore.QRect(170, 180, 151, 27))
        self.fromx.setObjectName(_fromUtf8("fromx"))
        self.label_6 = QtGui.QLabel(mmqgis_geocode_street_layer_form)
        self.label_6.setGeometry(QtCore.QRect(10, 160, 171, 22))
        self.label_6.setObjectName(_fromUtf8("label_6"))
        self.label_7 = QtGui.QLabel(mmqgis_geocode_street_layer_form)
        self.label_7.setGeometry(QtCore.QRect(170, 160, 131, 22))
        self.label_7.setObjectName(_fromUtf8("label_7"))
        self.label_8 = QtGui.QLabel(mmqgis_geocode_street_layer_form)
        self.label_8.setGeometry(QtCore.QRect(330, 160, 131, 22))
        self.label_8.setObjectName(_fromUtf8("label_8"))
        self.fromy = QtGui.QComboBox(mmqgis_geocode_street_layer_form)
        self.fromy.setGeometry(QtCore.QRect(330, 180, 151, 27))
        self.fromy.setObjectName(_fromUtf8("fromy"))
        self.tox = QtGui.QComboBox(mmqgis_geocode_street_layer_form)
        self.tox.setGeometry(QtCore.QRect(170, 230, 151, 27))
        self.tox.setObjectName(_fromUtf8("tox"))
        self.label_9 = QtGui.QLabel(mmqgis_geocode_street_layer_form)
        self.label_9.setGeometry(QtCore.QRect(170, 210, 111, 22))
        self.label_9.setObjectName(_fromUtf8("label_9"))
        self.label_10 = QtGui.QLabel(mmqgis_geocode_street_layer_form)
        self.label_10.setGeometry(QtCore.QRect(330, 210, 121, 22))
        self.label_10.setObjectName(_fromUtf8("label_10"))
        self.toy = QtGui.QComboBox(mmqgis_geocode_street_layer_form)
        self.toy.setGeometry(QtCore.QRect(330, 230, 151, 27))
        self.toy.setObjectName(_fromUtf8("toy"))
        self.label_11 = QtGui.QLabel(mmqgis_geocode_street_layer_form)
        self.label_11.setGeometry(QtCore.QRect(170, 310, 131, 22))
        self.label_11.setObjectName(_fromUtf8("label_11"))
        self.leftto = QtGui.QComboBox(mmqgis_geocode_street_layer_form)
        self.leftto.setGeometry(QtCore.QRect(170, 330, 151, 27))
        self.leftto.setObjectName(_fromUtf8("leftto"))
        self.label_12 = QtGui.QLabel(mmqgis_geocode_street_layer_form)
        self.label_12.setGeometry(QtCore.QRect(170, 260, 141, 22))
        self.label_12.setObjectName(_fromUtf8("label_12"))
        self.leftfrom = QtGui.QComboBox(mmqgis_geocode_street_layer_form)
        self.leftfrom.setGeometry(QtCore.QRect(170, 280, 151, 27))
        self.leftfrom.setObjectName(_fromUtf8("leftfrom"))
        self.rightfrom = QtGui.QComboBox(mmqgis_geocode_street_layer_form)
        self.rightfrom.setGeometry(QtCore.QRect(330, 280, 151, 27))
        self.rightfrom.setObjectName(_fromUtf8("rightfrom"))
        self.label_13 = QtGui.QLabel(mmqgis_geocode_street_layer_form)
        self.label_13.setGeometry(QtCore.QRect(330, 310, 131, 22))
        self.label_13.setObjectName(_fromUtf8("label_13"))
        self.rightto = QtGui.QComboBox(mmqgis_geocode_street_layer_form)
        self.rightto.setGeometry(QtCore.QRect(330, 330, 151, 27))
        self.rightto.setObjectName(_fromUtf8("rightto"))
        self.label_14 = QtGui.QLabel(mmqgis_geocode_street_layer_form)
        self.label_14.setGeometry(QtCore.QRect(330, 260, 141, 22))
        self.label_14.setObjectName(_fromUtf8("label_14"))
        self.setback = QtGui.QLineEdit(mmqgis_geocode_street_layer_form)
        self.setback.setGeometry(QtCore.QRect(10, 230, 151, 31))
        self.setback.setText(_fromUtf8(""))
        self.setback.setReadOnly(False)
        self.setback.setObjectName(_fromUtf8("setback"))
        self.label_15 = QtGui.QLabel(mmqgis_geocode_street_layer_form)
        self.label_15.setGeometry(QtCore.QRect(10, 210, 181, 22))
        self.label_15.setObjectName(_fromUtf8("label_15"))
        self.numberfield = QtGui.QComboBox(mmqgis_geocode_street_layer_form)
        self.numberfield.setGeometry(QtCore.QRect(170, 80, 151, 27))
        self.numberfield.setObjectName(_fromUtf8("numberfield"))
        self.label_16 = QtGui.QLabel(mmqgis_geocode_street_layer_form)
        self.label_16.setGeometry(QtCore.QRect(170, 60, 111, 16))
        self.label_16.setObjectName(_fromUtf8("label_16"))
        self.zipfield = QtGui.QComboBox(mmqgis_geocode_street_layer_form)
        self.zipfield.setGeometry(QtCore.QRect(330, 80, 151, 27))
        self.zipfield.setObjectName(_fromUtf8("zipfield"))
        self.label_17 = QtGui.QLabel(mmqgis_geocode_street_layer_form)
        self.label_17.setGeometry(QtCore.QRect(330, 60, 111, 16))
        self.label_17.setObjectName(_fromUtf8("label_17"))
        self.leftzip = QtGui.QComboBox(mmqgis_geocode_street_layer_form)
        self.leftzip.setGeometry(QtCore.QRect(170, 380, 151, 27))
        self.leftzip.setObjectName(_fromUtf8("leftzip"))
        self.rightzip = QtGui.QComboBox(mmqgis_geocode_street_layer_form)
        self.rightzip.setGeometry(QtCore.QRect(330, 380, 151, 27))
        self.rightzip.setObjectName(_fromUtf8("rightzip"))
        self.label_18 = QtGui.QLabel(mmqgis_geocode_street_layer_form)
        self.label_18.setGeometry(QtCore.QRect(170, 360, 131, 22))
        self.label_18.setObjectName(_fromUtf8("label_18"))
        self.label_19 = QtGui.QLabel(mmqgis_geocode_street_layer_form)
        self.label_19.setGeometry(QtCore.QRect(330, 360, 131, 22))
        self.label_19.setObjectName(_fromUtf8("label_19"))

        self.retranslateUi(mmqgis_geocode_street_layer_form)
        QtCore.QObject.connect(self.buttonBox, QtCore.SIGNAL(_fromUtf8("accepted()")), mmqgis_geocode_street_layer_form.accept)
        QtCore.QObject.connect(self.buttonBox, QtCore.SIGNAL(_fromUtf8("rejected()")), mmqgis_geocode_street_layer_form.reject)
        QtCore.QMetaObject.connectSlotsByName(mmqgis_geocode_street_layer_form)

    def retranslateUi(self, mmqgis_geocode_street_layer_form):
        mmqgis_geocode_street_layer_form.setWindowTitle(QtGui.QApplication.translate("mmqgis_geocode_street_layer_form", "Geocode from Street Layer", None, QtGui.QApplication.UnicodeUTF8))
        self.label.setText(QtGui.QApplication.translate("mmqgis_geocode_street_layer_form", "Output Shapefile", None, QtGui.QApplication.UnicodeUTF8))
        self.label_3.setText(QtGui.QApplication.translate("mmqgis_geocode_street_layer_form", "Street Layer", None, QtGui.QApplication.UnicodeUTF8))
        self.shapefilename.setText(QtGui.QApplication.translate("mmqgis_geocode_street_layer_form", "geocoded.shp", None, QtGui.QApplication.UnicodeUTF8))
        self.browse_shapefile.setText(QtGui.QApplication.translate("mmqgis_geocode_street_layer_form", "Browse...", None, QtGui.QApplication.UnicodeUTF8))
        self.label_4.setText(QtGui.QApplication.translate("mmqgis_geocode_street_layer_form", "Street Name Field", None, QtGui.QApplication.UnicodeUTF8))
        self.label_2.setText(QtGui.QApplication.translate("mmqgis_geocode_street_layer_form", "Input CSV File (UTF-8)", None, QtGui.QApplication.UnicodeUTF8))
        self.browse_infile.setText(QtGui.QApplication.translate("mmqgis_geocode_street_layer_form", "Browse...", None, QtGui.QApplication.UnicodeUTF8))
        self.label_5.setText(QtGui.QApplication.translate("mmqgis_geocode_street_layer_form", "Not Found Output List", None, QtGui.QApplication.UnicodeUTF8))
        self.notfoundfilename.setText(QtGui.QApplication.translate("mmqgis_geocode_street_layer_form", "notfound.csv", None, QtGui.QApplication.UnicodeUTF8))
        self.browse_notfound.setText(QtGui.QApplication.translate("mmqgis_geocode_street_layer_form", "Browse...", None, QtGui.QApplication.UnicodeUTF8))
        self.label_6.setText(QtGui.QApplication.translate("mmqgis_geocode_street_layer_form", "Street Name Attribute", None, QtGui.QApplication.UnicodeUTF8))
        self.label_7.setText(QtGui.QApplication.translate("mmqgis_geocode_street_layer_form", "From X Attribute", None, QtGui.QApplication.UnicodeUTF8))
        self.label_8.setText(QtGui.QApplication.translate("mmqgis_geocode_street_layer_form", "From Y Attribute", None, QtGui.QApplication.UnicodeUTF8))
        self.label_9.setText(QtGui.QApplication.translate("mmqgis_geocode_street_layer_form", "To X Attribute", None, QtGui.QApplication.UnicodeUTF8))
        self.label_10.setText(QtGui.QApplication.translate("mmqgis_geocode_street_layer_form", "To Y Attribute", None, QtGui.QApplication.UnicodeUTF8))
        self.label_11.setText(QtGui.QApplication.translate("mmqgis_geocode_street_layer_form", "Left To Number", None, QtGui.QApplication.UnicodeUTF8))
        self.label_12.setText(QtGui.QApplication.translate("mmqgis_geocode_street_layer_form", "Left From Number", None, QtGui.QApplication.UnicodeUTF8))
        self.label_13.setText(QtGui.QApplication.translate("mmqgis_geocode_street_layer_form", "Right To Number", None, QtGui.QApplication.UnicodeUTF8))
        self.label_14.setText(QtGui.QApplication.translate("mmqgis_geocode_street_layer_form", "Right From Number", None, QtGui.QApplication.UnicodeUTF8))
        self.label_15.setText(QtGui.QApplication.translate("mmqgis_geocode_street_layer_form", "Bldg. Setback (map units)", None, QtGui.QApplication.UnicodeUTF8))
        self.label_16.setText(QtGui.QApplication.translate("mmqgis_geocode_street_layer_form", "Number Field", None, QtGui.QApplication.UnicodeUTF8))
        self.label_17.setText(QtGui.QApplication.translate("mmqgis_geocode_street_layer_form", "ZIP Field", None, QtGui.QApplication.UnicodeUTF8))
        self.label_18.setText(QtGui.QApplication.translate("mmqgis_geocode_street_layer_form", "Left ZIP (optional)", None, QtGui.QApplication.UnicodeUTF8))
        self.label_19.setText(QtGui.QApplication.translate("mmqgis_geocode_street_layer_form", "Right ZIP (optional)", None, QtGui.QApplication.UnicodeUTF8))
