---
layout: default
title: 'Posts'
permalink: posts
---

<ul class="posts">
  {% for post in site.posts %}
    <li class="post">
    <h2><a href="{{ post.url }}">{{ post.title }}</a></h2>
    <h4 class="tags">
      {% for tag in post.tags %}
        <a class="tag" href="{{ "/tags/" | append: tag }}">{{ tag | prepend: '#' }}</a>
      {% endfor %}
    </h4>
    {{ post.excerpt }}
    </li>
  {% endfor %}
</ul>
