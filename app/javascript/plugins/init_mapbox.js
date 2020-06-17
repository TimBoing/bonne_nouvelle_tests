import mapboxgl from 'mapbox-gl';

const initMapbox = () => {
  const mapElement = document.getElementById('map');

  const fitMapToMarkers = (map, markers) => {
    const bounds = new mapboxgl.LngLatBounds();
    markers.forEach(marker => bounds.extend([ marker.lng, marker.lat ]));
    map.fitBounds(bounds, { padding: 70, maxZoom: 15, duration: 0 });
  };

  if (mapElement) { // only build a map if there's a div#map to inject into
    mapboxgl.accessToken = mapElement.dataset.mapboxApiKey;
    const map = new mapboxgl.Map({
      container: 'map',
      style: 'mapbox://styles/mapbox/streets-v10',
      center: [2.318587, 48.838090 ],
      zoom: 10
    });

    // Create a HTML element for your custom marker
    const element = document.createElement('div');
    element.className = 'marker';
    element.style.backgroundImage = `url('${mapElement.dataset.imageUrl}')`;

    const longit = 2.318587;
    const latit = 48.838090;
    let theMark = new mapboxgl.Marker(element);
    theMark.setLngLat([longit, latit]);
    theMark.addTo(map);

    let markers = [{"lng": 2.318587, "lat": 48.838090 }];
    // fitMapToMarkers(map, markers);


    element.addEventListener('click', (event) => {
      fitMapToMarkers(map, markers);
    });
  }

};

export { initMapbox };
