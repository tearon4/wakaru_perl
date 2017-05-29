# %month = (
#     'January'   =>  1,    
#     'February'  =>  2,       
#     'March'     =>  3,
#     'April'     =>  4,      
#     'May'       =>  5,            
#     'June'      =>  6,
#     'July'      =>  7,       
#     'August'    =>  8,         
#     'September' =>  9,
#     'October'   =>  10,    
#     'November'  =>  11,        
#     'December'  =>  12,
# ); 
# $ref_month = \%month;


# 無名ハッシュを使う
$ref_month = {
    'January'   =>  1,    
    'February'  =>  2,       
    'March'     =>  3,
    'April'     =>  4,      
    'May'       =>  5,            
    'June'      =>  6,
    'July'      =>  7,       
    'August'    =>  8,         
    'September' =>  9,
    'October'   =>  10,    
    'November'  =>  11,        
    'December'  =>  12,
}; 


print "ref to month hash : $ref_month \n";

@sorted_key = sort keys %$ref_month;
print "sorted key : @sorted_key \n";

print "January is Month No. $$ref_month{January} \n";
print "May is Month No. $ref_month->{May} \n";

# HashSliceの実験
for (@{$ref_month}{'April','July','October'}) {
    print "$_ \n";
}
