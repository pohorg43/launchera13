.class Lcom/android/quickstep/AppToOverviewAnimationProvider$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/quickstep/AppToOverviewAnimationProvider;->createWindowAnimation([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)Landroid/animation/AnimatorSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/quickstep/AppToOverviewAnimationProvider;

.field public final synthetic val$targets:Lcom/android/quickstep/RemoteAnimationTargets;


# direct methods
.method public constructor <init>(Lcom/android/quickstep/AppToOverviewAnimationProvider;Lcom/android/quickstep/RemoteAnimationTargets;)V
    .registers 3

    iput-object p1, p0, Lcom/android/quickstep/AppToOverviewAnimationProvider$2;->this$0:Lcom/android/quickstep/AppToOverviewAnimationProvider;

    iput-object p2, p0, Lcom/android/quickstep/AppToOverviewAnimationProvider$2;->val$targets:Lcom/android/quickstep/RemoteAnimationTargets;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 2

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    iget-object p1, p0, Lcom/android/quickstep/AppToOverviewAnimationProvider$2;->this$0:Lcom/android/quickstep/AppToOverviewAnimationProvider;

    iget-object p0, p0, Lcom/android/quickstep/AppToOverviewAnimationProvider$2;->val$targets:Lcom/android/quickstep/RemoteAnimationTargets;

    iget-object p0, p0, Lcom/android/quickstep/RemoteAnimationTargets;->nonApps:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    invoke-virtual {p1, p0}, Lcom/android/quickstep/AppToOverviewAnimationProvider;->makeDividerHidden([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)V

    return-void
.end method
