SELECT book.title
FROM book
LEFT JOIN checkout_item
ON book.id = checkout_item.book_id
WHERE checkout_item.book_id IS NULL;
SELECT movie.title
FROM movie
LEFT JOIN checkout_item
ON movie.id = checkout_item.movie_id
WHERE checkout_item.movie_id IS NULL;
