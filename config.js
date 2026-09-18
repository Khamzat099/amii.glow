// Supabase credentials. Заполни эти 2 значения из Supabase → Project Settings → API.
const SUPABASE_URL="PASTE_YOUR_SUPABASE_URL_HERE";
const SUPABASE_ANON_KEY="PASTE_YOUR_SUPABASE_ANON_KEY_HERE";
const supabaseClient=window.supabase.createClient(SUPABASE_URL,SUPABASE_ANON_KEY);