<?php

class MenuItem
{

 private $target_page;
 private $link_text;
 private $order;
 private $active;
 private $menu;

 public function __toString()
 {
  $aclass = $this->active ? 'active' : 'inactive';
  return "<li class=\"$aclass\"><a href=\"?p=$this->target_page\">$this->link_text</a></li>";
  //return '<li class="' . $aclass . '"><a href="?p=' . $this->target_page . '">' . $this->link_text . '</li>';
 }

 public function RegisterMenu($menu)
 {
  if (gettype($menu) == "object" && get_class($menu) == "Menu") {
   $this->menu = $menu;
  }
 }

 public function setOrder($order)
 {
  if (is_numeric($order)) {
   $this->order = $order;

   if (isset($this->menu) && $this->menu != null) {
    $this->menu->SortItems();
   }

  }
 }
 public function getTarget()
 {
  return $this->target_page;
 }

 public function getOrder()
 {
  return $this->order;
 }

 public function getActive()
 {
  return $this->active;
 }
 public function setActive($active)
 {
  if (is_bool($active)) {
   $this->active = $active;
  }
 }
 public function __construct($target_page, $link_text, $order = 0)
 {

  if (is_numeric($order)) {
   $this->order = $order;
  } else {
   $this->order = 0;
  }
  $this->target_page = $target_page;
  $this->link_text   = $link_text;
  $this->active      = false;
 }

}
