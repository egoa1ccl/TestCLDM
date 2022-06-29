﻿ #language: ru

@ExportScenarios

Функционал: Постановка на учет. Заказ на производство. Сценарий. Молочная продукция не ВЕС. КМ создаются автоматически. Три линии агрегации

Сценарий: Постановка на учет. Молочная продукция не ВЕС. КМ создаются автоматически. 2ур

//Очистка глобального контекста
И я удаляю переменную '$$ДатаДокументаПостановкаНаУчет$$'
И я удаляю переменную '$$НомерДокументаПостановкаНаУчет$$'

И Я открыл новый сеанс TestClient или подключил уже существующий

И Я открываю навигационную ссылку "e1cib/list/Документ.цм_ПостановкаНаУчет"
И я нажимаю на кнопку с именем 'ФормаСоздать'

//Заполнение табличной части. Вкладка Основное
И из выпадающего списка с именем "Склад" я выбираю точное значение 'Основной склад ГП'

// Заполнение поля комментарий. Чтобы знать что за сценарий в этом документе
И в поле с именем 'Комментарий' я ввожу текст 'Сценарий. Молочная продукция не ВЕС. КМ создаются автоматически. Три линии агрегации'

//Заполнение табличной части. Вкладка Товары
// Первый товар. Линия - 2 ур агрегации
И я перехожу к закладке с именем "СтраницаТовары"
И в таблице "Товары" я активизирую поле с именем "ТоварыНоменклатура"
И в таблице "Товары" из выпадающего списка с именем "ТоварыНоменклатура" я выбираю точное значение 'Молоко ДЕРЕВЕНСКАЯ КОРОВКА 3,2%'

//И в таблице "Товары" я активизирую поле с именем "ТоварыПартияНоменклатуры"
И в таблице "Товары" из выпадающего списка с именем "ТоварыПартияНоменклатуры" я выбираю точное значение 'Тестовая партия'
И в таблице "Товары" я активизирую поле с именем "ТоварыТипКодовМаркировки"
И в таблице "Товары" из выпадающего списка с именем "ТоварыТипКодовМаркировки" я выбираю точное значение 'Единица товара'

И в таблице "Товары" я активизирую поле с именем "ТоварыПлановоеКоличество"
И в таблице "Товары" в поле с именем "ТоварыПлановоеКоличество" я ввожу текст '10'
И в таблице "Товары" я активизирую поле с именем "ТоварыКоличество"
И в таблице "Товары" в поле с именем "ТоварыКоличество" я ввожу текст '10'

И в таблице "Товары" я активизирую поле с именем "ТоварыУпаковка1"
И в таблице "Товары" из выпадающего списка с именем "ТоварыУпаковка1" я выбираю точное значение 'короб 6-2'
И в таблице "Товары" я активизирую поле с именем "ТоварыУпаковка2"
И в таблице "Товары" из выпадающего списка с именем "ТоварыУпаковка2" я выбираю точное значение 'Палетта'

И в таблице "Товары" я активизирую поле с именем "ТоварыПроизводственнаяЛиния"
И в таблице "Товары" из выпадающего списка с именем "ТоварыПроизводственнаяЛиния" я выбираю точное значение 'С печатью стикеров - 2 ур вл'
И в таблице "Товары" я активизирую поле с именем "ТоварыТипИспользуемыхКодовМаркировки"
И в таблице "Товары" из выпадающего списка с именем "ТоварыТипИспользуемыхКодовМаркировки" я выбираю точное значение 'Для прямого нанесения'

И я нажимаю на кнопку с именем 'ФормаЗаписать'
И я нажимаю на кнопку с именем 'ФормаПровести'

// Резервирование КМ
И в таблице "Товары" я нажимаю на кнопку с именем 'ТоварыСвободныеКодыРезервирование'
Тогда открылось окно 'Резервирование свободных кодов'
И я нажимаю на кнопку с именем 'ФормаЗарезервировать'

//Смена статуса документа
И из выпадающего списка с именем "Статус" я выбираю точное значение 'Принят в работу'
И я нажимаю на кнопку с именем 'ФормаЗаписать'
И я нажимаю на кнопку с именем 'ФормаПровести'

//Запоминание номера созданного документа, чтобы далее использовать его на Посту укладки
И я запоминаю значение поля с именем 'Номер' как '$$НомерДокументаПостановкаНаУчет$$'
И я запоминаю значение поля с именем 'Дата' как 'ДатаИВремяДокументаПостановкаНаУчет'
И я запоминаю значение поля с именем "Дата" как "ДатаДокумента"
И Я запоминаю значение выражения "Сред(Контекст.ДатаДокумента, 12, 5)" в переменную "ВремяДокументаПостановкаНаУчет"
И Я запоминаю значение выражения "Лев(Контекст.ДатаДокумента, 10)" в переменную "$$ДатаДокументаПостановкаНаУчет$$"

