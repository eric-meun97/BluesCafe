<?php
require_once './inc/config.php';

require_once './inc/model/menu.php';
require_once './inc/model/page.php';

require_once './inc/components/menu.php';
require_once './inc/components/menu-item.php';

$config = new Config();

$menuItemsForMain = MenuModel::getMenuItems('main', $config->getPDO());
$mainMenu         = new Menu("main", $config->getPage());

$mainMenu->AddItems($menuItemsForMain);

// $menuItem1 = new MenuItem("sdfsdf", "a link", 3);
// $menuItem2 = new MenuItem("sdfsdf1", "a link 2");
// $mainMenu->AddItem($menuItem1);
// $mainMenu->AddItem($menuItem2);

$page_data = Page::getPageIfExists($config->getPage(), $config->getPDO());

?>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Blues Cafe Website</title>
    <link rel="stylesheet" href="./css/style.css" />
</head>
<body>
<?php
echo $mainMenu;
echo "<hr>";

if ($page_data === null) {
 echo "<h2>Page: {$config->getPage()} not found</h2>";
} else {
 echo "<h1>{$page_data['title']}</h1>";
 echo "<main>{$page_data['content']}</main>";
}

?>
</body>
</html>
