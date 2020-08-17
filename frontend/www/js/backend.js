function callCloudFunction() {
	var xhr = new XMLHttpRequest();
    xhr.open( "GET", "https://us-central1-harbour-da.cloudfunctions.net/calculationFunction");
    xhr.send();
    xhr.onload = function() {
    	alert(xhr.response);
    }

}

