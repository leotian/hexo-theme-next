<div class="copyright" >
  {% set current = date(Date.now(), "YYYY") %}
  &copy; {% if theme.since and theme.since != current %} {{ theme.since }} &mdash; {% endif %}
  <span itemprop="copyrightYear">{{ current }}</span>
  <span class="with-love">
    <i class="fa fa-{{ theme.authoricon }}"></i>
  </span>
  <span class="author" itemprop="copyrightHolder">{{ config.author }}</span>

  {% if theme.post_wordcount.totalcount %}
    <span class="post-meta-divider">|</span>
    <span class="post-meta-item-icon">
      <i class="fa fa-area-chart"></i>
    </span>
    {% if theme.post_wordcount.item_text %}
      <span class="post-meta-item-text">{{ __('post.totalcount') }}&#58;</span>
    {% endif %}
    <span title="{{ __('post.totalcount') }}">
      {{ totalcount(site, '0,0.0a') }}
    </span>
  {% endif %}
</div>

{% if theme.copyright %}
  <div class="powered-by">{#
  #}{{ __('footer.powered', '<a class="theme-link" href="https://hexo.io">Hexo</a>') }}{#
#}</div>

  <span class="post-meta-divider">|</span>

  <div class="theme-info">{#
  #}{{ __('footer.theme') }} &mdash; {#
  #}<a class="theme-link" href="https://github.com/iissnan/hexo-theme-next">{#
    #}NexT.{{ theme.scheme }}{#
  #}</a>{#
#}</div>
{% endif %}

<p>Hosted by
  <a href="https://www.upyun.com/?utm_source=lianmeng&utm_medium=referral" style="border:0">
    <img
      src="/images/upyun_logo.min.svg"
      style="width: 60px; display: inline; vertical-align: middle;"
    />
  </a>
  <a href="http://www.miitbeian.gov.cn/">京ICP备17008411号-1</a>
</p>
