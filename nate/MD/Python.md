Python
---------------------------------
* 包管理器:pip  
* 版本兼容:pyenv,virtualenv  
* web框架:Flask,Django  
---------------------------------
####正则表达式
####网页模板
####Django
* django-admin startproject project-name   
* manage startapp app-name  
    把我们新定义的app加到settings.py中的INSTALL_APPS中
* 这种方法可以创建表,当你在models.py中新增了类时,运行它就可以自动在数据库中创建表了,不用手动创建。  
    python manage.py makemigrations   
    python manage.py migrate   
* python manage.py runserver   
* 当提示端口被占用的时候,可以用其它端口:   
    python manage.py runserver 8001   
* 清空数据库  
    python manage.py flush  
* 创建超级管理员  
    python manage.py createsuperuser   
* 导出数据    导入数据   
    python manage.py dumpdata appname > appname.json   
    python manage.py loaddata appname.json   
* django	项目环境终端   
    python manage.py shell   
        from people.models import Person
        Person.objects.create(name="",...)
        Person.objects.get()
        Person.objects.all()[:10]
        Person.objects.filter()
        Person.objects.filter(name="abc")	#	等于Person.objects.filter(name__exact="abc")	名称严格等于"abc"	的人
        Person.objects.filter(name__iexact="abc")	#	名称为	abc但是不区分大小写,可以找到	ABC,	Abc,	aBC,这些都符合条件
        Person.objects.filter(name__contains="abc")	#	名称中包含	"abc"的人
        Person.objects.filter(name__icontains="abc")	#名称中包含	"abc",且abc不区分大小写
        Person.objects.filter(name__regex="^abc")	#	正则表达式查询
        Person.objects.filter(name__iregex="^abc")#	正则表达式不区分大小写
        Person.objects.exclude(name__contains="WZ")	#	排除包含	WZ	的Person对象
        Person.objects.filter(name__contains="abc").exclude(age=23) # 找出名称含有abc,	但是排除年龄是23岁的

* 数据库命令行   
    python manage.py dbshell    
    Django	会自动进入在settings.py中设置的数据库,如果是MySQL	或	postgreSQL,会要求输入数据库用户密码





