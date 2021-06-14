import "bootstrap";
import{initCarousel} from 'components/carousel.js'
import { initMapbox } from '../plugins/init_mapbox';
import { bordersAnimation } from '../fictions/show';
import { animateBordersMainButtons } from '../components/main-buttons';
import { initSidenav } from '../components/sidenav';
import { newArticle } from '../components/newArticle';
import { animateLogo } from '../components/logo';
import { triage } from '../components/triage';

animateBordersMainButtons();
initMapbox();
initCarousel();
bordersAnimation();
initSidenav();
newArticle();
animateLogo();
triage();
