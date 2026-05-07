.class public final Lcom/android/launcher/togglebar/ToggleBarAppTransitionManager$getActivityLaunchOptions$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher3/LauncherAnimationRunner$RemoteAnimationFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher/togglebar/ToggleBarAppTransitionManager;->getActivityLaunchOptions(Landroid/view/View;)Lcom/android/launcher3/util/ActivityOptionsWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic $v:Landroid/view/View;

.field public final synthetic this$0:Lcom/android/launcher/togglebar/ToggleBarAppTransitionManager;


# direct methods
.method public constructor <init>(Lcom/android/launcher/togglebar/ToggleBarAppTransitionManager;Landroid/view/View;)V
    .registers 3

    iput-object p1, p0, Lcom/android/launcher/togglebar/ToggleBarAppTransitionManager$getActivityLaunchOptions$1;->this$0:Lcom/android/launcher/togglebar/ToggleBarAppTransitionManager;

    iput-object p2, p0, Lcom/android/launcher/togglebar/ToggleBarAppTransitionManager$getActivityLaunchOptions$1;->$v:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateAnimation(I[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Lcom/android/launcher3/LauncherAnimationRunner$AnimationResult;)V
    .registers 13

    const-string p1, "appTargets"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p1, "wallpaperTargets"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p1, "nonAppTargets"

    invoke-static {p4, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p1, "result"

    invoke-static {p5, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    iget-object p4, p0, Lcom/android/launcher/togglebar/ToggleBarAppTransitionManager$getActivityLaunchOptions$1;->this$0:Lcom/android/launcher/togglebar/ToggleBarAppTransitionManager;

    invoke-static {p4}, Lcom/android/launcher/togglebar/ToggleBarAppTransitionManager;->access$getMLauncher$p(Lcom/android/launcher/togglebar/ToggleBarAppTransitionManager;)Lcom/android/launcher/Launcher;

    move-result-object p4

    if-nez p4, :cond_25

    goto :goto_32

    :cond_25
    invoke-virtual {p4}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object p4

    if-nez p4, :cond_2c

    goto :goto_32

    :cond_2c
    const/4 v0, 0x0

    new-array v0, v0, [Landroid/animation/Animator;

    invoke-virtual {p4, p1, v0}, Lcom/android/launcher3/statemanager/StateManager;->setCurrentAnimation(Landroid/animation/AnimatorSet;[Landroid/animation/Animator;)V

    :goto_32
    iget-object v1, p0, Lcom/android/launcher/togglebar/ToggleBarAppTransitionManager$getActivityLaunchOptions$1;->this$0:Lcom/android/launcher/togglebar/ToggleBarAppTransitionManager;

    iget-object v2, p0, Lcom/android/launcher/togglebar/ToggleBarAppTransitionManager$getActivityLaunchOptions$1;->$v:Landroid/view/View;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v3, p2

    move-object v4, p3

    invoke-static/range {v1 .. v6}, Lcom/android/launcher/togglebar/ToggleBarAppTransitionManager;->access$getOpeningWindowAnimators(Lcom/android/launcher/togglebar/ToggleBarAppTransitionManager;Landroid/view/View;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Landroid/graphics/Rect;Z)Landroid/animation/Animator;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    sget-object p2, Lcom/android/launcher/togglebar/ToggleBarAppTransitionManager;->Companion:Lcom/android/launcher/togglebar/ToggleBarAppTransitionManager$Companion;

    const/4 p3, 0x1

    iget-object p4, p0, Lcom/android/launcher/togglebar/ToggleBarAppTransitionManager$getActivityLaunchOptions$1;->this$0:Lcom/android/launcher/togglebar/ToggleBarAppTransitionManager;

    invoke-static {p4}, Lcom/android/launcher/togglebar/ToggleBarAppTransitionManager;->access$getMLauncher$p(Lcom/android/launcher/togglebar/ToggleBarAppTransitionManager;)Lcom/android/launcher/Launcher;

    move-result-object p4

    invoke-virtual {p2, p3, p4}, Lcom/android/launcher/togglebar/ToggleBarAppTransitionManager$Companion;->createLauncherContentAnim(ZLcom/android/launcher/Launcher;)Landroid/animation/ValueAnimator;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    iget-object p2, p0, Lcom/android/launcher/togglebar/ToggleBarAppTransitionManager$getActivityLaunchOptions$1;->this$0:Lcom/android/launcher/togglebar/ToggleBarAppTransitionManager;

    new-instance p3, Lcom/android/launcher/togglebar/ToggleBarAppTransitionManager$getActivityLaunchOptions$1$onCreateAnimation$$inlined$addListener$default$1;

    invoke-direct {p3, p2}, Lcom/android/launcher/togglebar/ToggleBarAppTransitionManager$getActivityLaunchOptions$1$onCreateAnimation$$inlined$addListener$default$1;-><init>(Lcom/android/launcher/togglebar/ToggleBarAppTransitionManager;)V

    invoke-virtual {p1, p3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p2, p0, Lcom/android/launcher/togglebar/ToggleBarAppTransitionManager$getActivityLaunchOptions$1;->this$0:Lcom/android/launcher/togglebar/ToggleBarAppTransitionManager;

    invoke-static {p2}, Lcom/android/launcher/togglebar/ToggleBarAppTransitionManager;->access$getMLauncher$p(Lcom/android/launcher/togglebar/ToggleBarAppTransitionManager;)Lcom/android/launcher/Launcher;

    move-result-object p2

    invoke-virtual {p5, p1, p2}, Lcom/android/launcher3/LauncherAnimationRunner$AnimationResult;->setAnimation(Landroid/animation/AnimatorSet;Landroid/content/Context;)V

    iget-object p0, p0, Lcom/android/launcher/togglebar/ToggleBarAppTransitionManager$getActivityLaunchOptions$1;->this$0:Lcom/android/launcher/togglebar/ToggleBarAppTransitionManager;

    invoke-static {p0}, Lcom/android/launcher/togglebar/ToggleBarAppTransitionManager;->access$getMLauncher$p(Lcom/android/launcher/togglebar/ToggleBarAppTransitionManager;)Lcom/android/launcher/Launcher;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher/Launcher;->getToggleBarManager()Lcom/android/launcher/togglebar/ToggleBarManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/launcher/togglebar/ToggleBarManager;->setCachedAnim(Landroid/animation/AnimatorSet;)V

    return-void
.end method
