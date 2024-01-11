let val = document.getElementById('ttp').value;
    console.log(val);

    $.ajax({
      type: "POST",
      url: "transcriptapply.php",
      data: {val: val},
      success: function(response) {
        console.log(response);
      }
    })

function selectType(event) {
    console.log(event.target);
}