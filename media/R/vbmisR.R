# RETURN PATH FUNCTIONS
# This function returns the full path to a data file on VBMIS
dataurl = function(dataname) {
return(paste("http://www.vbmis.com/code/R/data/",dataname,sep=""))
}

# This function returns the full path to a script file on VBMIS
dataurl = function(scriptname) {
return(paste("http://www.vbmis.com/code/R/",scriptname,sep=""))
}

# MAKE STATE MAP
make_state_map = function(rate_df, breaks) {
# these were the libraries we used
library(maps)
library(ggplot2)
state_df = map_data('state')
state_df$rate_d = numeric(nrow(state_df))
state_df$rate = numeric(nrow(state_df))
for (i in 1:nrow(rate_df)) {
    state_df$rate[state_df$region == rate_df$state[i]] = rate_df$rate[i]

    # Now, we discretize the rate
    state_df$rate_d = cut(state_df$rate, breaks=breaks)

(ggplot(map_data, aes(long, lat, group=group)) +
    geom_polygon(aes(fill=rate_d), colour=alpha('white', 1/2), size=0.2) +
    geom_polygon(data=state_df, colour='white', fill=NA) +
    scale_fill_brewer(pal='PuRd'))
}
}
