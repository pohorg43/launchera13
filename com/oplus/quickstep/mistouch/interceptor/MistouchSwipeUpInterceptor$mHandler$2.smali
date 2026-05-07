.class final Lcom/oplus/quickstep/mistouch/interceptor/MistouchSwipeUpInterceptor$mHandler$2;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/quickstep/mistouch/interceptor/MistouchSwipeUpInterceptor;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Landroid/os/Handler;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/oplus/quickstep/mistouch/interceptor/MistouchSwipeUpInterceptor$mHandler$2;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/oplus/quickstep/mistouch/interceptor/MistouchSwipeUpInterceptor$mHandler$2;

    invoke-direct {v0}, Lcom/oplus/quickstep/mistouch/interceptor/MistouchSwipeUpInterceptor$mHandler$2;-><init>()V

    sput-object v0, Lcom/oplus/quickstep/mistouch/interceptor/MistouchSwipeUpInterceptor$mHandler$2;->INSTANCE:Lcom/oplus/quickstep/mistouch/interceptor/MistouchSwipeUpInterceptor$mHandler$2;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Landroid/os/Handler;
    .registers 2

    new-instance p0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-object p0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 1

    invoke-virtual {p0}, Lcom/oplus/quickstep/mistouch/interceptor/MistouchSwipeUpInterceptor$mHandler$2;->invoke()Landroid/os/Handler;

    move-result-object p0

    return-object p0
.end method
