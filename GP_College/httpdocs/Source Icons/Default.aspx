<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<%@ Register Assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35"
    Namespace="System.Web.UI.DataVisualization.Charting" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

    <title>Honest Gate</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<meta http-equiv="imagetoolbar" content="no" />
<link rel="stylesheet" href="styles/layout.css" type="text/css" />
<script type="text/javascript" src="scripts/jquery-1.4.1.min.js"></script>
<script type="text/javascript" src="scripts/jquery.easing.1.3.js"></script>
<script type="text/javascript" src="scripts/jquery.timers.1.2.js"></script>
<script type="text/javascript" src="scripts/jquery.galleryview.2.1.1.min.js"></script>
<script type="text/javascript" src="scripts/jquery.galleryview.setup.js"></script>
<script type="text/javascript" src="js/jquery-1.3.1.min.js"></script>
<script type="text/javascript" src="js/jquery.scrollTo.js"></script>
<link rel="shortcut icon" href="../favicon.ico" type="image/x-icon"/> 
        <link rel="stylesheet" href="css/style.css" type="text/css" media="screen"/>
		<script src="js/cufon-yui.js" type="text/javascript"></script>
		<script src="js/Bebas_400.font.js" type="text/javascript"></script>
		<script type="text/javascript">
		    Cufon('.cn_wrapper h6', {
		        textShadow: '-1px 1px black'
		    });
		</script>
        <style type="text/css">
        .a5bar
        {
            color:#2d2d2d;
        }
        .txt1
        {
            font-family:Tahoma;font-size:small;
            color:#8d0000;
        }
        .CommentBar
        {
          background-image: linear-gradient(left , rgb(255,255,255) 0%, rgb(74,84,84) 85%);
background-image: -o-linear-gradient(left , rgb(255,255,255) 0%, rgb(74,84,84) 85%);
background-image: -moz-linear-gradient(left , rgb(255,255,255) 0%, rgb(74,84,84) 85%);
background-image: -webkit-linear-gradient(left , rgb(255,255,255) 0%, rgb(74,84,84) 85%);
background-image: -ms-linear-gradient(left , rgb(255,255,255) 0%, rgb(74,84,84) 85%);

background-image: -webkit-gradient(
	linear,
	left bottom,
	right bottom,
	color-stop(0, rgb(255,255,255)),
	color-stop(0.85, rgb(74,84,84))
);
        }
        </style>
        <script type="text/javascript">
            var menu1 = 0;
            var menu2 = 0;
            var menu3 = 0;
            var menu4 = 0;
            var menu5 = 0;
           
         
          



            function change_Testmanial_Txt(txt, current) {

                var newHtml = txt;
                document.getElementById('testomanilas_txt').innerHTML = newHtml;


                switch (current) {
                    case 1:
                        document.face1.src = "images/1_face.gif";
                        document.face2.src = "images/2_.gif";
                        document.face3.src = "images/3_.gif";
                        document.face4.src = "images/4_.gif";
                        document.face5.src = "images/5_.gif";
                        document.face6.src = "images/6_.gif";
                        document.face7.src = "images/7_.gif";
                        document.face8.src = "images/8_.gif";
                        document.face9.src = "images/9_.gif";
                        document.face10.src = "images/10_.gif";
                        document.face11.src = "images/11_.gif";
                        document.face12.src = "images/12_.gif";
                        document.face13.src = "images/13..gif";
                        document.face14.src = "images/14..gif";
                        document.face15.src = "images/15..gif";

                        break;
                    case 2:
                        document.face1.src = "images/1_.gif";
                        document.face2.src = "images/2_face.gif";
                        document.face3.src = "images/3_.gif";
                        document.face4.src = "images/4_.gif";
                        document.face5.src = "images/5_.gif";
                        document.face6.src = "images/6_.gif";
                        document.face7.src = "images/7_.gif";
                        document.face8.src = "images/8_.gif";
                        document.face9.src = "images/9_.gif";
                        document.face10.src = "images/10_.gif";
                        document.face11.src = "images/11_.gif";
                        document.face12.src = "images/12_.gif";
                        document.face13.src = "images/13..gif";
                        document.face14.src = "images/14..gif";
                        document.face15.src = "images/15..gif";

                        break;
                    case 3:
                        document.face1.src = "images/1_.gif";
                        document.face2.src = "images/2_.gif";
                        document.face3.src = "images/3_face.gif";
                        
                        document.face4.src = "images/4_.gif";
                        document.face5.src = "images/5_.gif";
                        document.face6.src = "images/6_.gif";
                        document.face7.src = "images/7_.gif";
                        document.face8.src = "images/8_.gif";
                        document.face9.src = "images/9_.gif";
                        document.face10.src = "images/10_.gif";
                        document.face11.src = "images/11_.gif";
                        document.face12.src = "images/12_.gif";
                        document.face13.src = "images/13_.gif";
                        document.face14.src = "images/14..gif";
                        document.face15.src = "images/15..gif";

                        break;
                    case 4:
                        document.face1.src = "images/1_.gif";
                        document.face2.src = "images/2_.gif";
                        document.face3.src = "images/3_.gif";
                        document.face4.src = "images/4.gif";
                        document.face5.src = "images/5_.gif";
                        document.face6.src = "images/6_.gif";
                        document.face7.src = "images/7_.gif";
                        document.face8.src = "images/8_.gif";
                        document.face9.src = "images/9_.gif";
                        document.face10.src = "images/10_.gif";
                        document.face11.src = "images/11_.gif";
                        document.face12.src = "images/12_.gif";
                        document.face13.src = "images/13..gif";
                        document.face14.src = "images/14..gif";
                        document.face15.src = "images/15..gif";

                        break;
                    case 5:
                        document.face1.src = "images/1_.gif";
                        document.face2.src = "images/2_.gif";
                        document.face3.src = "images/3_.gif";
                        document.face4.src = "images/4_.gif";
                        document.face5.src = "images/5.gif";
                        document.face6.src = "images/6_.gif";
                        document.face7.src = "images/7_.gif";
                        document.face8.src = "images/8_.gif";
                        document.face9.src = "images/9_.gif";
                        document.face10.src = "images/10_.gif";
                        document.face11.src = "images/11_.gif";
                        document.face12.src = "images/12_.gif";
                        document.face13.src = "images/13_.gif";
                        document.face14.src = "images/14_.gif";
                        document.face15.src = "images/15_.gif";

                        break;
                    case 6:
                        document.face1.src = "images/1_.gif";
                        document.face2.src = "images/2_.gif";
                        document.face3.src = "images/3_.gif";
                        document.face4.src = "images/4_.gif";
                        document.face5.src = "images/5_.gif";
                        document.face6.src = "images/6.gif";
                        document.face7.src = "images/7_.gif";
                        document.face8.src = "images/8_.gif";
                        document.face9.src = "images/9_.gif";
                        document.face10.src = "images/10_.gif";
                        document.face11.src = "images/11_.gif";
                        document.face12.src = "images/12_.gif";
                        document.face13.src = "images/13_.gif";
                        document.face14.src = "images/14..gif";
                        document.face15.src = "images/15..gif";

                        break;
                    case 7:
                        document.face1.src = "images/1_.gif";
                        document.face2.src = "images/2_.gif";
                        document.face3.src = "images/3_.gif";
                        document.face4.src = "images/4_.gif";
                        document.face5.src = "images/5_.gif";
                        document.face6.src = "images/6_.gif";
                        document.face7.src = "images/7.gif";
                        document.face8.src = "images/8_.gif";
                        document.face9.src = "images/9_.gif";
                        document.face10.src = "images/10_.gif";
                        document.face11.src = "images/11_.gif";
                        document.face12.src = "images/12_.gif";
                        document.face13.src = "images/13_.gif";
                        document.face14.src = "images/14..gif";
                        document.face15.src = "images/15..gif";

                        break;
                    case 8:
                        document.face1.src = "images/1_.gif";
                        document.face2.src = "images/2_.gif";
                        document.face3.src = "images/3_.gif";
                        document.face4.src = "images/4_.gif";
                        document.face5.src = "images/5_.gif";
                        document.face6.src = "images/6_.gif";
                        document.face7.src = "images/7_.gif";
                        document.face8.src = "images/8.gif";
                        document.face9.src = "images/9_.gif";
                        document.face10.src = "images/10_.gif";
                        document.face11.src = "images/11_.gif";
                        document.face12.src = "images/12_.gif";
                        document.face13.src = "images/13_.gif";
                        document.face14.src = "images/14_.gif";
                        document.face15.src = "images/15..gif";

                        break;
                    case 9:
                        document.face1.src = "images/1_.gif";
                        document.face2.src = "images/2_.gif";
                        document.face3.src = "images/3_.gif";
                        document.face4.src = "images/4_.gif";
                        document.face5.src = "images/5_.gif";
                        document.face6.src = "images/6_.gif";
                        document.face7.src = "images/7_.gif";
                        document.face8.src = "images/8_.gif";
                        document.face9.src = "images/9.gif";
                        document.face10.src = "images/10_.gif";
                        document.face11.src = "images/11_.gif";
                        document.face12.src = "images/12_.gif";
                        document.face13.src = "images/13_.gif";
                        document.face14.src = "images/14._.gif";
                        document.face15.src = "images/15..gif";

                        break;
                    case 10:
                        document.face1.src = "images/1_.gif";
                        document.face2.src = "images/2_.gif";
                        document.face3.src = "images/3_.gif";
                        document.face4.src = "images/4_.gif";
                        document.face5.src = "images/5_.gif";
                        document.face6.src = "images/6_.gif";
                        document.face7.src = "images/7_.gif";
                        document.face8.src = "images/8_.gif";
                        document.face9.src = "images/9_.gif";
                        document.face10.src = "images/10.gif";
                        document.face11.src = "images/11_.gif";
                        document.face12.src = "images/12_.gif";
                        document.face13.src = "images/13_.gif";
                        document.face14.src = "images/14_.gif";
                        document.face15.src = "images/15..gif";

                        break;
                    case 11:
                        document.face1.src = "images/1_.gif";
                        document.face2.src = "images/2_.gif";
                        document.face3.src = "images/3_.gif";
                        document.face4.src = "images/4_.gif";
                        document.face5.src = "images/5_.gif";
                        document.face6.src = "images/6_.gif";
                        document.face7.src = "images/7_.gif";
                        document.face8.src = "images/8_.gif";
                        document.face9.src = "images/9_.gif";
                        document.face10.src = "images/10_.gif";
                        document.face11.src = "images/11.gif";
                        document.face12.src = "images/12_.gif";
                        document.face13.src = "images/13_.gif";
                        document.face14.src = "images/14..gif";
                        document.face15.src = "images/15..gif";

                        break;
                    case 12:
                        document.face1.src = "images/1_.gif";
                        document.face2.src = "images/2_.gif";
                        document.face3.src = "images/3_.gif";
                        document.face4.src = "images/4_.gif";
                        document.face5.src = "images/5_.gif";
                        document.face6.src = "images/6_.gif";
                        document.face7.src = "images/7_.gif";
                        document.face8.src = "images/8_.gif";
                        document.face9.src = "images/9_.gif";
                        document.face10.src = "images/10_.gif";
                        document.face11.src = "images/11_.gif";
                        document.face12.src = "images/12.gif";
                        document.face13.src = "images/13..gif";
                        document.face14.src = "images/14..gif";
                        document.face15.src = "images/15..gif";

                        break;
                    case 13:
                        document.face1.src = "images/1..gif";
                        document.face2.src = "images/2..gif";
                        document.face3.src = "images/3..gif";
                        document.face4.src = "images/4..gif";
                        document.face5.src = "images/5..gif";
                        document.face6.src = "images/6..gif";
                        document.face7.src = "images/7..gif";
                        document.face8.src = "images/8..gif";
                        document.face9.src = "images/9..gif";
                        document.face10.src = "images/10..gif";
                        document.face11.src = "images/11..gif";
                        document.face12.src = "images/12..gif";
                        document.face13.src = "images/13.gif";
                        document.face14.src = "images/14..gif";
                        document.face15.src = "images/15..gif";

                        break;
                    case 14:
                        document.face1.src = "images/1..gif";
                        document.face2.src = "images/2..gif";
                        document.face3.src = "images/3..gif";
                        document.face4.src = "images/4..gif";
                        document.face5.src = "images/5..gif";
                        document.face6.src = "images/6..gif";
                        document.face7.src = "images/7..gif";
                        document.face8.src = "images/8..gif";
                        document.face9.src = "images/9..gif";
                        document.face10.src = "images/10..gif";
                        document.face11.src = "images/11..gif";
                        document.face12.src = "images/12..gif";
                        document.face13.src = "images/13..gif";
                        document.face14.src = "images/14.gif";
                        document.face15.src = "images/15..gif";

                        break;
                    case 15:
                        document.face1.src = "images/1..gif";
                        document.face2.src = "images/2..gif";
                        document.face3.src = "images/3..gif";
                        document.face4.src = "images/4..gif";
                        document.face5.src = "images/5..gif";
                        document.face6.src = "images/6..gif";
                        document.face7.src = "images/7..gif";
                        document.face8.src = "images/8..gif";
                        document.face9.src = "images/9..gif";
                        document.face10.src = "images/10..gif";
                        document.face11.src = "images/11..gif";
                        document.face12.src = "images/12..gif";
                        document.face13.src = "images/13..gif";
                        document.face14.src = "images/14..gif";
                        document.face15.src = "images/15.gif";

                        break;


                }


            }


