
//选中一个父节点，为子节点增加active属性
function Tab(options){
    this.options = {
        tabsContainer:'',
        tab:'',
        contentContainer:'',
        content:''
    };

    this.domCache = {};

    this.options = $.extend({},this.options,options);

    this.init();
}

Tab.prototype.init = function () {
    //tab
    var tabContainers = $('.'+this.options.tabsContainer);
    var tabClass = this.options.tab;
    var tabSelector = "."+tabClass;
    var tabs = tabContainers.find(tabSelector);

    //contents
    if(this.options.contentContainer){
        var contentContainer = $('.' + this.options.contentContainer);
        var contents = contentContainer.find('.'+this.options.content);
    }


    function activeContent(index){

        if(contents && contents.length>0){
            contents.removeClass('active');
            if(index<0 || index>contents.length){
                return;
            }
            $(contents[index]).addClass('active');
        }
    }

    tabContainers.on('click',tabSelector,function (event) {
        //处理tab元素
        var ele = $(event.target);
        var ele0 = ele[0];
        if(ele.hasClass(tabClass)){
            tabs.removeClass('active');
            ele.addClass('active');
            activeContent(b.getIndex(tabs,ele0));
            return;
        }
        var par = ele.parents(tabSelector);
        var par0 = ele[0];
        if(par.length>0){
            tabs.removeClass('active');
            par.addClass('active');
            activeContent(b.getIndex(tabs,par0));
        }
    });

};