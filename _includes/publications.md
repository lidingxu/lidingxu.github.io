<h2 id="publications" style="margin: 2px 0px -15px;">Publications</h2>

<div class="publications">

{% if site.data.publications.submitted.size > 0 %}

<h3 id="publications">Submitted</h3>

<ol class="bibliography">


{% for link in site.data.publications.submitted %}

<li>
<div class="pub-row">
  <div class="col-sm-9" style="position: relative;padding-right: 15px;padding-left: 20px;">
      <div class="title">{{ link.title }}</div>
      <div class="author">{{ link.authors }}</div>
      <div class="periodical"><em>{{ link.conference }}</em>
      </div>
    <div class="links">
      {% if link.doi %}
      <a target="_blank" href="{{ link.doi }}" class="btn btn-sm z-depth-0" role="button" target="_blank" style="font-size:12px;">DOI</a>
      {% endif %}
      {% if link.pdf %}
      <a target="_blank" href="{{ link.pdf }}" class="btn btn-sm z-depth-0" role="button" target="_blank" style="font-size:12px;">PDF</a>
      {% endif %}
      {% if link.arxiv %}
      <a target="_blank" href="{{ link.arxiv }}" class="btn btn-sm z-depth-0" role="button" target="_blank" style="font-size:12px;">Arxiv</a>
      {% endif %}
      {% if link.hal %}
      <a target="_blank" href="{{ link.hal }}" class="btn btn-sm z-depth-0" role="button" target="_blank" style="font-size:12px;">HAL</a>
      {% endif %}
      {% if link.code %}
      <a target="_blank" href="{{ link.code }}" class="btn btn-sm z-depth-0" role="button" target="_blank" style="font-size:12px;">Code</a>
      {% endif %}
      {% if link.others %}
      {{ link.others }}
      {% endif %}
    </div>
  </div>
</div>
</li>

<br>

{% endfor %}

</ol>

{% endif %}


{% if site.data.publications.accepted.size > 0 %}

<h3 id="publications">Accepted</h3>

<ol class="bibliography">

{% for link in site.data.publications.accepted %}

<li>
<div class="pub-row">
  <div class="col-sm-9" style="position: relative;padding-right: 15px;padding-left: 20px;">
      <div class="title">{{ link.title }}</div>
      <div class="author">{{ link.authors }}</div>
      <div class="periodical"><em>{{ link.conference }}</em>
      </div>
    <div class="links">
      {% if link.doi %}
      <a target="_blank" href="{{ link.doi }}" class="btn btn-sm z-depth-0" role="button" target="_blank" style="font-size:12px;">DOI</a>
      {% endif %}
      {% if link.arxiv %}
      <a target="_blank" href="{{ link.arxiv }}" class="btn btn-sm z-depth-0" role="button" target="_blank" style="font-size:12px;">Arxiv</a>
      {% endif %}
      {% if link.hal %}
      <a target="_blank" href="{{ link.hal }}" class="btn btn-sm z-depth-0" role="button" target="_blank" style="font-size:12px;">HAL</a>
      {% endif %}
      {% if link.code %}
      <a target="_blank" href="{{ link.code }}" class="btn btn-sm z-depth-0" role="button" target="_blank" style="font-size:12px;">Code</a>
      {% endif %}
      {% if link.others %}
      {{ link.others }}
      {% endif %}
    </div>
  </div>
</div>
</li>

<br>

{% endfor %}

</ol>

{% endif %}

<h3 id="publications">Published</h3>

<ol class="bibliography">


{% for link in site.data.publications.published %}

<li>
<div class="pub-row">
  <div class="col-sm-9" style="position: relative;padding-right: 15px;padding-left: 20px;">
      <div class="title">{{ link.title }}</div>
      <div class="author">{{ link.authors }}</div>
      <div class="periodical"><em>{{ link.conference }}</em>
      </div>
    <div class="links">
      {% if link.doi %}
      <a target="_blank" href="{{ link.doi }}" class="btn btn-sm z-depth-0" role="button" target="_blank" style="font-size:12px;">DOI</a>
      {% endif %}
      {% if link.arxiv %}
      <a target="_blank" href="{{ link.arxiv }}" class="btn btn-sm z-depth-0" role="button" target="_blank" style="font-size:12px;">Arxiv</a>
      {% endif %}
      {% if link.hal %}
      <a target="_blank" href="{{ link.hal }}" class="btn btn-sm z-depth-0" role="button" target="_blank" style="font-size:12px;">HAL</a>
      {% endif %}
      {% if link.code %}
      <a target="_blank" href="{{ link.code }}" class="btn btn-sm z-depth-0" role="button" target="_blank" style="font-size:12px;">Code</a>
      {% endif %}
      {% if link.others %}
      {{ link.others }}
      {% endif %}
    </div>
  </div>
</div>
</li>

<br>

{% endfor %}

</ol>



<h3 id="publications">Ph.D. thesis</h3>

<ol class="bibliography">

{% for link in site.data.publications.phdthesis %}

<li>
<div class="pub-row">
  <div class="col-sm-9" style="position: relative;padding-right: 15px;padding-left: 20px;">
      <div class="title">{{ link.title }}</div>
      <div class="author">{{ link.authors }}</div>
      <div class="periodical"><i>{{ link.location }}</i></div>
    <div class="links">
      {% if link.link %}
      <a target="_blank" href="{{ link.link }}" class="btn btn-sm z-depth-0" role="button" target="_blank" style="font-size:12px;">THESES.FR</a>
      {% endif %}
      {% if link.hal %}
      <a target="_blank" href="{{ link.hal }}" class="btn btn-sm z-depth-0" role="button" target="_blank" style="font-size:12px;">HAL</a>
      {% endif %}
      {% if link.others %}
      {{ link.others }}
      {% endif %}
    </div>
  </div>
</div>
</li>

<br>

{% endfor %}

</ol>

</div>


