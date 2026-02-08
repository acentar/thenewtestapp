# The New Test App

Demo app for [Ceptiv Cloud](https://cloud.ceptiv.net): todos + image gallery.

- **Todos**: Add, toggle, delete tasks (stored in `public.todos`).
- **Images**: Upload images to Storage bucket `images`, optional captions (stored in `public.posts` with `image_url` or `image_data`).

## Run locally

1. Copy env from Ceptiv Dashboard (project **app-test** → Overview → Copy env):
   ```bash
   cp .env.example .env.local
   # Edit .env.local with your project URL and anon key
   ```
2. Serve the app (e.g. Python):
   ```bash
   python3 -m http.server 3333
   ```
3. Open http://localhost:3333

## Backend

- API: `https://app-test.cloud.ceptiv.net` (or your Ceptiv project URL).
- Create bucket **images** (public) in Dashboard → Project → Storage for image uploads.

## Migrations

SQL in `supabase/migrations/`:

- `001_create_todos.sql` – todos table + RLS.
- `002_storage_image_url.sql` – adds `image_url` to posts for storage URLs.

Run via Ceptiv CLI or Dashboard SQL Editor.
