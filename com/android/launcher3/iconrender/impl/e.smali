.class public final synthetic Lcom/android/launcher3/iconrender/impl/e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Z

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/iconrender/impl/SelectStateIconRenderer;ZLcom/android/launcher/SwitchStateRenderer$SelectIconDrawParams;)V
    .registers 5

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/iconrender/impl/e;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/iconrender/impl/e;->b:Ljava/lang/Object;

    iput-boolean p2, p0, Lcom/android/launcher3/iconrender/impl/e;->c:Z

    iput-object p3, p0, Lcom/android/launcher3/iconrender/impl/e;->d:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/wm/shell/common/split/SplitDecorManager;Landroid/view/SurfaceControl$Transaction;Z)V
    .registers 5

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/launcher3/iconrender/impl/e;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/iconrender/impl/e;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/launcher3/iconrender/impl/e;->d:Ljava/lang/Object;

    iput-boolean p3, p0, Lcom/android/launcher3/iconrender/impl/e;->c:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/wm/shell/legacysplitscreen/DividerView;ZLcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;)V
    .registers 5

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/launcher3/iconrender/impl/e;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/iconrender/impl/e;->b:Ljava/lang/Object;

    iput-boolean p2, p0, Lcom/android/launcher3/iconrender/impl/e;->c:Z

    iput-object p3, p0, Lcom/android/launcher3/iconrender/impl/e;->d:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/List;Landroid/view/SurfaceControl$Transaction;Z)V
    .registers 5

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/launcher3/iconrender/impl/e;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/iconrender/impl/e;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/launcher3/iconrender/impl/e;->d:Ljava/lang/Object;

    iput-boolean p3, p0, Lcom/android/launcher3/iconrender/impl/e;->c:Z

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 4

    iget v0, p0, Lcom/android/launcher3/iconrender/impl/e;->a:I

    packed-switch v0, :pswitch_data_3e

    goto :goto_30

    :pswitch_6  #0x2
    iget-object v0, p0, Lcom/android/launcher3/iconrender/impl/e;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/wm/shell/common/split/SplitDecorManager;

    iget-object v1, p0, Lcom/android/launcher3/iconrender/impl/e;->d:Ljava/lang/Object;

    check-cast v1, Landroid/view/SurfaceControl$Transaction;

    iget-boolean p0, p0, Lcom/android/launcher3/iconrender/impl/e;->c:Z

    invoke-static {v0, v1, p0, p1}, Lcom/android/wm/shell/common/split/SplitDecorManager;->a(Lcom/android/wm/shell/common/split/SplitDecorManager;Landroid/view/SurfaceControl$Transaction;ZLandroid/animation/ValueAnimator;)V

    return-void

    :pswitch_14  #0x1
    iget-object v0, p0, Lcom/android/launcher3/iconrender/impl/e;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    iget-object v1, p0, Lcom/android/launcher3/iconrender/impl/e;->d:Ljava/lang/Object;

    check-cast v1, Landroid/view/SurfaceControl$Transaction;

    iget-boolean p0, p0, Lcom/android/launcher3/iconrender/impl/e;->c:Z

    invoke-static {v0, v1, p0, p1}, Lcom/android/quickstep/TaskViewUtils;->b(Ljava/util/List;Landroid/view/SurfaceControl$Transaction;ZLandroid/animation/ValueAnimator;)V

    return-void

    :pswitch_22  #0x0
    iget-object v0, p0, Lcom/android/launcher3/iconrender/impl/e;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/iconrender/impl/SelectStateIconRenderer;

    iget-boolean v1, p0, Lcom/android/launcher3/iconrender/impl/e;->c:Z

    iget-object p0, p0, Lcom/android/launcher3/iconrender/impl/e;->d:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher/SwitchStateRenderer$SelectIconDrawParams;

    invoke-static {v0, v1, p0, p1}, Lcom/android/launcher3/iconrender/impl/SelectStateIconRenderer;->b(Lcom/android/launcher3/iconrender/impl/SelectStateIconRenderer;ZLcom/android/launcher/SwitchStateRenderer$SelectIconDrawParams;Landroid/animation/ValueAnimator;)V

    return-void

    :goto_30
    iget-object v0, p0, Lcom/android/launcher3/iconrender/impl/e;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/wm/shell/legacysplitscreen/DividerView;

    iget-boolean v1, p0, Lcom/android/launcher3/iconrender/impl/e;->c:Z

    iget-object p0, p0, Lcom/android/launcher3/iconrender/impl/e;->d:Ljava/lang/Object;

    check-cast p0, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    invoke-static {v0, v1, p0, p1}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->a(Lcom/android/wm/shell/legacysplitscreen/DividerView;ZLcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;Landroid/animation/ValueAnimator;)V

    return-void

    :pswitch_data_3e
    .packed-switch 0x0
        :pswitch_22  #00000000
        :pswitch_14  #00000001
        :pswitch_6  #00000002
    .end packed-switch
.end method
