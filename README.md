<p align="center">
  <a href="https://example.com/">
    <img src="https://www.ugto.mx/images/escudo-guia-imagen.png" width=88 height=70 alt="linkedin"> <img src="https://github.com/Almanza-Conejo/imagesRepo/blob/main/almCon.png" alt="Almanza-Conejo" width=300 height=70>
  </a>
  <p align="center">
    <br>
    M.E. Almanza-Conejo</h2>
    <br>
    <a href="https://www.linkedin.com/in/oalmanzaconejo/" rel="nofollow noreferrer">
    <img src="https://i.stack.imgur.com/gVE0j.png" alt="linkedin"> LinkedIn
    </a> &nbsp; 
    <a href="https://www.researchgate.net/profile/Oscar-Almanza-Conejo" rel="nofollow noreferrer">
    <img src="https://user-images.githubusercontent.com/54937357/126514422-ba0e7de1-cbc2-4186-94d9-39e8a22c1c78.png" width="14" height="14" alt="ResearchGate"> ResearchGate
    </a> &nbsp;
    <a href="https://medium.com/@almanzaConejo" rel="nofollow noreferrer">
    <img src="https://raw.githubusercontent.com/Medium/medium-logos/master/03_Symbol/01_Black/PNG/RGB/Medium-Symbol-Black-RGB%401x.png" width="17" height="17" alt="linkedin"> Medium
  </a>
  </p>
</p>

# REGEEG

This is a copy example of our research proposal REGEEG. The code is written by M. E. Oscar Almanza-Conejo, PhD. Juan-Gabriel Avina-Cervantes, PhD. Arturo Garcia-Perez, and PhD. Mario-Alberto Ibarra-Manzano. The main code is stored on our code folder and it is not allowed to be shared or used for commercial purposes.
If you want to know more about this implementation, please see our published framework "REGEEG: A Regression-based EEG Signal Processing in Emotion Recognition"

## REGEEG algorithm
The proposed REGEEG method develops the signal processing per subject using a $24$ EEG pair of electrodes. A signal pre- and post-processing is applied to each input signal (originally developed for EEGs) from a dataset. This method applies a windowing analysis to input data length to a two-element subset from input data, yielding $s_1(t) = \tau^i_1$ and $s_2(t) = \tau^i_2$ where $\tau$ is the pair information from input data, stored as

$$
  p\left(t\right)=\begin{bmatrix}
        s_1\left(t\right) \\
        s_2\left(t\right)
    \end{bmatrix},
$$
