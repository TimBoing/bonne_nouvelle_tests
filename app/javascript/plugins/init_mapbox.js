import mapboxgl from 'mapbox-gl';

const initMapbox = () => {
  const mapElement = document.getElementById('map');

  if (mapElement) { // only build a map if there's a div#map to inject into
    mapboxgl.accessToken = mapElement.dataset.mapboxApiKey;
    const map = new mapboxgl.Map({
      container: 'map',
      style: 'mapbox://styles/mapbox/streets-v10',
      center: [2.318587, 48.838090 ],
      zoom: 15
    });

    console.log("i m in");
    const longit = 2.318587;
    const latit = 48.838090;
    let theMark = new mapboxgl.Marker();
    theMark.setLngLat([longit, latit]);
    theMark.addTo(map);
  }

};

export { initMapbox };
