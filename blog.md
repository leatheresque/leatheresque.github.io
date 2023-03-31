---
layout: blog
title: Blog Posts
---

<h1 class="display-2 text-lime"><span class="text-warning">#</span> {{page.title}}</h1>

<div class="bg-warning-subtle text-warning-emphasis p-4">
  <ul class="list-unstyled">
  {% for post in site.posts %}
    <li>
      <a href="{{ post.url }}" class="text-warning-emphasis" style="text-decoration: none">
        <h1 class="fw-bold">{{ post.title }}</h1>
        <h4><small>By:</small> {{post.author}}</h4>
        <p>{{ post.excerpt }}</p>
      </a>
    </li>
  {% endfor %}
  </ul>
</div>