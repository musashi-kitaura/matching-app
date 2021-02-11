// $(function () {
//   $fileField = $('#upload-icon')
//   // fileFieldにidを代入
//   $($fileField).on('change', $fileField, function (e) {
//     var file = e.target.files[0]
//     var reader = new FileReader(),
//       // new FileReader()これでファイルを読み込む
//       var preview = $("profile-main__image--icon__input__image2");
//       // 
//     reader.onload = (function (file) {
//       //読み込みが成功した場合(onloadイベント内)
//       return function (e) {
//         $preview.empty();
//         $preview.append($('<img>').attr({
//           src: e.target.result,
//           width: "100%",
//           class: "preview",
//           title: file.name
//         }));
//       };
//     })(file);
//     reader.readAsDataURL(file);

//     //画像ファイルの場所をURLとして読み込む
//   });
// });
$(function(){
  $('#upload-icon').on('change', function (e) {
    const file = e.target.files[0]
    const reader = new FileReader();
    const preview = $("profile-main__image--icon__input__image2");
    reader.onload = (function (file) {
    //読み込みが成功した場合(onloadイベント内)
    return function (e) {
      $(preview).empty("img");
      preview.append($('img').attr({
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