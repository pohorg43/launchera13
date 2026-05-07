.class final Lcom/oplus/quickstep/mistouch/interceptor/MistouchSwipeSideInterceptor$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/quickstep/mistouch/interceptor/MistouchSwipeSideInterceptor;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Boolean;",
        "Ly2/p;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/oplus/quickstep/mistouch/interceptor/MistouchSwipeSideInterceptor;


# direct methods
.method public constructor <init>(Lcom/oplus/quickstep/mistouch/interceptor/MistouchSwipeSideInterceptor;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/quickstep/mistouch/interceptor/MistouchSwipeSideInterceptor$1;->this$0:Lcom/oplus/quickstep/mistouch/interceptor/MistouchSwipeSideInterceptor;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/oplus/quickstep/mistouch/interceptor/MistouchSwipeSideInterceptor$1;->invoke(Z)V

    sget-object p0, Ly2/p;->a:Ly2/p;

    return-object p0
.end method

.method public final invoke(Z)V
    .registers 2

    iget-object p0, p0, Lcom/oplus/quickstep/mistouch/interceptor/MistouchSwipeSideInterceptor$1;->this$0:Lcom/oplus/quickstep/mistouch/interceptor/MistouchSwipeSideInterceptor;

    if-eqz p1, :cond_8

    invoke-static {p0}, Lcom/oplus/quickstep/mistouch/interceptor/MistouchSwipeSideInterceptor;->access$showBarWhenEnterGame(Lcom/oplus/quickstep/mistouch/interceptor/MistouchSwipeSideInterceptor;)V

    goto :goto_c

    :cond_8
    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/oplus/quickstep/mistouch/interceptor/MistouchSwipeSideInterceptor;->access$setMRetryShowBar$p(Lcom/oplus/quickstep/mistouch/interceptor/MistouchSwipeSideInterceptor;Z)V

    :goto_c
    return-void
.end method
