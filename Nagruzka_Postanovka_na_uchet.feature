﻿#language: ru

@tree

Функционал: Нагрузочное тестирование. Постановка на учет
// Создание одновременно несколько Заказ на производство. Чем больше заказов, тем больше нагрузка.
// В данном примере создаем десять документов с интервалом 1 сек

Контекст:
Дано Я открыл новый сеанс TestClient или подключил уже существующий

Сценарий: Нагрузочное тестирование. Заказ КМ
И я делаю 10 раз
	И Постановка на учет. Нагрузка
	И пауза 1

И Я открываю навигационную ссылку "e1cib/list/Документ.цм_ПостановкаНаУчет"