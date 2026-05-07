.class public final synthetic Lcom/android/wm/shell/legacysplitscreen/n;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:F

.field public final synthetic e:F


# direct methods
.method public synthetic constructor <init>(Landroid/animation/ObjectAnimator;FFLcom/android/quickstep/views/TaskView;)V
    .registers 6

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/wm/shell/legacysplitscreen/n;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/legacysplitscreen/n;->b:Ljava/lang/Object;

    iput p2, p0, Lcom/android/wm/shell/legacysplitscreen/n;->d:F

    iput p3, p0, Lcom/android/wm/shell/legacysplitscreen/n;->e:F

    iput-object p4, p0, Lcom/android/wm/shell/legacysplitscreen/n;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;FF)V
    .registers 6

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/wm/shell/legacysplitscreen/n;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/legacysplitscreen/n;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/wm/shell/legacysplitscreen/n;->c:Ljava/lang/Object;

    iput p3, p0, Lcom/android/wm/shell/legacysplitscreen/n;->d:F

    iput p4, p0, Lcom/android/wm/shell/legacysplitscreen/n;->e:F

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 5

    iget v0, p0, Lcom/android/wm/shell/legacysplitscreen/n;->a:I

    packed-switch v0, :pswitch_data_26

    goto :goto_16

    :pswitch_6  #0x0
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/n;->b:Ljava/lang/Object;

    check-cast v0, Landroid/view/SurfaceControl$Transaction;

    iget-object v1, p0, Lcom/android/wm/shell/legacysplitscreen/n;->c:Ljava/lang/Object;

    check-cast v1, Landroid/view/SurfaceControl;

    iget v2, p0, Lcom/android/wm/shell/legacysplitscreen/n;->d:F

    iget p0, p0, Lcom/android/wm/shell/legacysplitscreen/n;->e:F

    invoke-static {v0, v1, v2, p0, p1}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTransitions;->g(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;FFLandroid/animation/ValueAnimator;)V

    return-void

    :goto_16
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/n;->b:Ljava/lang/Object;

    check-cast v0, Landroid/animation/ObjectAnimator;

    iget v1, p0, Lcom/android/wm/shell/legacysplitscreen/n;->d:F

    iget v2, p0, Lcom/android/wm/shell/legacysplitscreen/n;->e:F

    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/n;->c:Ljava/lang/Object;

    check-cast p0, Lcom/android/quickstep/views/TaskView;

    invoke-static {v0, v1, v2, p0, p1}, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->d(Landroid/animation/ObjectAnimator;FFLcom/android/quickstep/views/TaskView;Landroid/animation/ValueAnimator;)V

    return-void

    :pswitch_data_26
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method
