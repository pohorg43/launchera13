.class public final synthetic Lcom/android/wm/shell/bubbles/animation/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController$ChildAnimationConfigurator;


# instance fields
.field public final synthetic a:Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/animation/a;->a:Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;

    return-void
.end method


# virtual methods
.method public final configureAnimationForChildAtIndex(ILcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;)V
    .registers 3

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/animation/a;->a:Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;

    invoke-static {p0, p1, p2}, Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;->i(Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;ILcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;)V

    return-void
.end method
