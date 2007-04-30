<?php

/* create a new object */
$kirupa = new User;

/* call object methods */
$kirupa->setName( 'Kirupa' );

class User {
	private $name;
	
	function setName( $val ) {
		$this->name = $val;
		return;
	}
	
	function getName() {
		return $this->name;
	}
}

// Start Template
$smarty = new Smarty;

//$smarty->compile_check = true;
//$smarty->debugging = true;

$smarty->assign("name",$kirupa->getName());
$smarty->assign("FirstName",array("John","Mary","James","Henry"));
$smarty->assign("LastName",array("Doe","Smith","Johnson","Case"));
$smarty->assign("Class",array(array("A","B","C","D"), array("E", "F", "G", "H"),
	  array("I", "J", "K", "L"), array("M", "N", "O", "P")));

$smarty->assign("contacts", array(array("phone" => "1", "fax" => "2", "cell" => "3"),
	  array("phone" => "555-4444", "fax" => "555-3333", "cell" => "760-1234")));

$smarty->assign("option_values", array("NY","NE","KS","IA","OK","TX"));
$smarty->assign("option_output", array("New York","Nebraska","Kansas","Iowa","Oklahoma","Texas"));
$smarty->assign("option_selected", "NE");

$smarty->display('leftblock.tpl');

?>