</script>

        <!-- The JavaScript -->
        <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.4.2/jquery.min.js"></script>
		<script type="text/javascript" src="jquery.easing.1.3.js"></script>
        <script type="text/javascript">
            $(function () {
                //caching
                //next and prev buttons
                var $cn_next = $('#cn_next');
                var $cn_prev = $('#cn_prev');
                //wrapper of the left items
                var $cn_list = $('#cn_list');
                var $pages = $cn_list.find('.cn_page');
                //how many pages
                var cnt_pages = $pages.length;
                //the default page is the first one
                var page = 1;
                //list of news (left items)
                var $items = $cn_list.find('.cn_item');
                //the current item being viewed (right side)
                var $cn_preview = $('#cn_preview');
                //index of the item being viewed. 
                //the default is the first one
                var current = 1;

                /*
                for each item we store its index relative to all the document.
                we bind a click event that slides up or down the current item
                and slides up or down the clicked one. 
                Moving up or down will depend if the clicked item is after or
                before the current one
                */
                $items.each(function (i) {
                    var $item = $(this);
                    $item.data('idx', i + 1);

                    $item.bind('click', function () {
                        var $this = $(this);
                        $cn_list.find('.selected').removeClass('selected');
                        $this.addClass('selected');
                        var idx = $(this).data('idx');
                        var $current = $cn_preview.find('.cn_content:nth-child(' + current + ')');
                        var $next = $cn_preview.find('.cn_content:nth-child(' + idx + ')');

                        if (idx > current) {
                            $current.stop().animate({ 'top': '-300px' }, 600, 'easeOutBack', function () {
                                $(this).css({ 'top': '310px' });
                            });
                            $next.css({ 'top': '310px' }).stop().animate({ 'top': '5px' }, 600, 'easeOutBack');
                        }
                        else if (idx < current) {
                            $current.stop().animate({ 'top': '310px' }, 600, 'easeOutBack', function () {
                                $(this).css({ 'top': '310px' });
                            });
                            $next.css({ 'top': '-300px' }).stop().animate({ 'top': '5px' }, 600, 'easeOutBack');
                        }
                        current = idx;
                    });
                });

                /*
                shows next page if exists:
                the next page fades in
                also checks if the button should get disabled
                */
                $cn_next.bind('click', function (e) {
                    var $this = $(this);
                    $cn_prev.removeClass('disabled');
                    ++page;
                    if (page == cnt_pages)
                        $this.addClass('disabled');
                    if (page > cnt_pages) {
                        page = cnt_pages;
                        return;
                    }
                    $pages.hide();
                    $cn_list.find('.cn_page:nth-child(' + page + ')').fadeIn();
                    e.preventDefault();
                });
                /*
                shows previous page if exists:
                the previous page fades in
                also checks if the button should get disabled
                */
                $cn_prev.bind('click', function (e) {
                    var $this = $(this);
                    $cn_next.removeClass('disabled');
                    --page;
                    if (page == 1)
                        $this.addClass('disabled');
                    if (page < 1) {
                        page = 1;
                        return;
                    }
                    $pages.hide();
                    $cn_list.find('.cn_page:nth-child(' + page + ')').fadeIn();
                    e.preventDefault();
                });

            });
        </script>

        <style type="text/css">
          span.reference a{
			text-shadow:1px 1px 1px #fff;
			color:#999;
			text-transform:uppercase;
            text-decoration:none;
            position:fixed;
            right:10px;
            top:10px;
            font-size:13px;
			font-weight:bold;
          }
          span.reference a:hover{
            color:#555;
          }
		  h1.title{
			  color:#777;
			  font-size:30px;
			  margin:10px;
			  font-weight:normal;
			  text-shadow:1px 1px 1px #fff;
			}
			img.face{
	
	width:40px;
}

      </style>


