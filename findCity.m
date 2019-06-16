%function [nearest_city,neighbour_cities_names]=findCity(ref_lat,ref_lon,cityListNames,cityListLat,cityListLon)

%call function like this
% [cityListLoc, cityListNames] = xlsread( 'cities.xlsx' ) ;
% ref_loc=[30.144194, 71.634092];
% [nearestCity city_list_closer_to_farther nearest_index neighbour_index] = findCity(ref_loc,cityListNames,cityListLoc);
%  scatter(cityListLoc(:,2),cityListLoc(:,1));
%  hold on
% scatter(cityListLoc(nearest_index,2),cityListLoc(nearest_index,1),'b','fill');
% scatter(ref_loc(2),ref_loc(1),'r','fill');
%  hold off
function [nearest_city,neighbour_cities_names,nearest_city_index,neighbour_cities_indexes]=findCity(ref_loc,cityListNames,cityListLoc)
dist_arr=haversine_arr(cityListLoc(:,1),cityListLoc(:,2),ref_loc(1),ref_loc(2));
[~,ascending]=ismember(sort(dist_arr),dist_arr);
neighbour_cities_names = cityListNames(ascending);
nearest_city=cityListNames(ascending(1));
nearest_city_index=ascending(1);
neighbour_cities_indexes = ascending;
end
