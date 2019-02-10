SELECT member.name
FROM member
WHERE member.id IN(
	SELECT member_id
	FROM checkout_item
	GROUP BY checkout_item.member_id
	HAVING Count(*) >= 2
	);
