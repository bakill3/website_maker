<?php
while ($info_css = mysqli_fetch_array($css_query)) {
	$scroll_tag = $info_css['scroll_tag'];
	$css = $info_css['css'];
	echo "$scroll_tag {
		$css
	}";
}
?>