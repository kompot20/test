#language: ru

@tree

Функционал: <описание фичи>

Как <Роль> я хочу
<описание функционала> 
чтобы <бизнес-эффект> 

Сценарий: <описание сценария>
Дано Я открыл новый сеанс TestClient или подключил уже существующий
И в панели разделов я выбираю "Закупки"	
И в панели функций я выбираю "Поступление товара"
И я нажимаю на кнопку с именем 'ФормаСоздать'
И из выпадающего списка с именем 'Сотрудник' я выбираю точное значение 'Дарья Бабкина'
И в поле "Поставщик" я ввожу текст 'ОАО "НаБутылку"'
И в поле "Фитнесклуб" я ввожу текст "ТРК Жруйка"
И в таблице "Товары" я нажимаю на кнопку с именем "ТоварыДобавить"
И в таблице "Товары" я выбираю текущую строку
И в таблице "Товары" из выпадающего списка "Товар" я выбираю точное значение 'Бутылка(пластик)'
И в таблице "Товары" в поле с именем "ТоварыКоличество" я ввожу текст "100"
И в таблице "Товары" в поле 'Цена' я ввожу текст '20'
И в таблице "Товары" я завершаю редактирование строки
И в таблице "Товары" я активизирую поле с именем "ТоварыСумма"
И я запоминаю значение текущего поля как "Итог"
И в таблице "Товары" я завершаю редактирование строки
И в поле с именем "СуммаДокументов" я ввожу значение переменной "Итог"
И я нажимаю на кнопку с именем "ФормаПровестиИЗакрыть"
И я жду закрытия окна 'Поступление товаров (создание) *' в течение 5 секунд
И я жду, что таблица "Список" станет содержать строки в течение 5 секунд:
		|'Поставщик'        |'Фитнесклуб' |'Сумма Документов'|
		|'ОАО "НаБутылку"'  |'ТРК Жруйка' |'2 000,00'        |