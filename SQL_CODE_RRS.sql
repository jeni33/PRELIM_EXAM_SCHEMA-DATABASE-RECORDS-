--Select all reservations with a party size greater than 50.

SELECT *
FROM reservations
WHERE party_size > 50;


--Select a list of reservations along with the customer names and the table numbers they are assigned to.
SELECT 
    Reservations.reservation_id, 
    Customers.name AS customer_name, 
    Tables.table_number, 
    Reservations.reservation_time
FROM Reservations
JOIN Customers ON Reservations.customer_id = Customers.customer_id
JOIN Tables ON Reservations.table_id = Tables.table_id;


--Select the total quantity of each menu item ordered.
SELECT Menuitems.item_name, SUM(Orders.quantity) AS total_quantity
FROM Orders
JOIN menuitems ON Orders.menu_item_id = Menuitems.menu_item_id
GROUP BY Menuitems.item_name;