<script>

    $(document).ready(function () {

        //Speed of the slideshow

        var speed = 5000;

        //You have to specify width and height in #slider CSS properties
        //After that, the following script will set the width and height accordingly
        $('#mask-gallery, #gallery li').width($('#slider').width());
        $('#gallery').width($('#slider').width() * $('#gallery li').length);
        $(' #mask-excerpt, #gallery li, #mask-gallery  ').height($('#slider').height() + 68);
        $('#excerpt li').height($('#slider').height() + 55);

        $('#excerpt_bottom li, #mask-excerpt_bottom').height(50);

        //Assign a timer, so it will run periodically
        var run = setInterval('newsscoller(0)', speed);

        $('#gallery li:first, #excerpt li:first, #excerpt_bottom li:first').addClass('selected');

        //Pause the slidershow with clearInterval
        $('#btn-pause').click(function () {
            clearInterval(run);
            return false;
        });

        //Continue the slideshow with setInterval
        $('#btn-play').click(function () {
            run = setInterval('newsscoller(0)', speed);
            return false;
        });

        //Next Slide by calling the function
        $('#btn-next').click(function () {
            newsscoller(0);
            return false;
        });

        //Previous slide by passing prev=1
        $('#btn-prev').click(function () {
            newsscoller(1);
            return false;
        });

        //Mouse over, pause it, on mouse out, resume the slider show
        $('#slider').hover(

		function () {
		    clearInterval(run);
		},
		function () {
		    run = setInterval('newsscoller(0)', speed);
		}
	);

    });


    function newsscoller(prev) {

        //Get the current selected item (with selected class), if none was found, get the first item
        var current_image = $('#gallery li.selected').length ? $('#gallery li.selected') : $('#gallery li:first');
        var current_excerpt = $('#excerpt li.selected').length ? $('#excerpt li.selected') : $('#excerpt li:first');
        var current_excerpt_bottom = $('#excerpt_bottom li.selected').length ? $('#excerpt_bottom li.selected') : $('#excerpt_bottom li:first');


        //if prev is set to 1 (previous item)
        if (prev) {

            //Get previous sibling
            var next_image = (current_image.prev().length) ? current_image.prev() : $('#gallery li:last');
            var next_excerpt = (current_excerpt.prev().length) ? current_excerpt.prev() : $('#excerpt li:last');
            var next_excerpt_bottom = (current_excerpt_bottom.prev().length) ? current_excerpt_bottom.prev() : $('#excerpt_bottom li:last');

            //if prev is set to 0 (next item)
        } else {

            //Get next sibling
            var next_image = (current_image.next().length) ? current_image.next() : $('#gallery li:first');
            var next_excerpt = (current_excerpt.next().length) ? current_excerpt.next() : $('#excerpt li:first');
            var next_excerpt_bottom = (current_excerpt_bottom.next().length) ? current_excerpt_bottom.next() : $('#excerpt_bottom li:first');

        }

        //clear the selected class
        $('#excerpt li, #gallery li, #excerpt_bottom li').removeClass('selected');

        //reassign the selected class to current items
        next_image.addClass('selected');
        next_excerpt.addClass('selected');
        next_excerpt_bottom.addClass('selected');


        //Scroll the items
        $('#mask-gallery').scrollTo(next_image, 800);
        $('#mask-excerpt').scrollTo(next_excerpt, 800);
        $('#mask-excerpt_bottom').scrollTo(next_excerpt, 800);



    }



</script>

<style>

#slider {

	/* You MUST specify the width and height */
	width:450px;
	height:280px;
	position:relative;	
	overflow:hidden;
}
.showTable
{
    border-collapse:collapse;border-width:0px;
    
}

.comment
{
    color:White;
    font-weight:bold;
}
.comment_body
{
    color:#8d0000;
}
.publ_Date
{
    
    color:#666666;
    font-size:x-small;
}

#mask-gallery {
	
	overflow:hidden;	
}

#gallery {
	
	/* Clear the list style */
	list-style:none;
	margin:0;
	padding:0;
	
	z-index:0;
	
	/* width = total items multiply with #mask gallery width */
	width:900px;
	overflow:hidden;
}

	#gallery li {

		
		/* float left, so that the items are arrangged horizontally */
		float:left;
	}


#mask-excerpt {
	
	/* Set the position */
	/*position:absolute;	*/
	top:0;
	left:0;
	z-index:500px;
	height:50px;
	
	/* width should be lesser than #slider width */
	width:150px;
	overflow:hidden;	
	

}
	
#excerpt {
	/* Opacity setting for different browsers */
	filter:alpha(opacity=60);
	-moz-opacity:0.6;  
	-khtml-opacity: 0.6;
	opacity: 0.6;  
	
	/* Clear the list style */
	list-style:none;
	margin:0;
	padding:0;
	
	/* Set the position */
	z-index:10;
	/*position:absolute;*/
	top:0;
	left:0;
	
	/* Set the style */
	width:150px;
	
	background-color:#000;
	overflow:hidden;
	font-family:arial;
	font-size:10px;
	color:#fff;	
	text-align:right;
}

#mask-excerpt_bottom {
	
	/* Set the position */
	/*position:absolute;	*/
	top:0;
	left:0;
	z-index:500px;
	
	/* width should be lesser than #slider width */
	width:450px;
	overflow:hidden;	
	

}
	
#excerpt_bottom {
	/* Opacity setting for different browsers */
	filter:alpha(opacity=60);
	-moz-opacity:0.6;  
	-khtml-opacity: 0.6;
	opacity: 0.6;  
	
	/* Clear the list style */
	list-style:none;
	margin:0;
	padding:0;
	
	/* Set the position */
	z-index:10;
	/*position:absolute;*/
	top:0;
	left:0;
	
	/* Set the style */
	width:450px;
	background-color:#000;
	overflow:hidden;
	font-family:arial;
	font-size:10px;
	color:#fff;	
	text-align:right;
}

	#excerpt li {
		padding:5px;
	}
	


.clear {
	clear:both;	
}


.style1 {
	border-width: 0;
	border-collapse:collapse;border-color:white
}


.style2 {
	border-width: 0;
}


</style>




</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


    <div class="wrapper col2">
  <div id="topbar">
    <div id="topnav">
      <ul>
        <li class="active"><a href="default.aspx">&#1575;&#1604;&#1585;&#1574;&#1610;&#1587;&#1610;&#1577;</a></li>
        <li><a href="showall.aspx?cat=sports">&#1585;&#1610;&#1575;&#1590;&#1577;</a></li>
        <li><a href="showall.aspx?cat=political">&#1587;&#1610;&#1575;&#1587;&#1577;</a></li>
        <li><a href="showall.aspx?cat=economy">&#1571;&#1602;&#1578;&#1589;&#1575;&#1583; &#1608;&#1576;&#1608;&#1585;&#1589;&#1577;</a></li>
        <li><a href="showall.aspx?cat=fan">&#1601;&#1606; &#1608;&#1587;&#1610;&#1606;&#1605;&#1575;</a></li>
        <li><a href="showall.aspx?cat=comm">&#1575;&#1582;&#1576;&#1575;&#1585; &#1608;&#1585;&#1583;&#1608;&#1583;</a></li>
        <!--li><a href="#">&#1601;&#1606;</a>
          <ul>
            <li><a href="#">Link 1</a></li>
            <li><a href="#">Link 2</a></li>
            <li><a href="#">Link 3</a></li>
          </ul>
        </li-->
       
      </ul>
    </div>
    
    <br class="clear" />
  </div>
