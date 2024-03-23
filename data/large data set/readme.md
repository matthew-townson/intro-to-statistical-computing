# Edexcel "Large" Data Set

Here is the Edexcel Large Data Set, which contains weather data from various regions from May-October 1987, and May-October 2015 in csv format. [^1]  
Data is from May-Oct 1987.  

I have also created a separate csv file that contains the attributes of the locations from which data was sampled. [^2]  

## Example

``` csv
Date,Daily Mean Temperature (0900-0900) (°C),Daily Total Rainfall (0900-0900) (mm),Daily Total Sunshine (0000-2400) (hrs),Daily Mean Windspeed (0000-2400) (kn),Daily Mean Windspeed (0000-2400) (Beaufort conversion),Daily Maximum Gust (0000-2400) (kn),Daily Maximum Relative Humidity,Daily Mean Total Cloud (oktas),Daily Mean Visibility (Dm),Daily Mean Pressure (hPa),Daily Mean Wind Direction (o),Cardinal Direction,Daily Max Gust Corresponding Direction (o),Cardinal Direction
01/05/1987,14.6,1.6,n/a,n/a,n/a,n/a,96,7,1300,1017,210,SSW,230,SW
02/05/1987,8.8,1.9,n/a,n/a,n/a,n/a,97,4,2500,1014,250,WSW,290,WNW
03/05/1987,7.2,2.2,n/a,n/a,n/a,n/a,91,5,2100,1023,340,NNW,330,NNW
04/05/1987,7.3,0,n/a,n/a,n/a,n/a,82,2,2800,1032,350,N,10,N
05/05/1987,10.1,0,n/a,n/a,n/a,n/a,76,7,2400,1033,330,NNW,20,NNE
06/05/1987,11.9,0,n/a,n/a,n/a,n/a,94,4,1100,1032,320,NW,290,WNW
```

[^1]: you don't know how annoying it was to convert the data from an excel sheet to csv, there's so much random nonsense that is in the data pages that shouldn't - atomic data like latitude and longitude of the location that the data is from, and repeated data that should be put in an "info" page - like how `tr`

[^2]: ok this is ridiculous, I'm no geographical expert, but last time I checked *colons* aren't a valid delimiter for latitude and longitude. Maybe these are replacements for ° and ', but that's dumb. Instead of using the frankly idiotic notation of `50:22N, 05:33W`, I've found the coordinates of these locations as DD coordinates - the normal sort that people ususally use. Sources for coordinate data: Wikipedia.