%Determines wavelength of the Hydrogen-Alpha line of HD 94028 to be 656.62nd
%This lets us calculate red shift
load starData

nObs = size(spectra,1);

lambdaStart = 630.02;

lambdaDelta = 0.14;
   
lambdaEnd = lambdaStart + (nObs-1)*lambdaDelta;
lamda = (lamdbaStart:lambdaDelta:lambdaEnd)';
s = spectra(:,6); 
loglog(lambda, s, ".-"); 
[sHa, idx] = min(s); 
lambdaHa = lambda(idx); 
hold on; 
loglog(lambdaHam sHA, 'rs', 'MakerSize', 8);
hold off;
z = (lambdaHa/656.28)-1;
speed = z*299792.458;
