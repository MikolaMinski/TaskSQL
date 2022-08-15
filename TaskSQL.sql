

BEGIN TRAN 

CREATE TABLE #Customers
(
	Id         INT,
	[Name]     NVARCHAR(255)
)

CREATE TABLE #Orders
(
	Id             INT,
	CustomerId     INT
)

INSERT INTO #Customers
  (
    Id,
    NAME
  )
VALUES
  (
    1,
    'Max'
  )

INSERT INTO #Customers
  (
    Id,
    NAME
  )
VALUES
  (
    2,
    'Pavel'
  )

INSERT INTO #Customers
  (
    Id,
    NAME
  )
VALUES
  (
    3,
    'Ivan'
  )

INSERT INTO #Customers
  (
    Id,
    NAME
  )
VALUES
  (
    4,
    'Leonid'
  )

INSERT INTO #Orders
  (
    Id,
    CustomerId
  )
VALUES
  (
    1,
    2
  )

INSERT INTO #Orders
  (
    Id,
    CustomerId
  )
VALUES
  (
    2,
    4
  )

SELECT 
       c.Name      Customers
FROM   #Customers c
       LEFT JOIN #Orders o
            ON  o.CustomerId = c.Id
WHERE  
       o.Id IS  NULL



DROP TABLE #Customers
DROP TABLE #Orders


COMMIT