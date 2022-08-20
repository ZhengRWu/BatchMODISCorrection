function go_for_one,inputfile,outputfile,rootname
  compile_opt idl2
  e=envi(/headless)

  print, "======start======"

  modis_grid_file = inputfile

  ;The specified output location MUST end in the appropriate path
  ;separator for your OS
  output_location = outputfile

  output_rootname = rootname

  grid_name = 'MODIS_Grid_500m_2D'

  sd_names = ['sur_refl_b01_1','sur_refl_b02_1','sur_refl_b03_1',$
    'sur_refl_b04_1','sur_refl_b05_1','sur_refl_b06_1','sur_refl_b07_1']

  ;Output method schema is:
  ;0 = Standard, 1 = Reprojected, 2 = Standard and reprojected
  out_method = 1

  output_projection = envi_proj_create(/geographic)

  ;Choosing cubic convolution interpolation.
  interpolation_method = 2

  out_ps = [0.004187d,0.004187d]

  ;Set reprojection background and any native fill values to NaN
  nan_fill = float('NaN')
  convert_modis_data, in_file=modis_grid_file,out_ps=out_ps, $
    out_path=output_location, out_root=output_rootname, $
    gd_name=grid_name, sd_names=sd_names, $
    out_method=out_method, out_proj=output_projection, $
    interp_method=interpolation_method, $
    background=nan_fill, fill_replace_value=nan_fill, $
    r_fid_array=r_fid_array, r_fname_array=r_fname_array, $
    msg=msg
  
  return, 0

end