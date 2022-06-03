---
layout: archive
title: "CV"
permalink: /cv/
author_profile: true
redirect_from:
  - /resume
---



Education
======
* **Ph.D.** in Mathematical Programming, École Polytechnique, 2023 (expected)
* **M.S.** in Optimization,  Université Paris-Saclay & Institut Polytechnique de Paris, 2020
* **B.S.** in Machine Intelligence, Peking University, 2018
  
Skills
======
* Programming languages: C/C++, Matlab, Python, Julia
* Mathematical programming softwares: SCIP, CPLEX

Publications
======

## Preprints and Reports

{% bibliography -q @unpublished @techreport %}

## Journal Articles

{% bibliography -q @article %}

## Conferences and Workshops

{% bibliography -q @inproceedings %}
  
Talks
======
  <ul>{% for post in site.talks %}
    {% include archive-single-talk-cv.html %}
  {% endfor %}</ul>
  
Teaching
======
  <ul>{% for post in site.teaching %}
    {% include archive-single-cv.html %}
  {% endfor %}</ul>
  
