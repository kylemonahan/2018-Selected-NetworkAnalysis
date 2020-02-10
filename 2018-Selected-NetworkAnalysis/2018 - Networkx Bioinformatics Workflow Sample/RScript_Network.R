

library(networkD3)

# Create fake data
src <- c("A", "A", "A", "A",
         "B", "B", "C", "C", "D")
target <- c("B", "C", "D", "J",
            "E", "F", "G", "H", "I")
networkData <- data.frame(src, target)

# Plot
simpleNetwork(networkData)


#Try to bring in external data from SNAP
# http://snap.stanford.edu/data/soc-Epinions1.html

#Other data sources:
# http://kateto.net/2016/05/network-datasets/


data <- read.table("C:\\Users\\user\\Downloads\\soc-Epinions1.txt", sep="\t", header=TRUE)

src2 <- data$FromNodeId 

target2 <- data$ToNodeId

networkData2 <- data.frame(src2, target2)

# Plot the real data
simpleNetwork(networkData2)


#igraph_to_networkD3
# Another example 
# https://github.com/christophergandrud/networkD3/blob/master/inst/examples/examples.R


#On using radialgraphs:
# http://igraph.wikidot.com/community-detection-in-r


# 1. Find the cliques in your igraph object
# 2. Convert the cliques to a membership(cliques) - called m. See here: http://igraph.org/r/doc/communities.html
# 3. Subset the data if needed, see here: https://christophergandrud.github.io/networkD3/
# 4. Finally, use radialNetwork to display https://christophergandrud.github.io/networkD3/#sankey

# To sign up for HPC account: https://it.tufts.edu/hpc