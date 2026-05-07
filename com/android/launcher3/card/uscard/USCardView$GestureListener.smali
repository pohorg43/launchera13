.class final Lcom/android/launcher3/card/uscard/USCardView$GestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/card/uscard/USCardView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GestureListener"
.end annotation


# instance fields
.field private final usCardView:Lcom/android/launcher3/card/uscard/USCardView;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/card/uscard/USCardView;)V
    .registers 3

    const-string/jumbo v0, "usCardView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/card/uscard/USCardView$GestureListener;->usCardView:Lcom/android/launcher3/card/uscard/USCardView;

    return-void
.end method


# virtual methods
.method public final getUsCardView()Lcom/android/launcher3/card/uscard/USCardView;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/card/uscard/USCardView$GestureListener;->usCardView:Lcom/android/launcher3/card/uscard/USCardView;

    return-object p0
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .registers 4

    iget-object p1, p0, Lcom/android/launcher3/card/uscard/USCardView$GestureListener;->usCardView:Lcom/android/launcher3/card/uscard/USCardView;

    invoke-virtual {p1}, Lcom/android/launcher3/card/uscard/USCardView;->getContainer()Lcom/android/launcher3/card/uscard/USCardContainerView;

    move-result-object p1

    if-nez p1, :cond_9

    goto :goto_30

    :cond_9
    invoke-virtual {p0}, Lcom/android/launcher3/card/uscard/USCardView$GestureListener;->getUsCardView()Lcom/android/launcher3/card/uscard/USCardView;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/card/uscard/USCardView;->access$getMLauncher$p$s837816979(Lcom/android/launcher3/card/uscard/USCardView;)Lcom/android/launcher/Launcher;

    move-result-object v0

    if-nez v0, :cond_14

    goto :goto_30

    :cond_14
    sget-object v1, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    if-eqz v0, :cond_30

    const-string v0, "LauncherCardView-USCardView"

    const-string v1, "USCard clicked in normal state."

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/launcher3/card/uscard/USCardContainerView;->getMStatisticsRecorder()Lcom/android/launcher3/card/seed/StatisticsRecorder;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/launcher3/card/uscard/USCardView$GestureListener;->getUsCardView()Lcom/android/launcher3/card/uscard/USCardView;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p1, p0, v0}, Lcom/android/launcher3/card/seed/StatisticsRecorder;->reportEvent(Lcom/android/launcher3/card/uscard/USCardView;I)V

    return v0

    :cond_30
    :goto_30
    const/4 p0, 0x0

    return p0
.end method
