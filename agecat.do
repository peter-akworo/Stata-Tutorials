cd "c:\malaria"
use stidata_unclean
summarize a1age
summarize a1age, detail
tabulate casestatus
list idnumber if casestatus==3
replace casestatus=1 if (idnumber==31|idnumber==1)
duplicates report idnumber
duplicates list idnumber
drop if idnumber==51 & a1age==23
gen agecat=""
replace agecat = "< 25" if (a1age >0) & (a1age <=24)
replace agecat = "25 to 34" if (a1age >=25) & (a1age <=34)
replace agecat = "35 to 44" if (a1age >=35) & (a1age <=44) 
replace agecat = "45 to 54" if (a1age >=45) & (a1age <=54)
replace agecat = "55 to 64" if (a1age >=55) & (a1age <=63)
replace agecat = "1" if agecat== "< 25"
replace agecat = "2" if agecat== "25 to 34"
replace agecat = "3" if agecat== "35 to 44"
replace agecat = "4" if agecat== "45 to 54"
replace agecat = "5" if agecat== "55 to 64"
encode agecat, gen(agecat_num)
