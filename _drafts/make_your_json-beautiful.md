Methodology

1. make it into real JSON
    1. add commas to the ends of all the lines using sublime's find and replace. Search for `}^` (hat means end of line) and replace it with `},`
    1. find and replace all the `ç` with nothing.
    1. start the file like this
        ``` json
        [
          {
            "notes": "0m high still: 133, moving: 60467",
            "data": [
        ```
    1. end the file like this
        ``` json
        ]
          }
        ]
        ```
    1. just before each distance reading, the last item in the list has a comma, e.g. `},`. Take it off so that there isn't a trailing comma.
    1. put something like this in between each distance reading:
        ``` json
        ]
          },
          {
            "notes": "1m",
            "data": [
        ```
    1. Copy it all to http://www.jsoneditoronline.org/ and verify it. If it's good (no red warning) then you can start using it.

2. Use this js to process it:
    ``` js
    var allTheReadings = [ "your json goes in here" ];

    function getRSSI (dataChunk){
      try {
        var rssi = dataChunk.succeeded[0].rssi;
        return rssi;
      } catch(e) {
        console.log("something strange happened, maybe this doesn't have an rssi property");
        console.log(e);
      }
    }

    //this section is jto help you get to know your data.
    // console.log(allTheReadings[0].notes);
    // console.log(allTheReadings[0].data[1]);
    // console.log(allTheReadings[0].data[1].succeeded[0].rssi);
    // console.log(getRSSI(allTheReadings[0].data[0]));
    // console.log(getRSSI(allTheReadings[0].data[1]));

    var results = [];
    for (var i = 0; i < allTheReadings.length; i++) {
      var thisDistanceRSSIs = [allTheReadings[i].notes];
      var dataRelatedToThisDistance = allTheReadings[i].data;
      //console.log(dataRelatedToThisDistance);
      for (var j = 0; j < dataRelatedToThisDistance.length; j++) {
        thisDistanceRSSIs.push(getRSSI(dataRelatedToThisDistance[j]));
      }
      results.push(thisDistanceRSSIs);
    }
    console.log(results)
    ```
3. sleep

4. analysis: this is a very quick and dirty look at things in R. You could do it in a spreadsheet just as easily.
    ```
    > summary(a)
       Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
     -92.00  -83.00  -80.00  -79.63  -77.00  -69.00 
    > summary(b)
       Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
     -88.00  -85.75  -82.00  -82.43  -80.00  -75.00 
    > summary(c)
       Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
      -89.0   -83.0   -79.0   -78.9   -75.0   -70.0 
    > summary(d)
       Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
     -89.00  -84.00  -80.00  -80.64  -77.75  -72.00 
    > summary(e)
       Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
     -91.00  -84.00  -80.00  -80.81  -77.00  -71.00 
    > summary(f)
       Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
     -91.00  -86.75  -83.00  -82.74  -80.00  -74.00 
    > summary(g)
       Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
     -92.00  -80.00  -78.00  -78.62  -75.50  -71.00 
    > summary(h)
       Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
     -92.00  -83.00  -80.00  -81.18  -79.00  -74.00 
    > summary(i)
       Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
     -93.00  -86.50  -83.00  -84.34  -82.00  -78.00 
    > summary(j)
       Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
     -90.00  -87.00  -84.50  -83.47  -80.00  -75.00 
    > summary(k)
       Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
     -91.00  -86.50  -83.00  -83.71  -81.00  -76.00 
    ```
