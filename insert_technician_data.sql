-- Inserting Temperature and Humidity Sensors for Each Plant Bed.
-- IDs come from the same sequences the packages use, and sensors that
-- insert_admin_data.sql already installed are skipped, so this script
-- cannot collide with data created through sensor_mgmt_pkg.
INSERT INTO hydro_admin.SENSORS (sensor_id, plant_bed_id, sensor_type, installation_date)
SELECT hydro_admin.sensor_seq.NEXTVAL, 1, 'TEMPERATURE', DATE '2024-01-01' FROM dual
WHERE NOT EXISTS (SELECT 1 FROM hydro_admin.SENSORS WHERE plant_bed_id = 1 AND sensor_type = 'TEMPERATURE');
INSERT INTO hydro_admin.SENSORS (sensor_id, plant_bed_id, sensor_type, installation_date)
SELECT hydro_admin.sensor_seq.NEXTVAL, 1, 'HUMIDITY', DATE '2024-01-01' FROM dual
WHERE NOT EXISTS (SELECT 1 FROM hydro_admin.SENSORS WHERE plant_bed_id = 1 AND sensor_type = 'HUMIDITY');
INSERT INTO hydro_admin.SENSORS (sensor_id, plant_bed_id, sensor_type, installation_date)
SELECT hydro_admin.sensor_seq.NEXTVAL, 2, 'TEMPERATURE', DATE '2024-01-01' FROM dual
WHERE NOT EXISTS (SELECT 1 FROM hydro_admin.SENSORS WHERE plant_bed_id = 2 AND sensor_type = 'TEMPERATURE');
INSERT INTO hydro_admin.SENSORS (sensor_id, plant_bed_id, sensor_type, installation_date)
SELECT hydro_admin.sensor_seq.NEXTVAL, 2, 'HUMIDITY', DATE '2024-01-01' FROM dual
WHERE NOT EXISTS (SELECT 1 FROM hydro_admin.SENSORS WHERE plant_bed_id = 2 AND sensor_type = 'HUMIDITY');
INSERT INTO hydro_admin.SENSORS (sensor_id, plant_bed_id, sensor_type, installation_date)
SELECT hydro_admin.sensor_seq.NEXTVAL, 3, 'TEMPERATURE', DATE '2024-01-01' FROM dual
WHERE NOT EXISTS (SELECT 1 FROM hydro_admin.SENSORS WHERE plant_bed_id = 3 AND sensor_type = 'TEMPERATURE');
INSERT INTO hydro_admin.SENSORS (sensor_id, plant_bed_id, sensor_type, installation_date)
SELECT hydro_admin.sensor_seq.NEXTVAL, 3, 'HUMIDITY', DATE '2024-01-01' FROM dual
WHERE NOT EXISTS (SELECT 1 FROM hydro_admin.SENSORS WHERE plant_bed_id = 3 AND sensor_type = 'HUMIDITY');
INSERT INTO hydro_admin.SENSORS (sensor_id, plant_bed_id, sensor_type, installation_date)
SELECT hydro_admin.sensor_seq.NEXTVAL, 4, 'TEMPERATURE', DATE '2024-01-01' FROM dual
WHERE NOT EXISTS (SELECT 1 FROM hydro_admin.SENSORS WHERE plant_bed_id = 4 AND sensor_type = 'TEMPERATURE');
INSERT INTO hydro_admin.SENSORS (sensor_id, plant_bed_id, sensor_type, installation_date)
SELECT hydro_admin.sensor_seq.NEXTVAL, 4, 'HUMIDITY', DATE '2024-01-01' FROM dual
WHERE NOT EXISTS (SELECT 1 FROM hydro_admin.SENSORS WHERE plant_bed_id = 4 AND sensor_type = 'HUMIDITY');
INSERT INTO hydro_admin.SENSORS (sensor_id, plant_bed_id, sensor_type, installation_date)
SELECT hydro_admin.sensor_seq.NEXTVAL, 5, 'TEMPERATURE', DATE '2024-01-01' FROM dual
WHERE NOT EXISTS (SELECT 1 FROM hydro_admin.SENSORS WHERE plant_bed_id = 5 AND sensor_type = 'TEMPERATURE');
INSERT INTO hydro_admin.SENSORS (sensor_id, plant_bed_id, sensor_type, installation_date)
SELECT hydro_admin.sensor_seq.NEXTVAL, 5, 'HUMIDITY', DATE '2024-01-01' FROM dual
WHERE NOT EXISTS (SELECT 1 FROM hydro_admin.SENSORS WHERE plant_bed_id = 5 AND sensor_type = 'HUMIDITY');