</div>
<!-- ####################################################################################################### -->
<div class="wrapper">
  <div class="container">
    <div class="content">
      
      <div class="cn_wrapper">
			<div id="cn_preview" class="cn_preview">
				<div class="cn_content" style="top:5px;">
					<asp:Image ID="Image1"
                runat="server" Height="119" Width="219" ImageUrl="images/demo/1.gif" />
					<h1 style="text-align:center;">  
                        <asp:Label ID="News1_VIP" runat="server" Text="Label"></asp:Label></h1>
					<span class="cn_date">
                        <asp:Label ID="Date1" runat="server" Text="Label"></asp:Label>
                    </span>
					<span class="cn_category">
                        <asp:Label ID="source1" runat="server" Text="source"></asp:Label></span>
					<p>
                        <asp:Label ID="Comment1" runat="server" Text="&#1604;&#1605; &#1610;&#1578;&#1605; &#1575;&#1604;&#1585;&#1583; &#1593;&#1604;&#1609; &#1575;&#1604;&#1582;&#1576;&#1585; &#1576;&#1593;&#1583;"></asp:Label>
                    </p>
					<a href="" target="_blank" class="cn_more"><asp:HyperLink ID="Read_more1" class="cn_more"
                        runat="server">Read more</asp:HyperLink></a>
				</div>
				
				<div class="cn_content">
					<asp:Image ID="Image2"
                runat="server" Height="119" Width="219" ImageUrl="images/demo/3.gif" />
					<h1 style="text-align:center;"><asp:Label ID="News2_VIP" runat="server" Text="Label"></asp:Label></h1>
					<span class="cn_date"> <asp:Label ID="Date2" runat="server" Text="Label"></asp:Label>
                    </span>
					<span class="cn_category"><asp:Label ID="source2" runat="server" Text="source"></asp:Label></span>
					<p>
						 <asp:Label ID="Comment2" runat="server" Text="&#1604;&#1605; &#1610;&#1578;&#1605; &#1575;&#1604;&#1585;&#1583; &#1593;&#1604;&#1609; &#1575;&#1604;&#1582;&#1576;&#1585; &#1576;&#1593;&#1583;"></asp:Label>
					</p>
					<a href="" target="_blank" class="cn_more"><asp:HyperLink ID="Read_more2" class="cn_more"
                        runat="server">Read more</asp:HyperLink></a>
				</div>
				<div class="cn_content">
					<asp:Image ID="Image3"
                runat="server" Height="119" Width="219" ImageUrl="images/demo/3.gif" />
					<h1 style="text-align:center;"><asp:Label ID="News3_VIP" runat="server" Text="Label"></asp:Label></h1>
					<span class="cn_date"> <asp:Label ID="Date3" runat="server" Text="Label"></asp:Label>
                    </span>
					<span class="cn_category"><asp:Label ID="source3" runat="server" Text="source"></asp:Label>
                    </span>
					<p>
						<asp:Label ID="Comment3" runat="server" Text="&#1604;&#1605; &#1610;&#1578;&#1605; &#1575;&#1604;&#1585;&#1583; &#1593;&#1604;&#1609; &#1575;&#1604;&#1582;&#1576;&#1585; &#1576;&#1593;&#1583;"></asp:Label>
					</p>
					<a href="" target="_blank" class="cn_more"><asp:HyperLink ID="Read_more3" class="cn_more"
                        runat="server">Read more</asp:HyperLink></a>
				</div>
				<div class="cn_content">
					<asp:Image ID="Image4"
                runat="server" Height="119" Width="219" ImageUrl="images/demo/3.gif" />
					<h1 style="text-align:center;"><asp:Label ID="News4_VIP" runat="server" Text="Label"></asp:Label></h1>
					<span class="cn_date"> <asp:Label ID="Date4" runat="server" Text="Label"></asp:Label>
                    </span>
					<span class="cn_category"><asp:Label ID="source4" runat="server" Text="source"></asp:Label>
                    </span>
					<p>
						<asp:Label ID="Comment4" runat="server" Text="&#1604;&#1605; &#1610;&#1578;&#1605; &#1575;&#1604;&#1585;&#1583; &#1593;&#1604;&#1609; &#1575;&#1604;&#1582;&#1576;&#1585; &#1576;&#1593;&#1583;"></asp:Label>
					</p>
					<a href="" target="_blank" class="cn_more"><asp:HyperLink ID="Read_more4" class="cn_more"
                        runat="server">Read more</asp:HyperLink></a>
				</div>
				
				
				
				
				
				
			</div>
			<div id="cn_list" class="cn_list">
				<div class="cn_page" style="display:block;">
					<div class="cn_item selected">
						
                            <p class="news_title"><asp:Label ID="News1" runat="server" Text="News1 "></asp:Label>
                        </p>
						
					</div>
					<div class="cn_item">
						 <p class="news_title"><asp:Label ID="News2" runat="server" Text="News1 "></asp:Label>
                        </p>
					</div>
					<div class="cn_item">
						<p class="news_title"><asp:Label ID="News3" runat="server" Text="News1 "></asp:Label>
                        </p>
					</div>
					<div class="cn_item">
						<p class="news_title"><asp:Label ID="News4" runat="server" Text="News1 "></asp:Label>
                        </p>
					</div>
				</div>
				
				
				<div class="cn_nav">
					
					<!--a id="cn_next" class="cn_next" href="showall.aspx?cat=comm"> </a-->
				</div>
			</div>
		</div>




    </div>
    <div class="column">
      <ul class="latestnews">
        <li><img src="http://www.egyptworldwide.com/TestImages/aboutreka.jpg" alt="" width="100px" height="75px" />
          <p><strong style="color:#8d0000;"><a style="color:#8d0000;" href="showProfile.aspx?VID=3">ابو تريكة</a></strong><br /> &#1575;&#1576;&#1608; &#1578;&#1585;&#1610;&#1603;&#1577; &#1575;&#1604;&#1605; &#1608;&#1575;&#1588;&#1607;&#1585; &#1604;&#1575;&#1593;&#1576;&#1610; &#1603;&#1585;&#1577; &#1575;&#1604;&#1602;&#1583;&#1605; &#1601;&#1610; &#1605;&#1589;&#1585; &#1608;&#1575;&#1604;&#1593;&#1575;&#1604;&#1605; &#1575;&#1604;&#1593;&#1585;&#1576;&#1610; &#1608;&#1602;&#1593; &#1605;&#1593;&#1606;&#1575; &#1604;&#1604;&#1578;&#1593;&#1604;&#1610;&#1602; &#1593;&#1604;&#1609; &#1575;&#1582;&#1576;&#1575;&#1585;&#1607; &#1575;&#1604;&#1605;&#1606;&#1587;&#1608;&#1576;&#1577; &#1575;&#1604;&#1610;&#1607; &#1601;&#1610; &#1608;&#1587;&#1575;&#1574;&#1604; &#1575;&#1604;&#1606;&#1588;&#1585; &#1575;&#1604;&#1605;&#1582;&#1578;&#1604;&#1601;&#1577; &#1608;&#1607;&#1608; &#1605;&#1575; &#1610;&#1593;&#1583; &#1582;&#1591;&#1608;&#1577; &#1575;&#1608;&#1604;&#1609; &#1578;&#1583;&#1593;&#1605; &#1575;&#1604;&#1578;&#1608;&#1575;&#1589;&#1604; &#1605;&#1593;&#1607; </p>
        </li>
        <li><img src="http://www.egyptworldwide.com/TestImages/elnor.jpg" alt="" width="100px" height="75px" />
          <p><strong><a style="color:#8d0000;" href="showProfile.aspx?VID=14">حزب النور</a></strong><br /> حزب النور هو الجبهة السياسية للدعوة السلفية وهو حديث المنشأ ولكنه يحظى بمؤيدين كثيرين في الشارع ويحظى بكتلة نيابية بالبرلمان</p>
        </li>
        <li class="last"><img src="http://www.egyptworldwide.com/TestImages/a5wan.jpg" alt="" width="100px" height="75px" />
          <p><strong><a style="color:#8d0000;" href="showProfile.aspx?VID=16">حزب الحرية والعدالة</a></strong><br />حزب الحرية والعدالة هو الزراع السياسي لجماعة الاخوان المسلمين وهو حزب الاغلبية بمجلس الشعب وهو الفائز بأول انتخابات رئاسية بعد الثورة </p>
        </li>
      </ul>
    </div>
    <br class="clear" />
  </div>
