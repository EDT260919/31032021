// Найти или создать пользователя.
// 
// Параметры:
//  ПользовательИБ - ПользовательИнформационнойБазы
// 
// Возвращаемое значение:
//  СправочникСсылка.Пользователи
Функция НайтиИлиСоздатьПользователя(ПользовательИБ) Экспорт	
	ПользовательСсылка = НайтиПоНаименованию(ПользовательИБ.Имя);
	Если ПользовательСсылка.Пустая() Тогда
		ПользовательОбъект = СоздатьЭлемент();
		ПользовательОбъект.Наименование = ПользовательИБ.Имя;
		ПользовательОбъект.ПолноеИмя 	= ПользовательИБ.ПолноеИмя;
		
		ПользовательОбъект.ЗаполнитьНаборРолей(ПользовательИБ);
		ПользовательОбъект.Записать();
		
		ПользовательСсылка = ПользовательОбъект.Ссылка;		
	КонецЕсли;
	Возврат ПользовательСсылка;		
КонецФункции

//Для Каждого МойЭлемент Из МояКоллекция Цикл
//	Моя обработка
//КонецЦикла;
//
//Если Истина Тогда
//	
//КонецЕсли;