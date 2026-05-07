.class final Lcom/oplus/quickstep/mistouch/interceptor/MistouchSwipeSideInterceptor$mToast$2;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function0;


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
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/oplus/quickstep/mistouch/MistouchToast;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic $context:Landroid/content/Context;

.field public final synthetic this$0:Lcom/oplus/quickstep/mistouch/interceptor/MistouchSwipeSideInterceptor;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/oplus/quickstep/mistouch/interceptor/MistouchSwipeSideInterceptor;)V
    .registers 3

    iput-object p1, p0, Lcom/oplus/quickstep/mistouch/interceptor/MistouchSwipeSideInterceptor$mToast$2;->$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/oplus/quickstep/mistouch/interceptor/MistouchSwipeSideInterceptor$mToast$2;->this$0:Lcom/oplus/quickstep/mistouch/interceptor/MistouchSwipeSideInterceptor;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/oplus/quickstep/mistouch/MistouchToast;
    .registers 8

    new-instance v6, Lcom/oplus/quickstep/mistouch/MistouchToast;

    iget-object v1, p0, Lcom/oplus/quickstep/mistouch/interceptor/MistouchSwipeSideInterceptor$mToast$2;->$context:Landroid/content/Context;

    iget-object p0, p0, Lcom/oplus/quickstep/mistouch/interceptor/MistouchSwipeSideInterceptor$mToast$2;->this$0:Lcom/oplus/quickstep/mistouch/interceptor/MistouchSwipeSideInterceptor;

    invoke-static {p0}, Lcom/oplus/quickstep/mistouch/interceptor/MistouchSwipeSideInterceptor;->access$getMHandler(Lcom/oplus/quickstep/mistouch/interceptor/MistouchSwipeSideInterceptor;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/oplus/quickstep/mistouch/MistouchToast;-><init>(Landroid/content/Context;Landroid/os/Handler;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v6
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 1

    invoke-virtual {p0}, Lcom/oplus/quickstep/mistouch/interceptor/MistouchSwipeSideInterceptor$mToast$2;->invoke()Lcom/oplus/quickstep/mistouch/MistouchToast;

    move-result-object p0

    return-object p0
.end method
