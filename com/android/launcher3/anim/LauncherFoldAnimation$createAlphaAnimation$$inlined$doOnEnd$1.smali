.class public final Lcom/android/launcher3/anim/LauncherFoldAnimation$createAlphaAnimation$$inlined$doOnEnd$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/anim/LauncherFoldAnimation;->createAlphaAnimation()Landroid/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher3/anim/LauncherFoldAnimation;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/anim/LauncherFoldAnimation;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/anim/LauncherFoldAnimation$createAlphaAnimation$$inlined$doOnEnd$1;->this$0:Lcom/android/launcher3/anim/LauncherFoldAnimation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2

    const-string p0, "animator"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    const-string v0, "animator"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/launcher3/anim/LauncherFoldAnimation$createAlphaAnimation$$inlined$doOnEnd$1;->this$0:Lcom/android/launcher3/anim/LauncherFoldAnimation;

    invoke-static {p1}, Lcom/android/launcher3/anim/LauncherFoldAnimation;->access$getMLauncher$p(Lcom/android/launcher3/anim/LauncherFoldAnimation;)Lcom/android/launcher/Launcher;

    move-result-object p1

    if-nez p1, :cond_f

    const/4 p1, 0x0

    goto :goto_13

    :cond_f
    invoke-virtual {p1}, Lcom/android/launcher3/statemanager/StatefulActivity;->getRootView()Lcom/android/launcher3/LauncherRootView;

    move-result-object p1

    :goto_13
    if-nez p1, :cond_16

    goto :goto_1b

    :cond_16
    const/high16 v0, 0x3f800000  # 1.0f

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setAlpha(F)V

    :goto_1b
    iget-object p0, p0, Lcom/android/launcher3/anim/LauncherFoldAnimation$createAlphaAnimation$$inlined$doOnEnd$1;->this$0:Lcom/android/launcher3/anim/LauncherFoldAnimation;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/launcher3/anim/LauncherFoldAnimation;->access$setMFrameCount$p(Lcom/android/launcher3/anim/LauncherFoldAnimation;I)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .registers 2

    const-string p0, "animator"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 2

    const-string p0, "animator"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
