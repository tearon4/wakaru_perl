sub cheer {warn "wakaper!!"}; 

$codeRef = \&cheer;
&$codeRef;
$codeRef->();

print "codeRef: $codeRef \n";
