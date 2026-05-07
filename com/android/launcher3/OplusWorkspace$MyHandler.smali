.class Lcom/android/launcher3/OplusWorkspace$MyHandler;
.super Landroid/os/Handler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/OplusWorkspace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MyHandler"
.end annotation


# instance fields
.field private final mWorkspace:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/launcher3/OplusWorkspace;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/launcher3/OplusWorkspace;)V
    .registers 3

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/launcher3/OplusWorkspace$MyHandler;->mWorkspace:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    const-string v2, "WeakReference, get workspace is null!"

    const-string v3, "OplusWorkspace"

    if-eq v0, v1, :cond_2a

    const/4 p1, 0x3

    if-eq v0, p1, :cond_d

    goto :goto_43

    :cond_d
    iget-object p0, p0, Lcom/android/launcher3/OplusWorkspace$MyHandler;->mWorkspace:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/OplusWorkspace;

    if-nez p0, :cond_1b

    invoke-static {v3, v2}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1b
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPageIndicator()Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;

    invoke-virtual {p0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->onPageEndTransition()V

    sget-object p0, Lcom/android/launcher3/uparrow/UpArrowHelper;->INSTANCE:Lcom/android/launcher3/uparrow/UpArrowHelper;

    invoke-virtual {p0}, Lcom/android/launcher3/uparrow/UpArrowHelper;->onPageEndTransitionForUpArrow()V

    goto :goto_43

    :cond_2a
    iget-object p0, p0, Lcom/android/launcher3/OplusWorkspace$MyHandler;->mWorkspace:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/OplusWorkspace;

    if-nez p0, :cond_38

    invoke-static {v3, v2}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_38
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/launcher3/OplusWorkspace;->access$802(Lcom/android/launcher3/OplusWorkspace;Z)Z

    iget p1, p1, Landroid/os/Message;->arg1:I

    const/16 v0, 0x1f4

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/PagedView;->snapToPage(II)Z

    :goto_43
    return-void
.end method
