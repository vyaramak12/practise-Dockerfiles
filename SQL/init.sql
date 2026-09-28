-- MySQL Script for Telugu Cinema (TFI) Top Actors / Heroes
-- Database Creation & Usage
CREATE DATABASE IF NOT EXISTS tfi_db;
USE tfi_db;

-- Table Structure
DROP TABLE IF EXISTS tfi_heroes;

CREATE TABLE tfi_heroes (
    hero_id INT AUTO_INCREMENT PRIMARY KEY,
    hero_name VARCHAR(100) NOT NULL,
    debut_year INT NOT NULL,
    experience_years INT GENERATED ALWAYS AS (2026 - debut_year) STORED,
    remuneration_in_crores DECIMAL(10, 2) NOT NULL COMMENT 'Estimated per-movie remuneration in INR Crores',
    blockbuster_movie VARCHAR(100) DEFAULT NULL,
    status ENUM('Active', 'Semi-Active', 'Retired') DEFAULT 'Active'
);

-- Data Insertion (Estimated remuneration & career experience as of 2026)
INSERT INTO tfi_heroes (hero_name, debut_year, remuneration_in_crores, blockbuster_movie) VALUES
('Prabhas', 2002, 150.00, 'Baahubali / Kalki 2898 AD'),
('Allu Arjun', 2003, 125.00, 'Pushpa 2: The Rule'),
('Jr. NTR', 2001, 100.00, 'RRR / Devara'),
('Ram Charan', 2007, 100.00, 'RRR / Magadheera'),
('Mahesh Babu', 1999, 80.00, 'Srimanthudu / Pokiri'),
('Pawan Kalyan', 1996, 75.00, 'Gabbar Singh / Attarintiki Daredi'),
('Chiranjeevi', 1978, 60.00, 'Indra / Waltair Veerayya'),
('Nani', 2008, 25.00, 'Dasara / Eega'),
('Vijay Deverakonda', 2011, 20.00, 'Arjun Reddy'),
('Nandamuri Balakrishna', 1974, 30.00, 'Akhanda / Veera Simha Reddy');

-- Quick Verification Queries

-- 1. Display all heroes sorted by remuneration (highest to lowest)
SELECT 
    hero_id, 
    hero_name, 
    experience_years, 
    CONCAT('₹', remuneration_in_crores, ' Cr') AS salary_per_movie,
    blockbuster_movie 
FROM tfi_heroes 
ORDER BY remuneration_in_crores DESC;

-- 2. Average experience and remuneration in TFI
SELECT 
    ROUND(AVG(experience_years), 1) AS avg_experience_years,
    ROUND(AVG(remuneration_in_crores), 2) AS avg_remuneration_crores
FROM tfi_heroes;
