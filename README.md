# Bilateral Filter

This program applies a bilateral filter to the image.

The resulting pixel is determined by a combination of intensity and spatial location.

Every value in the kernel is given by the following formula:

![\begin{align*}
\color{green}e^{\frac{-((i-x)^{2} + (j-y)^{2})}{(2\sigma_{sp}^{2})} - \frac{(I(i,j) - I(x,y))^{2}}{2\sigma_{in}^{2}}}
\end{align*}
](https://render.githubusercontent.com/render/math?math=%5Cdisplaystyle+%5Cbegin%7Balign%2A%7D%0A%5Ccolor%7Bgreen%7De%5E%7B%5Cfrac%7B-%28%28i-x%29%5E%7B2%7D+%2B+%28j-y%29%5E%7B2%7D%29%7D%7B%282%5Csigma_%7Bsp%7D%5E%7B2%7D%29%7D+-+%5Cfrac%7B%28I%28i%2Cj%29+-+I%28x%2Cy%29%29%5E%7B2%7D%7D%7B2%5Csigma_%7Bin%7D%5E%7B2%7D%7D%7D%0A%5Cend%7Balign%2A%7D%0A)
