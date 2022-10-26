

<!doctype html>
<html lang="en" class="no-js">
  <head>
    

<meta charset="utf-8">



<!-- begin SEO -->









<title>Traces.jl: A traces wrapper for graph canonical labeling and automorphism group computation - Liding Xu</title>







<meta property="og:locale" content="en-US">
<meta property="og:site_name" content="Liding Xu">
<meta property="og:title" content="Traces.jl: A traces wrapper for graph canonical labeling and automorphism group computation">


  <link rel="canonical" href="https://github.com/pages/academicpages/academicpages.github.io/software/2022-traces.jl">
  <meta property="og:url" content="https://github.com/pages/academicpages/academicpages.github.io/software/2022-traces.jl">



  <meta property="og:description" content="A simple julia wrapper for traces Github">





  

  





  <meta property="og:type" content="article">
  <meta property="article:published_time" content="2022-10-03T00:00:00+02:00">








  <script type="application/ld+json">
    {
      "@context" : "http://schema.org",
      "@type" : "Person",
      "name" : "Liding Xu",
      "url" : "https://github.com/pages/academicpages/academicpages.github.io",
      "sameAs" : null
    }
  </script>






<!-- end SEO -->


<link href="/feed.xml" type="application/atom+xml" rel="alternate" title="Liding Xu Feed">

<!-- http://t.co/dKP3o1e -->
<meta name="HandheldFriendly" content="True">
<meta name="MobileOptimized" content="320">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<script>
  document.documentElement.className = document.documentElement.className.replace(/\bno-js\b/g, '') + ' js ';
</script>

<!-- For all browsers -->
<link rel="stylesheet" href="/assets/css/main.css">

<meta http-equiv="cleartype" content="on">
    

<!-- start custom head snippets -->

<link rel="apple-touch-icon" sizes="57x57" href="/images/apple-touch-icon-57x57.png?v=M44lzPylqQ">
<link rel="apple-touch-icon" sizes="60x60" href="/images/apple-touch-icon-60x60.png?v=M44lzPylqQ">
<link rel="apple-touch-icon" sizes="72x72" href="/images/apple-touch-icon-72x72.png?v=M44lzPylqQ">
<link rel="apple-touch-icon" sizes="76x76" href="/images/apple-touch-icon-76x76.png?v=M44lzPylqQ">
<link rel="apple-touch-icon" sizes="114x114" href="/images/apple-touch-icon-114x114.png?v=M44lzPylqQ">
<link rel="apple-touch-icon" sizes="120x120" href="/images/apple-touch-icon-120x120.png?v=M44lzPylqQ">
<link rel="apple-touch-icon" sizes="144x144" href="/images/apple-touch-icon-144x144.png?v=M44lzPylqQ">
<link rel="apple-touch-icon" sizes="152x152" href="/images/apple-touch-icon-152x152.png?v=M44lzPylqQ">
<link rel="apple-touch-icon" sizes="180x180" href="/images/apple-touch-icon-180x180.png?v=M44lzPylqQ">
<link rel="icon" type="image/png" href="/images/favicon-32x32.png?v=M44lzPylqQ" sizes="32x32">
<link rel="icon" type="image/png" href="/images/android-chrome-192x192.png?v=M44lzPylqQ" sizes="192x192">
<link rel="icon" type="image/png" href="/images/favicon-96x96.png?v=M44lzPylqQ" sizes="96x96">
<link rel="icon" type="image/png" href="/images/favicon-16x16.png?v=M44lzPylqQ" sizes="16x16">
<link rel="manifest" href="/images/manifest.json?v=M44lzPylqQ">
<link rel="mask-icon" href="/images/safari-pinned-tab.svg?v=M44lzPylqQ" color="#000000">
<link rel="shortcut icon" href="/images/favicon.ico?v=M44lzPylqQ">
<meta name="msapplication-TileColor" content="#000000">
<meta name="msapplication-TileImage" content="/images/mstile-144x144.png?v=M44lzPylqQ">
<meta name="msapplication-config" content="/images/browserconfig.xml?v=M44lzPylqQ">
<meta name="theme-color" content="#ffffff">
<link rel="stylesheet" href="/assets/css/academicons.css"/>

<script type="text/x-mathjax-config"> MathJax.Hub.Config({ TeX: { equationNumbers: { autoNumber: "all" } } }); </script>
<script type="text/x-mathjax-config">
  MathJax.Hub.Config({
    tex2jax: {
      inlineMath: [ ['$','$'], ["\\(","\\)"] ],
      processEscapes: true
    }
  });
</script>
<script src='https://cdnjs.cloudflare.com/ajax/libs/mathjax/2.7.4/latest.js?config=TeX-MML-AM_CHTML' async></script>

<!-- end custom head snippets -->

  </head>

  <body>

    <!--[if lt IE 9]>
<div class="notice--danger align-center" style="margin: 0;">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</div>
<![endif]-->
    

<div class="masthead">
  <div class="masthead__inner-wrap">
    <div class="masthead__menu">
      <nav id="site-nav" class="greedy-nav">
        <button><div class="navicon"></div></button>
        <ul class="visible-links">
          <li class="masthead__menu-item masthead__menu-item--lg"><a href="/">Liding Xu</a></li>
          
            
            <li class="masthead__menu-item"><a href="/publications/">Publications</a></li>
          
            
            <li class="masthead__menu-item"><a href="/talks/">Talks</a></li>
          
            
            <li class="masthead__menu-item"><a href="/software/">Software</a></li>
          
            
            <li class="masthead__menu-item"><a href="/teaching/">Teaching</a></li>
          
            
            <li class="masthead__menu-item"><a href="/cv/">CV</a></li>
          
        </ul>
        <ul class="hidden-links hidden"></ul>
      </nav>
    </div>
  </div>
