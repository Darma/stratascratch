/*
MySQL Question ID : 10087

Find all posts which were reacted to with a heart.
 For such posts output all columns from facebook_posts table

Tables
- facebook_reactions
- facebook_posts
*/

/* Solution:*/

SELECT DISTINCT fp.*
FROM facebook_posts fp
INNER JOIN facebook_reactions fr ON fp.post_id = fr.post_id
WHERE fr.reaction = 'heart';