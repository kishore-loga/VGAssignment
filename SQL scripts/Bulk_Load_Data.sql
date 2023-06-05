COPY INTO dbo.PressureTable
(sensor_id , sensor_type , location , time_stamp , reading , unit , calibration_date , manufacturer , model , serial_number)
FROM 'https://vgdlg2.dfs.core.windows.net/vgdlg2container/pressure_data.csv'
WITH
(
	FILE_TYPE = 'CSV',
	MAXERRORS = 0,
	FIRSTROW = 1,
	ERRORFILE = 'https://vgdlg2.dfs.core.windows.net/vgdlg2container/'
)

GO

SELECT TOP 100 * FROM dbo.PressureTable
GO