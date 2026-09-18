# amiii_glow — защищённая онлайн-админка

## Возможности
- Общая онлайн-база товаров: изменения видны на всех устройствах.
- Вход администратора через Supabase Auth.
- Email + пароль.
- Восстановление пароля.
- Добавление, изменение, удаление товаров.
- Загрузка и замена фото.
- Корзина и заказ через WhatsApp: +7 981 000-22-21.

## Настройка
1. Создай проект в Supabase.
2. SQL Editor → выполни `supabase.sql`.
3. Authentication → Users → Add user → создай администратора с email и паролем.
4. Storage → New bucket → `product-images` → Public.
5. Для Storage создай policies: SELECT для public; INSERT/UPDATE/DELETE для authenticated.
6. Project Settings → API → скопируй Project URL и anon/public key.
7. Вставь их в `config.js`.
8. Загрузи все файлы в GitHub Pages.

## Безопасность
Пароль в коде не хранится. Доступ к изменению товаров разрешён только авторизованным пользователям Supabase. Не создавай лишних пользователей, если админ один.

Anon/public key допустимо использовать в браузере при корректно настроенных RLS policies.