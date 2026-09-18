create extension if not exists pgcrypto;
create table if not exists public.products(
 id uuid primary key default gen_random_uuid(),
 name text not null,
 price numeric not null default 0 check(price>=0),
 description text default '',
 image_url text default '',
 created_at timestamptz not null default now()
);
alter table public.products enable row level security;
drop policy if exists "Public can read products" on public.products;
drop policy if exists "Authenticated admins can insert products" on public.products;
drop policy if exists "Authenticated admins can update products" on public.products;
drop policy if exists "Authenticated admins can delete products" on public.products;
create policy "Public can read products" on public.products for select to anon,authenticated using(true);
create policy "Authenticated admins can insert products" on public.products for insert to authenticated with check(true);
create policy "Authenticated admins can update products" on public.products for update to authenticated using(true) with check(true);
create policy "Authenticated admins can delete products" on public.products for delete to authenticated using(true);
-- Storage:
-- Создай Public bucket "product-images".
-- Storage policies: SELECT = public; INSERT/UPDATE/DELETE = authenticated.