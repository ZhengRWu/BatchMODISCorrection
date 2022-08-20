


pro BatchMODISFiles
  files = DIALOG_PICKFILE(/MULTIPLE_FILES,TITLE='请选择输入文件')
  select_size = size(files, /N_ELEMENTS)
  FOR i=0,select_size-1 DO BEGIN
    inp = files[i]
    file_name = STRSPLIT(inp,"\",/EXTRACT)
    dir = file_name[0:-2]
    i_inp = STRJOIN([dir,""],"\")
    
    file_name = file_name[-1]
    file_name = STRSPLIT(file_name,".",/EXTRACT)
    file_name = file_name[0:-2]
    file_name = STRJOIN(file_name,".")
    i_outp = STRJOIN([dir,file_name,""],"\")
    file_mkdir,i_outp
    b = go_for_one(inp,i_outp,file_name)
    ;print, file_name
    ;print, inp
    ;print, i_outp
  
  ENDFOR
  
  inp = "D:\data\temp_for_reflec\MOD09GA.A2022228.h27v05.061.2022232001102.hdf"
  outp = "D:\data\temp_for_reflec\"
  
end