-- Sensor Logs for Plant Bed 1, Temperature Sensor
INSERT INTO hydro_admin.SENSOR_LOGS (log_id, sensor_id, timestamp, reading_value) VALUES (hydro_admin.sensor_log_seq.NEXTVAL, (SELECT sensor_id FROM hydro_admin.SENSORS WHERE plant_bed_id = 1 AND sensor_type = 'TEMPERATURE'), TIMESTAMP '2024-03-01 08:00:00', 22.5);
INSERT INTO hydro_admin.SENSOR_LOGS (log_id, sensor_id, timestamp, reading_value) VALUES (hydro_admin.sensor_log_seq.NEXTVAL, (SELECT sensor_id FROM hydro_admin.SENSORS WHERE plant_bed_id = 1 AND sensor_type = 'TEMPERATURE'), TIMESTAMP '2024-03-01 09:00:00', 23.0);
INSERT INTO hydro_admin.SENSOR_LOGS (log_id, sensor_id, timestamp, reading_value) VALUES (hydro_admin.sensor_log_seq.NEXTVAL, (SELECT sensor_id FROM hydro_admin.SENSORS WHERE plant_bed_id = 1 AND sensor_type = 'TEMPERATURE'), TIMESTAMP '2024-03-01 10:00:00', 23.5);
INSERT INTO hydro_admin.SENSOR_LOGS (log_id, sensor_id, timestamp, reading_value) VALUES (hydro_admin.sensor_log_seq.NEXTVAL, (SELECT sensor_id FROM hydro_admin.SENSORS WHERE plant_bed_id = 1 AND sensor_type = 'TEMPERATURE'), TIMESTAMP '2024-03-01 11:00:00', 22.0);
INSERT INTO hydro_admin.SENSOR_LOGS (log_id, sensor_id, timestamp, reading_value) VALUES (hydro_admin.sensor_log_seq.NEXTVAL, (SELECT sensor_id FROM hydro_admin.SENSORS WHERE plant_bed_id = 1 AND sensor_type = 'TEMPERATURE'), TIMESTAMP '2024-03-01 12:00:00', 21.8);
INSERT INTO hydro_admin.SENSOR_LOGS (log_id, sensor_id, timestamp, reading_value) VALUES (hydro_admin.sensor_log_seq.NEXTVAL, (SELECT sensor_id FROM hydro_admin.SENSORS WHERE plant_bed_id = 1 AND sensor_type = 'TEMPERATURE'), TIMESTAMP '2024-03-01 13:00:00', 22.3);
INSERT INTO hydro_admin.SENSOR_LOGS (log_id, sensor_id, timestamp, reading_value) VALUES (hydro_admin.sensor_log_seq.NEXTVAL, (SELECT sensor_id FROM hydro_admin.SENSORS WHERE plant_bed_id = 1 AND sensor_type = 'TEMPERATURE'), TIMESTAMP '2024-03-01 14:00:00', 23.1);
INSERT INTO hydro_admin.SENSOR_LOGS (log_id, sensor_id, timestamp, reading_value) VALUES (hydro_admin.sensor_log_seq.NEXTVAL, (SELECT sensor_id FROM hydro_admin.SENSORS WHERE plant_bed_id = 1 AND sensor_type = 'TEMPERATURE'), TIMESTAMP '2024-03-01 15:00:00', 23.6);
INSERT INTO hydro_admin.SENSOR_LOGS (log_id, sensor_id, timestamp, reading_value) VALUES (hydro_admin.sensor_log_seq.NEXTVAL, (SELECT sensor_id FROM hydro_admin.SENSORS WHERE plant_bed_id = 1 AND sensor_type = 'TEMPERATURE'), TIMESTAMP '2024-03-01 16:00:00', 22.7);
INSERT INTO hydro_admin.SENSOR_LOGS (log_id, sensor_id, timestamp, reading_value) VALUES (hydro_admin.sensor_log_seq.NEXTVAL, (SELECT sensor_id FROM hydro_admin.SENSORS WHERE plant_bed_id = 1 AND sensor_type = 'TEMPERATURE'), TIMESTAMP '2024-03-01 17:00:00', 22.9);

