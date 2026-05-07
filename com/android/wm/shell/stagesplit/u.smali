.class public final synthetic Lcom/android/wm/shell/stagesplit/u;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/android/wm/shell/stagesplit/SplitScreenTransitions;

.field public final synthetic b:Landroid/view/SurfaceControl$Transaction;

.field public final synthetic c:Landroid/view/SurfaceControl;

.field public final synthetic d:Landroid/graphics/Rect;

.field public final synthetic e:Landroid/animation/ValueAnimator;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/stagesplit/SplitScreenTransitions;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/animation/ValueAnimator;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/stagesplit/u;->a:Lcom/android/wm/shell/stagesplit/SplitScreenTransitions;

    iput-object p2, p0, Lcom/android/wm/shell/stagesplit/u;->b:Landroid/view/SurfaceControl$Transaction;

    iput-object p3, p0, Lcom/android/wm/shell/stagesplit/u;->c:Landroid/view/SurfaceControl;

    iput-object p4, p0, Lcom/android/wm/shell/stagesplit/u;->d:Landroid/graphics/Rect;

    iput-object p5, p0, Lcom/android/wm/shell/stagesplit/u;->e:Landroid/animation/ValueAnimator;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    iget-object v0, p0, Lcom/android/wm/shell/stagesplit/u;->a:Lcom/android/wm/shell/stagesplit/SplitScreenTransitions;

    iget-object v1, p0, Lcom/android/wm/shell/stagesplit/u;->b:Landroid/view/SurfaceControl$Transaction;

    iget-object v2, p0, Lcom/android/wm/shell/stagesplit/u;->c:Landroid/view/SurfaceControl;

    iget-object v3, p0, Lcom/android/wm/shell/stagesplit/u;->d:Landroid/graphics/Rect;

    iget-object p0, p0, Lcom/android/wm/shell/stagesplit/u;->e:Landroid/animation/ValueAnimator;

    invoke-static {v0, v1, v2, v3, p0}, Lcom/android/wm/shell/stagesplit/SplitScreenTransitions;->a(Lcom/android/wm/shell/stagesplit/SplitScreenTransitions;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/animation/ValueAnimator;)V

    return-void
.end method
