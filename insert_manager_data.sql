BEGIN
    hydro_admin.customer_mgmt_pkg.register_customer('Alice', 'Smith', 'alice.smith@example.com', '555-1234', '123 Maple St, Springfield');
    hydro_admin.customer_mgmt_pkg.register_customer('Bob', 'Johnson', 'bob.johnson@example.com', '555-5678', '456 Oak Rd, Greenville');
    hydro_admin.customer_mgmt_pkg.register_customer('Carol', 'Davis', 'carol.davis@example.com', '555-9876', '789 Pine Ln, Hilltown');
    hydro_admin.customer_mgmt_pkg.register_customer('David', 'Brown', 'david.brown@example.com', '555-2468', '321 Elm Ave, Lakeside');
    hydro_admin.customer_mgmt_pkg.register_customer('Eve', 'Wilson', 'eve.wilson@example.com', '555-1357', '654 Cedar Ct, Riverdale');
    hydro_admin.customer_mgmt_pkg.register_customer('Frank', 'Taylor', 'frank.taylor@example.com', '555-7890', '321 Birch Blvd, Woodhaven');
    hydro_admin.customer_mgmt_pkg.register_customer('Grace', 'Harris', 'grace.harris@example.com', '555-4321', '654 Spruce St, Valleyview');
    hydro_admin.customer_mgmt_pkg.register_customer('Henry', 'Lee', 'henry.lee@example.com', '555-5670', '987 Aspen Dr, Meadowlands');
    hydro_admin.customer_mgmt_pkg.register_customer('Ivy', 'Hall', 'ivy.hall@example.com', '555-9087', '123 Oak Ave, Greenfield');
    hydro_admin.customer_mgmt_pkg.register_customer('Jack', 'White', 'jack.white@example.com', '555-6543', '456 Willow Rd, Brookfield');
    hydro_admin.customer_mgmt_pkg.register_customer('Kara', 'Moore', 'kara.moore@example.com', '555-0987', '789 Pine Blvd, Hillside');
    hydro_admin.customer_mgmt_pkg.register_customer('Liam', 'Scott', 'liam.scott@example.com', '555-2460', '321 Cedar Ct, Riverstone');
    hydro_admin.customer_mgmt_pkg.register_customer('Mia', 'Adams', 'mia.adams@example.com', '555-1350', '654 Maple Ln, Ridgewood');
    hydro_admin.customer_mgmt_pkg.register_customer('Noah', 'Clark', 'noah.clark@example.com', '555-9870', '987 Birch Dr, Rockwell');
    hydro_admin.customer_mgmt_pkg.register_customer('Olivia', 'Lewis', 'olivia.lewis@example.com', '555-4320', '123 Elm St, Silverlake');
END;
/

select * from customers;
