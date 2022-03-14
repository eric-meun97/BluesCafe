<?php

class Page
{

 public static function getPageIfExists($page, $pdo)
 {
  $q = $pdo->prepare("SELECT `title`,`name`,`content`,`footer` FROM `page` WHERE `name` = :page;");
  $q->execute(["page" => $page]);

  if ($row = $q->fetch()) {
   return $row;
  }
  return null;
 }

}