</div>
<!-- ####################################################################################################### -->
<div class="wrapper">
  <div id="adblock">
    <div class="fl_left"><a href="#"><img src="images/demo/e3lan_2.png" alt="" /></a></div>
    <div class="fl_right"><a href="#"><img src="images/demo/e3lan_3.png" alt="" /></a></div>
    <br class="clear" />
  </div>
  <div id="hpage_cats">
    <div class="fl_left">
      <h2><a href="showall.aspx?cat=sports">&#1571;&#1582;&#1576;&#1575;&#1585; &#1575;&#1604;&#1585;&#1610;&#1575;&#1590;&#1577;</a></h2>
      
      <p ><strong>
          <asp:HyperLink  ID="Sport_News1_Header" runat="server" CssClass="a5bar" Target="_blank" >HyperLink</asp:HyperLink>
      </strong></p>
      <table class="showTable" style="background-color:#EFEFEF;">
      <tr>
      <td style="width:100px;" class="showTable" >
       <asp:Image ID="Sport_News1_Image" runat="server" Height="100" Width="100" />
      </td>
      <td class="showTable" width="100%">
      <table class="showTable" width="100%">
      <tr>
      <td class="CommentBar" >
      <span class="comment">
      &#1575;&#1604;&#1578;&#1593;&#1604;&#1610;&#1602;
      </span>
      </td> 

      </tr>
      <tr>
      <td class="showTable" style="height:45px;background-color:#F7F7F7;">
          <asp:Label ID="Sport_News1_Comment" runat="server" Text="Label"  CssClass="comment_body"></asp:Label>
       </td>
      </tr>
      <tr>
       <td class="showTable" >
           <table class="showTable" style="height:20px;">
           <tr>
           <td class="showTable" style="width:50px;text-align:right;height:20px;">
               <asp:Image ID="Sport_News1_SourceImage" runat="server" Height="15px" 
                   Width="50px" />
            </td>
            <td class="showTable" style="height:20px;">
                <asp:Label ID="Sport_News1_PubDate" runat="server" Text="publish date" CssClass="publ_Date"></asp:Label>
            </td>
           </tr>
           </table>
       
       </td>
      </tr>
      </table>
      </td>
      </tr>
      
      </table>
    </div>
    <div class="fl_right">
      <h2><a href="showall.aspx?cat=political">&#1571;&#1582;&#1576;&#1575;&#1585; &#1575;&#1604;&#1587;&#1610;&#1575;&#1587;&#1577;</a></h2>
       
      <p><strong>
          <asp:HyperLink ID="Political_News1_Header" runat="server" CssClass="a5bar"  Target="_blank">HyperLink</asp:HyperLink>
      </strong></p>
      <table class="showTable" width="100%" style="background-color:#EFEFEF">
      <tr>
      <td style="width:100px;" class="showTable" >
       <asp:Image ID="Image_News1_Political" runat="server" Height="100" Width="100" />
      </td>
      <td class="showTable" width="100%">
      <table class="showTable" width="100%">
      <tr>
      <td class="CommentBar" >
      <span class="comment">
      &#1575;&#1604;&#1578;&#1593;&#1604;&#1610;&#1602;
      </span>
      </td> 

      </tr>
      <tr>
      <td class="showTable" style="height:45px;background-color:#F7F7F7;">
          <asp:Label ID="Political_News1_Comment" runat="server" Text="Label"  CssClass="comment_body"></asp:Label>
       </td>
      </tr>
      <tr>
       <td class="showTable" >
           <table class="showTable" style="height:20px;">
           <tr>
           <td class="showTable" style="width:50px;text-align:right;height:20px;">
               <asp:Image ID="Political_News1_SourceImage" runat="server" Height="15px" 
                   Width="50px" />
            </td>
            <td class="showTable" style="height:20px;">
                <asp:Label ID="Political_News1_PubDate" runat="server" Text="publish date" CssClass="publ_Date"></asp:Label>
            </td>
           </tr>
           </table>
       
       </td>
      </tr>
      </table>
      </td>
      </tr>
      
      </table>
    </div>
   <!-- //////////////////////////////////////// -->
    <br class="clear" />
    <div class="fl_left">
      <h2><a href="showall.aspx?cat=econ">&#1571;&#1582;&#1576;&#1575;&#1585; &#1575;&#1604;&#1575;&#1602;&#1578;&#1589;&#1575;&#1583; &#1608;&#1575;&#1604;&#1576;&#1585;&#1589;&#1577; </a></h2>
   
      <p><strong>
          <asp:HyperLink ID="Economy_News1_Header" runat="server" CssClass="a5bar" Target="_blank">HyperLink</asp:HyperLink>
      </strong></p>
      <table class="showTable" style="background-color:#EFEFEF;">
      <tr>
      <td style="width:100px;" class="showTable" >
       <asp:Image ID="Economy_News1_Image" runat="server" Height="100" Width="100" />
      </td>
      <td class="showTable" width="100%">
      <table class="showTable" width="100%">
      <tr>
      <td class="CommentBar" >
      <span class="comment">
      &#1575;&#1604;&#1578;&#1593;&#1604;&#1610;&#1602;
      </span>
      </td> 

      </tr>
      <tr>
      <td class="showTable" style="height:45px;background-color:#F7F7F7;">
          <asp:Label ID="Economy_News1_Comment" runat="server" Text="Label"  CssClass="comment_body"></asp:Label>
       </td>
      </tr>
      <tr>
       <td class="showTable" >
           <table class="showTable" style="height:20px;">
           <tr>
           <td class="showTable" style="width:50px;text-align:right;height:20px;">
               <asp:Image ID="Economy_News1_SourceImage" runat="server" Height="15px" 
                   Width="50px" />
            </td>
            <td class="showTable" style="height:20px;">
                <asp:Label ID="Economy_News1_PubDate" runat="server" Text="publish date" CssClass="publ_Date"></asp:Label>
            </td>
           </tr>
           </table>
       
       </td>
      </tr>
      </table>
      </td>
      </tr>
      
      </table>
    </div>
    <div class="fl_right" >
      <h2><a href="showall.aspx?cat=fan">&#1571;&#1582;&#1576;&#1575;&#1585; &#1575;&#1604;&#1601;&#1606;</a></h2>
     
      <p><strong>
          <asp:HyperLink ID="Fan_News1_Header" runat="server" CssClass="a5bar" Target="_blank">HyperLink</asp:HyperLink>
      </strong></p>
      <table class="showTable" style="background-color:#EFEFEF;">
      <tr>
      <td style="width:100px;" class="showTable" >
       <asp:Image ID="Fan_News1_Image" runat="server" Height="100" Width="100" />
      </td>
      <td class="showTable" width="100%">
      <table class="showTable" width="100%">
      <tr>
      <td class="CommentBar" >
      <span class="comment">
      &#1575;&#1604;&#1578;&#1593;&#1604;&#1610;&#1602;
      </span>
      </td> 

      </tr>
      <tr>
      <td class="showTable" style="height:45px;background-color:#F7F7F7;">
          <asp:Label ID="Fan_News1_Comment" runat="server" Text="Label"  CssClass="comment_body"></asp:Label>
       </td>
      </tr>
      <tr>
       <td class="showTable" >
           <table class="showTable" style="height:20px;">
           <tr>
           <td class="showTable" style="width:50px;text-align:right;height:20px;">
               <asp:Image ID="Fan_News1_SourceImage" runat="server" Height="15px" 
                   Width="50px" />
            </td>
            <td class="showTable" style="height:20px;">
                <asp:Label ID="Fan_News1_PubDate" runat="server" Text="publish date" CssClass="publ_Date"></asp:Label>
            </td>
           </tr>
           </table>
       
       </td>
      </tr>
      </table>
      </td>
      </tr>
      
      </table>
    </div>
    <br class="clear" />
  </div>
