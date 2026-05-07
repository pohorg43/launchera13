.class final Lcom/oplus/quickstep/mistouch/MistouchToast$mTask$2;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/quickstep/mistouch/MistouchToast;-><init>(Landroid/content/Context;Landroid/os/Handler;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/lang/Runnable;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/oplus/quickstep/mistouch/MistouchToast;


# direct methods
.method public constructor <init>(Lcom/oplus/quickstep/mistouch/MistouchToast;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/quickstep/mistouch/MistouchToast$mTask$2;->this$0:Lcom/oplus/quickstep/mistouch/MistouchToast;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method

.method public static synthetic a(Lcom/oplus/quickstep/mistouch/MistouchToast;)V
    .registers 1

    invoke-static {p0}, Lcom/oplus/quickstep/mistouch/MistouchToast$mTask$2;->invoke$lambda-1(Lcom/oplus/quickstep/mistouch/MistouchToast;)V

    return-void
.end method

.method private static final invoke$lambda-1(Lcom/oplus/quickstep/mistouch/MistouchToast;)V
    .registers 4

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/oplus/quickstep/mistouch/MistouchToast;->access$getMNeedRecord$p(Lcom/oplus/quickstep/mistouch/MistouchToast;)Z

    move-result v0

    if-eqz v0, :cond_1e

    sget-object v0, Lcom/oplus/quickstep/navigation/NavigationController;->INSTANCE:Lcom/oplus/quickstep/navigation/NavigationController$INSTANCE;

    invoke-virtual {v0}, Lcom/oplus/quickstep/utils/SingletonHolder;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/quickstep/navigation/NavigationController;

    invoke-virtual {v0}, Lcom/oplus/quickstep/navigation/NavigationController;->isGestureNavbarHidden()Z

    move-result v0

    if-eqz v0, :cond_1a

    goto :goto_1e

    :cond_1a
    const v0, 0x7f120349

    goto :goto_21

    :cond_1e
    :goto_1e
    const v0, 0x7f120348

    :goto_21
    invoke-virtual {p0}, Lcom/oplus/quickstep/mistouch/MistouchToast;->getMContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-static {p0}, Lcom/oplus/quickstep/mistouch/MistouchToast;->access$getMToast$p(Lcom/oplus/quickstep/mistouch/MistouchToast;)Landroid/widget/Toast;

    move-result-object v1

    if-nez v1, :cond_35

    goto :goto_38

    :cond_35
    invoke-virtual {v1}, Landroid/widget/Toast;->cancel()V

    :goto_38
    invoke-static {p0, v0}, Lcom/oplus/quickstep/mistouch/MistouchToast;->access$setMToast$p(Lcom/oplus/quickstep/mistouch/MistouchToast;Landroid/widget/Toast;)V

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 1

    invoke-virtual {p0}, Lcom/oplus/quickstep/mistouch/MistouchToast$mTask$2;->invoke()Ljava/lang/Runnable;

    move-result-object p0

    return-object p0
.end method

.method public final invoke()Ljava/lang/Runnable;
    .registers 2

    iget-object p0, p0, Lcom/oplus/quickstep/mistouch/MistouchToast$mTask$2;->this$0:Lcom/oplus/quickstep/mistouch/MistouchToast;

    new-instance v0, Lcom/oplus/quickstep/mistouch/a;

    invoke-direct {v0, p0}, Lcom/oplus/quickstep/mistouch/a;-><init>(Lcom/oplus/quickstep/mistouch/MistouchToast;)V

    return-object v0
.end method
