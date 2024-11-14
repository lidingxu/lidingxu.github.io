<h2 id="publications" style="margin: 2px 0px -15px;">Teaching</h2>

<div class="publications">
<ol class="bibliography">

{% for link in site.data.teaching.main %}

<li>
<div class="pub-row">
  <div class="col-sm-9" style="position: relative;padding-right: 15px;padding-left: 20px;">
      <div class="title">{{ link.title }}</div>
      <div class="author">{{ link.location }}</div>
      <div class="periodical"><em>{{ link.conference }}</em></div>
  </div>
</div>
</li>

<br>

{% endfor %}

</ol>
</div>

