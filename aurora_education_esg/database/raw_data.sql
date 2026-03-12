CREATE TABLE raw_data.projects (
    project_id SERIAL PRIMARY KEY,
    project_name VARCHAR(100) NOT NULL,
    project_area VARCHAR(100) NOT NULL,
    start_date DATE NOT NULL,
    end_date DATE,
    status VARCHAR(20) NOT NULL,
    province VARCHAR(50) NOT NULL,
    project_manager_id INT,
    version VARCHAR(50),
    --constraint: ensure that the end date is after the start date
    CONSTRAINT chk_dates CHECK (end_date IS NULL OR end_date > start_date),
    --constraint: allowed status values
    CONSTRAINT chk_status CHECK (status IN ('active', 'pending', 'completed', 'cancelled')),
); 

