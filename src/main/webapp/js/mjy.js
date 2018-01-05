function showtoast(type, title, msg) {
    var $showDuration = "3000";
    var $hideDuration = "1000";
    var $timeOut = "5000";
    var $extendedTimeOut = "1000";
    var $showEasing = "swing";
    var $hideEasing = "linear";
    var $showMethod = "fadeIn";
    var $hideMethod = "fadeOut";
    toastr.options = {
        closeButton: true,
        debug: false,
        progressBar: true,
        positionClass: "toast-top-right",
        onclick: null
    };
    if ($showDuration) {
        toastr.options.showDuration = $showDuration
    }
    if ($hideDuration) {
        toastr.options.hideDuration = $hideDuration
    }
    if ($timeOut) {
        toastr.options.timeOut = $timeOut
    }
    if ($extendedTimeOut) {
        toastr.options.extendedTimeOut = $extendedTimeOut
    }
    if ($showEasing) {
        toastr.options.showEasing = $showEasing
    }
    if ($hideEasing) {
        toastr.options.hideEasing = $hideEasing
    }
    if ($showMethod) {
        toastr.options.showMethod = $showMethod
    }
    if ($hideMethod) {
        toastr.options.hideMethod = $hideMethod
    }
    if (!msg) {
        msg = getMessage()
    }
    var $toast = toastr[type](msg, title);
}


