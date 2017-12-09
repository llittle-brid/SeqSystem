/**
 * Created by chene on 6/27/2017.
 */
function toastSuccess() {
    var shortCutFunction = "success";
    var msg;
    if (arguments.length === 1)
        msg = arguments[0];
    else
        msg = "信息已录入";
    var title = "操作成功";
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
        positionClass: "toast-top-full-width",
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
    var $toast = toastr[shortCutFunction](msg, title);
}

function toastDelete() {
    var shortCutFunction = "warning";
    var msg;
    if (arguments.length === 1)
        msg = arguments[0];
    else
        msg = "条目已删除";
    var title = "操作成功";
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
        positionClass: "toast-top-full-width",
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
    var $toast = toastr[shortCutFunction](msg, title);
}

function toastError() {
    var shortCutFunction = "error";
    var msg;
    if (arguments.length === 1)
        msg = arguments[0];
    else
        msg = "业务异常";
    var title = "操作失败";
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
        positionClass: "toast-top-full-width",
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
    var $toast = toastr[shortCutFunction](msg, title);
}

function toastShow() {
    if (arguments.length === 2) {
        if (arguments[0] === "success")
            toastSuccess(arguments[1]);
        else if (arguments[0] === "warning")
            toastDelete(arguments[1]);
        else if (arguments[0] === "error")
            toastError(arguments[1]);
    }
    else {
        if (arguments[0] === "success")
            toastSuccess();
        else if (arguments[0] === "warning")
            toastDelete();
        else if (arguments[0] === "error")
            toastError();
    }
}