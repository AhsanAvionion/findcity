function [nmi_arr,km_arr,mi_arr] = haversine_arr(lat1,lon1,lat2,lon2)
temp1=lat2;
lat2=ones(length(lat1),1);
temp2=lon2;
lon2=ones(length(lat1),1);

lat2=lat2*temp1;
lon2=lon2*temp2;

km_arr = zeros(length(lat1),1);
nmi_arr = zeros(length(lat1),1);
mi_arr = zeros(length(lat1),1);
for i=1:length(lat1)
[nmi_arr(i) km_arr(i) mi_arr(i)] =haversine([lat1(i) lon1(i)] ,[lat2(i) lon2(i)]);
end
end