# Happynewyear
#Happy New Year in R
# Set WD
setwd("~/Downloads/Penn Projects/R")
library(ggplot2)
rm(list = ls())

# First firework
t1 = 1:30           
size1 = 2           
r1_center = c(-4,10) # end center

rocket1 = data.frame(x1 = rep(r1_center[1], length(t1)) 
                     , x2 = size1*cos(t1)  + r1_center[1]
                     , y1 = rep(r1_center[2], length(t1))
                     , y2 = size1*sin(t1) + r1_center[2]
) 

# Second firework
t2 = 1:44
size2 = 3
r2_center = c(3,12)
rocket2 = data.frame(x1 = rep(r2_center[1], length(t2)) 
                     , x2 = size2*cos(t2)  + r2_center[1]
                     , y1 = rep(r2_center[2], length(t2))
                     , y2 = size2*sin(t2) + r2_center[2]
) 


# Third firework
t3 = 1:44
size3 = 4
r3_center = c(-2,17)
rocket3 = data.frame(x1 = rep(r3_center[1], length(t3)) 
                     , x2 = size3*cos(t3)  + r3_center[1]
                     , y1 = rep(r3_center[2], length(t3))
                     , y2 = size3*sin(t3) + r3_center[2]
) 

# Fourth firework
t4 = 1:44
size4 = 4
r4_center = c(4,20)
rocket4 = data.frame(x1 = rep(r4_center[1], length(t4)) 
                     , x2 = size4*cos(t4)  + r4_center[1]
                     , y1 = rep(r4_center[2], length(t4))
                     , y2 = size4*sin(t4) + r4_center[2]
) 


# Plot fireworks
ggplot() + theme(panel.background = element_rect(fill = '#121111', colour = '#121111'), panel.grid.major = element_blank(), panel.grid.minor = element_blank(),axis.line=element_blank(),axis.text.x=element_blank(),axis.text.y=element_blank(),axis.ticks=element_blank(),axis.title.x=element_blank(),axis.title.y=element_blank(),legend.position="none") + 
  # first firework
  geom_point(aes(x = x2, y = y2), data = rocket1, shape = 4, colour = '#1b78b3')+ geom_curve(aes(x = x1, y = y1, xend = x2, yend = y2 ), curvature = 0.1, data = rocket1, colour = '#1b78b3') + geom_curve(aes(x = 0, y = -7, xend = r1_center[1], yend = r1_center[2] ), curvature = 0.1, colour = '#f5f2f2') +
  # second firework
  geom_point(aes(x = x2, y = y2), data = rocket2, shape = 4, colour = '#5da376')+ geom_curve(aes(x = x1, y = y1, xend = x2, yend = y2), curvature = 0.1, data = rocket2, colour = '#5da376') + geom_curve(aes(x = 0, y = -7, xend = r2_center[1], yend = r2_center[2] ), curvature = -0.3, colour = '#f5f2f2') + 
  # third firework
  geom_point(aes(x = x2, y = y2), data = rocket3, shape = 4, 
             colour ='#d498a7')+ geom_curve(aes(x = x1, y = y1, xend = x2, yend = y2 ), curvature = 0.1, data = rocket3, colour = '#d498a7') + geom_curve(aes(x = 0, y = -7, xend = r3_center[1], yend = r3_center[2] ), curvature = 0.1, colour = '#f5f2f2') + 
  # fouth firework
  geom_point(aes(x = x1, y = y1), data = rocket4, shape = 8, colour = '#e38c1b')+ geom_curve(aes(x = x1, y = y1, xend = x2, yend = y2 ), curvature = 0.1, data = rocket4, colour = '#e38c1b') + geom_curve(aes(x = 0, y = -5, xend = r4_center[9], yend = r4_center[2] ), curvature = -0.4, colour = '#f5f2f2') + 
  # title
  ggtitle('Happy New Year! Let`s make it ours.') 
