% Create a random array of dose values with 120 slices
dose.data = rand(512, 512, 120);

% Specify start coordinates of array (in cm)
dose.start = [-25, -25, -15];

% Specify voxel size (in cm)
dose.width = [0.098, 0.098, 0.25];

% Declare file name and path to write dose to
dest = '/path_to_file/dose.dcm';

% Declare DICOM Header information
info.patientName = 'DOE,JANE';
info.patientID = '12345678';
info.frameRefUID = '2.16.840.1.114362.1.6.4.3.141209.9459257770.378448688.100.4';

% Execute WriteDICOMDose
WriteDICOMDose(dose, dest, info);
