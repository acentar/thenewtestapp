-- Add image_url column for storage-backed images (replaces base64 image_data for new uploads)
ALTER TABLE public.posts ADD COLUMN IF NOT EXISTS image_url text;

-- Make image_data nullable since uploads now go through storage bucket
ALTER TABLE public.posts ALTER COLUMN image_data DROP NOT NULL;
