-- Run once in Supabase SQL Editor.
-- Private image bucket: each authenticated user can access only their own folder.
insert into storage.buckets (id, name, public, file_size_limit, allowed_mime_types)
values ('trade-images', 'trade-images', false, 10485760, array['image/jpeg','image/png','image/webp'])
on conflict (id) do update set public = false;

drop policy if exists "Users can read own trade images" on storage.objects;
create policy "Users can read own trade images" on storage.objects
for select to authenticated
using (bucket_id = 'trade-images' and (storage.foldername(name))[1] = auth.uid()::text);

drop policy if exists "Users can upload own trade images" on storage.objects;
create policy "Users can upload own trade images" on storage.objects
for insert to authenticated
with check (bucket_id = 'trade-images' and (storage.foldername(name))[1] = auth.uid()::text);

drop policy if exists "Users can update own trade images" on storage.objects;
create policy "Users can update own trade images" on storage.objects
for update to authenticated
using (bucket_id = 'trade-images' and (storage.foldername(name))[1] = auth.uid()::text)
with check (bucket_id = 'trade-images' and (storage.foldername(name))[1] = auth.uid()::text);

drop policy if exists "Users can delete own trade images" on storage.objects;
create policy "Users can delete own trade images" on storage.objects
for delete to authenticated
using (bucket_id = 'trade-images' and (storage.foldername(name))[1] = auth.uid()::text);
