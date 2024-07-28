INSERT INTO PRODUCT (ID, NAME, QUANTITY, PRICE_PER_UNIT, ACTIVE, VERSION) VALUES
(2000001, 'chleb', 20, 5, true, 1),
(2000002, 'rohlik', 1, 50, true, 1),
(2000003, 'zelena-mouka', 20, 5, false, 1),
(2000004, 'mouka', 10, 5, true, 1),
(2000005, 'test1', 20, 5, true, 1),
(2000006, 'test2', 20, 5, true, 1),
(2000007, 'concurrent-test3', 50, 5, true, 1),
(2000008, 'invalidation-test4', 10, 5, true, 1);

INSERT INTO CART_ORDER (ID, STATE, CREATED) VALUES
(1000001, 'CREATED', CURRENT_TIMESTAMP),
(1000002, 'CREATED', CURRENT_TIMESTAMP),
(1000003, 'CANCELED', CURRENT_TIMESTAMP),
(1000004, 'CREATED', CURRENT_TIMESTAMP);

INSERT INTO ORDER_ITEM (ORDER_ID, PRODUCT_ID, QUANTITY) VALUES
(1000001, 2000001, 1),
(1000001, 2000002, 1),
(1000001, 2000003, 1),
(1000002, 2000004, 1),
(1000003, 2000003, 1),
(1000004, 2000008, 7);