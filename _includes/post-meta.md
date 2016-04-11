<time datetime="{{ page.date | date_to_xmlschema }}" 
      itemprop="datePublished">{{ page.date | date: "%b %-d, %Y" }}</time>
{% if page.author %}
• <span itemprop="author" 
        itemscope 
        itemtype="http://schema.org/Person"><span itemprop="name">
    {% if page.author    == "alex"   %}
        {{ site.authors.alex.display_name }}
    {% elsif page.author == "annisa" %}
        {{ site.authors.annisa.display_name }}
    {% elsif page.author == "tiara"  %}
        {{ site.authors.tiara.display_name }}
    {% else %}
        {{ site.authors..display_name }}
    {% endif %}
</span></span>
{% endif %}