</div>
<!-- ####################################################################################################### -->
<div class="wrapper">
  <div class="container">
    <div class="content">
      <div id="hpage_latest">
        <h2 style="font-family:Tahoma;">&#1575;&#1604;&#1575;&#1582;&#1576;&#1575;&#1585; &#1575;&#1604;&#1575;&#1603;&#1579;&#1585; &#1605;&#1588;&#1575;&#1607;&#1583;&#1577;</h2>
        <ul>
          <li> <asp:Image ID="MostViewd_Pic1" runat="server" Width="190" Height="130" ImageUrl="images/demo/190x130.gif" />
            <p>
                <asp:Label ID="MostViewd_Title1" runat="server" Text="Label"></asp:Label>
            </p>
            
           <p class="readmore"><% Response.Write("<a href=\"shownews.aspx?NewsID=" + Most_Viewed.Rows[0][2] + "\">&#1602;&#1585;&#1575;&#1569;&#1577; &#1575;&#1604;&#1605;&#1586;&#1610;&#1583; &raquo;\""); %></a></p>
          </li>
          <li><asp:Image ID="MostViewd_Pic2" runat="server" Width="190" Height="130" ImageUrl="images/demo/190x130.gif" />
             <p>
                <asp:Label ID="MostViewd_Title2" runat="server" Text="Label"></asp:Label>
            </p>
            
            <p class="readmore"><% Response.Write("<a href=\"shownews.aspx?NewsID=" + Most_Viewed.Rows[1][2] + "\">&#1602;&#1585;&#1575;&#1569;&#1577; &#1575;&#1604;&#1605;&#1586;&#1610;&#1583; &raquo;\""); %></a></p>
          </li>
          <li class="last"><asp:Image ID="MostViewd_Pic3" runat="server" Width="190" Height="130" ImageUrl="images/demo/190x130.gif" />
             <p>
                <asp:Label ID="MostViewd_Title3" runat="server" Text="Lable"></asp:Label>
            </p>
            
            <p class="readmore"><% Response.Write("<a href=\"shownews.aspx?NewsID=" + Most_Viewed.Rows[2][2] + "\">&#1602;&#1585;&#1575;&#1569;&#1577; &#1575;&#1604;&#1605;&#1586;&#1610;&#1583; &raquo;\""); %></a></p>
          </li>
        </ul>
        <br class="clear" />
      </div>

      <div id="hpage_latest">
        <h2 style="font-family:Tahoma;">&#1571;&#1585;&#1575;&#1569; &#1575;&#1604;&#1602;&#1585;&#1575;&#1569; &#1601;&#1610; &#1575;&#1604;&#1605;&#1608;&#1602;&#1593;</h2>
        <table>
        <tr>
        <td width="100%" >
    <table cellpadding="0" cellspacing="0" style="border-collapse:collapse;"  >
    <tr>
    <td>
    <table>
    
    </table>
    </td>
    </tr>
    <tr>
    <td style="padding-right:10px;height:30px">
    <p  id="testomanilas_txt" class="txt1" >
   &#1575;&#1604;&#1605;&#1608;&#1602;&#1593; &#1576;&#1607; &#1582;&#1583;&#1605;&#1575;&#1578; &#1605;&#1605;&#1578;&#1575;&#1586;&#1577; &#1580;&#1583;&#1575; &#1575;&#1578;&#1605;&#1606;&#1609; &#1575;&#1606; &#1610;&#1588;&#1578;&#1585;&#1603; &#1601;&#1610;&#1607; &#1575;&#1603;&#1576;&#1585; &#1593;&#1583;&#1583; &#1605;&#1606; &#1575;&#1604;&#1605;&#1588;&#1575;&#1607;&#1610;&#1585; &#1593;&#1588;&#1575;&#1606; &#1606;&#1602;&#1583;&#1585; &#1606;&#1593;&#1585;&#1601; &#1585;&#1571;&#1610;&#1607;&#1605; &#1601;&#1610; &#1575;&#1604;&#1604;&#1610; &#1576;&#1610;&#1578;&#1606;&#1588;&#1585; &#1593;&#1606;&#1607;&#1605;.&nbsp;&nbsp;&nbsp;&nbsp; &#1605;&#1610;&#1606;&#1575; &#1585;&#1571;&#1601;&#1578;

    </p>
    </td>
    </tr>
    <tr>
    <td>
       <table cellpadding="1" cellspacing="2">
       <tr>
      
         <td>
       <img name="face12" src="images/12_.gif" alt="Richard Thomas" class="face" onmouseover="change_Testmanial_Txt(' &#1605;&#1606; &#1575;&#1581;&#1587;&#1606; &#1575;&#1604;&#1605;&#1608;&#1575;&#1602;&#1593; &#1575;&#1604;&#1604;&#1610; &#1586;&#1585;&#1578;&#1607;&#1575; &#1608;&#1601;&#1603;&#1585;&#1578;&#1607; &#1585;&#1575;&#1574;&#1593;&#1577; &#1575;&#1578;&#1605;&#1606;&#1609; &#1575;&#1606; &#1610;&#1588;&#1575;&#1585;&#1603; &#1601;&#1610;&#1607; &#1603;&#1604; &#1605;&#1588;&#1575;&#1607;&#1610;&#1585; &#1608;&#1605;&#1572;&#1587;&#1587;&#1575;&#1578; &#1605;&#1589;&#1585;  &nbsp;&nbsp;&nbsp;&nbsp;   &#1605;&#1575;&#1610;&#1603;&#1604; &#1605;&#1575;&#1580;&#1583;&nbsp;',12)">
       </td>

        <td>
       <img name="face11" src="images/11_.gif" alt="Richard Thomas" class="face" onmouseover="change_Testmanial_Txt('&#1583;&#1607; &#1575;&#1606;&#1580;&#1575;&#1586; &#1593;&#1592;&#1610;&#1605; &#1575;&#1606; &#1581;&#1575;&#1580;&#1577; &#1586;&#1610; &#1603;&#1583;&#1607; &#1578;&#1603;&#1608;&#1606; &#1605;&#1608;&#1580;&#1608;&#1583;&#1577; &#1593;&#1606;&#1583;&#1606;&#1575; &#1601;&#1610; &#1605;&#1589;&#1585; &#1575;&#1578;&#1605;&#1578;&#1609; &#1604;&#1607;&#1575; &#1575;&#1604;&#1606;&#1580;&#1575;&#1581;!  &nbsp;&nbsp;&nbsp;&nbsp;   Richard Thomas',11)">
       </td>
       
        <td>
       <img name="face10" src="images/10_.gif" alt="Noreen Ali" class="face" onmouseover="change_Testmanial_Txt('&#1575;&#1604;&#1605;&#1608;&#1602;&#1593; &#1601;&#1603;&#1585;&#1578;&#1608;&#1575; &#1580;&#1575;&#1605;&#1583;&#1607; &#1580;&#1583;&#1575;&#1575; &#1585;&#1576;&#1606;&#1575; &#1605;&#1593;&#1575;&#1603;&#1608; &#1608;&#1610;&#1608;&#1601;&#1602;&#1603;&#1608;&#1575; &#1608; &#1578;&#1601;&#1590;&#1604;&#1608; &#1576;&#1575;&#1604;&#1606;&#1580;&#1575;&#1581; &#1583;&#1607; &#1610;&#1575;&#1585;&#1576; .&nbsp;&nbsp;&nbsp;&nbsp;     &#1575;&#1576;&#1585;&#1575;&#1605;&nbsp;',10)">
       </td>
       
        <td>
       <img name="face9" src="images/9_.gif" alt="David Taylor" class="face" onmouseover="change_Testmanial_Txt('&#1605;&#1588; &#1605;&#1580;&#1585;&#1583; &#1605;&#1608;&#1602;&#1593; &#1575;&#1582;&#1576;&#1575;&#1585;&#1610; &#1576;&#1610;&#1593;&#1585;&#1590; &#1575;&#1604;&#1575;&#1582;&#1576;&#1575;&#1585; &#1608;&#1582;&#1604;&#1575;&#1589; , &#1604;&#1603;&#1606; &#1603;&#1605;&#1575;&#1606;  &#1575;&#1604;&#1578;&#1608;&#1575;&#1589;&#1604; &#1605;&#1593; &#1575;&#1604;&#1605;&#1588;&#1575;&#1607;&#1610;&#1585; &#1608; &#1571;&#1582;&#1583; &#1578;&#1593;&#1604;&#1610;&#1602; &#1605;&#1606;&#1607;&#1605; &#1593;&#1604;&#1610; &#1575;&#1604;&#1582;&#1576;&#1585;, &#1580;&#1583;&#1610;&#1583;&#1607; &#1608; &#1588;&#1610;&#1602;&#1607; .  &nbsp;&nbsp;&nbsp;&nbsp;   &#1601;&#1575;&#1583;&#1610; &#1587;&#1575;&#1605;&#1610;&nbsp;',9)">
       </td>
       
        <td>
       <img name="face8" src="images/8_.gif" alt="Elizabeth Moore" class="face" onmouseover="change_Testmanial_Txt('&#1604;&#1605;&#1575; &#1576;&#1587;&#1605;&#1593; &#1582;&#1576;&#1585; &#1580;&#1583;&#1610;&#1583; &#1605;&#1588; &#1576;&#1581;&#1578;&#1575;&#1580; &#1575;&#1578;&#1575;&#1576;&#1593; &#1575;&#1604;&#1582;&#1576;&#1585; &#1601;&#1610; &#1603;&#1604; &#1575;&#1604;&#1605;&#1608;&#1575;&#1602;&#1593; &#1593;&#1588;&#1575;&#1606; &#1575;&#1578;&#1571;&#1603;&#1583; &#1605;&#1606; &#1589;&#1581;&#1578;&#1607; , &#1576;&#1587; &#1576;&#1583;&#1582;&#1604; &#1593;&#1604;&#1610; &#1607;&#1608;&#1606;&#1587;&#1578; &#1580;&#1610;&#1578;  &#1608; &#1575;&#1578;&#1575;&#1603;&#1583;. &nbsp;&nbsp;&nbsp;&nbsp;  &#1575;&#1576;&#1585;&#1575;&#1605;&nbsp;',8)">
       </td>
       
        <td>
       <img name="face7" src="images/7_.gif" alt="Alex Grasso" class="face" onmouseover="change_Testmanial_Txt('  &#1576;&#1610;&#1593;&#1585;&#1601;&#1606;&#1610; &#1605;&#1583;&#1610; &#1605;&#1589;&#1583;&#1575;&#1602;&#1610;&#1577; &#1605;&#1589;&#1575;&#1583;&#1585; &#1575;&#1604;&#1571;&#1582;&#1576;&#1575;&#1585; &#1576;&#1588;&#1603;&#1604; &#1583;&#1602;&#1610;&#1602; &#1580;&#1583;&#1575; &#1608; &#1605;&#1606;&#1591;&#1602;&#1610;.  &nbsp;&nbsp;&nbsp;&nbsp;  &#1605;&#1605;&#1587;&nbsp;',7)">
       </td>
       
        <td>
       <img name="face6" src="images/6_.gif" alt="Amaya Akio" class="face" onmouseover="change_Testmanial_Txt('&#1585;&#1571;&#1610;. &nbsp;&nbsp;&nbsp;&nbsp;   Amaya Akio',6)">
       </td>
       
        <td>
       <img name="face5" src="images/5_.gif" alt="Amal Elway" class="face" onmouseover="change_Testmanial_Txt('&#8226;	&#1571;&#1606;&#1575; &#1605;&#1588; &#1605;&#1581;&#1578;&#1575;&#1580; &#1571;&#1578;&#1575;&#1576;&#1593;  &#1575;&#1604;&#1571;&#1582;&#1576;&#1575;&#1585; &#1593;&#1604;&#1609; 100 &#1605;&#1608;&#1602;&#1593; &#1548; &#1603;&#1604;  &#1575;&#1604;&#1571;&#1582;&#1576;&#1575;&#1585; &#1605;&#1608;&#1580;&#1608;&#1583;&#1607;  &#1601;&#1610; &#1605;&#1608;&#1602;&#1593; &#1608;&#1575;&#1581;&#1583; &#1583;&#1607; &#1571;&#1587;&#1607;&#1604; &#1576;&#1603;&#1578;&#1610;&#1585; &#1601;&#1610; &#1575;&#1604;&#1578;&#1589;&#1601;&#1581;..  &nbsp;&nbsp;&nbsp;&nbsp;  &#1575;&#1610;&#1605;&#1606; &#1606;&#1576;&#1610;&#1604;&nbsp;',5)">
       </td>
       
        <td>
       <img name="face4" src="images/4_.gif" alt="Aaina Omer" class="face" onmouseover="change_Testmanial_Txt('&#1576;&#1575;&#1610;&#1577; &#1605;&#1605;&#1578;&#1575;&#1586;&#1577; &#1575;&#1578;&#1605;&#1606;&#1609; &#1575;&#1604;&#1605;&#1586;&#1610;&#1583; &#1605;&#1606; &#1575;&#1604;&#1582;&#1583;&#1605;&#1575;&#1578; &#1608;&#1578;&#1594;&#1591;&#1610;&#1577; &#1605;&#1593;&#1592;&#1605; &#1575;&#1604;&#1575;&#1582;&#1576;&#1575;&#1585; &#1608;&#1575;&#1606;&#1578;&#1588;&#1575;&#1585; &#1575;&#1604;&#1582;&#1583;&#1605;&#1577; &#1601;&#1610; &#1575;&#1604;&#1593;&#1575;&#1604;&#1605; &#1603;&#1604;&#1607;.  &nbsp;&nbsp;&nbsp;&nbsp; &#1605;&#1575;&#1585;&#1603; &nbsp',4)">
       </td>
       
        <td>
       <img name="face3" src="images/3_.gif" alt="John Williams" class="face" onmouseover="change_Testmanial_Txt('&#1605;&#1576;&#1585;&#1608;&#1608;&#1608;&#1608;&#1608;&#1603; &#1575;&#1606;&#1591;&#1604;&#1575;&#1602; &#1575;&#1604;&#1605;&#1608;&#1602;&#1593; &#1608;&#1576;&#1583;&#1569; &#1582;&#1583;&#1605;&#1577; &#1580;&#1583;&#1610;&#1583;&#1577; &#1593;&#1604;&#1609; &#1605;&#1587;&#1578;&#1608;&#1609; &#1575;&#1604;&#1593;&#1575;&#1604;&#1605; &#1605;&#1593; &#1578;&#1605;&#1606;&#1610;&#1575;&#1578;&#1610; &#1576;&#1575;&#1604;&#1578;&#1608;&#1601;&#1610;&#1602;.   &nbsp;&nbsp;&nbsp;&nbsp; &#1605;&#1575;&#1585;&#1610;&#1608; &nbsp',3)">
       </td>
       
        <td>
       <img name="face2" src="images/2_.gif" alt="Mary Johnson" class="face" onmouseover="change_Testmanial_Txt('&#1608;&#1575;&#1575;&#1575;&#1575;&#1575;&#1575;&#1575;&#1575;&#1575;&#1575;&#1575;&#1608; &#1575;&#1604;&#1601;&#1603;&#1585;&#1577; &#1585;&#1575;&#1574;&#1593;&#1577; &#1580;&#1583;&#1575; &#1575;&#1606;&#1575; &#1587;&#1580;&#1604;&#1578; &#1608;&#1576;&#1602;&#1610;&#1578; &#1605;&#1578;&#1575;&#1576;&#1593; &#1604;&#1575;&#1582;&#1576;&#1575;&#1585; &#1575;&#1604;&#1605;&#1588;&#1575;&#1607;&#1610;&#1585; &#1575;&#1604;&#1604;&#1610; &#1576;&#1581;&#1576;&#1607;&#1605; &#1610;&#1575;&#1604;&#1575; &#1603;&#1604;&#1607; &#1610;&#1587;&#1580;&#1604; &#1608;&#1610;&#1588;&#1608;&#1601; &#1575;&#1605;&#1603;&#1575;&#1606;&#1610;&#1575;&#1578; &#1575;&#1604;&#1605;&#1608;&#1602;&#1593;.  &nbsp;&nbsp;&nbsp;&nbsp;  &#1575;&#1576;&#1575;&#1606;&#1608;&#1576; &#1606;&#1575;&#1589;&#1585;&nbsp;',2)">
       </td>
       
        <td>
       <img name="face1" src="images/1_face.gif" alt="James Smith" class="face" onmouseover="change_Testmanial_Txt('&#1575;&#1604;&#1605;&#1608;&#1602;&#1593; &#1576;&#1607; &#1582;&#1583;&#1605;&#1575;&#1578; &#1605;&#1605;&#1578;&#1575;&#1586;&#1577; &#1580;&#1583;&#1575; &#1575;&#1578;&#1605;&#1606;&#1609; &#1575;&#1606; &#1610;&#1588;&#1578;&#1585;&#1603; &#1601;&#1610;&#1607; &#1575;&#1603;&#1576;&#1585; &#1593;&#1583;&#1583; &#1605;&#1606; &#1575;&#1604;&#1605;&#1588;&#1575;&#1607;&#1610;&#1585; &#1593;&#1588;&#1575;&#1606; &#1606;&#1602;&#1583;&#1585; &#1606;&#1593;&#1585;&#1601; &#1585;&#1571;&#1610;&#1607;&#1605; &#1601;&#1610; &#1575;&#1604;&#1604;&#1610; &#1576;&#1610;&#1578;&#1606;&#1588;&#1585; &#1593;&#1606;&#1607;&#1605;.   &nbsp;&nbsp;&nbsp;&nbsp; &#1605;&#1610;&#1606;&#1575; &#1585;&#1571;&#1601;&#1578;&nbsp; ',1)">
       </td>











 


       </tr>
       </table>
    </td>
    </tr>
    </table>
