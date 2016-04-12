<span class="meta">
<time datetime="{{ include.context.date | date_to_xmlschema }}">{{ include.context.date | date: "%b %-d, %Y" }}</time>
<meta itemprop="datePublished" content="{{ include.context.date | date_to_xmlschema }}"/>
{% if include.context.author %}
• <span itemprop="author" 
        itemscope 
        itemtype="http://schema.org/Person"><span itemprop="name">
    {% if include.context.author    == "alex"   %}
        {{ site.authors.alex.display_name }}
    {% elsif include.context.author == "annisa" %}
        {{ site.authors.annisa.display_name }}
    {% elsif include.context.author == "tiara"  %}
        {{ site.authors.tiara.display_name }}
    {% else %}
        {{ site.authors..display_name }}
    {% endif %}
</span></span>
{% endif %}
</span>





