CREATE VIEW TagsView AS
    (
    SELECT * FROM Category ORDER BY category_id
    )