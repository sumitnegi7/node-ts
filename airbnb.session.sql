-- @block
CREATE TABLE Users(
    id INT PRIMARY KEY AUTO_INCREMENT,
    email VARCHAR(255) NOT NULL UNIQUE,
    bio TEXT,
    country VARCHAR(2)
);


CREATE TABLE Rooms (
    id INT AUTO_INCREMENT,
    street VARCHAR(255),
    owner_id INT NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY(owner_id) REFERENCES Users(id)
);

CREATE TABLE Bookings (
    id INT AUTO_INCREMENT,
    guest_id INT NOT NULL,
    room_id INT NOT NULL,
    check_in DATETIME,
    PRIMARY KEY (id),
    FOREIGN KEY(guest_id) REFERENCES Users(id),
    FOREIGN KEY(room_id) REFERENCES Rooms(id)
);

INSERT INTO Bookings (id, guest_id, room_id, check_in)
VALUES(1,1,1,'2022-06-18 12:10:32');


-- @block
INSERT INTO Users (email, bio, country)
VALUES(
    'e1@email.com',
    'simple d',
    'IN'
),
(
    'e2@email.com',
    'simple d',
    'IN'
);

INSERT INTO Rooms (owner_id, street)
VALUES
(1,'nainital'),
(1,'delhi'),
(1,'gurugram'),
(1,'pune');


INSERT INTO Rooms (owner_id,street) VALUES (2,'ll');
-- @block

SELECT * FROM Users ORDER BY id DESC LIMIT 2;

SELECT * FROM Users WHERE email='e2@email.com';

CREATE INDEX email_index ON Users(email);

SELECT * FROM Rooms;

SELECT Users.id AS user_id, Rooms.id as room_id,email,street FROM Users LEFT JOIN Rooms ON Rooms.owner_id = Users.id;

SELECT * FROM Bookings INNER JOIN Rooms ON Rooms.owner_id = guest_id
WHERE guest_id=1;


SELECT * FROM Bookings;

SELECT * FROM Rooms;