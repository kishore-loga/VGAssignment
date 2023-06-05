CREATE TABLE [dbo].[PressureTable]
(
    sensor_id VARCHAR (25),
    sensor_type VARCHAR(25),
    location VARCHAR(25),
    time_stamp VARCHAR(25),
    reading VARCHAR(25),
    unit VARCHAR(25),
    calibration_date VARCHAR(25),
    manufacturer VARCHAR(25),
    model VARCHAR(25),
    serial_number VARCHAR(25)
)
WITH
(
    DISTRIBUTION = HASH (sensor_id),
    CLUSTERED COLUMNSTORE INDEX
)
GO