И я вывожу значение переменной "$$НомерДокументаПостановкаНаУчет$$"
И я вывожу значение переменной "$$ДатаДокументаПостановкаНаУчет$$"

И я закрываю текущее окно

Сценарий: Постановка на учет. Молочная продукция не ВЕС. КМ создаются автоматически. 1ур

//Очистка глобального контекста
И я удаляю переменную '$$ДатаДокументаПостановкаНаУчет$$'
И я удаляю переменную '$$НомерДокументаПостановкаНаУчет$$'

И Я открыл новый сеанс TestClient или подключил уже существующий

И Я открываю навигационную ссылку "e1cib/list/Документ.цм_ПостановкаНаУчет"
И я нажимаю на кнопку с именем 'ФормаСоздать'

//Заполнение табличной части. Вкладка Основное
И из выпадающего списка с именем "Склад" я выбираю точное значение 'Основной склад ГП'

// Заполнение поля комментарий. Чтобы знать что за сценарий в этом документе
И в поле с именем 'Комментарий' я ввожу текст 'Сценарий. Молочная продукция не ВЕС. КМ создаются автоматически. Три линии агрегации'

// Линия - 1 ур агрегации
И я перехожу к закладке с именем "СтраницаТовары"
И в таблице "Товары" я нажимаю на кнопку с именем 'ТоварыДобавить'

И в таблице "Товары" я активизирую поле с именем "ТоварыНоменклатура"
И в таблице "Товары" из выпадающего списка с именем "ТоварыНоменклатура" я выбираю точное значение 'Молоко ДЕРЕВЕНСКАЯ КОРОВКА 3,2%'

И в таблице "Товары" я активизирую поле с именем "ТоварыПартияНоменклатуры"
И в таблице "Товары" из выпадающего списка с именем "ТоварыПартияНоменклатуры" я выбираю точное значение 'Тестовая партия'
И в таблице "Товары" я активизирую поле с именем "ТоварыТипКодовМаркировки"
И в таблице "Товары" из выпадающего списка с именем "ТоварыТипКодовМаркировки" я выбираю точное значение 'Единица товара'

И в таблице "Товары" я активизирую поле с именем "ТоварыПлановоеКоличество"
И в таблице "Товары" в поле с именем "ТоварыПлановоеКоличество" я ввожу текст '10'
И в таблице "Товары" я активизирую поле с именем "ТоварыКоличество"
И в таблице "Товары" в поле с именем "ТоварыКоличество" я ввожу текст '10'

И в таблице "Товары" я активизирую поле с именем "ТоварыУпаковка1"
И в таблице "Товары" из выпадающего списка с именем "ТоварыУпаковка1" я выбираю точное значение 'короб 6-2'
И в таблице "Товары" я активизирую поле с именем "ТоварыУпаковка2"
И в таблице "Товары" из выпадающего списка с именем "ТоварыУпаковка2" я выбираю точное значение 'Палетта'

И в таблице "Товары" я активизирую поле с именем "ТоварыПроизводственнаяЛиния"
И в таблице "Товары" из выпадающего списка с именем "ТоварыПроизводственнаяЛиния" я выбираю точное значение 'С печатью стикеров - 1 ур вл'
И в таблице "Товары" я активизирую поле с именем "ТоварыТипИспользуемыхКодовМаркировки"
И в таблице "Товары" из выпадающего списка с именем "ТоварыТипИспользуемыхКодовМаркировки" я выбираю точное значение 'Для прямого нанесения'

И я нажимаю на кнопку с именем 'ФормаЗаписать'
И я нажимаю на кнопку с именем 'ФормаПровести'

// Резервирование КМ
И в таблице "Товары" я нажимаю на кнопку с именем 'ТоварыСвободныеКодыРезервирование'
Тогда открылось окно 'Резервирование свободных кодов'
И я нажимаю на кнопку с именем 'ФормаЗарезервировать'

//Смена статуса документа
И из выпадающего списка с именем "Статус" я выбираю точное значение 'Принят в работу'
И я нажимаю на кнопку с именем 'ФормаЗаписать'
И я нажимаю на кнопку с именем 'ФормаПровести'

//Запоминание номера созданного документа, чтобы далее использовать его на Посту укладки
И я запоминаю значение поля с именем 'Номер' как 'НомерДокументаПостановкаНаУчет'
И я запоминаю значение поля с именем 'Дата' как 'ДатаИВремяДокументаПостановкаНаУчет'
И я запоминаю значение поля с именем "Дата" как "ДатаДокумента"
И Я запоминаю значение выражения "Сред(Контекст.ДатаДокумента, 12, 5)" в переменную "$$ВремяДокументаПостановкаНаУчет$$"
И Я запоминаю значение выражения "Лев(Контекст.ДатаДокумента, 10)" в переменную "$$ДатаДокументаПостановкаНаУчет$$"

