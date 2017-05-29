while (<DATA>) {
    chomp;
    if (/^\[(.*)\]$/) {
        $category = $1;
    }
    elsif /^(.*)=(.*)$/) {
        $conf{$category}{$1} = $2;
    }
}

print "conf(File)(file1) : $conf{File}{file1} \n";
print "conf(Internet)(ftp) : $conf{Internet}{ftp} \n";

__DATA__
[File]
perl_root=/usr/bin/
tmp=hoge.txt
file1=aaa
file2=bbb
[Internet]
web=http://aaaa
ftp=ftp://www.google.com