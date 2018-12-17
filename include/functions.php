<?php
function postIndex($index, $value="")
{
	if (!isset($_POST[$index]))	return $value;
	return trim($_POST[$index]);
}
function loadClass($c)
{
	include ROOT."/classes/".$c.".class.php";
}
function getIndex($index, $value="")
{
	if (!isset($_GET[$index]))	return $value;
	return trim($_GET[$index]);
}