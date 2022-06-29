﻿#language: ru

@tree

Функционал: Пост укладки. Молочная продукция не ВЕС. КМ создаются автоматически. Три линии агрегации (13 сценариев 0031-0042)

Сценарий: Пост укладки. Молочная продукция не ВЕС. КМ создаются автоматически. 2ур. Сценарий по вместимости / по вместимости (0031) +

//Сначала создаем Заказ на производство. В нем одна строка - 2 ур.
И Постановка на учет. Молочная продукция не ВЕС. КМ создаются автоматически. 2ур

//Начинаем отработку Поста укладки.
И Я открыл новый сеанс TestClient или подключил уже существующий
И Я открываю навигационную ссылку "e1cib/command/Обработка.цм_РабочееМестоПостаУкладки2.Команда.РабочееМестоПостаУкладки"

//Выбор нужного Заказа на производство
И я нажимаю на кнопку с именем 'ВыбратьПостановкаНаУчетСтрока'
И в таблице "Список" я перехожу к строке:
		| 'Дата'                              | 'Количество' | 'Номер'                                  |
		| '$$ДатаДокументаПостановкаНаУчет$$' | '10'         | '$$НомерДокументаПостановкаНаУчет$$-001' |
И я нажимаю на кнопку с именем 'ФормаВыбрать'
Тогда открылось окно 'Непалетированные агрегаты.'
И я нажимаю на кнопку с именем 'Button1'

//Выбор Сценария по вместимости / по вместимости
И я перехожу к закладке с именем "СтраницаСценарий"
И я перехожу к закладке с именем "ДействияСУпаковкой"
И из выпадающего списка с именем "СценарийУпаковка1ВидЗавершенияЦикла" я выбираю точное значение 'По вместимости упаковки'
И из выпадающего списка с именем "СценарийУпаковка2ВидЗавершенияЦикла" я выбираю точное значение 'По вместимости упаковки'

//Укладка
И я нажимаю на кнопку с именем 'НачалоКонецУкладки'
И я перехожу к закладке с именем "СтраницаУкладка"
И я делаю 10 раз
	И я нажимаю на кнопку с именем 'ЭмуляцияСканаКМ'
И я нажимаю на кнопку с именем 'НачалоКонецУкладки'

И я закрываю текущее окно

Сценарий: Пост укладки. Молочная продукция не ВЕС. КМ создаются автоматически. 2ур. Сценарий по вместимости / Стикер в начале цикла (0032) +
//Сначала создаем Заказ на производство. В нем одна строка - 2 ур.
И Постановка на учет. Молочная продукция не ВЕС. КМ создаются автоматически. 2ур

//Начинаем отработку Поста укладки.
И Я открыл новый сеанс TestClient или подключил уже существующий
И Я открываю навигационную ссылку "e1cib/command/Обработка.цм_РабочееМестоПостаУкладки2.Команда.РабочееМестоПостаУкладки"

//Выбор нужного Заказа на производство
И я нажимаю на кнопку с именем 'ВыбратьПостановкаНаУчетСтрока'
И в таблице "Список" я перехожу к строке:
		| 'Дата'                              | 'Количество' | 'Номер'                                  |
		| '$$ДатаДокументаПостановкаНаУчет$$' | '10'         | '$$НомерДокументаПостановкаНаУчет$$-001' |
И я нажимаю на кнопку с именем 'ФормаВыбрать'
Тогда открылось окно 'Непалетированные агрегаты.'
И я нажимаю на кнопку с именем 'Button1'

//Выбор Сценария Сценарий по вместимости / Стикер в начале цикла
И я перехожу к закладке с именем "СтраницаСценарий"
И я перехожу к закладке с именем "ДействияСУпаковкой"
И из выпадающего списка с именем "СценарийУпаковка1ВидЗавершенияЦикла" я выбираю точное значение 'По вместимости упаковки'
И из выпадающего списка с именем "СценарийУпаковка2ВидЗавершенияЦикла" я выбираю точное значение 'Стикер упаковки сканируется в начале цикла укладки'

