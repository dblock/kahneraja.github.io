$postlist = Import-Csv titles.csv -Delimiter ~

$template = "---
layout: post
title: {0}
published: True
feature: 

---

";

foreach ($p in $postlist){
    $title = $p.Title;
    $path = $p.Path;
    $value = $template -f $title
    echo $value;	
    New-Item output/$path.md -type file -value $value
} 

