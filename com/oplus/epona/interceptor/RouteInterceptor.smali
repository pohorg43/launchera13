.class public Lcom/oplus/epona/interceptor/RouteInterceptor;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oplus/epona/Interceptor;


# static fields
.field private static final FRAGMENT_V4:Ljava/lang/String; = "android.support.v4.app.Fragment"

.field private static final FRAGMENT_X:Ljava/lang/String; = "androidx.fragment.app.Fragment"

.field private static final TAG:Ljava/lang/String; = "Epona->RouteInterceptor"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private navigateActivity(Lcom/oplus/epona/Request;Lcom/oplus/epona/route/RouteInfo;)V
    .registers 5

    invoke-virtual {p1}, Lcom/oplus/epona/Request;->getRouteData()Lcom/oplus/epona/route/RouteData;

    move-result-object p0

    if-eqz p0, :cond_35

    invoke-virtual {p0}, Lcom/oplus/epona/route/RouteData;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_d

    goto :goto_35

    :cond_d
    invoke-virtual {p0}, Lcom/oplus/epona/route/RouteData;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p2}, Lcom/oplus/epona/route/RouteInfo;->getClazz()Ljava/lang/Class;

    move-result-object p2

    invoke-direct {v1, v0, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1}, Lcom/oplus/epona/Request;->getBundle()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/oplus/epona/route/RouteData;->getRequestCode()I

    move-result p0

    if-ltz p0, :cond_31

    instance-of p1, v0, Landroid/app/Activity;

    if-eqz p1, :cond_31

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0, v1, p0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_51

    :cond_31
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_51

    :cond_35
    :goto_35
    invoke-static {}, Lcom/oplus/epona/Epona;->getContext()Landroid/content/Context;

    move-result-object p0

    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p2}, Lcom/oplus/epona/route/RouteInfo;->getClazz()Ljava/lang/Class;

    move-result-object p2

    invoke-direct {v0, p0, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1}, Lcom/oplus/epona/Request;->getBundle()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const/high16 p1, 0x10000000

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :goto_51
    return-void
.end method

.method private navigateFragment(Lcom/oplus/epona/Request;Lcom/oplus/epona/route/RouteInfo;)Ljava/lang/Object;
    .registers 8

    const-string p0, "android.support.v4.app.Fragment"

    const-string v0, "androidx.fragment.app.Fragment"

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_6
    invoke-virtual {p2}, Lcom/oplus/epona/route/RouteInfo;->getClazz()Ljava/lang/Class;

    move-result-object p2

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {p2, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p2

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {p2, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    instance-of v3, p2, Landroid/app/Fragment;

    if-eqz v3, :cond_25

    move-object p0, p2

    check-cast p0, Landroid/app/Fragment;

    invoke-virtual {p1}, Lcom/oplus/epona/Request;->getBundle()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object p2

    :cond_25
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v3
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_2d} :catch_6f

    const-string v4, "setArguments"

    if-eqz v3, :cond_4b

    :try_start_31
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    new-array v0, v1, [Ljava/lang/Class;

    const-class v3, Landroid/os/Bundle;

    aput-object v3, v0, v2

    invoke-virtual {p0, v4, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    new-array v0, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/oplus/epona/Request;->getBundle()Landroid/os/Bundle;

    move-result-object v3

    aput-object v3, v0, v2

    invoke-virtual {p0, p2, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-object p2

    :cond_4b
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_86

    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    new-array v0, v1, [Ljava/lang/Class;

    const-class v3, Landroid/os/Bundle;

    aput-object v3, v0, v2

    invoke-virtual {p0, v4, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    new-array v0, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/oplus/epona/Request;->getBundle()Landroid/os/Bundle;

    move-result-object v3

    aput-object v3, v0, v2

    invoke-virtual {p0, p2, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6e
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_6e} :catch_6f

    return-object p2

    :catch_6f
    move-exception p0

    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/oplus/epona/Request;->getComponentName()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p2, v2

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, p2, v1

    const-string p0, "Epona->RouteInterceptor"

    const-string p1, "Fetch fragment instance error with Component(%s), message:%s"

    invoke-static {p0, p1, p2}, Lcom/oplus/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_86
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public intercept(Lcom/oplus/epona/Interceptor$Chain;)V
    .registers 6

    invoke-interface {p1}, Lcom/oplus/epona/Interceptor$Chain;->request()Lcom/oplus/epona/Request;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/epona/Request;->getComponentName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/oplus/epona/Epona;->findRoute(Ljava/lang/String;)Lcom/oplus/epona/route/RouteInfo;

    move-result-object v1

    if-nez v1, :cond_12

    invoke-interface {p1}, Lcom/oplus/epona/Interceptor$Chain;->proceed()V

    return-void

    :cond_12
    invoke-interface {p1}, Lcom/oplus/epona/Interceptor$Chain;->callback()Lcom/oplus/epona/Call$Callback;

    move-result-object p1

    invoke-virtual {v1}, Lcom/oplus/epona/route/RouteInfo;->getRouteType()I

    move-result v2

    if-eqz v2, :cond_49

    const/4 v3, 0x1

    if-eq v2, v3, :cond_29

    const-string p0, "Route type not found."

    invoke-static {p0}, Lcom/oplus/epona/Response;->errorResponse(Ljava/lang/String;)Lcom/oplus/epona/Response;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/oplus/epona/Call$Callback;->onReceive(Lcom/oplus/epona/Response;)V

    return-void

    :cond_29
    invoke-direct {p0, v0, v1}, Lcom/oplus/epona/interceptor/RouteInterceptor;->navigateFragment(Lcom/oplus/epona/Request;Lcom/oplus/epona/route/RouteInfo;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_39

    const-string p0, "Fetch fragment instance not found."

    invoke-static {p0}, Lcom/oplus/epona/Response;->errorResponse(Ljava/lang/String;)Lcom/oplus/epona/Response;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/oplus/epona/Call$Callback;->onReceive(Lcom/oplus/epona/Response;)V

    return-void

    :cond_39
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-static {v0}, Lcom/oplus/epona/Response;->newResponse(Landroid/os/Bundle;)Lcom/oplus/epona/Response;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oplus/epona/Response;->setData(Ljava/lang/Object;)V

    invoke-interface {p1, v0}, Lcom/oplus/epona/Call$Callback;->onReceive(Lcom/oplus/epona/Response;)V

    return-void

    :cond_49
    invoke-direct {p0, v0, v1}, Lcom/oplus/epona/interceptor/RouteInterceptor;->navigateActivity(Lcom/oplus/epona/Request;Lcom/oplus/epona/route/RouteInfo;)V

    const/4 p0, 0x0

    invoke-static {p0}, Lcom/oplus/epona/Response;->newResponse(Landroid/os/Bundle;)Lcom/oplus/epona/Response;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/oplus/epona/Call$Callback;->onReceive(Lcom/oplus/epona/Response;)V

    return-void
.end method
