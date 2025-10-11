-- Migration: Add status column to existing availability table
-- Run this ONLY if you already have existing matches and availability tables

-- Add status column to existing availability table
ALTER TABLE availability 
ADD COLUMN status VARCHAR(20) DEFAULT 'available';

-- Add constraint for valid status values
ALTER TABLE availability 
ADD CONSTRAINT availability_status_check 
CHECK (status IN ('available', 'unavailable'));

-- Create index for better performance
CREATE INDEX idx_availability_status ON availability(status);

-- Update existing records to have 'available' status
UPDATE availability SET status = 'available' WHERE status IS NULL;