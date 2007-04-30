 <?PHP
/*
php-mdm
Copyright (C) 2006 php-mdm team

This program is free software; you can redistribute it and/or
modify it under the terms of the GNU General Public License
as published by the Free Software Foundation; either version 2
of the License, or (at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program; if not, write to the Free Software
Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301, USA.
*/

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
include("sys/function_mod.php");

$modLoad = new modsys();
$modLoad -> modLoader("modules");

$smarty->display('index.tpl');

$smarty->display('footer.tpl');

?> 