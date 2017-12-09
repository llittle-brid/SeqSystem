/**
 * Created by chene on 7/6/2017.
 */
$(function () {
    $("#goods-usage").change(function () {
        var usage = $("#goods-usage").val();
        if (usage === "0") {
            $("#add-form").attr("action", "merchandise-add");
            $("#goods-name").attr("name", "merchandiseName");
        } else {
            $("#add-form").attr("action", "leasehold-add");
            $("#goods-name").attr("name", "leaseholdName");
        }
        $("#alter-input").empty();
        alter(usage);
    })
});

var merchandise = "<div class=\"form-group\"><label class=\"col-sm-3 control-label\">零售单价 <span style=\"color:#f00\">*</span></label><div class=\"col-sm-7\"><div class=\"input-group m-b\"><span class=\"input-group-addon\">¥</span><input name=\"price\" type=\"number\" class=\"form-control\"><span class=\"input-group-addon\">.00</span></div></div></div>";

var leasehold = "<div class=\"form-group\"><label class=\"col-sm-3 control-label\">租赁单价 <span style=\"color:#f00\">*</span></label><div class=\"col-sm-7\"><div class=\"input-group m-b\"><span class=\"input-group-addon\">¥</span><input name=\"pricePerDay\" type=\"number\" class=\"form-control\"><span class=\"input-group-addon\">.00</span></div></div></div><div class=\"hr-line-dashed\"></div><div class=\"form-group\"><label class=\"col-sm-3 control-label\">额定押金 <span style=\"color:#f00\">*</span></label><div class=\"col-sm-7\"><div class=\"input-group m-b\"><span class=\"input-group-addon\">¥</span><input name=\"deposit\" type=\"number\" class=\"form-control\"><span class=\"input-group-addon\">.00</span></div></div></div>";

function alter(usage) {
    if (usage === "0")
        $("#alter-input").append(merchandise);
    else
        $("#alter-input").append(leasehold);
}