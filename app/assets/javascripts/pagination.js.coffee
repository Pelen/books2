jQuery ->
  if $('#infinite-scrolling').size() > 0
    $(window).on 'scroll', ->
      more_books_url = $('.pagination .next_page').attr('href')
        if more_books_url && $(window).scrollTop() > $(document).height() - $(window).height() - 60
            $('.pagination').html('<img src="/ajax-loader.gif" alt="Loading..." title="Loading..." />')
            $.getScript more_books_url
        return
      return


 