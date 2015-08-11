//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require jquery.turbolinks
//= require cocoon
//= require_tree .



$(function() {
  $('.directUpload').find("input:file").each(function(i, elem) {
    var fileInput    = $(elem);
    var form         = $(fileInput.parents('form:first'));
    var submitButton = form.find('input[type="submit"]');
    var progressBar  = $("<div class='bar'></div>");
    var barContainer = $("<div class='progress'></div>").append(progressBar);
    fileInput.after(barContainer);
    fileInput.fileupload({
      fileInput:       fileInput,
      url:             '<%= @s3_direct_post.url %>',
      type:            'POST',
      autoUpload:       true,
      formData:         <%= @s3_direct_post.fields.to_json.html_safe %>,
      paramName:        'file', // S3 does not like nested name fields i.e. name="user[avatar_url]"
      dataType:         'XML',  // S3 returns XML if success_action_status is set to 201
      replaceFileInput: false
    });
  });
});
