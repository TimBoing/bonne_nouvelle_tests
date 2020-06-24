import "bootstrap";
import{initCarousel} from 'components/carousel.js'
import { initMapbox } from '../plugins/init_mapbox';
import { bordersAnimation } from '../fictions/show';
import { animateBordersMainButtons } from '../components/main-buttons';

animateBordersMainButtons();
initMapbox();
initCarousel();
bordersAnimation();