//Укладка
И я нажимаю на кнопку с именем 'НачалоКонецУкладки'
И я нажимаю на кнопку с именем 'ЭмуляцияСканаПалета'

И я перехожу к закладке с именем "СтраницаУкладка"
И я делаю 10 раз
	И я нажимаю на кнопку с именем 'ЭмуляцияСканаКМ'
И я нажимаю на кнопку с именем 'НачалоКонецУкладки'

И я закрываю текущее окно

Сценарий: Пост укладки. Молочная продукция не ВЕС. КМ создаются автоматически. 2ур. Сценарий по вместимости / Стикер в конце цикла (0033) +
//Сначала создаем Заказ на производство. В нем одна строка - 2 ур.
И Постановка на учет. Молочная продукция не ВЕС. КМ создаются автоматически. 2ур

//Начинаем отработку Поста укладки.
И Я открыл новый сеанс TestClient или подключил уже существующий
И Я открываю навигационную ссылку "e1cib/command/Обработка.цм_РабочееМестоПостаУкладки2.Команда.РабочееМестоПостаУкладки"

//Выбор нужного Заказа на производство
И я нажимаю на кнопку с именем 'ВыбратьПостановкаНаУчетСтрока'
И в таблице "Список" я перехожу к строке:
		| 'Дата'                              | 'Количество' | 'Номер'                                  |
		| '$$ДатаДокументаПостановкаНаУчет$$' | '10'         | '$$НомерДокументаПостановкаНаУчет$$-001' |
И я нажимаю на кнопку с именем 'ФормаВыбрать'
Тогда открылось окно 'Непалетированные агрегаты.'
И я нажимаю на кнопку с именем 'Button1'

//Выбор Сценария Сценарий по вместимости / Стикер в конце цикла
И я перехожу к закладке с именем "СтраницаСценарий"
И я перехожу к закладке с именем "ДействияСУпаковкой"
И из выпадающего списка с именем "СценарийУпаковка1ВидЗавершенияЦикла" я выбираю точное значение 'По вместимости упаковки'
И из выпадающего списка с именем "СценарийУпаковка2ВидЗавершенияЦикла" я выбираю точное значение 'Стикер упаковки сканируется в конце цикла укладки'

//Укладка
И я нажимаю на кнопку с именем 'НачалоКонецУкладки'
И я нажимаю на кнопку с именем 'ЭмуляцияСканаПалета'

И я перехожу к закладке с именем "СтраницаУкладка"
И я делаю 10 раз
	И я нажимаю на кнопку с именем 'ЭмуляцияСканаКМ'

И я перехожу к закладке с именем "СтраницаСценарий"
И я перехожу к закладке с именем "ДействияСУпаковкой"
И я нажимаю на кнопку с именем 'ЭмуляцияСканаПалета'

И я нажимаю на кнопку с именем 'НачалоКонецУкладки'

И я закрываю текущее окно

Сценарий: Пост укладки. Молочная продукция не ВЕС. КМ создаются автоматически. 2ур. Сценарий Стикер в начале цикла / по вместимости (0034)
//Сначала создаем Заказ на производство. В нем одна строка - 2 ур.
И Постановка на учет. Молочная продукция не ВЕС. КМ создаются автоматически. 2ур

//Начинаем отработку Поста укладки.
И Я открыл новый сеанс TestClient или подключил уже существующий
И Я открываю навигационную ссылку "e1cib/command/Обработка.цм_РабочееМестоПостаУкладки2.Команда.РабочееМестоПостаУкладки"

//Выбор нужного Заказа на производство
И я нажимаю на кнопку с именем 'ВыбратьПостановкаНаУчетСтрока'
И в таблице "Список" я перехожу к строке:
		| 'Дата'                              | 'Количество' | 'Номер'                                  |
		| '$$ДатаДокументаПостановкаНаУчет$$' | '10'         | '$$НомерДокументаПостановкаНаУчет$$-001' |
