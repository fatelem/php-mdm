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