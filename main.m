[cityListLoc, cityListNames] = xlsread( 'cities.xlsx' ) ;
ref_loc=[30.144194, 71.634092];
[nearestCity city_list_closer_to_farther nearest_index neighbour_index] = findCity(ref_loc,cityListNames,cityListLoc);
 fprintf('The nearest city is::');
 disp(nearestCity);
 fprintf('The 2nd nearest city is::');
disp(city_list_closer_to_farther(2));
scatter(cityListLoc(:,2),cityListLoc(:,1));
 hold on
scatter(cityListLoc(nearest_index,2),cityListLoc(nearest_index,1),'b','fill');
scatter(ref_loc(2),ref_loc(1),'r','fill');
 hold off