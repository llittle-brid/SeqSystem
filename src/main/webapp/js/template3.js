/**
 * Created by DELL on 2018/1/2.
 */
var nowLine;
function deleteUsable(obj) {
    $(obj).parent().parent().prev().children("th:last-child").children("button").show();
    $(obj).parent().parent().remove();
}
function addUsable(obj) {
    $("#para").val("")
    if(typeof (obj)=="undefined"){
        nowLine="undefined";
        return;
    }
    nowLine=$(obj).parent().parent();
}
function addUsabelLine() {
    var usableName=$("#uaname").text();
    var para=$("#para").val();
    var content;
    if (typeof (nowLine)=="undefined"||  nowLine=="undefined"){
        content=" <tr class='usableTr'> <th colspan='2'>全局可用性："+usableName+"</th> <th >发生条件："+para+"</th> <th>  <button  class='btn btn-danger  btn-xs col-lg-push-1' id='deleteUsable'  onclick='deleteUsable(this)' type='button' style='margin-right: 10px'>删除可用性</button></th> </tr>"
        $(".funTable tfoot").append(content);
        return;
    }
    content=" <tr class='usableTr'> <th colspan='2'>局部可用性："+usableName+"</th> <th >发生条件："+para+"</th> <th>  <button  class='btn btn-danger  btn-xs col-lg-push-1' id='deleteUsable'  onclick='deleteUsable(this)' type='button' style='margin-right: 10px'>删除可用性</button></th> </tr>"
    $(nowLine).after(content);
    $(nowLine).children("th:last-child").children("button").hide();

}
function addFunlLine() {
    var content="   <tr class='funTr'> <th > <span class='fun_down li_fa fa col-md-offset-1  fa-arrow-down black'></span> <span class='fun_up fa li_fa col-md-offset-1  fa-arrow-up black'></span> <span class='fun_delete li_fa fa col-md-offset-1  fa-times  black' ></span></th> <th> <select class='form-control' name='' disabled> <option>系统管理员</option> <option>角色2</option> <option>角色3</option> <option>角色4</option> </select> </th> <th> <textarea   class='form-control'   style='max-width: 100%' disabled>新增的</textarea> </th> <th> <button  class='btn btn-primary  btn-xs col-lg-push-1'  id='addUsable'  data-toggle='modal' data-target='#addUsableModel' onclick='addUsable(this)' type='button' style='margin-right: 10px'>新增可用性</button> </th> </tr>"
    $(".funTable").children("tbody").children("tr:last-child").before(content);
}
$(document).on("click",".fun_down",function () {
    var thisLine=$(this).parent().parent();
    if(thisLine.next("tr").hasClass("usableTr")){
        var nextLine=thisLine.next();
        if(nextLine.next().hasClass("end"))
            showtoast("warning","失败","已经到底部");
        else {
            var afterFunTr=nextLine.next("tr.funTr");
            if (afterFunTr.next().hasClass("end")||afterFunTr.next().hasClass("funTr")){
                afterFunTr.after(nextLine)
                afterFunTr.after(thisLine)
            }
            else{
                afterFunTr.next().after(nextLine)
                afterFunTr.next().after(thisLine)
            }
        }
    }
    else {
        if(thisLine.next().hasClass("end"))
            showtoast("warning","失败","已经到底部");
        else {
            var afterFunTr=thisLine.next("tr.funTr");
            if (afterFunTr.next().hasClass("end")||afterFunTr.next().hasClass("funTr")){
                afterFunTr.after(thisLine);
            }
            else afterFunTr.next().after(thisLine);
        }
    }

})

$(document).on("click",".fun_up",function () {
    var thisLine=$(this).parent().parent();
    if(thisLine.index()==0)
    {
        showtoast("warning","失败","已经到顶部");return;
    }
    if(thisLine.next("tr").hasClass("usableTr")){
        var nextLine=thisLine.next();
        var beforeFunTr=thisLine.prev();
        if (beforeFunTr.hasClass("funTr")){
            beforeFunTr.before(thisLine)
            beforeFunTr.before(nextLine)
        }
        else{
            beforeFunTr.prev().before(thisLine)
            beforeFunTr.prev().before(nextLine)
        }
    }
    else {
        var beforeFunTr=thisLine.prev();
        if (beforeFunTr.hasClass("funTr")){
            beforeFunTr.before(thisLine)
        }
        else{
            beforeFunTr.prev().before(thisLine)
        }

    }
})

$(document).on("click",".fun_delete",function () {
    var thisLine=$(this).parent().parent();
    if(thisLine.next().hasClass("usableTr")){
        thisLine.next().remove();
    }
    thisLine.remove();
})

