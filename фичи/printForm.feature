#language: ru

@tree

Функционал: <описание фичи>

Как <Роль> я хочу
<описание функционала> 
чтобы <бизнес-эффект> 

Сценарий: <описание сценария>
Дано Я открыл новый сеанс TestClient или подключил уже существующий
И в панели разделов я выбираю "Продажи"	
И в панели функций я выбираю 'Реализация товаров'
Тогда открылось окно 'Реализация товаров'
И я нажимаю на кнопку с именем 'ФормаСоздать'
Тогда открылось окно 'Реализация товаров (создание)'
И в поле "Посетитель" я ввожу текст "Апальков Даниил"
И из выпадающего списка с именем 'Сотрудник' я выбираю точное значение 'Никита Чикалев'
И в поле "Фитнесклуб" я ввожу текст "ТРК Жруйка"
И в таблице "Товары" я нажимаю на кнопку с именем "ТоварыДобавить"
И в таблице "Товары" из выпадающего списка с именем "ТоварыТовар" я выбираю точное значение "Абонемент-месяц(утренний)"
И я перехожу к следующему реквизиту
И в таблице "Товары" в поле с именем "ТоварыКоличество" я ввожу текст "2"
И в таблице "Товары" я активизирую поле с именем "ТоварыСумма"
И я запоминаю значение текущего поля как "Итог"
И в таблице "Товары" я завершаю редактирование строки
И в поле с именем "СуммаДокумента" я ввожу значение переменной "Итог"
И я нажимаю на кнопку с именем "ФормаПровестиИЗакрыть"