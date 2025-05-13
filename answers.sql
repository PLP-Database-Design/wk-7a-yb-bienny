-- Transformed table into 1NF
SELECT 101 AS OrderID, 'John Doe' AS CustomerName, 'Laptop' AS Product
UNION ALL
SELECT 101, 'John Doe', 'Mouse'
UNION ALL
SELECT 102, 'Jane Smith', 'Tablet'
UNION ALL
SELECT 102, 'Jane Smith', 'Keyboard'
UNION ALL
SELECT 102, 'Jane Smith', 'Mouse'
UNION ALL
SELECT 103, 'Emily Clark', 'Phone';



-- Table 1: Orders (removes partial dependency)
SELECT DISTINCT OrderID, CustomerName
FROM OrderDetails;

-- Table 2: OrderItems (each row depends fully on the composite key)
SELECT OrderID, Product, Quantity
FROM OrderDetails;
