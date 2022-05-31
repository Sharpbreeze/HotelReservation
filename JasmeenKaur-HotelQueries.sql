SELECT 
	gl.firstName, 
	gl.lastName, 
	rs.startDate, 
	rs.endDate, 
	r.roomNumber 
FROM room r 
INNER JOIN roomReservations rrs 
	ON r.roomID = rrs.roomID
INNER JOIN reservations rs 
	ON rs.reservationID = rrs.reservationID
INNER JOIN guestlist gl 
	ON rs.guestID = gl.guestID
WHERE endDate < "2023-08-01" 
	AND endDate > "2023-06-30"; 

SELECT 
	r.roomNumber,
	CONCAT(rs.startDate, ' - ', rs.endDate) `Date`, 
	CONCAT(gl.firstName, ' ', gl.lastName) `Name`
FROM roomReservations rrs
INNER JOIN roomAmenities ra 
	ON rrs.roomID = ra.roomID
INNER JOIN amenities a 
	ON ra.amenityID = a.amenityID  
INNER JOIN room r 
	ON r.roomID = rrs.roomID
INNER JOIN reservations rs 
	ON rs.reservationID = rrs.reservationID
INNER JOIN guestlist gl 
	ON rs.guestID = gl.guestID
WHERE a.amenityID = 2;

SELECT 
	r.roomNumber, 	
    CONCAT(gl.firstName, ' ', gl.lastName) `Name`, 
	rs.startDate, 
    rs.adults, 
    rs.children 
FROM roomReservations rrs
INNER JOIN room r 
	ON r.roomID = rrs.roomID
INNER JOIN reservations rs 
	ON rs.reservationID = rrs.reservationID
INNER JOIN guestlist gl 
	ON rs.guestID = gl.guestID
WHERE firstName = "Jasmeen" 
	AND lastName = "Kaur";



SELECT 
	r.roomNumber, 
    IFNULL(rs.reservationID,0) AS reservationID,
    IFNULL(rs.totalCost,0.00) AS totalCost
FROM room r
LEFT JOIN roomReservations rrs 
	ON r.roomID = rrs.roomID
LEFT JOIN reservations rs
	ON rrs.reservationID = rs.reservationID
ORDER BY roomNumber;





 

SELECT 
	r.roomNumber
FROM room r
JOIN roomReservations rrs 
	ON rrs.roomID = r.roomID 
JOIN reservations rs 
	ON rrs.reservationID = rs.reservationID
WHERE   
	(rs.adults + rs.children) >= 3
	AND 
  (rs.startDate BETWEEN '2023-04-01' AND '2023-05-01'
    OR
    rs.endDate BETWEEN '2023-04-01' AND '2023-05-01');


SELECT 
	CONCAT(gl.firstName, ' ', gl.lastName) `Name`, 
	COUNT(rs.reservationID) TotalReservations
FROM reservations rs
JOIN guestlist gl 	
	ON rs.guestID = gl.guestID
GROUP BY gl.firstName, gl.lastName
ORDER BY COUNT(rs.reservationID) DESC;
 -- Having COUNT(rs.reservationID); 


SELECT 
	firstName, 
    lastName, 
    address, 
    phone
FROM guestlist
WHERE phone = "308-494-0198";
 