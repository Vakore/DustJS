# DustJS
A WebGL application for creating models or rendering scenes. Not meant to be used by the general public as this was mainly just an exploration on my end. Contains a 3D platformer demo, a model demo, and a drawing test with nothing to do with 3d.

To use:
DustJS/dustEngine.html - 3D platformer test
DustJS/dustEngine.html#debugscene - 3D model + skinning test
DustJS/dustEngine.html#drawtest - The 2d test meant to help with Derisory development.

Credits:
https://webglfundamentals.org/ - Scripts/globalStuff/m4.txt was basically ripped from here one to one. The website itself was the main source of learning for me. 
LLM code was used in small amounts.

## Specifications
- Uses a fixed time step for physics and interpolation for rendering at above 60fps (interpolation is not used if the refresh rate is 60fps). The interpolation is a manual toggle within the code.
- Goal was to be lightweight (i.e. run splendidly on a chromebook)