<?php
/**
 *  Uninstall Script
 *
 * You may not change or alter any portion of this comment or credits
 * of supporting developers from this source code or any supporting source code
 * which is considered copyrighted (c) material of the original comment or credit authors.
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
 *
 * @package   ::    xdonations
 * @subpackage:: admin
 * @author    ::     zyspec (owners@zyspec.com)
 * @license   ::    {@link http://www.gnu.org/licenses/gpl-2.0.html GNU Public License}
 * @since     ::      File available since version 1.96
 */

include_once XOOPS_ROOT_PATH . '/include/cp_functions.php';
$moduleDirName = basename(dirname(__DIR__));
global $xoopsConfig;

xoops_loadLanguage('main', $moduleDirName);

// Delete the ipn log file if it exists
$lpFile = XOOPS_UPLOAD_PATH . '/xdonations_ipn.log';
if (file_exists($lpFile)) {
    unlink($lpFile);
}
