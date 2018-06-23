cd "c:\malaria"
use stidata_unclean
summarize a1age
summarize a1age, detail
tabulate casestatus
list idnumber if casestatus==3
replace casestatus=1 if (idnumber==31|idnumber==1)
duplicates report idnumber
duplicates list idnumber
save stidata_dups.dta
