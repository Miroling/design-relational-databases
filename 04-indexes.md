## Code blocks and image outputs

Jupyter Book will also embed your code blocks and output in your book.
For example, here's some sample Matplotlib code:

```{code-cell} ipython3
:tags: [hide-cell, thebe-init]

from matplotlib import rcParams, cycler
import matplotlib.pyplot as plt
import numpy as np
```