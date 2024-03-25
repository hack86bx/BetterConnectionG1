# on selectionne tous les champs de la table category
select * from `category`;
 
 # on selectionne tous les champs de la table news 
 select * from `news`;
 
 # on selectionne tous les champs de la table user 
 select * from `user`;
 
 # on selectionne tous les champs de la table news_has_category
 #(news_idnews,category_idcategory) avec (2,4)
 select * from `news_has_category`;
 
 #on insert dans la table news_has_category
 INSERT INTO `news_has_category`
 (`news_idnews`,`category_idcategory`)
 VALUES (2,4); #erreur car paire de clefs existante
 
 # on selectionne les champs login et thename de la table user 
 SELECT `login`,`thename` from `user`;
 
 # on selectionne les champs idcategory, title et slug de la table category ordonné par slug ascendant 
 select `idcategory`,`title`,`slug`
 from `category`
 order by `slug` asc;
 
 #on selectionne les champs  title, date_created de la table news ainsi que le login et thename de la table user, uniquement lorsque une news a un utilisateur
 select `news`.`title`,`news`.`date_created`,`user`.`login`,`user`.`thename`
 from `news`
 inner join `user`
 on `news`.`user_iduser`=`user`.`iduser`


# on selectionne les champs title date_created de la table news ainsi que le login et thename de la table user, uniquement lorsque une news a un utilisateur on recupere egalement les category.title et category.slug si la news a des categories on affiche la news si elle n a pas de categorie

select n.`title`, n.`date_created`,
u.`login`,u.`thename`,
c.`title` as categ_title, c.`slug`
from `news` n
inner join `user` u
on n.`user_iduser` = u.`iduser`
left join `news_has_category` h
on h.`news_idnews` = n.`idnews`
left join `category` c
on h.`category_idcategory` = c.`idcategory`;