И я нажимаю на кнопку с именем 'ФормаВыбрать'
Тогда открылось окно 'Непалетированные агрегаты.'
И я нажимаю на кнопку с именем 'Button1'

Сценарий: Пост укладки. Молочная продукция не ВЕС. КМ создаются автоматически. 2ур. Сценарий Стикер в конце цикла / по вместимости (0035)
//Сначала создаем Заказ на производство. В нем одна строка - 2 ур.
И Постановка на учет. Молочная продукция не ВЕС. КМ создаются автоматически. 2ур

//Начинаем отработку Поста укладки.
И Я открыл новый сеанс TestClient или подключил уже существующий
И Я открываю навигационную ссылку "e1cib/command/Обработка.цм_РабочееМестоПостаУкладки2.Команда.РабочееМестоПостаУкладки"

//Выбор нужного Заказа на производство
И я нажимаю на кнопку с именем 'ВыбратьПостановкаНаУчетСтрока'
И в таблице "Список" я перехожу к строке:
		| 'Дата'                              | 'Количество' | 'Номер'                                  |
		| '$$ДатаДокументаПостановкаНаУчет$$' | '10'         | '$$НомерДокументаПостановкаНаУчет$$-001' |
И я нажимаю на кнопку с именем 'ФормаВыбрать'
Тогда открылось окно 'Непалетированные агрегаты.'
И я нажимаю на кнопку с именем 'Button1'

Сценарий: Пост укладки. Молочная продукция не ВЕС. КМ создаются автоматически. 2ур. Сценарий Стикер в начале цикла / Стикер в конце цикла (0036)
//Сначала создаем Заказ на производство. В нем одна строка - 2 ур.
И Постановка на учет. Молочная продукция не ВЕС. КМ создаются автоматически. 2ур

//Начинаем отработку Поста укладки.
И Я открыл новый сеанс TestClient или подключил уже существующий
И Я открываю навигационную ссылку "e1cib/command/Обработка.цм_РабочееМестоПостаУкладки2.Команда.РабочееМестоПостаУкладки"

//Выбор нужного Заказа на производство
И я нажимаю на кнопку с именем 'ВыбратьПостановкаНаУчетСтрока'
И в таблице "Список" я перехожу к строке:
		| 'Дата'                              | 'Количество' | 'Номер'                                  |
		| '$$ДатаДокументаПостановкаНаУчет$$' | '10'         | '$$НомерДокументаПостановкаНаУчет$$-001' |
И я нажимаю на кнопку с именем 'ФормаВыбрать'
Тогда открылось окно 'Непалетированные агрегаты.'
И я нажимаю на кнопку с именем 'Button1'

Сценарий: Пост укладки. Молочная продукция не ВЕС. КМ создаются автоматически. 2ур. Сценарий Стикер в начале цикла / Стикер в начале цикла (0037)
//Сначала создаем Заказ на производство. В нем одна строка - 2 ур.
И Постановка на учет. Молочная продукция не ВЕС. КМ создаются автоматически. 2ур

//Начинаем отработку Поста укладки.
И Я открыл новый сеанс TestClient или подключил уже существующий
И Я открываю навигационную ссылку "e1cib/command/Обработка.цм_РабочееМестоПостаУкладки2.Команда.РабочееМестоПостаУкладки"

//Выбор нужного Заказа на производство
И я нажимаю на кнопку с именем 'ВыбратьПостановкаНаУчетСтрока'
И в таблице "Список" я перехожу к строке:
		| 'Дата'                              | 'Количество' | 'Номер'                                  |
		| '$$ДатаДокументаПостановкаНаУчет$$' | '10'         | '$$НомерДокументаПостановкаНаУчет$$-001' |
И я нажимаю на кнопку с именем 'ФормаВыбрать'
Тогда открылось окно 'Непалетированные агрегаты.'
И я нажимаю на кнопку с именем 'Button1'

