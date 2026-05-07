.class public final synthetic Lcom/android/wm/shell/bubbles/animation/h;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController$MultiAnimationStarter;


# instance fields
.field public final synthetic a:Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;

.field public final synthetic b:Ljava/util/Set;

.field public final synthetic c:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;Ljava/util/Set;Ljava/util/List;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/animation/h;->a:Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;

    iput-object p2, p0, Lcom/android/wm/shell/bubbles/animation/h;->b:Ljava/util/Set;

    iput-object p3, p0, Lcom/android/wm/shell/bubbles/animation/h;->c:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final startAll([Ljava/lang/Runnable;)V
    .registers 4

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/animation/h;->a:Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;

    iget-object v1, p0, Lcom/android/wm/shell/bubbles/animation/h;->b:Ljava/util/Set;

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/animation/h;->c:Ljava/util/List;

    invoke-static {v0, v1, p0, p1}, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->a(Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;Ljava/util/Set;Ljava/util/List;[Ljava/lang/Runnable;)V

    return-void
.end method
