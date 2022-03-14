<?php

class MenuModel
{

 public static function getMenuItems($menuName, $pdo)
 {
  // SELECT `text`, page.`name` FROM `menuitem` join page on page.pageId = menuItem.pageId where `menu` = 'main' order by `order`;
  $q = $pdo->prepare("SELECT `text`, page.`name`,`order` FROM `menuitem` join page on page.pageId = menuItem.pageId where `menu` = :menu order by `order`");
  $q->execute(["menu" => $menuName]);

  $menuItems = array();

  while ($row = $q->fetch()) {
   // $target_page, $link_text, $order = 0
   $menuItems[] = new MenuItem($row['name'], $row['text'], $row['order']);
  }

  return $menuItems;

 }

}
