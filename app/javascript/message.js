$(function(){
  function buildHTML(message) {
    let html =
      `
       <ul class="message-box-content-main__message-box-second" ,data-message-id:${message.id}>
        <li class="message-box-content-main__message-box-secound--main">
          <div class="message-content-second">
            ${message.content}
          </div>
        </li>
      </ul> 
      `
    return html;
  }
  $('.form').on('submit' ,function (e) {
    e.preventDefault();
    let formData = new FormData(this);
    let url = $(this).attr('action');
    $.ajax({
      url: url,
      type: "POST",
      data: formData,
      dataType: 'json',
      processData: false,
      contentType: false,
    })
    .done(function (data) {
      console.log(data)
      let html = buildHTML(data);
      console.log(html)
      $('.message-box-content-main').append(html)
      $('.form')[0].reset();
      // $('.message-box-content-main').animate({ scrollTop: $('.message-box-content-main')[0].scrollHeight });
      $('.message-text__submit-main--submit').prop('disabled', false);
    })
    .fail(function () {
      alert('error');
    });	
  });
});