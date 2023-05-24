SELECT
  activities.uuid,
  users.display_name,
  users.handle,
  activities.message,
  activities.replies_count,
  activities.reposts_count,
  activities.likes_count,
  activities.expires_at,
  activities.created_at,
  (SELECT COALESCE(array_to_json(array_agg(row_to_json(array_row))),'[]'::json) FROM (
  SELECT
    activities.uuid,
    users.display_name,
    users.handle,
    activities.message,
    activities.replies_count,
    activities.reposts_count,
    activities.likes_count,
    activities.reply_to_activity_uuid,
    activities.created_at
  FROM public.activities replies
  LEFT JOIN public.users reply_users ON reply_users.uuid = replies.user_uuid
  WHERE 
    replies.reply_to_activity_uuid = activities.uuid
  ORDER BY  activities.created_at asc
  ) array_row) as replies
FROM public.activities
LEFT JOIN public.users ON users.uuid = activities.user_uuid
ORDER BY activities.created_at DESC