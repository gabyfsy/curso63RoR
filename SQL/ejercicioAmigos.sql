SELECT * FROM users;
select * from friendships;

-- Escribe una consulta SQL que devuelva una lista de usuarios junto con los nombres de sus amigos.

SELECT users.first_name, users.last_name, user2.first_name, user2.last_name
FROM users 
INNER JOIN friendships ON friendships.user_id = users.id
INNER JOIN users as user2 ON user2.id = friendships.friend_id
;
-- Devuelva a todos los usuarios que son amigos de Kermit, asegúrese de que sus nombres se muestren en los resultados.

SELECT concat(user2.first_name, " ",user2.last_name) as Usuario, concat(users.first_name," ",users.last_name) as Amigos
FROM users 
INNER JOIN friendships ON friendships.user_id = users.id
INNER JOIN users as user2 ON user2.id = friendships.friend_id
where user2.id = 4
;

-- Devuelve el recuento de todas las amistades.


