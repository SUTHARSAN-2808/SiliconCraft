

module typedef_enum;
  
  
  typedef enum {MONDAY, TUESDAY, WEDNESDAY, THURSDAY, FRIDAY, SATURDAY, SUNDAY }week_e;
  week_e day; 
    
  initial begin

    $display("\n//days = {\n MONDAY,\n TUESDAY,\n WEDNESDAY,\n THURSDAY,\n FRIDAY,\n SATURDAY,\n SUNDAY\n }");
    day = day.first();
    $display("\nfirst day name = %0s  and its value is = %0d",day,day);

    day = day.last();  
    $display("\nlast day name = %0s  and its value is = %0d",day,day);

    day = WEDNESDAY; 
    day = day.next();
    $display("\nnext day name after wednesday  = %0s  and its value is = %0d",day,day);

    day = THURSDAY;
    day = day.prev();  
    $display("\nprevious day name befor thursday  = %0s  and its value is = %0d",day,day);

    $display("\ncurrent day name = %0s  and its value is = %0d",day.name(),day);

    $display("\ntotal number of days in week type is = %0d\n",day.num());
 
  end
endmodule : typedef_enum
