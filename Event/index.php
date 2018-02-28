<?php
function loadFile($xml, $xsl)
{
$xmlDoc = new DOMDocument();
$xmlDoc->load($xml);

$xslDoc = new DOMDocument();
$xslDoc->load($xsl);

$proc = new XSLTProcessor();
$proc->importStyleSheet($xslDoc);
echo $proc->transformToXML($xmlDoc);
}

loadFile("Event.xml", "Event.xsl");
?>