-- Sensor Logs for Plant Bed 1, Humidity Sensor
INSERT INTO hydro_admin.SENSOR_LOGS (log_id, sensor_id, timestamp, reading_value) VALUES (hydro_admin.sensor_log_seq.NEXTVAL, (SELECT sensor_id FROM hydro_admin.SENSORS WHERE plant_bed_id = 1 AND sensor_type = 'HUMIDITY'), TIMESTAMP '2024-03-01 08:00:00', 65.5);
INSERT INTO hydro_admin.SENSOR_LOGS (log_id, sensor_id, timestamp, reading_value) VALUES (hydro_admin.sensor_log_seq.NEXTVAL, (SELECT sensor_id FROM hydro_admin.SENSORS WHERE plant_bed_id = 1 AND sensor_type = 'HUMIDITY'), TIMESTAMP '2024-03-01 09:00:00', 66.0);
INSERT INTO hydro_admin.SENSOR_LOGS (log_id, sensor_id, timestamp, reading_value) VALUES (hydro_admin.sensor_log_seq.NEXTVAL, (SELECT sensor_id FROM hydro_admin.SENSORS WHERE plant_bed_id = 1 AND sensor_type = 'HUMIDITY'), TIMESTAMP '2024-03-01 10:00:00', 65.0);
INSERT INTO hydro_admin.SENSOR_LOGS (log_id, sensor_id, timestamp, reading_value) VALUES (hydro_admin.sensor_log_seq.NEXTVAL, (SELECT sensor_id FROM hydro_admin.SENSORS WHERE plant_bed_id = 1 AND sensor_type = 'HUMIDITY'), TIMESTAMP '2024-03-01 11:00:00', 64.5);
INSERT INTO hydro_admin.SENSOR_LOGS (log_id, sensor_id, timestamp, reading_value) VALUES (hydro_admin.sensor_log_seq.NEXTVAL, (SELECT sensor_id FROM hydro_admin.SENSORS WHERE plant_bed_id = 1 AND sensor_type = 'HUMIDITY'), TIMESTAMP '2024-03-01 12:00:00', 64.8);
INSERT INTO hydro_admin.SENSOR_LOGS (log_id, sensor_id, timestamp, reading_value) VALUES (hydro_admin.sensor_log_seq.NEXTVAL, (SELECT sensor_id FROM hydro_admin.SENSORS WHERE plant_bed_id = 1 AND sensor_type = 'HUMIDITY'), TIMESTAMP '2024-03-01 13:00:00', 65.2);
INSERT INTO hydro_admin.SENSOR_LOGS (log_id, sensor_id, timestamp, reading_value) VALUES (hydro_admin.sensor_log_seq.NEXTVAL, (SELECT sensor_id FROM hydro_admin.SENSORS WHERE plant_bed_id = 1 AND sensor_type = 'HUMIDITY'), TIMESTAMP '2024-03-01 14:00:00', 65.8);
INSERT INTO hydro_admin.SENSOR_LOGS (log_id, sensor_id, timestamp, reading_value) VALUES (hydro_admin.sensor_log_seq.NEXTVAL, (SELECT sensor_id FROM hydro_admin.SENSORS WHERE plant_bed_id = 1 AND sensor_type = 'HUMIDITY'), TIMESTAMP '2024-03-01 15:00:00', 66.3);
INSERT INTO hydro_admin.SENSOR_LOGS (log_id, sensor_id, timestamp, reading_value) VALUES (hydro_admin.sensor_log_seq.NEXTVAL, (SELECT sensor_id FROM hydro_admin.SENSORS WHERE plant_bed_id = 1 AND sensor_type = 'HUMIDITY'), TIMESTAMP '2024-03-01 16:00:00', 65.7);
INSERT INTO hydro_admin.SENSOR_LOGS (log_id, sensor_id, timestamp, reading_value) VALUES (hydro_admin.sensor_log_seq.NEXTVAL, (SELECT sensor_id FROM hydro_admin.SENSORS WHERE plant_bed_id = 1 AND sensor_type = 'HUMIDITY'), TIMESTAMP '2024-03-01 17:00:00', 65.9);



