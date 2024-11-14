<h2 id="publications" style="margin: 2px 0px -15px;">Talks</h2>

<div class="publications">
<ol class="bibliography">

{% for link in site.data.talks.main %}

<li>
<div class="pub-row">
  <div class="col-sm-9" style="position: relative;padding-right: 15px;padding-left: 20px;">
      <div class="title">{{ link.title }}</div>
      <div class="location">{{ link.location }}</div>
      <div class="conference"><em>{{ link.conference }}</em></div>
    <div class="links">
      {% if link.pdf %}
      <a target="_blank" href="{{ link.pdf }}" class="btn btn-sm z-depth-0" role="button" target="_blank" style="font-size:12px;">Slides</a>
      {% endif %}
    </div>
  </div>
</div>
</li>

<br>

{% endfor %}

</ol>
</div>

