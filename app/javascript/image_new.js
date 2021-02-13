$(function(){
  $('#upload-icon').on('change', function (e) {
    const file = e.target.files[0]
    console.log(file)
    //target.files[0]をつくる
    const reader = new FileReader();
    reader.onload = (function (file) {
    //読み込みが成功した場合(onloadイベント内)
    return function (e) {
      $(".profile-main__image--icon__input__image").remove();
      $(".profile-main__image--icon__input__image2").empty();
      $(".profile-main__image--icon__input__image2").append($('<img>').attr({
      src: e.target.result,
      width: "100%",
      class: "preview",
      title: file.name
      }));
    };
  })(file);
  reader.readAsDataURL(file);
  });
});