# this file is to gather a bunch of basic code that is always useful
# started 20 nov 20 by KT

#### reordering levels of a factor in a dataframe
# two options
# option 1
df$site<-factor(df$site, levels = c("27","30","32","40","6","34","35","8","12","5","37","15"))  # I like this way as it hard codes in the right order as opposed to the below option
# option 2
df$level<-factor(df$pressure.group, levels(factor(df$pressure.group))[c(3,1,2)]) # this one uses the current order position instead of using the real value


#### Adding data to a df based off of values that match between the two dataframes
# so you want to add the publication names to df1 from df2. But you need to make sure that the match the right site name so you use the match function to tell it how to put in the data
df1$pub.site <- df2$pub.name[match(df1$site, df2$site)]

####change column names
colnames(df)<-c("tile.id", "recruit_y.n.", "r.num_tile")

#### get rid of a column
#option 1
df$"X.4" <- NULL

# option 2
df <- df[,-1] #this would get rid of the first column. the - before it makes it so it will go away
