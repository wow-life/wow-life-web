---
layout: default
title:  "Tags"
categories: tags
permalink: tags
---

<div class="tag-cloud">
{% for tag in site.tags %}
  <span><a href="{{ "/tags/" | append: tag[0] }}">{{ tag[0] | prepend: "#" }}</a></span>
{% endfor %}
</div>
