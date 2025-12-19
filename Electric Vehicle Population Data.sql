SELECT * FROM electricevehicle.electric_vehicle_population_data;

SELECT 
    ROUND(AVG(electric_range), 2) AS avg_electric_range
FROM electric_vehicle_population_data
WHERE electric_range IS NOT NULL;

SELECT 
    COUNT(vin) AS total_bev_vehicles
FROM electric_vehicle_population_data
WHERE electric_vehicle_type = 'Battery Electric Vehicle (BEV)';

SELECT 
    ROUND(
        (COUNT(CASE 
            WHEN electric_vehicle_type = 'Battery Electric Vehicle (BEV)' 
            THEN 1 END) * 100.0) / COUNT(*),
        2
    ) AS bev_percentage
FROM electric_vehicle_population_data;

SELECT 
    COUNT(vin) AS total_phev_vehicles
FROM electric_vehicle_population_data
WHERE electric_vehicle_type = 'Plug-in Hybrid Electric Vehicle (PHEV)';

SELECT 
    ROUND(
        (COUNT(CASE 
            WHEN electric_vehicle_type = 'Plug-in Hybrid Electric Vehicle (PHEV)' 
            THEN 1 END) * 100.0) / COUNT(*),
        2
    ) AS phev_percentage
FROM electric_vehicle_population_data;
