***Settings***
Library     robojslib
Library     SeleniumLibrary

***Test Cases***
test1
    1
    3
***Variables***
***Keywords***
1
    Open Browser        https://qa1.facile.it/prestiti/preventivo.html?ticket=3vUCABJcqDI9Sk6g3nS6ZcOFvAH7g8k_U8au2vz-Fv-GIMWmPGV5StZo2lLd1Q1ATgQpiPNIgCfX5x-MAXuTcjT9qKkvqcEA21NIxiJyKZQk-wJ0StMvqt8YoWpQqqIaI6_XhndLKlBsC5bZxurKaYhFEbT2I0-AuIIjnSbs64VO5TN-FFvnlcEhu0fjb8Y_2vKIejvrbztIRruxlbqTmV8.#       Chrome
3
    check title
    sleep               10s
    Check if visible and click by query selector                    .sf-toolbar .hide-button
