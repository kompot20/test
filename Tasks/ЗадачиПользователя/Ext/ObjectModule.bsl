﻿
Процедура ПередВыполнением(Отказ)
	ДатаФактическогоВыполнения = ТекущаяДатаСеанса();
КонецПроцедуры


Процедура ОбработкаЗаполнения(ДанныеЗаполнения, ТекстЗаполнения, СтандартнаяОбработка)
	// Вставить содержимое обработчика. 
	Если ТипЗнч(ДанныеЗаполнения) = Тип("СправочникСсылка.Пользователи") Тогда
		Предмет = ДанныеЗаполнения;
	ИначеЕсли ТипЗнч(ДанныеЗаполнения) = Тип("ДокументСсылка.ПоступлениеТовара") Тогда
		Предмет = ДанныеЗаполнения;
	КонецЕсли;
КонецПроцедуры

