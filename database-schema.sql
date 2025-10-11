-- Football Availability Scheduler - Supabase Database Schema
-- Run this complete SQL script in your Supabase SQL editor to set up the database

-- Create matches table
CREATE TABLE matches (
    id BIGSERIAL PRIMARY KEY,
    title TEXT NOT NULL,
    date DATE NOT NULL,
    time TIME NOT NULL,
    location TEXT NOT NULL,
    notes TEXT,
    created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW()
);

-- Create availability table
CREATE TABLE availability (
    id BIGSERIAL PRIMARY KEY,
    match_id BIGINT REFERENCES matches(id) ON DELETE CASCADE,
    player_name TEXT NOT NULL,
    status VARCHAR(20) DEFAULT 'available',
    created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
    UNIQUE(match_id, player_name),
    CONSTRAINT availability_status_check CHECK (status IN ('available', 'unavailable'))
);

-- Create index for better performance on status queries
CREATE INDEX idx_availability_status ON availability(status);

-- Enable Row Level Security
ALTER TABLE matches ENABLE ROW LEVEL SECURITY;
ALTER TABLE availability ENABLE ROW LEVEL SECURITY;

-- Create policies to allow all operations for now (you can restrict this later)
CREATE POLICY "Allow all operations on matches" ON matches FOR ALL USING (true);
CREATE POLICY "Allow all operations on availability" ON availability FOR ALL USING (true);

-- Enable real-time for both tables
ALTER PUBLICATION supabase_realtime ADD TABLE matches;
ALTER PUBLICATION supabase_realtime ADD TABLE availability;