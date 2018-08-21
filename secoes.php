<?php
$info_css_1 = mysqli_fetch_assoc($css_main);
$css_main = $info_css_1['css_extra'];
echo $css_main;
while ($info_css = mysqli_fetch_array($css_query)) {
	$scroll_tag = $info_css['scroll_tag'];
	$css = $info_css['css'];
	echo "$scroll_tag {
		$css
	}";
}
?>