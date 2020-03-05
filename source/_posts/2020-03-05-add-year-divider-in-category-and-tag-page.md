---
title: 在category跟tag頁面，加上年份分隔
categories: [Software, Hexo]
tags:
- 教學
abbrlink: 327d13d
date: 2020-03-05 15:16:35
---
{% asset_img before.jpg 修改前 %}
category跟tag的改法一樣
```
diff --git a/themes/next/layout/category.swig b/themes/next/layout/category.swig
index 8e3aa72..83e7916 100644
--- a/themes/next/layout/category.swig
+++ b/themes/next/layout/category.swig
@@ -20,6 +20,19 @@
       </div>

       {% for post in page.posts %}
+
+          {# Show year #}
+          {% set year %}
+          {% set post.year = date(post.date, 'YYYY') %}
+
+          {% if post.year !== year %}
+              {% set year = post.year %}
+              <div class="collection-title">
+                <h2 class="archive-year motion-element" id="archive-year-{{ year }}">{{ year }}</h2>
+              </div>
+          {% endif %}
+          {# endshow #}
+
         {{ post_template.render(post) }}
       {% endfor %}
     </div>
@@ -36,3 +49,11 @@
 {% block sidebar %}
   {{ sidebar_template.render(false) }}
 {% endblock %}
+
+{% block script_extra %}
+  {% if theme.use_motion %}
+    <script type="text/javascript" id="motion.page.archive">
+      $('.archive-year').velocity('transition.slideLeftIn');
+    </script>
+  {% endif %}
+{% endblock %}
\ No newline at end of file
```
{% asset_img after.jpg 修改後 %}