# Mapbox-gl-indoorequal

mapbobx-gl-indoorequal is a mapbox-gl.js plugin to display indoor data from [indoor=][].

It provides:

- a level control to change the level displayed on the map
- a programatic API to change the level displayed

## Install

**With NPM**

    npm install --save mapbox-gl-indoorequal

**In the browser**

```html
<script src="https://unpkg.com/mapbox-gl-indoorequal@latest/dist/mapbox-gl-indoorequal.umd.min.js"></script>
<link href="https://unpkg.com/mapbox-gl-indoorequal@latest/mapbox-gl-indoorequal.css" rel="stylesheet" />
```

## Example

```javascript
const mapboxgl = require('mapbox-gl');
const IndoorEqual = require('mapbox-gl-indoorequal');
require('mapbox-gl-indoorequal/'mapbox-gl-indoorequal.css');

const map = new mapboxgl.Map({
    container: 'map',
    style: 'mapbox://styles/mapbox/traffic-night-v2',
    center: [-77.0259, 38.9010],
    zoom: 9
});

const indoorEqual = new IndoorEqual(map);
map.addControl(indoorEqual);
```

## API

### IndoorEqual

Load the indoor= source and layers in your map.

#### Parameters

- `map`: **required** the mapbox-gl instance of the map
- `options`: **optional** object to configure the plugin
  - `url`: the url of the tiles (default `https://tiles.indoorequal.org/`)

#### updateLevel

Update the displayed level.

##### Parameters

- `level`: **required** a string with the level to display

## Develop

### Run tests

    yarn test

### Build a new version

    yarn build

## License

GNU AGPL v3

[indoor=]: https://indoorequal.org/
