#import the data
d<-read.csv(file="./Data/Mumps.csv",stringsAsFactors=FALSE) #always use read.csv or read.table or some similar command to bring data in
dim(d)
names(d)
class(d)

#check some simple tthings
unique(d$PathogenName) #all Mumps
unique(d$PartOfCumulativeCountSeries) #some cummulative, some noncummulative
unique(d$CountryName) #all USA
unique(d$CountryISO)
locs<-unique(d[,c("CountryName","CountryISO")])
locs
locs2<-unique(d[,c("Admin1Name","Admin1ISO")])
locs2
locs2<-locs2[order(locs2$Admin1Name,locs2$Admin1ISO),]
locs2 #All 50 states plus American Samoa, District of COlumbia, Guam, 
#Northern Mariana Islands, Puerto Rico, and Virgin Islands
dim(locs2)

head(d[d$PartOfCumulativeCountSeries==1 & d$Admin1Name=="KANSAS",],5)
tail(d[d$PartOfCumulativeCountSeries==0 & d$Admin1Name=="KANSAS",],5)

unique(d$AgeRange) #kind of pointless, just 0-130, not helpful when it comes to comparisons with vaccination frequency which is split by age...
unique(d$PlaceOfAcquisition) #Place of Aquisition - only NA
unique(d$DiagnosisCertainty) #Diagnosis Certainty - only NA
unique(d$SourceName) #Source Name - Only US Nationally Notifiable Disease Surveillance System
unique(d$Fatalities) #Fatalities - none
unique(d$PathogenName) #only mumps
unique(d$PathogenTaxonID) #Pathogen Taxon ID - only 11161

#keep only the non-cummulative?
d<-d[d$PartOfCumulativeCountSeries==0,]
dim(d)
