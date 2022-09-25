---
layout: default
---
# Recent Posts
{% for post in site.posts limit:3 %}
- ### [{{ post.title }}]({{ post.url }})
{% endfor %}

A blog with markdown support


```Java
public static void main(String[] args) {
    VikyTech.start("Coming soon....")
}
```

# Upcoming Features:
- Search by
  - Category
  - Tag
  - Free-text
- Live Editor Template
- CMS