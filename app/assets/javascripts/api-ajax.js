var call = function(element) {
  $('body').css('cursor', 'progress');
  var element = element
  $.ajax({
    type: "GET",
    url: "/make",
    // data: data,
    datatype: "json",
    success: function(data) {
      element.innerHTML = data["ship_name"];
    },
    error: function(data) {
      console.log("error");
    },
    complete: function(data) {
      $('body').css('cursor', 'default');
    }
  });
};