</td>

        </tr>
        </table>
        <br class="clear" />
      </div>
    </div>
    
    <div class="column">
      <div class="holder">
      <iframe src="//www.facebook.com/plugins/likebox.php?href=http%3A%2F%2Fwww.facebook.com%2Fhonestgate&amp;width=300&amp;height=200&amp;colorscheme=light&amp;show_faces=true&amp;border_color&amp;stream=true&amp;header=true&amp;appId=144900862270473" scrolling="no" frameborder="0" style="border:none; overflow:hidden; width:300px; height:200px;" allowTransparency="true"></iframe>
      
      </div>
      
      
      <div class="holder"><a href="Evaluation.aspx"><!--img src="images/demo/300x80.gif" alt="" /-->
          <asp:Chart ID="Chart1" runat="server" Height="160px" BorderlineColor="Black" 
              BorderlineDashStyle="Solid">
              <Series>
                  <asp:Series Name="Series1" ChartType="StackedColumn" YValuesPerPoint="6">
                      <Points>
                          <asp:DataPoint Label="Filoagl" YValues="50,0,0,0,0,0" />
                          <asp:DataPoint Label="Yallakora" YValues="0,0,0,0,0,0" />
                          <asp:DataPoint Label="Elshrok" YValues="0,0,0,0,0,0" />
                          <asp:DataPoint Label="El Arabia" YValues="0,0,0,0,0,0" />
                            <asp:DataPoint Label="Masrawy" YValues="0,0,0,0,0,0" />
                      </Points>
                  </asp:Series>
              </Series>
              <ChartAreas>
                  <asp:ChartArea Name="ChartArea1">
                  </asp:ChartArea>
              </ChartAreas>
              <Titles>
                  <asp:Title Font="Tahoma, 8.25pt, style=Bold" Name="SourceEvaluation" 
                      Text="&#1578;&#1602;&#1610;&#1610;&#1605; &#1605;&#1589;&#1575;&#1583;&#1585; &#1575;&#1604;&#1575;&#1582;&#1576;&#1575;&#1585;">
                  </asp:Title>
              </Titles>
          </asp:Chart>
      
      </a></div>
      
    </div>
    <br class="clear" />
  </div>
