syntax keyword HDF5Constant H5F_ACC_TRUNC
syntax keyword HDF5Constant H5P_DEFAULT
syntax keyword HDF5Constant H5P_FILE_ACCESS
syntax keyword HDF5Constant H5S_ALL
syntax keyword HDF5Constant H5T_NATIVE_DOUBLE

syntax keyword HDF5Typedef hid_t
syntax keyword HDF5Typedef hsize_t

syntax keyword HDF5Function H5Dclose
syntax keyword HDF5Function H5Dcreate
syntax keyword HDF5Function H5Fclose
syntax keyword HDF5Function H5Fcreate
syntax keyword HDF5Function H5Pcreate
syntax keyword HDF5Function H5Sclose
syntax keyword HDF5Function H5Screate_simple
syntax keyword HDF5Function H5Tarray_create
syntax keyword HDF5Function H5Tclose

if version >= 508 || ! exists("hdf5_syntax")
	if version < 508
		let hdf5_syntax = 1
		command -nargs=+ HiLink hi link <argc>
	else
		command -nargs=+ HiLink hi def link <args>
	endif
	HiLink HDF5Constant Constant
	HiLink HDF5Typedef Typedef
	HiLink HDF5Function Function
	delcommand HiLink
endif