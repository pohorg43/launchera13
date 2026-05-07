.class public final synthetic Lcom/android/wm/shell/legacysplitscreen/r;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTransitions;

.field public final synthetic b:Landroid/view/SurfaceControl$Transaction;

.field public final synthetic c:Landroid/view/SurfaceControl;

.field public final synthetic d:F

.field public final synthetic e:Landroid/animation/ValueAnimator;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTransitions;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;FLandroid/animation/ValueAnimator;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/legacysplitscreen/r;->a:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTransitions;

    iput-object p2, p0, Lcom/android/wm/shell/legacysplitscreen/r;->b:Landroid/view/SurfaceControl$Transaction;

    iput-object p3, p0, Lcom/android/wm/shell/legacysplitscreen/r;->c:Landroid/view/SurfaceControl;

    iput p4, p0, Lcom/android/wm/shell/legacysplitscreen/r;->d:F

    iput-object p5, p0, Lcom/android/wm/shell/legacysplitscreen/r;->e:Landroid/animation/ValueAnimator;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/r;->a:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTransitions;

    iget-object v1, p0, Lcom/android/wm/shell/legacysplitscreen/r;->b:Landroid/view/SurfaceControl$Transaction;

    iget-object v2, p0, Lcom/android/wm/shell/legacysplitscreen/r;->c:Landroid/view/SurfaceControl;

    iget v3, p0, Lcom/android/wm/shell/legacysplitscreen/r;->d:F

    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/r;->e:Landroid/animation/ValueAnimator;

    invoke-static {v0, v1, v2, v3, p0}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTransitions;->b(Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTransitions;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;FLandroid/animation/ValueAnimator;)V

    return-void
.end method
