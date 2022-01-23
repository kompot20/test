﻿
Процедура ОбработкаПроведения(Отказ, Режим)
	//{{__КОНСТРУКТОР_ДВИЖЕНИЙ_РЕГИСТРОВ
	// Данный фрагмент построен конструктором.
	// При повторном использовании конструктора, внесенные вручную изменения будут утеряны!!!

	// регистр Взаиморасчеты Расход
	Движения.Взаиморасчеты.Записывать = Истина;
	Движение = Движения.Взаиморасчеты.Добавить();
	Движение.ВидДвижения = ВидДвиженияНакопления.Расход;
	Движение.Период = Дата;
	Движение.Контрагент = Сотрудник;
	Движение.Сумма = СуммаДокументов;

	
	Движения.ТоварыНаСкладах.Записывать = Истина; 
	Движения.СебестоимостьТоваров.Записывать = Истина;

	Для Каждого ТекСтрокаТовары Из Товары Цикл 
		// регистр ТоварыНаСкладах Приход
		Движение = Движения.ТоварыНаСкладах.Добавить();
		Движение.ВидДвижения = ВидДвиженияНакопления.Приход;
		Движение.Период = Дата;
		Движение.Номенклатура = ТекСтрокаТовары.Товар;
		Движение.ФитнесКлуб = ФитнесКлуб;
		Движение.Количество = ТекСтрокаТовары.Количество;
		
		// регистр СебестоимостьТоваров Приход
		Движение = Движения.СебестоимостьТоваров.Добавить();
		Движение.ВидДвижения = ВидДвиженияНакопления.Приход;
		Движение.Период = Дата;
		Движение.Номенклатура = ТекСтрокаТовары.Товар;
		Движение.Сумма = ТекСтрокаТовары.Сумма;
		Движение.Количество = ТекСтрокаТовары.Количество;
	КонецЦикла;

	// регистр РегистрБухУчет 
	Движения.РегистрБухУчет.Записывать = Истина;
	Движение = Движения.РегистрБухУчет.Добавить();
	Движение.СчетДт = ПланыСчетов.БухгалтерскийУчет.Покупатели;
	Движение.СчетКт = ПланыСчетов.БухгалтерскийУчет.Поставщики;
	Движение.Период = Дата;
	Движение.Сумма = СуммаДокументов;

	//}}__КОНСТРУКТОР_ДВИЖЕНИЙ_РЕГИСТРОВ
КонецПроцедуры

Процедура ПередЗаписью(Отказ, ПараметрыЗаписи)
// Вставить содержимое обработчика.
СуммаДокументов = 0;
Для каждого СтрокаДокумента Из Товары Цикл
СуммаДокументов = СуммаДокументов + СтрокаДокумента.Сумма;
КонецЦикла;
КонецПроцедуры   


Процедура ОбработкаЗаполнения(ДанныеЗаполнения, ТекстЗаполнения, СтандартнаяОбработка)
	Сотрудник = ПараметрыСеанса.ТекущийПользователь;
	
КонецПроцедуры

