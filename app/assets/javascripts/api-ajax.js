var call = function(element) {
  var data = {"htmlElement" => "element"};
  $.ajax({
    type: "GET",
    url: "/make",
    data: data,
    datatype: "json",
    success: function(data) {
      console.log(data)
    },
    error: function(data) {
    
    },
    complete: function(data) {

    }
  });
};