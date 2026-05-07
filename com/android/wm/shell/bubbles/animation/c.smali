.class public final synthetic Lcom/android/wm/shell/bubbles/animation/c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController$ChildAnimationConfigurator;


# instance fields
.field public final synthetic a:Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;

.field public final synthetic b:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

.field public final synthetic c:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;Lcom/android/wm/shell/bubbles/BubbleViewProvider;Z)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/animation/c;->a:Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;

    iput-object p2, p0, Lcom/android/wm/shell/bubbles/animation/c;->b:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    iput-boolean p3, p0, Lcom/android/wm/shell/bubbles/animation/c;->c:Z

    return-void
.end method


# virtual methods
.method public final configureAnimationForChildAtIndex(ILcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;)V
    .registers 5

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/animation/c;->a:Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;

    iget-object v1, p0, Lcom/android/wm/shell/bubbles/animation/c;->b:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    iget-boolean p0, p0, Lcom/android/wm/shell/bubbles/animation/c;->c:Z

    invoke-static {v0, v1, p0, p1, p2}, Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;->g(Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;Lcom/android/wm/shell/bubbles/BubbleViewProvider;ZILcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;)V

    return-void
.end method
