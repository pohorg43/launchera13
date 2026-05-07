.class public final synthetic Lcom/android/wm/shell/transition/d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Lcom/android/wm/shell/transition/DefaultTransitionHandler;

.field public final synthetic b:Ljava/util/ArrayList;

.field public final synthetic c:Landroid/view/animation/Animation;

.field public final synthetic d:Landroid/window/TransitionInfo$Change;

.field public final synthetic e:Ljava/lang/Runnable;

.field public final synthetic f:F

.field public final synthetic g:Landroid/graphics/Rect;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/transition/DefaultTransitionHandler;Ljava/util/ArrayList;Landroid/view/animation/Animation;Landroid/window/TransitionInfo$Change;Ljava/lang/Runnable;FLandroid/graphics/Rect;)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/transition/d;->a:Lcom/android/wm/shell/transition/DefaultTransitionHandler;

    iput-object p2, p0, Lcom/android/wm/shell/transition/d;->b:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/android/wm/shell/transition/d;->c:Landroid/view/animation/Animation;

    iput-object p4, p0, Lcom/android/wm/shell/transition/d;->d:Landroid/window/TransitionInfo$Change;

    iput-object p5, p0, Lcom/android/wm/shell/transition/d;->e:Ljava/lang/Runnable;

    iput p6, p0, Lcom/android/wm/shell/transition/d;->f:F

    iput-object p7, p0, Lcom/android/wm/shell/transition/d;->g:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 10

    iget-object v0, p0, Lcom/android/wm/shell/transition/d;->a:Lcom/android/wm/shell/transition/DefaultTransitionHandler;

    iget-object v1, p0, Lcom/android/wm/shell/transition/d;->b:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/wm/shell/transition/d;->c:Landroid/view/animation/Animation;

    iget-object v3, p0, Lcom/android/wm/shell/transition/d;->d:Landroid/window/TransitionInfo$Change;

    iget-object v4, p0, Lcom/android/wm/shell/transition/d;->e:Ljava/lang/Runnable;

    iget v5, p0, Lcom/android/wm/shell/transition/d;->f:F

    iget-object v6, p0, Lcom/android/wm/shell/transition/d;->g:Landroid/graphics/Rect;

    move-object v7, p1

    check-cast v7, Landroid/view/SurfaceControl$Transaction;

    invoke-static/range {v0 .. v7}, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->e(Lcom/android/wm/shell/transition/DefaultTransitionHandler;Ljava/util/ArrayList;Landroid/view/animation/Animation;Landroid/window/TransitionInfo$Change;Ljava/lang/Runnable;FLandroid/graphics/Rect;Landroid/view/SurfaceControl$Transaction;)V

    return-void
.end method
