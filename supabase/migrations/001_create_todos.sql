-- Create todos table
CREATE TABLE public.todos (
  id uuid DEFAULT gen_random_uuid() PRIMARY KEY,
  title text NOT NULL,
  completed boolean DEFAULT false,
  created_at timestamptz DEFAULT now(),
  updated_at timestamptz DEFAULT now()
);

-- Enable Row Level Security
ALTER TABLE public.todos ENABLE ROW LEVEL SECURITY;

-- Allow anonymous access (for this demo - in production, scope to authenticated users)
CREATE POLICY "Allow all access" ON public.todos
  FOR ALL
  USING (true)
  WITH CHECK (true);

-- Insert sample data
INSERT INTO public.todos (title) VALUES
  ('Buy groceries'),
  ('Build an app with Ceptiv Cloud'),
  ('Deploy to production');
