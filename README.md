# K3 Timing Data

A visualization of some K3 timing tests that I conducted to better understand
how changes in file type, binning, processing, number of frames and so on
contribute to the amount of time it takes to record an image.

You can also access all of the raw data used to create the visualizations. The
only thing obviously not included were the movies themselves.

## Requirements

It should be consistent across older versions of Python, but this was what I
tested it using:

 * Python (_Version >= 3.8.3_)
 * pandas (_Version >= 1.0.5_)
 * IPython (_Version >= 7.16.1_)
 * ipywidgets (_Version >= 7.5.1_)
 * plotly (_Version >= 4.14.1_)
 * appmode (_Version >= 0.8.0_)

## Usage

[![Binder](https://mybinder.org/badge_logo.svg)](https://mybinder.org/v2/gh/DustinMorado/K3_Timing_Viz/master?urlpath=%2Fapps%2FK3_Timings.ipynb)

Just click the badge above to run a Binder instance of the application or you
can install and run it locally on your system:

1. `git clone https://github.com/DustinMorado/K3_Timing_Viz.git`
2. `cd K3_Timing_Viz`
3. `conda env create -f environment.yml`
4. `conda activate k3-timing-viz`
5. `jupyter notebook --no-browser`
6. Browse to `http://localhost:8888/apps/K3_Timings.py`

## Licensing

Distributed under the MIT License please see LICENSE.txt for more information.