</div>

    





<div id="main" role="main">
  


  <div class="sidebar sticky">
  



<div itemscope itemtype="http://schema.org/Person">

  <div class="author__avatar">
    
    	<img src="/images/biophoto.jpg" class="author__avatar" alt="Liding Xu">
    
  </div>

  <div class="author__content">
    <h3 class="author__name">Liding Xu</h3>
    <p class="author__bio">Ph.D student at LIX, École Polytechnique</p>
  </div>

  <div class="author__urls-wrapper">
    <button class="btn btn--inverse">Follow</button>
    <ul class="author__urls social-icons">
      
        <li><i class="fa fa-fw fa-map-marker" aria-hidden="true"></i> Palaiseau, France</li>
      
      
      
      
        <li><a href="mailto:liding.xu@polytechnique.edu"><i class="fas fa-fw fa-envelope" aria-hidden="true"></i> Email</a></li>
      
      
       
      
      
      
      
      
      
      
      
      
        <li><a href="https://github.com/lidingxu"><i class="fab fa-fw fa-github" aria-hidden="true"></i> Github</a></li>
      
      
      
      
      
      
      
      
      
      
      
      
      
      
        <li><a href="https://scholar.google.com/citations?user=g_XH1rUAAAAJ&hl=en"><i class="fas fa-fw fa-graduation-cap"></i> Google Scholar</a></li>
      
      
      
        <li><a href="https://orcid.org/0000-0002-0286-1109"><i class="ai ai-orcid-square ai-fw"></i> ORCID</a></li>
      
      
      
    </ul>
  </div>
</div>

  
  </div>


  <article class="page" itemscope itemtype="http://schema.org/CreativeWork">
    <meta itemprop="headline" content="Traces.jl: A traces wrapper for graph canonical labeling and automorphism group computation">
    <meta itemprop="description" content="A simple julia wrapper for traces Github">
    <meta itemprop="datePublished" content="October 03, 2022">
    

    <div class="page__inner-wrap">
      
        <header>
          <h1 class="page__title" itemprop="headline">Traces.jl: A traces wrapper for graph canonical labeling and automorphism group computation
</h1>
          
        
        
        
          <p class="page__date"><strong><i class="fa fa-fw fa-calendar" aria-hidden="true"></i> Published:</strong> <time datetime="2022-10-03T00:00:00+02:00">October 03, 2022</time></p>
        
        
             
        
    
        </header>
      

      <section class="page__content" itemprop="text">
        <p>A simple julia wrapper for traces <a href="https://github.com/lidingxu/Traces.jl">Github</a></p>


        
      </section>

      <footer class="page__meta">
        
        




      </footer>

      

<section class="page__share">
  
    <h4 class="page__share-title">Share on</h4>
  

  <a href="https://twitter.com/intent/tweet?text=/software/2022-traces.jl" class="btn btn--twitter" title="Share on Twitter"><i class="fab fa-twitter" aria-hidden="true"></i><span> Twitter</span></a>

  <a href="https://www.facebook.com/sharer/sharer.php?u=/software/2022-traces.jl" class="btn btn--facebook" title="Share on Facebook"><i class="fab fa-facebook" aria-hidden="true"></i><span> Facebook</span></a>

  <a href="https://www.linkedin.com/shareArticle?mini=true&url=/software/2022-traces.jl" class="btn btn--linkedin" title="Share on LinkedIn"><i class="fab fa-linkedin" aria-hidden="true"></i><span> LinkedIn</span></a>
</section>

      


  <nav class="pagination">
    
      <a href="/software/2022-cbp" class="pagination--pager" title="cbp: branch-and-price algorithms for conic submodular binpacking
">Previous</a>
    
    
      <a href="#" class="pagination--pager disabled">Next</a>
    
  </nav>

    </div>

    
  </article>

  
  
</div>


    <div class="page__footer">
      <footer>
        <!-- start custom footer snippets -->
<a href="/sitemap/">Sitemap</a>
<!-- end custom footer snippets -->

        

<div class="page__footer-follow">
  <ul class="social-icons">
    
      <li><strong>Follow:</strong></li>
    
    
    
    
      <li><a href="http://github.com/lidingxu"><i class="fab fa-github" aria-hidden="true"></i> GitHub</a></li>
    
    
    <li><a href="/feed.xml"><i class="fa fa-fw fa-rss-square" aria-hidden="true"></i> Feed</a></li>
  </ul>
</div>

<div class="page__footer-copyright">&copy; 2022 Liding Xu. Powered by <a href="http://jekyllrb.com" rel="nofollow">Jekyll</a> &amp; <a href="https://github.com/academicpages/academicpages.github.io">AcademicPages</a>, a fork of <a href="https://mademistakes.com/work/minimal-mistakes-jekyll-theme/" rel="nofollow">Minimal Mistakes</a>.</div>

      </footer>
    </div>

    <script src="/assets/js/main.min.js"></script>




  <script>
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

  ga('create', '', 'auto');
  ga('send', 'pageview');
</script>






  </body>
</html>

