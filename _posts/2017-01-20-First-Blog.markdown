---
layout:     post
title:      "1使用Jekyll搭建博客系统"
subtitle:   "终于拥有自己的博客自己的时间线"
date:       2017-01-20 6:00:00
author:     "Alex Liu"
header-img: "img/post-bg-06.jpg"
categories: Tech
---

<p>12接近年底，忙了一整年有了很多的收获，但一直没有一个领地总结自己的作品，思考自己的发展，一个彻底用自己的视角看世界的地方，但现在我创造了一个</p>
<p>动态的图像相比于静态图更容易吸引人的注意力，无论是炫，可爱，摇滚，复古他都能更好的表达，另外用它讲故事大家很愿意看</p>
<h2>Gif 动画</h2>

<blockquote>GIF动画适合小画面短时间的应用</blockquote>
{% highlight ruby %}
#directly use img to add gif like jpg used to be
<img src="{{ site.baseurl }}/img/2017_1_24_Add_video/post-gifanimation.gif" alt="Post Sample Image">
{% endhighlight %}
<a href="#">
    <center><img src="{{ site.baseurl }}/img/2017_1_24_Add_video/post-gifanimation.gif" alt="Post Sample Image"></center>
</a>
<span class="caption text-muted">猴年年末做的英菲尼迪的项目，微信推文大长图中接了很多的GIF</span>
<h2>插入视频</h2>
<blockquote>视频的制作时间较长，但是绝对是结案，讲故事说创意的好办法，这个是我负责的项目的介绍视频</blockquote>
{% highlight ruby %}
#I create a RM for youku
% youku XMTQ2NDUxOTM5Mg==%
{% endhighlight %}


还有两天过年了，这两天终于有点时间可以研究一些技术问题，听一些讲座，把未来发展的框架搭一搭。

<p>搭建这个博客去年就开工了，确切的说是2016年的2月份，然后一忙就没时间学习制作了，确实也是没找到好的文章，一路各种坑精疲力尽一歇，到了2017年的现在才算是彻底把Jekyll的基础搭建完成，未来还有好多功能不如分类，或者搜索要探索制作，一步一步来吧</p>

<p>下面把遇到的坑和安装的过程记录一下，以便未来查阅安装（家里的mac 
Pro就是下一个安装对象，自己看着自己的教程安装想想挺有趣）废话太多了，有点兴奋，下面开始</p>
<h2 class="section-heading">Jeky安装</h2>
<blockquote>Jekyll是一个将纯文本转换成静态站点或blog的工具。github pages对Jekyll提供原生支持，可以免费将你的blog托管到github pages。<a href="https://jekyllrb.com/">jekyll 官网</a></blockquote>

<p>首先安装jekyll环境</p>
<p>Ruby (including development headers, v1.9.3 or above for Jekyll 2 and v2 or above for Jekyll 3)</p>
<p>RubyGems
Linux, Unix, or macOS</p>
<p>NodeJS, or another JavaScript runtime (Jekyll 2 and earlier, for CoffeeScript support).</p>
<p>Python 2.7 (for Jekyll 2 and earlier)
GCC and Make (in case your system doesn’t have them installed, which you can check by running gcc -v and make -v in your system’s command line interface)</p>
<blockquote>这里有个坑，mac内置ruby2.0，在安装新的时候容易出现permission的问题，建议使用rnenv来管理ruby和GEM的版本<a href="https://github.com/rbenv/rbenv#homebrew-on-mac-os-x">rbenv官方GitHub地址</a></blockquote>
<p>然后打开命令行执行</p>
{% highlight ruby %}
# Install Jekyll and Bundler gems through RubyGems
~ $ gem install jekyll bundler
{% endhighlight %}
<blockquote>再次遇坑，没权限，加上SUDO，这是超级管理权限，执行再次说你没权限，我就操，我的电脑我花那么多银子，什么权限我们有，但是还是得用代码说话</blockquote>
{% highlight ruby %}
~ $ sudo gem install -n/usr/local/bin GEM_NAME
{% endhighlight %}

<p>加上这个后立马好用感谢<a href="https://github.com/sass/sass/issues/1768">遇到相同问题的伙伴</a></p>

<p>安装成功后</p>
{% highlight ruby %}
# Create a new Jekyll site at ./myblog
~ $ jekyll new myblog

# Change into your new directory
~ $ cd myblog

# Build the site on the preview server
~/myblog $ bundle exec jekyll serve

{% endhighlight %}

<blockquote>发现用jekyll serve不好用,报WARN: Unresolved specs during Gem::Specification.reset:
      rouge (~> 1.7)
      jekyll-watch (~> 1.1)
WARN: Clearing out unresolved specs.经过问题查询发现需要用bundle exec jekyll serve,但还是不好用，报Could not find gem 'jekyll-paginate' in any of the gem sources listed in your Gemfile or available on this machine.的错误使用上边指定路径的方法安装jekyll-paginate问题解决</blockquote>>
<h3>修成正果</h3>
<p>最后附上，查询版本，升级的命令</p>
{% highlight ruby %}
$ jekyll --version
$ gem list jekyll
$ gem update jekyll
{% endhighlight %}


<p>Placeholder text by <a href="http://founderx4.github.io/">Alex liu</a>. Photographs by <a href="https://www.flickr.com/photos/nasacommons/">NASA on The Commons</a>.</p>