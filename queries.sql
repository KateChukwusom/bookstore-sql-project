 -- Calculate total revenue from book sales
 SELECT SUM(b.price * s.quantity) AS totakl_revenue
 FROM sales s
 JOIN books b ON s.book_id = b.id;
