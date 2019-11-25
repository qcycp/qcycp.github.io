{% if page.prev or page.next %}
  <nav class="pagination">
    {{
      paginator({
        prev_text: '&lt;',
        next_text: '&gt;',
        mid_size: 1
      })
    }}
  </nav>
{% endif %}