-- Plant Bed 2, Humidity Sensor
INSERT INTO hydro_admin.SENSOR_LOGS (log_id, sensor_id, timestamp, reading_value) VALUES (hydro_admin.sensor_log_seq.NEXTVAL, (SELECT sensor_id FROM hydro_admin.SENSORS WHERE plant_bed_id = 2 AND sensor_type = 'HUMIDITY'), TIMESTAMP '2024-03-01 16:00:00', 72.5);
INSERT INTO hydro_admin.SENSOR_LOGS (log_id, sensor_id, timestamp, reading_value) VALUES (hydro_admin.sensor_log_seq.NEXTVAL, (SELECT sensor_id FROM hydro_admin.SENSORS WHERE plant_bed_id = 2 AND sensor_type = 'HUMIDITY'), TIMESTAMP '2024-03-01 17:00:00', 72.8);

-- Plant Bed 3, Temperature Sensor
INSERT INTO hydro_admin.SENSOR_LOGS (log_id, sensor_id, timestamp, reading_value) VALUES (hydro_admin.sensor_log_seq.NEXTVAL, (SELECT sensor_id FROM hydro_admin.SENSORS WHERE plant_bed_id = 3 AND sensor_type = 'TEMPERATURE'), TIMESTAMP '2024-03-01 16:00:00', 68.4);
INSERT INTO hydro_admin.SENSOR_LOGS (log_id, sensor_id, timestamp, reading_value) VALUES (hydro_admin.sensor_log_seq.NEXTVAL, (SELECT sensor_id FROM hydro_admin.SENSORS WHERE plant_bed_id = 3 AND sensor_type = 'TEMPERATURE'), TIMESTAMP '2024-03-01 17:00:00', 68.7);

-- Plant Bed 3, Humidity Sensor
INSERT INTO hydro_admin.SENSOR_LOGS (log_id, sensor_id, timestamp, reading_value) VALUES (hydro_admin.sensor_log_seq.NEXTVAL, (SELECT sensor_id FROM hydro_admin.SENSORS WHERE plant_bed_id = 3 AND sensor_type = 'HUMIDITY'), TIMESTAMP '2024-03-01 16:00:00', 69.0);
INSERT INTO hydro_admin.SENSOR_LOGS (log_id, sensor_id, timestamp, reading_value) VALUES (hydro_admin.sensor_log_seq.NEXTVAL, (SELECT sensor_id FROM hydro_admin.SENSORS WHERE plant_bed_id = 3 AND sensor_type = 'HUMIDITY'), TIMESTAMP '2024-03-01 17:00:00', 69.2);
