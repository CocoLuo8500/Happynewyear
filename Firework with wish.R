setwd("~/Downloads/Penn Projects/R")
library(ggplot2)

# First firework
f1 = 1:60            
size1 = 2            
f1_center = c(-4,20) 

firework1 = data.frame(x1 = rep(f1_center[1], length(f1)) 
                     , x2 = size1*cos(f1)  + f1_center[1]
                     , y1 = rep(f1_center[2], length(f1))
                     , y2 = size1*sin(f1) + f1_center[2]
) 

# Second firework
f2 = 1:90
size2 = 3
f2_center = c(2,8)
firework2 = data.frame(x1 = rep(f2_center[1], length(f2)) 
                     , x2 = size2*cos(f2)  + f2_center[1]
                     , y1 = rep(f2_center[2], length(f2))
                     , y2 = size2*sin(f2) + f2_center[2]
) 

# Third firework
f3 = 1:80
size3 = 4
f3_center = c(-1,14)
firework3 = data.frame(x1 = rep(f3_center[1], length(t3)) 
                     , x2 = size3*cos(f3)  + f3_center[1]
                     , y1 = rep(f3_center[2], length(f3))
                     , y2 = size3*sin(f3) + f3_center[2]
) 

# Fourth firework
f4 = 1:55
size4 = 4
f4_center = c(4,20)
firework4 = data.frame(x1 = rep(f4_center[1], length(f4)) 
                     , x2 = size4*cos(f4)  + f4_center[1]
                     , y1 = rep(f4_center[2], length(f4))
                     , y2 = size4*sin(f4) + f4_center[2]
) 

# Fifth firework
f5 = 1:70         
size5 = 4.5         
f5_center = c(-2,4) 

firework5 = data.frame(x1 = rep(f5_center[1], length(f5)) 
                       , x2 = size1*cos(f5)  + f5_center[1]
                       , y1 = rep(f5_center[2], length(f5))
                       , y2 = size1*sin(f5) + f5_center[2]
) 

# Sixth firework
f6 = 1:70
size6 = 2
f6_center = c(4,-1)
firework6 = data.frame(x1 = rep(f6_center[1], length(f6)) 
                       , x2 = size4*cos(f6)  + f6_center[1]
                       , y1 = rep(f6_center[2], length(f6))
                       , y2 = size4*sin(f6) + f6_center[2]
) 

# Plot fireworks
ggplot() + theme(panel.background = element_rect(fill = '#121111', colour = '#121111'), panel.grid.major = element_blank(), panel.grid.minor = element_blank(),axis.line=element_blank(),axis.text.x=element_blank(),axis.text.y=element_blank(),axis.ticks=element_blank(),axis.title.x=element_blank(),axis.title.y=element_blank(),legend.position="left") + 
  # first firework
  geom_point(aes(x = x1, y = y1), data = firework1, shape = 8, colour = '#6fb398')+ geom_curve(aes(x = x1, y = y1, xend = x2, yend = y2 ), curvature = 0.2, data = firework1, colour = '#6fb398') +
  # second firework
  geom_point(aes(x = x1, y = y1), data = firework2, shape = 6, colour = '#4ea1d9')+ geom_curve(aes(x = x1, y = y1, xend = x2, yend = y2), curvature = 0.3, data = firework2, colour = '#4ea1d9') + 
  # third firework
  geom_point(aes(x = x2, y = y2), data = firework3, shape = 4, colour ='#d498a7')+ geom_curve(aes(x = x1, y = y1, xend = x2, yend = y2 ), curvature = 0.3, data = firework3, colour = '#d498a7') + 
  # fouth firework
  geom_point(aes(x = x1, y = y1), data = firework4, shape = 6, colour = '#e0ab2f')+ geom_curve(aes(x = x1, y = y1, xend = x2, yend = y2 ), curvature = 0.1, data = firework4, colour = '#e0ab2f') +
  # fifth firework
  geom_point(aes(x = x1, y = y1), data = firework5, shape = 2, colour = '#bd746d')+ geom_curve(aes(x = x1, y = y1, xend = x2, yend = y2 ), curvature = 0.1, data = firework5, colour = '#bd746d') + 
  # sixth firework
  geom_point(aes(x = x2, y = y2), data = firework6, shape = 3, colour = '#b193c7')+ geom_curve(aes(x = x1, y = y1, xend = x2, yend = y2 ), curvature = 0.3, data = firework6, colour = '#b193c7') + 
   # add notes
  labs(title = "Happy New Year!",
           subtitle = "Let's make it ours",
           caption = "CL")+
  theme(
    plot.title = element_text(hjust = 0.5, size = 18, face = 'bold'),   
    plot.subtitle = element_text(hjust = 0.5),         
    plot.caption = element_text(hjust = 1, face = "italic")
  )

#+ geom_curve(aes(x = 0, y = -7, xend = f1_center[1], yend = f1_center[4] ), curvature = 0.8, colour = '#f5f2f2    
#geom_curve(aes(x = 0, y = -7, xend = f2_center[1], yend = f2_center[4] ), curvature = -0.3, colour = '#f5f2f2
#geom_curve(aes(x = 0, y = -7, xend = f3_center[1], yend = f3_center[4] ), curvature = -0.8, colour = '#f5f2f2') + 