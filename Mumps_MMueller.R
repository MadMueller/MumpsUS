d<-Mumps
dim(d)
names(d)
class(d)

unique(d$V3) #all Mumps

unique(d$V14) #some cummulative, some noncummulative

unique(d$V6) #all USA
unique(d$V7)

locs<-unique(d[,c("V6","V7")])
locs

locs2<-unique(d[,c("V8","V9")])
locs2<-locs2[order(locs2$V8,locs2$V9),]
locs2 #All 50 states plus American Samoa, District of COlumbia, Guam, Northern Mariana Islands, Puerto Rico, and Virgin Islands

head(d[d$V14==1 & d$V8=="KANSAS",],100)
tail(d[d$V14==0 & d$V8=="KANSAS",],20)

unique(d$V15) #kind of pointless, just 0-130, not helpful when it comes to comparisons with vaccination frequency which is split by age...
unique(d$V17) #Place of Aquisition - only NA
unique(d$V18) #Diagnosis Certainty - only NA
unique(d$V19) #Source Name - Only US Nationally Notifiable Disease Surveillance System
unique(d$V5) #Fatalities - none
unique(d$V4) #Pathogen Taxon ID - only 11161

#Trying to rename columns so they are more descriptive than just numbers
