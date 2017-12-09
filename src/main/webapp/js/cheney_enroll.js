// JavaScript Document

var formContent =
    "<div class='enroll-input-group'>" +
    "<div class='form-group'>" +
    "<label class='col-sm-3 control-label'>科目 <span style='color:#f00'>*</span></label> " +
    "<div class='col-sm-7'>" +
    "<select class='chosen-select form-control m-b subject' tabindex='2'>" +
    "<option value='' hassubinfo='true' selected='selected' disabled='disabled'>选择科目 </option></select></div></div>" +
    "<div class='form-group'>" +
    "<label class='col-sm-3 control-label'>具体类别 <span style='color:#f00'>*</span></label>" +
    "<div class='col-sm-7'>" +
    "<select class='chosen-select form-control m-b detail' tabindex='2'>" +
    "<option value='' hassubinfo='true' selected='selected' disabled='disabled'>选择类别 </option></select></div></div>";

var formContentExtra =
    "<div class='none-combo'>" +
    "<div class='form-group'>" +
    "<label class='col-sm-3 control-label'>工作日 <span style='color:#f00'>*</span></label>" +
    "<div class='col-sm-7'>" +
    "<select class='chosen-select form-control m-b workday' tabindex='2'>" +
    "<option value='' hassubinfo='true' selected='selected' disabled='disabled'>选择工作日 </option>" +
    "<option value='7' hassubinfo='true'>周日</option>" +
    "<option value='1' hassubinfo='true'>周一</option>" +
    "<option value='2' hassubinfo='true'>周二</option>" +
    "<option value='3' hassubinfo='true'>周三</option>" +
    "<option value='4' hassubinfo='true'>周四</option>" +
    "<option value='5' hassubinfo='true'>周五</option>" +
    "<option value='6' hassubinfo='true'>周六</option></select></div></div>" +
    "<div class='form-group'>" +
    "<label class='col-sm-3 control-label'>时间段 <span style='color:#f00'>*</span></label>" +
    "<div class='col-sm-7'>" +
    "<select class='chosen-select form-control m-b time-id' tabindex='2'>" +
    "<option value='' hassubinfo='true' selected='selected' disabled='disabled'>选择时间段 </option></select></div></div>" +
    "<div class='form-group'> <label class='col-sm-3 control-label'>班别 <span style='color:#f00'>*</span></label>" +
    "<div class='col-sm-7'>" +
    "<div class='input-group'>" +
    "<input type='text' class='form-control test_data certain-class'>" +
    "<div class='input-group-btn'>" +
    "<button type='button' class='btn btn-white dropdown-toggle' data-toggle='dropdown'>" +
    "<span class='caret'></span></button>" +
    "<ul class='dropdown-menu dropdown-menu-right' role='menu'></ul></div></div></div></div></div></div>";

var subjects = null;
var details = null;
var timeList = null;

function enrollForm(obj) {
    var scale = obj.val();
    var aimDiv = obj.parent().parent();
    aimDiv.next("div.enroll-input-group").remove();
    aimDiv.next("div.none-combo").remove();
    if (scale !== "0") {
        if (aimDiv.next("div.enroll-input-group").length <= 0) {
            aimDiv.after(formContent);
            var eigDiv = aimDiv.next("div.enroll-input-group");
            showSubject(eigDiv);
            showDetail(scale, eigDiv);
        }
        if (scale !== "3") {
            if (aimDiv.next().next("div.none-combo").length <= 0) {
                aimDiv.next().after(formContentExtra);
                var ncDiv = aimDiv.next().next("div.none-combo");
                showTime(scale, ncDiv);
            }
        } else {
            aimDiv.next().next("div.none-combo").remove();
        }
    }
}

function showSubject(obj) {
    for (var i = 0; i < subjects.length; i++) {
        obj.find("select.subject").append("<option class='refresh-delete' value='" + subjects[i].subjectId + "'>" + subjects[i].subjectName + "</option>")
    }
}

function showDetail(scale, obj) {
    for (var i = 0; i < details.length; i++) {
        if (details[i].courseScaleId === scale)
            obj.find("select.detail").append("<option class='refresh-delete' value='" + details[i].courseTypeId + "'>" + details[i].courseTypeName + "</option>")
    }
}

function showTime(scale, obj) {
    if (scale === "1") {
        for (var i = 0; i < timeList.length; i++) {
            obj.find("select.time-id").append("<option class='refresh-delete' value='" + timeList[i].timeId + "'>" + timeList[i].timeStart + "&nbsp;~&nbsp;" + timeList[i].timeEndSmall + "</option>");
        }
    } else if (scale === "2") {
        for (var j = 0; j < timeList.length - 1; j += 2) {
            obj.find("select.time-id").append("<option class='refresh-delete' value='" + timeList[j].timeId + "'>" + timeList[j].timeStart + "&nbsp;~&nbsp;" + timeList[j].timeEndLarge + "</option>");
        }
    }
}