Сценарий: Пост укладки. Молочная продукция не ВЕС. КМ создаются автоматически. 2ур. Сценарий Стикер в конце цикла / Стикер в начале цикла (0038)
//Сначала создаем Заказ на производство. В нем одна строка - 2 ур.
И Постановка на учет. Молочная продукция не ВЕС. КМ создаются автоматически. 2ур

//Начинаем отработку Поста укладки.
И Я открыл новый сеанс TestClient или подключил уже существующий
И Я открываю навигационную ссылку "e1cib/command/Обработка.цм_РабочееМестоПостаУкладки2.Команда.РабочееМестоПостаУкладки"

//Выбор нужного Заказа на производство
И я нажимаю на кнопку с именем 'ВыбратьПостановкаНаУчетСтрока'
И в таблице "Список" я перехожу к строке:
		| 'Дата'                              | 'Количество' | 'Номер'                                  |
		| '$$ДатаДокументаПостановкаНаУчет$$' | '10'         | '$$НомерДокументаПостановкаНаУчет$$-001' |
И я нажимаю на кнопку с именем 'ФормаВыбрать'
Тогда открылось окно 'Непалетированные агрегаты.'
И я нажимаю на кнопку с именем 'Button1'

Сценарий: Пост укладки. Молочная продукция не ВЕС. КМ создаются автоматически. 2ур. Сценарий Стикер в конце цикла / Стикер в конце цикла (0039)
//Сначала создаем Заказ на производство. В нем одна строка - 2 ур.
И Постановка на учет. Молочная продукция не ВЕС. КМ создаются автоматически. 2ур

//Начинаем отработку Поста укладки.
И Я открыл новый сеанс TestClient или подключил уже существующий
И Я открываю навигационную ссылку "e1cib/command/Обработка.цм_РабочееМестоПостаУкладки2.Команда.РабочееМестоПостаУкладки"

//Выбор нужного Заказа на производство
И я нажимаю на кнопку с именем 'ВыбратьПостановкаНаУчетСтрока'
И в таблице "Список" я перехожу к строке:
		| 'Дата'                              | 'Количество' | 'Номер'                                  |
		| '$$ДатаДокументаПостановкаНаУчет$$' | '10'         | '$$НомерДокументаПостановкаНаУчет$$-001' |
И я нажимаю на кнопку с именем 'ФормаВыбрать'
Тогда открылось окно 'Непалетированные агрегаты.'
И я нажимаю на кнопку с именем 'Button1'

Сценарий: Пост укладки. Молочная продукция не ВЕС. КМ создаются автоматически. 1ур. Сценарий по вместимости / ------ (0040)
//Сначала создаем Заказ на производство. В нем одна строка - 1 ур.
И Постановка на учет. Молочная продукция не ВЕС. КМ создаются автоматически. 1ур

//Начинаем отработку Поста укладки.
И Я открыл новый сеанс TestClient или подключил уже существующий
И Я открываю навигационную ссылку "e1cib/command/Обработка.цм_РабочееМестоПостаУкладки2.Команда.РабочееМестоПостаУкладки"

//Выбор нужного Заказа на производство
И я нажимаю на кнопку с именем 'ВыбратьПостановкаНаУчетСтрока'
И в таблице "Список" я перехожу к строке:
		| 'Дата'                              | 'Количество' | 'Номер'                                  |
		| '$$ДатаДокументаПостановкаНаУчет$$' | '10'         | '$$НомерДокументаПостановкаНаУчет$$-001' |
И я нажимаю на кнопку с именем 'ФормаВыбрать'
Тогда открылось окно 'Непалетированные агрегаты.'
И я нажимаю на кнопку с именем 'Button1'
Сценарий: Пост укладки. Молочная продукция не ВЕС. КМ создаются автоматически. 1ур. Сценарий Стикер в начале цикла / ------ (0041)
//Сначала создаем Заказ на производство. В нем одна строка - 1 ур.
И Постановка на учет. Молочная продукция не ВЕС. КМ создаются автоматически. 1ур

