
Процедура УстановкаПараметровСеанса(ТребуемыеПараметры)
	УстановитьПривилегированныйРежим(Истина);
	Если ТребуемыеПараметры = Неопределено Тогда
		
		УникальныйИдентификатор = Строка(ПользователиИнформационнойБазы.ТекущийПользователь().УникальныйИдентификатор);
		Пользователи = Справочники.Пользователи.НайтиПоРеквизиту("УникальныйИдентификатор", УникальныйИдентификатор);    
		ПараметрыСеанса.ТекущийПользователь = Пользователи;
		
	КонецЕсли;
	УстановитьПривилегированныйРежим(Ложь);
КонецПроцедуры
