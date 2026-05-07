.class public final Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$onLauncherStart$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/ViewTreeObserver$OnDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->onLauncherStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic $activity:Lcom/android/launcher3/BaseDraggingActivity;

.field public final synthetic $dragLayer:Landroid/view/View;

.field public final synthetic $traceToken:Ljava/lang/Object;

.field private mHandled:Z

.field public final synthetic this$0:Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler<",
            "TT;TQ;TS;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;Ljava/lang/Object;Landroid/view/View;Lcom/android/launcher3/BaseDraggingActivity;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler<",
            "TT;TQ;TS;>;",
            "Ljava/lang/Object;",
            "Landroid/view/View;",
            "Lcom/android/launcher3/BaseDraggingActivity;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$onLauncherStart$3;->this$0:Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;

    iput-object p2, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$onLauncherStart$3;->$traceToken:Ljava/lang/Object;

    iput-object p3, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$onLauncherStart$3;->$dragLayer:Landroid/view/View;

    iput-object p4, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$onLauncherStart$3;->$activity:Lcom/android/launcher3/BaseDraggingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Landroid/view/View;Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$onLauncherStart$3;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$onLauncherStart$3;->onDraw$lambda-0(Landroid/view/View;Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$onLauncherStart$3;)V

    return-void
.end method

.method private static final onDraw$lambda-0(Landroid/view/View;Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$onLauncherStart$3;)V
    .registers 3

    const-string v0, "$dragLayer"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/ViewTreeObserver;->removeOnDrawListener(Landroid/view/ViewTreeObserver$OnDrawListener;)V

    return-void
.end method


# virtual methods
.method public final getMHandled()Z
    .registers 1

    iget-boolean p0, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$onLauncherStart$3;->mHandled:Z

    return p0
.end method

.method public onDraw()V
    .registers 5

    iget-boolean v0, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$onLauncherStart$3;->mHandled:Z

    const-string v1, "dragLayer#viewTreeObserver#onDraw(), mHandled="

    const-string v2, "QuickStep"

    const-string v3, "OplusBaseSwipeUpHandler"

    invoke-static {v0, v1, v2, v3}, Lcom/android/launcher/wallpaper/e;->a(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$onLauncherStart$3;->this$0:Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->access$setAlreadyDrawFirst$p(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;Z)V

    iget-boolean v0, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$onLauncherStart$3;->mHandled:Z

    if-eqz v0, :cond_16

    return-void

    :cond_16
    iput-boolean v1, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$onLauncherStart$3;->mHandled:Z

    sget-object v0, Lcom/android/launcher3/util/TraceHelper;->INSTANCE:Lcom/android/launcher3/util/TraceHelper;

    iget-object v1, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$onLauncherStart$3;->$traceToken:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/TraceHelper;->endSection(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$onLauncherStart$3;->$dragLayer:Landroid/view/View;

    new-instance v1, Lcom/android/wm/shell/bubbles/animation/o;

    invoke-direct {v1, v0, p0}, Lcom/android/wm/shell/bubbles/animation/o;-><init>(Landroid/view/View;Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$onLauncherStart$3;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$onLauncherStart$3;->$activity:Lcom/android/launcher3/BaseDraggingActivity;

    iget-object v1, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$onLauncherStart$3;->this$0:Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;

    invoke-static {v1}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->access$getMActivity$p$s1465835919(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)Lcom/android/launcher3/statemanager/StatefulActivity;

    move-result-object v1

    if-eq v0, v1, :cond_34

    return-void

    :cond_34
    iget-object p0, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$onLauncherStart$3;->this$0:Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;

    invoke-static {p0}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->access$getMStateCallback$p$s1465835919(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)Lcom/android/quickstep/MultiStateCallback;

    move-result-object p0

    sget v0, Lcom/android/quickstep/AbsSwipeUpHandler;->STATE_LAUNCHER_DRAWN:I

    invoke-virtual {p0, v0}, Lcom/android/quickstep/MultiStateCallback;->setState(I)V

    return-void
.end method

.method public final setMHandled(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$onLauncherStart$3;->mHandled:Z

    return-void
.end method
