# SSIMULACRA - Structural SIMilarity Unveiling Local And Compression Related Artifacts

Cloudinary's variant of DSSIM, based on Philipp Klaus Krause's adaptation of Rabah Mehdi's SSIM implementation,
using ideas from Kornel Lesinski's DSSIM implementation as well as several new ideas.

This is a perceptual metric designed specifically for scoring image compression related artifacts
in a way that correlates well with human opinions. For more information, see http://cloudinary.com/blog/detecting_the_psychovisual_impact_of_compression_related_artifacts_using_ssimulacra



Changes compared to Krause's SSIM implementation:
* Use C++ OpenCV API
* Convert sRGB to linear RGB and then to L*a*b*, to get a perceptually more accurate color space
* Multi-scale (6 scales)
* Extra penalty for specific kinds of artifacts:
    * local artifacts
    * grid-like artifacts (blockiness)
    * introducing edges where the original is smooth (blockiness / color banding / ringing / mosquito noise)

Known limitations:
* Color profiles are ignored; input images are assumed to be sRGB.
* Both input images need to have the same number of channels (Grayscale / RGB / RGBA)


## Build instructions

* Install OpenCV
* Install Boost
* Do `make`


## License

May 2016 - Feb 2017, Jon Sneyers <jon@cloudinary.com>

Copyright 2017, Cloudinary


SSIMULACRA is licensed under the Apache License, Version 2.0 (the "License").
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.


