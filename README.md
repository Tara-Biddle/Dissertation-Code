# Dissertation-Code

The aim of this project was to evaluate the energy potential of the amide's orientation within the sodium amide structure.
This was achieved using the code recorded here in conjunction with CASTEP, WinSCP, and PuTTY software.
The code could be adapted for wider use with spherical heatmaps/ colourmaps, stereographic projections, and molecular manipulation using the pymatgen module.

1. Amide_Iteration_Cif_Creation
The Amide_Iteration_Cif_Creation script was used to model an evenly spaced spherical grid of 100 points using the golden spiral method. The centre of this sphere was taken to be the central nitrogen of an amide and the redius of the sphere to be the length of the N-H bond. Each point on this grid represents a possible location of a hydrogen atom, and for each a corresponding second hydrogen location must be modelled. This was achieved by setting a fixed H-N-H angle, and starting from a random location on this corresponding circumference, for each point on the grid 7 evenly spaced points were recorded. 
A previously geometry optimised sodium amide crystallographic information file (CIF) was modified so that 700 cif files for each of the amide orientations were produced. The same amide within the sodium amide structure was changed each time.

2. ____
Using this shell script, each of the 700 CIFs were automatically submitted for single point energy calculations in CASTEP using a custom shell script in WinSCP and PuTTY. 

3.
Another shell script was used to pull the force potential outputs of the modified hydrogen positions. 

4. Force_Heat_Maps
The Force_Heat_Maps script was used to calculate the total force potential for each of the 700 amide orientations and a spherical
heatmap showing this total force potential against hydrogen position around the central nitrogen was produced.
A triangular interpolation method was employed to create a more uniform spherical map; this method found the three nearest computationally calculated points on the heatmap to a point on an evenly spaced spherical grid of 10000 locations. The distances between each point on the grid and their three nearest computationally calculated points were normalised, and the approximate force potential for that point calculated to create a smoother and more complete heatmap approximation. 
From this imputed force heatmap, the minimum energy orientation of the amide position could be predicted.
[To protect the scientific findings of this project the force_basis.csv and the force_map_data_basis.csv have been doctored.]

5. Ammonia_Imide_Cif_Creation
From the force potential heatmap, the minimum energies of imide and ammonia orientations in the sodium amide structure could also be inferred. As the imide only has one hydrogen, the minimum energy orientation was easily identified as the location with the lowest force potential.
For the ammonia configuration, a spherical grid of 10000 points was generated. For each point 50000 possible ammonia orientations were modelled. A scaled down example of this process is depicted below:
<img width="636" alt="AM_Flowchart_l" src="https://github.com/Tara-Biddle/Dissertation-Code/assets/116201128/0b39f398-ff4e-4586-85c2-d07878dc50fa">
For each ammonia orientation, approximate force potentials were calculated. This employed the triangular imputation method described above to estimate the force potential at each of the three hydrogen positions; these were then summed to produce an approximation of the overall ammonia orientation’s force potential. These are qualitative approximations because the force potentials are based on the sodium amide’s orientation, and the length of the N-H bond would be different in the ammonia and imide configurations.
From the 50000 estimated force potentials for the varying ammonia orientations the minima could be located.

6. Stereographic_Projection
The diagrams below depict the stereographic projection of points on a sphere from the north pole (0, 0, 1) onto the plane z = -1 which was employed in this script:
![spw1](https://github.com/Tara-Biddle/Dissertation-Code/assets/116201128/738918bb-6895-4cab-bee5-111de81734d8) ![spw2](https://github.com/Tara-Biddle/Dissertation-Code/assets/116201128/492b5496-e7a1-4697-a4c6-f644cc082108)
The force potential coordinates were scaled so that the radius of the sphere became 1, and rotated in order to best visualise the symmetry of the nitrogen environment in respect to the neighbouring sodium.
The images above and equations employed were taken from https://en.wikipedia.org/wiki/Stereographic_projection.



look up .condarc file - look in part ii lab notebook