//Начинаем отработку Поста укладки.
И Я открыл новый сеанс TestClient или подключил уже существующий
И Я открываю навигационную ссылку "e1cib/command/Обработка.цм_РабочееМестоПостаУкладки2.Команда.РабочееМестоПостаУкладки"

//Выбор нужного Заказа на производство
И я нажимаю на кнопку с именем 'ВыбратьПостановкаНаУчетСтрока'
И в таблице "Список" я перехожу к строке:
		| 'Дата'                              | 'Количество' | 'Номер'                                  |
		| '$$ДатаДокументаПостановкаНаУчет$$' | '10'         | '$$НомерДокументаПостановкаНаУчет$$-001' |
И я нажимаю на кнопку с именем 'ФормаВыбрать'
Тогда открылось окно 'Непалетированные агрегаты.'
И я нажимаю на кнопку с именем 'Button1'
Сценарий: Пост укладки. Молочная продукция не ВЕС. КМ создаются автоматически. 1ур. Сценарий Стикер в конце цикла / ------ (0042)
//Сначала создаем Заказ на производство. В нем одна строка - 1 ур.
И Постановка на учет. Молочная продукция не ВЕС. КМ создаются автоматически. 1ур

//Начинаем отработку Поста укладки.
И Я открыл новый сеанс TestClient или подключил уже существующий
И Я открываю навигационную ссылку "e1cib/command/Обработка.цм_РабочееМестоПостаУкладки2.Команда.РабочееМестоПостаУкладки"

//Выбор нужного Заказа на производство
И я нажимаю на кнопку с именем 'ВыбратьПостановкаНаУчетСтрока'
И в таблице "Список" я перехожу к строке:
		| 'Дата'                              | 'Количество' | 'Номер'                                  |
		| '$$ДатаДокументаПостановкаНаУчет$$' | '10'         | '$$НомерДокументаПостановкаНаУчет$$-001' |
И я нажимаю на кнопку с именем 'ФормаВыбрать'
Тогда открылось окно 'Непалетированные агрегаты.'
И я нажимаю на кнопку с именем 'Button1'
Сценарий: Пост укладки. Молочная продукция не ВЕС. КМ создаются автоматически. 0ур. Сценарий НЕ ИСП / НЕ ИСП (0043) +
//Сначала создаем Заказ на производство. В нем одна строка - 0 ур.
И Постановка на учет. Молочная продукция не ВЕС. КМ создаются автоматически. 0ур

//Начинаем отработку Поста укладки.
И Я открыл новый сеанс TestClient или подключил уже существующий
И Я открываю навигационную ссылку "e1cib/command/Обработка.цм_РабочееМестоПостаУкладки2.Команда.РабочееМестоПостаУкладки"

//Выбор нужного Заказа на производство
И я нажимаю на кнопку с именем 'ВыбратьПостановкаНаУчетСтрока'


И я вывожу значение переменной "$$ДатаДокументаПостановкаНаУчет$$"
И я вывожу значение переменной "$НомерДокументаПостановкаНаУчет$"


И в таблице "Список" я перехожу к строке:
		| 'Дата'                              | 'Количество' | 'Номер'                                  |
		| '$$ДатаДокументаПостановкаНаУчет$$' | '10'         | '$НомерДокументаПостановкаНаУчет$-001' |
И я нажимаю на кнопку с именем 'ФормаВыбрать'
Тогда открылось окно 'Непалетированные агрегаты.'
И я нажимаю на кнопку с именем 'Button1'

//Укладка
И я нажимаю на кнопку с именем 'НачалоКонецУкладки'
И я перехожу к закладке с именем "СтраницаУкладка"
И я делаю 10 раз
	И я нажимаю на кнопку с именем 'ЭмуляцияСканаКМ'
И я нажимаю на кнопку с именем 'НачалоКонецУкладки'

И я закрываю текущее окно