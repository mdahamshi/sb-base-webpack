import "./styles.css";
import logoImage from "../asset/logo.svg";


import {View} from './view.js';

new View('My App');

const logo = document.querySelector('#nav-logo');
logo.src = logoImage;