 <?PHP

// Includes
include("configs/cfg_main.php");
require("libs/Smarty.class.php");

global $smarty;
$smarty = new Smarty;

//$smarty->compile_check = true;
//$smarty->debugging = true;

$smarty->assign("mainpage",$cfg_mainpage);
$smarty->assign("title",$cfg_title);
$smarty->display('header.tpl');

// Include Modules
include("sys/mod2.php");

$modLoad = new modsys();
$modLoad -> modLoader("modules");

$smarty->display('index.tpl');

$smarty->display('footer.tpl');

?> 