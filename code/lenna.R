install.packages("redR")
library(redR)
data(lenna)
im <- lenna
y <- degrade(im, noise = 0.05)
par(mar = c(0, 0, 0, 0) + 0.1)
plot(y, interp = FALSE, axes = FALSE)

library(png)
library(jpeg)
library(bmp)
library(IM)
# create an object of class "Image"
data(lena)
obj = new("Image",img=img)
# display image
displayImg(obj@I)
