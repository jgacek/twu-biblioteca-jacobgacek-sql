INSERT INTO book (title)
VALUES ("The Pragmatic Programmer");

INSERT INTO member (name)
VALUES ("Jacob Gacek");

INSERT INTO checkout_item (member_id,book_id)
SELECT member.id, book.id
FROM member, book
WHERE member.name = "Jacob Gacek"
AND book.title = "The Pragmatic Programmer";

SELECT member.name
FROM member, checkout_item, book
WHERE member.id = checkout_item.member_id
AND checkout_item.book_id = book.id
AND book.title = "The Pragmatic Programmer";
