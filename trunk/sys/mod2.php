<?PHP

// Main Class for Module Systems
class modSys{

	// Main Module Control Class
	function modLoader($dir) {
		if (is_dir($dir) && $dh = opendir($dir)) {
			$listing = array();
			while (($file = readdir($dh)) !== false) {
				if ($file == '.' || $file == '..') {
					continue;
				}
				$listing[] = $file;
			}
			closedir($dh);
			sort($listing);
			global $exts;
			foreach ($listing as $file) {
				$filename = $dir . '/' . $file;
				$type = filetype($filename);
				if ($type == 'dir') {
					$dircheck = new modsys();
					$dircheck -> modLoader($filename);
				}
				//if (preg_match("/\." . $exts . "$/", $file)) {
				//	extractStrings($filename);
				//}
				if ($type != 'dir') {
					$extcheck = pathinfo($filename, PATHINFO_EXTENSION);
					//echo $extcheck; // Test check
					if ($extcheck == 'mod') {
						include($filename);
					}
				}
			}
		}
	}

}

?> 