</div>
<!-- ####################################################################################################### -->
<div class="wrapper">
  <div id="footer">
    <div class="footbox">
      <h2>&#1593;&#1606;&#1600;&#1600;&#1600;&#1600;&#1575;</h2>
      <ul>
        <li><a href="#">&#1601;&#1603;&#1585;&#1577; &#1575;&#1604;&#1605;&#1608;&#1602;&#1593;</a></li>
        <li><a href="#">&#1587;&#1610;&#1575;&#1587;&#1577; &#1575;&#1604;&#1582;&#1589;&#1608;&#1589;&#1610;&#1577;</a></li>
        <li><a href="#">&#1601;&#1608;&#1575;&#1574;&#1583; &#1575;&#1604;&#1575;&#1587;&#1578;&#1582;&#1583;&#1575;&#1605;</a></li>
        
        
       <li class="last"><a href="showall.aspx?cat=comm">&#1571;&#1582;&#1576;&#1575;&#1585; &#1608;&#1578;&#1593;&#1604;&#1610;&#1602;&#1575;&#1578;</a></li>
      </ul>
    </div>
    <div class="footbox">
      <h2>&#1605;&#1589;&#1575;&#1583;&#1585;&#1606;&#1575;</h2>
      <ul>
        <li><a href="#">&#1605;&#1608;&#1602;&#1593; &#1601;&#1610;&#1604;&#1580;&#1608;&#1604; &#1575;&#1604;&#1585;&#1610;&#1575;&#1590;&#1610;</a></li>
        <li><a href="#">&#1605;&#1608;&#1602;&#1593; &#1610;&#1575;&#1604;&#1575; &#1603;&#1608;&#1585;&#1575; &#1575;&#1604;&#1585;&#1610;&#1575;&#1590;&#1610;</a></li>
        <li><a href="#">&#1580;&#1585;&#1610;&#1583;&#1577; &#1575;&#1604;&#1593;&#1585;&#1576;&#1610;&#1577;</a></li>
        <li><a href="#">&#1580;&#1585;&#1610;&#1583;&#1577; &#1575;&#1604;&#1588;&#1585;&#1608;&#1602;</a></li>
        
        <li class="last"><a href="#">&#1588;&#1575;&#1607;&#1583; &#1575;&#1604;&#1605;&#1586;&#1610;&#1583; &#1608;&#1575;&#1602;&#1578;&#1585;&#1581; &#1605;&#1593;&#1606;&#1575;</a></li>
      </ul>
    </div>
    <div class="footbox">
      <h2>&#1582;&#1583;&#1605;&#1575;&#1578; &#1575;&#1604;&#1605;&#1608;&#1602;&#1593;</h2>
      <ul>
        <li><a href="Evaluation.aspx">&#1578;&#1578;&#1576;&#1593; &#1575;&#1604;&#1575;&#1588;&#1582;&#1575;&#1589;</a></li>
        <li><a href="#">&#1578;&#1602;&#1610;&#1610;&#1605; &#1605;&#1589;&#1575;&#1583;&#1585; &#1575;&#1604;&#1575;&#1582;&#1576;&#1575;&#1585;</a></li>
        <li><a href="UserRegistartion.aspx">&#1575;&#1604;&#1578;&#1587;&#1580;&#1610;&#1604; &#1605;&#1593;&#1606;&#1575;</a></li>
        <li><a href="showall.aspx?cat=comm">&#1575;&#1582;&#1576;&#1575;&#1585; &#1608;&#1578;&#1593;&#1604;&#1610;&#1602;&#1575;&#1578;</a></li>
        
        <li class="last"><a href="Benefits.aspx">&#1602;&#1585;&#1575;&#1569;&#1577; &#1575;&#1604;&#1605;&#1586;&#1610;&#1583;</a></li>
      </ul>
    </div>
    <div class="footbox">
      <h2>&#1578;&#1608;&#1575;&#1589;&#1604; &#1605;&#1593;&#1606;&#1575;</h2>
      <ul>
        <li><a href="www.facebook.com/honestgate">&#1575;&#1604;&#1601;&#1610;&#1587; &#1576;&#1608;&#1603;</a></li>
        <li><a href="#">&#1605;&#1583;&#1608;&#1606;&#1575;&#1578; &#1578;&#1608;&#1610;&#1578;&#1585;</a></li>
        <li><a href="#">&#1588;&#1575;&#1607;&#1583;&#1606;&#1575; &#1593;&#1604;&#1609; &#1610;&#1608;&#1578;&#1610;&#1608;&#1576;</a></li>
        <li><a href="#">&#1580;&#1608;&#1580;&#1604; &#1576;&#1604;&#1587;</a></li>
        
        <li class="last"><a href="#">&#1604;&#1604;&#1578;&#1608;&#1575;&#1589;&#1604; &#1593;&#1576;&#1585; &#1575;&#1604;&#1575;&#1610;&#1605;&#1610;&#1604;</a></li>
      </ul>
    </div>
    <div class="footbox last">
      <h2>&#1571;&#1602;&#1587;&#1575;&#1605; &#1575;&#1604;&#1605;&#1608;&#1602;&#1593;</h2>
      <ul>
        <li><a href="#">&#1575;&#1604;&#1585;&#1574;&#1610;&#1587;&#1610;&#1577;</a></li>
        <li><a href="showall.aspx?cat=political">&#1575;&#1582;&#1576;&#1575;&#1585; &#1587;&#1610;&#1575;&#1587;&#1610;&#1577;</a></li>
        <li><a href="showall.aspx?cat=economy">&#1571;&#1582;&#1576;&#1575;&#1585; &#1575;&#1602;&#1578;&#1589;&#1575;&#1583;&#1610;&#1577;</a></li>
        <li><a href="showall.aspx?cat=sports">&#1571;&#1582;&#1576;&#1575;&#1585; &#1585;&#1610;&#1575;&#1590;&#1610;&#1577;</a></li>
        <li><a href="showall.aspx?cat=fan">&#1571;&#1582;&#1576;&#1575;&#1585; &#1601;&#1606;&#1610;&#1577;</a></li>
        
      </ul>
    </div>
    <br class="clear" />
  </div>
</div>





</asp:Content>

