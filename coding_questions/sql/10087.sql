/*
MySQL Question ID : 10087
*/
/* Solution:*/

SELECT DISTINCT fp.*
FROM facebook_posts fp
INNER JOIN facebook_reactions fr ON fp.post_id = fr.post_id
WHERE fr.reaction = 'heart';