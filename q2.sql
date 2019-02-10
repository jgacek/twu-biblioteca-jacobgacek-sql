SELECT COUNT(DISTINCT member.name)
FROM member, checkout_item
WHERE member.id NOT IN(
	SELECT checkout_item.member_id
	FROM checkout_item);
