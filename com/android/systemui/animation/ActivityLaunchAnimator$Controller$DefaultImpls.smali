.class public final Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller$DefaultImpls;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation


# direct methods
.method public static getOpeningWindowSyncView(Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;)Landroid/view/View;
    .registers 2

    const-string/jumbo v0, "this"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/android/systemui/animation/LaunchAnimator$Controller$DefaultImpls;->getOpeningWindowSyncView(Lcom/android/systemui/animation/LaunchAnimator$Controller;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public static isDialogLaunch(Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;)Z
    .registers 2

    const-string/jumbo v0, "this"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public static onIntentStarted(Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;Z)V
    .registers 2

    const-string/jumbo p1, "this"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static onLaunchAnimationCancelled(Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;)V
    .registers 2

    const-string/jumbo v0, "this"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static onLaunchAnimationEnd(Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;Z)V
    .registers 3

    const-string/jumbo v0, "this"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/android/systemui/animation/LaunchAnimator$Controller$DefaultImpls;->onLaunchAnimationEnd(Lcom/android/systemui/animation/LaunchAnimator$Controller;Z)V

    return-void
.end method

.method public static onLaunchAnimationProgress(Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;Lcom/android/systemui/animation/LaunchAnimator$State;FF)V
    .registers 5

    const-string/jumbo v0, "this"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "state"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1, p2, p3}, Lcom/android/systemui/animation/LaunchAnimator$Controller$DefaultImpls;->onLaunchAnimationProgress(Lcom/android/systemui/animation/LaunchAnimator$Controller;Lcom/android/systemui/animation/LaunchAnimator$State;FF)V

    return-void
.end method

.method public static onLaunchAnimationStart(Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;Z)V
    .registers 3

    const-string/jumbo v0, "this"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/android/systemui/animation/LaunchAnimator$Controller$DefaultImpls;->onLaunchAnimationStart(Lcom/android/systemui/animation/LaunchAnimator$Controller;Z)V

    return-void
.end method
