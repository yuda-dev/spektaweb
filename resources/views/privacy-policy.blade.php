@extends('frontend.master')

@section('content')


@php
    $judul = 'Privacy Policy';
    $populer = \DB::table('tb_post')->orderBy('view_count','desc')->where('jenis',['artikel'])->take(5)->get();
    $category = \DB::table('tb_category')->where('jenis',['artikel'])->get();
@endphp
    <!--================Blog Area =================-->
   <section class="blog_area single-post-area section-padding" style="margin-top: -120px">
    <div class="container">
       <div class="row">
          <div class="col-lg-8 posts-list">
             <div class="single-post">
                <div class="blog_details">
                   <h2>Privacy Policy</h2>
                   <p class="excert">
                       Privacy Policy for spektaweb.com
At spektaweb.com, accessible from https://spektaweb.com/, one of our main priorities is the privacy of our visitors. This Privacy Policy document contains types of information that is collected and recorded by spektaweb.com and how we use it.

If you have additional questions or require more information about our Privacy Policy, do not hesitate to contact us.

Log Files
spektaweb.com follows a standard procedure of using log files. These files log visitors when they visit websites. All hosting companies do this and a part of hosting services' analytics. The information collected by log files include internet protocol (IP) addresses, browser type, Internet Service Provider (ISP), date and time stamp, referring/exit pages, and possibly the number of clicks. These are not linked to any information that is personally identifiable. The purpose of the information is for analyzing trends, administering the site, tracking users' movement on the website, and gathering demographic information.

Cookies and Web Beacons
Like any other website, spektaweb.com uses 'cookies'. These cookies are used to store information including visitors' preferences, and the pages on the website that the visitor accessed or visited. The information is used to optimize the users' experience by customizing our web page content based on visitors' browser type and/or other information.

For more general information on cookies, please read the "What Are Cookies" article on Cookie Consent website.

Google DoubleClick DART Cookie
Google is one of a third-party vendor on our site. It also uses cookies, known as DART cookies, to serve ads to our site visitors based upon their visit to www.website.com and other sites on the internet. However, visitors may choose to decline the use of DART cookies by visiting the Google ad and content network Privacy Policy at the following URL – https://policies.google.com/technologies/ads

Privacy Policies
You may consult this list to find the Privacy Policy for each of the advertising partners of spektaweb.com. Our Privacy Policy was created with the help of the Free Privacy Policy Generator and the Privacy Policy Generator Online.

Third-party ad servers or ad networks uses technologies like cookies, JavaScript, or Web Beacons that are used in their respective advertisements and links that appear on spektaweb.com, which are sent directly to users' browser. They automatically receive your IP address when this occurs. These technologies are used to measure the effectiveness of their advertising campaigns and/or to personalize the advertising content that you see on websites that you visit.

Note that spektaweb.com has no access to or control over these cookies that are used by third-party advertisers.

Third Party Privacy Policies
spektaweb.com's Privacy Policy does not apply to other advertisers or websites. Thus, we are advising you to consult the respective Privacy Policies of these third-party ad servers for more detailed information. It may include their practices and instructions about how to opt-out of certain options.

You can choose to disable cookies through your individual browser options. To know more detailed information about cookie management with specific web browsers, it can be found at the browsers' respective websites. What Are Cookies?

Children's Information
Another part of our priority is adding protection for children while using the internet. We encourage parents and guardians to observe, participate in, and/or monitor and guide their online activity.

spektaweb.com does not knowingly collect any Personal Identifiable Information from children under the age of 13. If you think that your child provided this kind of information on our website, we strongly encourage you to contact us immediately and we will do our best efforts to promptly remove such information from our records.

Online Privacy Policy Only
This Privacy Policy applies only to our online activities and is valid for visitors to our website with regards to the information that they shared and/or collect in spektaweb.com. This policy is not applicable to any information collected offline or via channels other than this website.

Consent
By using our website, you hereby consent to our Privacy Policy and agree to its Terms and Conditions.
                   </p>
                </div>
             </div>
          </div>
          <div class="col-lg-4" style="margin-top: -40px">
            <div class="blog_right_sidebar">
               <aside class="single_sidebar_widget popular_post_widget">
                  <h4>Artikel Populer</h4><hr><br>
                  @foreach ($populer as $pop)
                  <div class="thumb" style="margin-top: -25px;">
                        <img src="{{ url('artikel', $pop->image) }}" alt="post" 
                            style="
                            width: 100%; 
                            height : 160px;
                            border-radius : 10px;
                            border-top-left-radius: 10px;
                            border-top-right-radius: 10px;
                            border-bottom-right-radius: 10px;
                            border-bottom-left-radius: 10px;">
                  </div><br>
                  <div class="media post_item" style="margin-left: -20px">
                       <div class="media-body">
                            <a href="{{ url('posts', $pop->slug) }}">
                               <h>{!! $pop->title !!}</h>
                            </a>
                       </div>
                   </div><br><br>
                  @endforeach
                  
               </aside>
               
                <aside class="single_sidebar_widget post_category_widget" style="margin-top:-30px;">
                    <h4>Kategori Artikel</h4><hr>
                        <ul class="list cat-list">
                            @foreach($category as $ctg)
                            <li>
                                <a href="{{url('category/post', $ctg->slug)}}" class="d-flex">
                                    <p>{{$ctg->nama}}</p>
                                </a>
                            </li>
                            @endforeach
                        </ul>
                </aside>
            </div>
        </div>
       </div>
    </div>
 </section>
 <!--================ Blog Area end =================-->
@endsection