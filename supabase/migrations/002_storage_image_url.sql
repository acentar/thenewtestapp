-- Add image_url column for storage-backed images (replaces base64 image_data for new uploads)
ALTER TABLE public.posts ADD COLUMN IF NOT EXISTS image_url text;
