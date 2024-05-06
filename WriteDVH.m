% Load DICOM images
path = '/path/to/files/';
names = {
    '2.16.840.1.114362.1.5.1.0.101218.5981035325.299641582.274.1.dcm'
    '2.16.840.1.114362.1.5.1.0.101218.5981035325.299641582.274.2.dcm'
    '2.16.840.1.114362.1.5.1.0.101218.5981035325.299641582.274.3.dcm'
};
image = LoadDICOMImages(path, names);

% Load DICOM structure set into image structure
name = '2.16.840.1.114362.1.5.1.0.101218.598103579.747.dcm';
image.structures = LoadDICOMStructures(path, name, image);

% Create dose array with same dimensions and coordinates as image
dose.data = rand(size(image.data));
dose.width = image.width;
dose.start = image.start;

% Declare file name and path to write DVH to
dest = '/path_to_file/dvh.csv';

% Execute WriteDVH
WriteDVH(image, dose, dest);
