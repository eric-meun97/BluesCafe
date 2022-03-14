<?php

class Menu
{
// members
 // properties
 private $name;
 private $menuItems = array();
 private $current_page;

 // methods

 public function __construct($name, $current)
 {
  $this->name         = str_replace(' ', '', strtolower(trim($name)));
  $this->current_page = $current;
 }

 public function AddItem($menuItem)
 {
  if (gettype($menuItem) == "object" && get_class($menuItem) == "MenuItem") {
   //echo "is a menuItem";
   if ($menuItem->getTarget() == $this->current_page) {
    $menuItem->setActive(true);
   }
   array_push($this->menuItems, $menuItem);
   $this->SortItems();
  }
 }

 public function AddItems($items)
 {
  foreach ($items as $item) {
   $this->AddItem($item);
  }
 }

 public function SortItems()
 {
  usort($this->menuItems, function ($a, $b) {
   $a_o = $a->getOrder();
   $b_o = $b->getOrder();
   if ($a_o == $b_o) {
    return 0;
   }
   return $a_o < $b_o ? -1 : 1;
  });
 }

 public function __toString()
 {
  $t_html = '<nav id="menu" class="' . $this->name . '"><ul>';
  foreach ($this->menuItems as $item) {
   $t_html .= $item;
  }

  $t_html .= "</ul></nav>";
  return $t_html;
 }

}
