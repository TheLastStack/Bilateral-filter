# Bilateral Filter

This program applies a bilateral filter to the image.

The resulting pixel is determined by a combination of intensity and spatial location.

Every value in the kernel is given by the following formula:
$$
\begin{align*}
e^{\frac{-((i-x)^{2} + (j-y)^{2})}{(2\sigma_{sp}^{2})} - \frac{(I(i,j) - I(x,y))^{2}}{2\sigma_{in}^{2}}}
\end{align*}
$$