И я закрываю текущее окно

Сценарий: Постановка на учет. Молочная продукция не ВЕС. КМ создаются автоматически. 0ур

//Очистка глобального контекста
И я удаляю переменную '$$ДатаДокументаПостановкаНаУчет$$'
И я удаляю переменную '$$НомерДокументаПостановкаНаУчет$$'

И Я открыл новый сеанс TestClient или подключил уже существующий

И Я открываю навигационную ссылку "e1cib/list/Документ.цм_ПостановкаНаУчет"
И я нажимаю на кнопку с именем 'ФормаСоздать'

//Заполнение табличной части. Вкладка Основное
И из выпадающего списка с именем "Склад" я выбираю точное значение 'Основной склад ГП'

// Заполнение поля комментарий. Чтобы знать что за сценарий в этом документе
И в поле с именем 'Комментарий' я ввожу текст 'Сценарий. Молочная продукция не ВЕС. КМ создаются автоматически. Три линии агрегации'

// Линия без агрегации
И я перехожу к закладке с именем "СтраницаТовары"
И в таблице "Товары" я активизирую поле с именем "ТоварыНоменклатура"
И в таблице "Товары" из выпадающего списка с именем "ТоварыНоменклатура" я выбираю точное значение 'Молоко ДЕРЕВЕНСКАЯ КОРОВКА 3,2%'

И в таблице "Товары" я активизирую поле с именем "ТоварыПартияНоменклатуры"
И в таблице "Товары" из выпадающего списка с именем "ТоварыПартияНоменклатуры" я выбираю точное значение 'Тестовая партия'
И в таблице "Товары" я активизирую поле с именем "ТоварыТипКодовМаркировки"
И в таблице "Товары" из выпадающего списка с именем "ТоварыТипКодовМаркировки" я выбираю точное значение 'Единица товара'

И в таблице "Товары" я активизирую поле с именем "ТоварыПлановоеКоличество"
И в таблице "Товары" в поле с именем "ТоварыПлановоеКоличество" я ввожу текст '10'
И в таблице "Товары" я активизирую поле с именем "ТоварыКоличество"
И в таблице "Товары" в поле с именем "ТоварыКоличество" я ввожу текст '10'

И в таблице "Товары" я активизирую поле с именем "ТоварыУпаковка1"
И в таблице "Товары" из выпадающего списка с именем "ТоварыУпаковка1" я выбираю точное значение 'короб 6-2'
И в таблице "Товары" я активизирую поле с именем "ТоварыУпаковка2"
И в таблице "Товары" из выпадающего списка с именем "ТоварыУпаковка2" я выбираю точное значение 'Палетта'

И в таблице "Товары" я активизирую поле с именем "ТоварыПроизводственнаяЛиния"
И в таблице "Товары" из выпадающего списка с именем "ТоварыПроизводственнаяЛиния" я выбираю точное значение 'Без агрегации'
И в таблице "Товары" я активизирую поле с именем "ТоварыТипИспользуемыхКодовМаркировки"
И в таблице "Товары" из выпадающего списка с именем "ТоварыТипИспользуемыхКодовМаркировки" я выбираю точное значение 'Для прямого нанесения'
И в таблице "Товары" я отменяю редактирование строки

И я нажимаю на кнопку с именем 'ФормаЗаписать'
И я нажимаю на кнопку с именем 'ФормаПровести'

// Резервирование КМ
И в таблице "Товары" я нажимаю на кнопку с именем 'ТоварыСвободныеКодыРезервирование'
Тогда открылось окно 'Резервирование свободных кодов'
И я нажимаю на кнопку с именем 'ФормаЗарезервировать'

//Смена статуса документа
И из выпадающего списка с именем "Статус" я выбираю точное значение 'Принят в работу'
И я нажимаю на кнопку с именем 'ФормаЗаписать'
И я нажимаю на кнопку с именем 'ФормаПровести'

//Запоминание номера созданного документа, чтобы далее использовать его на Посту укладки
И я запоминаю значение поля с именем 'Номер' как 'НомерДокументаПостановкаНаУчет'
И я запоминаю значение поля с именем 'Дата' как 'ДатаИВремяДокументаПостановкаНаУчет'
И я запоминаю значение поля с именем "Дата" как "ДатаДокумента"
И Я запоминаю значение выражения "Сред(Контекст.ДатаДокумента, 12, 5)" в переменную "$$ВремяДокументаПостановкаНаУчет$$"
И Я запоминаю значение выражения "Лев(Контекст.ДатаДокумента, 10)" в переменную "$$ДатаДокументаПостановкаНаУчет$$"

И я закрываю текущее окно

