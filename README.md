# DE1-SoC-ComboLock

<!-- Improved compatibility of back to top link: See: https://github.com/othneildrew/Best-README-Template/pull/73 -->
<a name="readme-top"></a>
<!--
*** Thanks for checking out the Best-README-Template. If you have a suggestion
*** that would make this better, please fork the repo and create a pull request
*** or simply open an issue with the tag "enhancement".
*** Don't forget to give the project a star!
*** Thanks again! Now go create something AMAZING! :D
-->



<!-- PROJECT SHIELDS -->
<!--
*** I'm using markdown "reference style" links for readability.
*** Reference links are enclosed in brackets [ ] instead of parentheses ( ).
*** See the bottom of this document for the declaration of the reference variables
*** for contributors-url, forks-url, etc. This is an optional, concise syntax you may use.
*** https://www.markdownguide.org/basic-syntax/#reference-style-links

[![Contributors][contributors-shield]][contributors-url]
[![Forks][forks-shield]][forks-url]
[![Stargazers][stars-shield]][stars-url]
[![Issues][issues-shield]][issues-url]
[![MIT License][license-shield]][license-url]
-->
[![LinkedIn][linkedin-shield]][linkedin-url]


<!-- TABLE OF CONTENTS -->
<details>
  <summary>Table of Contents</summary>
  <ol>
    <li>
      <a href="#about-the-project">About The Project</a>
      <ul>
        <li><a href="#built-with">Built With</a></li>
      </ul>
    </li>
    <li>
      <a href="#functionality">Functionality</a>
      <ul>
        <li><a href="#opening-the-door">Opening the Door</a></li>
        <li><a href="#alarm-system">Alarm System</a></li>
        <li><a href="#changing-the-combination">Changing the Combination</a></li>
      </ul>
    </li>
    <li><a href="#seven-segment-display">Seven-Segment-Display</a></li>
    <li><a href="#moore-fsm-state-design">Moore FSM State Design</a></li>
    <li><a href="#contact">Contact</a></li>
  </ol>
</details>



<!-- ABOUT THE PROJECT -->
## About The Project

Combination locks remain important today as they provide a reliable and keyless security solution, offering convenience and peace of mind in various settings such as securing personal belongings, ensuring restricted access to spaces, and enhancing the overall safety of assets without the need for physical keys or advanced electronic systems. The project below orients the likes of `Verilog`, `Intel Quartus Prime`, and `DE1_SoC boards` to compute a combination lock through `Moore FSM` applications!

<p align="right">(<a href="#readme-top">back to top</a>)</p>



## Built With

* [![Intel Quartus Prime](https://img.shields.io/badge/Intel%C2%AE%20Quartus%C2%AE%20Prime-45a3ff?style=for-the-badge&logo=intel&logoColor=042e8a)](https://www.intel.com/content/www/us/en/software/programmable/quartus-prime/download.html)

<p align="right">(<a href="#readme-top">back to top</a>)</p>



<!-- GETTING STARTED -->
## Functionality

### Opening the Door
* User sets a desired 4 bit input (X = x3x2x1x0) as the password, or continue with pre-determined password (0110).
* If X matches the stored 4-bit combination, the door opens.
* The door remains open until Enter is "pressed" again, resetting the FSM.

### Alarm System

* If two incorrect combinations are entered consecutively, the alarm goes off.
* The alarm can only be canceled by resetting the system.

### Changing the Combination
* When the system is reset, the stored combination is set to '0110'.
* To change the combination:

  * Set the input to the old combination.
  * "Press" Change
  * If done correctly, output will signal the user to enter a new combination (n on 7 seg. disp.).
  * Set the 4 input bits to the new combination and "press" Change to store the new value.

## Seven-Segment-Display

* Utilize seven-segment display HEX5 to provide output for the circuit.
* Display '-' if all outputs are neutral.
* Display 'A' if the alarm is active.
* Display 'n' if the system prompts for a new combination.
* Display 'O' if the door/lock is open.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## Moore FSM State Design
* Analyzes machine behaviour and simplifies required states
* See state diagram & block diagram [here](https://github.com/v5run/DE1-SoC-ComboLock/blob/main/State_Diagrams%20%2B%20Block_Diagram%20-%20ComboLockFSM.pdf)


<!-- CONTACT -->
## Contact

Varun Pathak - [@LinkedIn](https://www.linkedin.com/in/varun-pathak-869351252/) - pathav4@mcmaster.ca

Project Link: [https://github.com/v5run/DE1-SoC-ComboLock](https://github.com/v5run/DE1-SoC-ComboLock)

<p align="right">(<a href="#readme-top">back to top</a>)</p>


<!-- MARKDOWN LINKS & IMAGES -->
<!-- https://www.markdownguide.org/basic-syntax/#reference-style-links -->
[contributors-shield]: https://img.shields.io/github/contributors/github_username/repo_name.svg?style=for-the-badge
[contributors-url]: https://github.com/github_username/repo_name/graphs/contributors
[forks-shield]: https://img.shields.io/github/forks/github_username/repo_name.svg?style=for-the-badge
[forks-url]: https://github.com/github_username/repo_name/network/members
[stars-shield]: https://img.shields.io/github/stars/github_username/repo_name.svg?style=for-the-badge
[stars-url]: https://github.com/github_username/repo_name/stargazers
[issues-shield]: https://img.shields.io/github/issues/github_username/repo_name.svg?style=for-the-badge
[issues-url]: https://github.com/github_username/repo_name/issues
[license-shield]: https://img.shields.io/github/license/github_username/repo_name.svg?style=for-the-badge
[license-url]: https://github.com/github_username/repo_name/blob/master/LICENSE.txt
[linkedin-shield]: https://img.shields.io/badge/-LinkedIn-black.svg?style=for-the-badge&logo=linkedin&colorB=081cfc
[linkedin-url]: https://www.linkedin.com/in/varun-pathak-869351252/
[product-screenshot]: images/screenshot.png
[Next.js]: https://img.shields.io/badge/next.js-000000?style=for-the-badge&logo=nextdotjs&logoColor=white
[Next-url]: https://nextjs.org/
[React.js]: https://img.shields.io/badge/React-20232A?style=for-the-badge&logo=react&logoColor=61DAFB
[React-url]: https://reactjs.org/
[Vue.js]: https://img.shields.io/badge/Vue.js-35495E?style=for-the-badge&logo=vuedotjs&logoColor=4FC08D
[Vue-url]: https://vuejs.org/
[Angular.io]: https://img.shields.io/badge/Angular-DD0031?style=for-the-badge&logo=angular&logoColor=white
[Angular-url]: https://angular.io/
[Svelte.dev]: https://img.shields.io/badge/Svelte-4A4A55?style=for-the-badge&logo=svelte&logoColor=FF3E00
[Svelte-url]: https://svelte.dev/
[Laravel.com]: https://img.shields.io/badge/Laravel-FF2D20?style=for-the-badge&logo=laravel&logoColor=white
[Laravel-url]: https://laravel.com
[Bootstrap.com]: https://img.shields.io/badge/Bootstrap-563D7C?style=for-the-badge&logo=bootstrap&logoColor=white
[Bootstrap-url]: https://getbootstrap.com
[JQuery.com]: https://img.shields.io/badge/jQuery-0769AD?style=for-the-badge&logo=jquery&logoColor=white
[JQuery-url]: https://jquery.com
