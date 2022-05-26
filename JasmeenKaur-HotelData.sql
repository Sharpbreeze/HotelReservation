

use hotelreservation;

-- tables

INSERT INTO amenities (amenityID, `Name`, extraCost) VALUES
(1, "Microwave", 0.00),
(2, "Jacuzzi", 25.00),
(3, "Refrigerator", 0.00),
(4, "Oven", 0.00);


INSERT INTO roomtype (roomTypeID, roomType, standardOcc, maxOcc, basePrice, extraPersonCost) VALUES
(1, "Single", 2, 2, 149.99, 0),
(2, "Double",2, 4, 179.99, 10),
(3, "Suite", 3, 8, 399.99, 20);

 
 INSERT INTO room (roomID, roomNumber, roomTypeID, ADAAccess) VALUES
 (1, 201, 2, 0),
 (2, 202, 2, 1),
 (3, 203, 2, 0),
 (4, 204, 2, 1),
 (5, 205, 1, 0),
 (6, 206, 1, 1),
 (7, 207, 1, 0),
 (8, 208, 1, 1),
 (9, 301, 2, 0),
 (10, 302, 2, 1),
 (11, 303, 2, 0),
 (12, 304, 2, 1),
 (13, 305, 1, 0),
 (14, 306, 1, 1),
 (15, 307, 1, 1),
 (16, 308, 1, 1),
 (17, 401, 3, 1),
 (18, 402, 3, 1);
 
 
 INSERT INTO guestlist (guestID, firstName, lastName, address, city, state, zipCode, phone) VALUES
 (1, "Jasmeen", "Kaur", "13833 92a avenue", "Surrey", "BC", "V3V6Y5", "778-288-4900"),
 (2, "Mack", "Simmer", "379 Old Shore Street", "Council Bluffs", "IA", "51501", "291-553-0508"),
 (3, "Bettyann", "Seery", "750 Wintergreen", "Wasilla", "AK", "99654", "478-277-9632"),
 (4, "Duane", "Cullison", "9662 Foxrun Lane", "Harlingen", "TX", "78552", "308-494-0198"),
 (5, "Karie", "Yang", "9378 W. Augusta Ave.", "West Deptford", "NJ", "08096", "214-730-0298"),
 (6, "Aurore", "Lipton", "762 Wild Rose Street", "Saginaw", "MI", "48601", "377-507-0974"),
 (7, "Zachery", "Luechtefeld", "7 Poplar Dr.", "Arvada", "CO", "80003", "814-485-2615"),
 (8, "Jeremiah", "Pendergrass", "70 Oakwood St.", "Zion", "IL", "60099", "279-491-0960"),
 (9, "Walter", "Holaway", "7556 Arrowhead", "Cumberland", "RI", "02864", "446-396-6785"),
 (10, "Wilfred", "Vise", "77 West Surrey Street", "Oswego", "NY", "13126", "834-727-1001"),
 (11, "Maritza", "Tilton", "939 Linda Rd.", "Burke", "VA", "22015", "446-351-6860"),
 (12, "Joleen", "Tison", "87 Queen Street", "Drexel Hill", "PA", "19026", "231-893-2755");

INSERT INTO roomAmenities (roomID, amenityID) VALUES
(1, 1),
(1, 2),
(2, 3),
(3, 2),
(3, 3),
(4, 3),
(5, 1),
(5, 2),
(5, 3),
(6, 1),
(6, 3),
(7, 1),
(7, 2),
(7,3),
(8, 1),
(8, 3),
(9, 1),
(9,2),
(10, 3),
(11, 1),
(11, 2),
(12, 3),
(13, 1),
(13, 2),
(13, 3),
(14, 1),
(14, 3),
(15, 1),
(15, 2),
(15, 3),
(16, 1),
(16, 3),
(17, 1),
(17,3),
(17, 4),
(18, 1),
(18, 3),
(18, 4);

INSERT INTO reservations (reservationID, guestID, adults, children, startDate, endDate, totalCost) VALUES
(1, 2, 1, 0, "2023-02-02", "2023-02-04", 299.98),
(2, 3, 2, 1, "2023-02-05", "2023-02-10", 999.95),
(3, 4, 2, 0, "2023-02-22", "2023-02-24", 349.98),
(4, 5, 2, 2, "2023-03-06", "2023-03-07", 199.99),
(5, 1, 1, 1, "2023-03-17", "2013-03-20", 524.97),
(6, 6, 3, 0, "2023-03-18", "2023-03-23", 924.95),
(7, 7, 2, 2, "2023-03-29", "2023-03-31", 349.98),
(8, 8, 2, 0, "2023-03-31", "2023-04-05", 874.95),
(9, 9, 1, 0, "2023-04-09", "2023-04-13", 799.96),
(10, 10, 1, 1, "2023-04-23", "2023-04-24", 174.99),
(11, 11, 2, 4, "2023-05-30", "2023-06-02", 1199.97),
(12, 12, 2, 0, "2023-06-10", "2023-06-14", 599.96),
(13, 12, 1, 0, "2023-06-10", "2023-06-14", 599.96),
(14, 6, 3, 0, "2023-06-17", "2023-06-18", 184.99),
(15, 1, 2, 0, "2023-06-28", "2023-07-02", 699.96),
(16, 9, 3, 1, "2023-07-13", "2023-07-14", 186.99),
(17, 10, 4, 2, "2023-07-18", "2023-07-21", 1259.97),
(18, 3, 2, 1, "2023-07-28", "2023-07-29", 199.99),
(19, 3, 1, 0, "2023-08-30", "2023-09-01", 349.98),
(20, 2, 2, 0, "2023-09-16", "2023-09-17", 149.99),
(21, 5, 2, 2, "2023-09-13", "2023-09-15", 399.98),
(22, 4, 2, 2, "2023-11-22", "2023-11-25", 1199.97),
(23, 2, 2, 0, "2023-11-22", "2023-11-25", 449.97),
(24, 2, 2, 2, "2023-11-22", "2023-11-25", 599.97),
(25, 11, 2, 0, "2023-12-24", "2023-12-28", 699.96);

INSERT INTO roomReservations (reservationID, roomID) VALUES
(1, 16),
(2, 3),
(3, 13),
(4, 1),
(5, 15),
(6, 10),
(7, 2),
(9, 9),
(10, 7),
(11, 17),
(12, 6),
(13, 8),
(14, 12),
(15, 5),
(16, 4),
(17, 17),
(18, 11),
(19, 13),
(20, 8),
(21, 3),
(22, 17),
(23, 6),
(24, 9),
(25, 10);

SELECT guestList.guestID, reservations.guestID FROM guestList JOIN reservations ON guestList.guestID = reservations.guestID
 WHERE firstName = "Jeremiah" AND lastName = "Pendergrass";
 DELETE FROM reservations WHERE reservationID = 8;
 DELETE FROM guestList WHERE guestID = 8;
 

SELECT * FROM room;
SELECT * FROM roomtype;
SELECT * FROM amenities;
SELECT * FROM roomAmenities;
SELECT * FROM guestlist;
SELECT * FROM reservations;


 