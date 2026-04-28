CREATE OR REPLACE FUNCTION check_stock()
RETURNS TRIGGER AS $$
DECLARE
    available_stock INT;
BEGIN
    SELECT stock_qty INTO available_stock
    FROM Tbl_Products
    WHERE prod_id = NEW.prod_id;

    IF NEW.qty > available_stock THEN
        RAISE EXCEPTION 'Order quantity exceeds available stock';
    END IF;

    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER trg_check_stock
BEFORE INSERT ON Tbl_Orders
FOR EACH ROW
EXECUTE FUNCTION check_stock();

INSERT INTO Tbl_Orders VALUES
(9003, 501, 103, '2026-04-28', 20);

