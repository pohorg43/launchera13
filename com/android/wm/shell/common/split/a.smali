.class public final synthetic Lcom/android/wm/shell/common/split/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Z

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/common/split/SplitDecorManagerExt;Landroid/view/SurfaceControl$Transaction;ZLandroid/view/SurfaceControl;)V
    .registers 6

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/wm/shell/common/split/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/common/split/a;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/wm/shell/common/split/a;->c:Ljava/lang/Object;

    iput-boolean p3, p0, Lcom/android/wm/shell/common/split/a;->d:Z

    iput-object p4, p0, Lcom/android/wm/shell/common/split/a;->e:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/oplus/quickstep/views/OplusClearAllPanelView;Ljava/lang/String;ZLjava/lang/String;)V
    .registers 6

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/wm/shell/common/split/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/common/split/a;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/wm/shell/common/split/a;->c:Ljava/lang/Object;

    iput-boolean p3, p0, Lcom/android/wm/shell/common/split/a;->d:Z

    iput-object p4, p0, Lcom/android/wm/shell/common/split/a;->e:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 5

    iget v0, p0, Lcom/android/wm/shell/common/split/a;->a:I

    packed-switch v0, :pswitch_data_2a

    goto :goto_18

    :pswitch_6  #0x0
    iget-object v0, p0, Lcom/android/wm/shell/common/split/a;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/wm/shell/common/split/SplitDecorManagerExt;

    iget-object v1, p0, Lcom/android/wm/shell/common/split/a;->c:Ljava/lang/Object;

    check-cast v1, Landroid/view/SurfaceControl$Transaction;

    iget-boolean v2, p0, Lcom/android/wm/shell/common/split/a;->d:Z

    iget-object p0, p0, Lcom/android/wm/shell/common/split/a;->e:Ljava/lang/Object;

    check-cast p0, Landroid/view/SurfaceControl;

    invoke-static {v0, v1, v2, p0, p1}, Lcom/android/wm/shell/common/split/SplitDecorManagerExt;->a(Lcom/android/wm/shell/common/split/SplitDecorManagerExt;Landroid/view/SurfaceControl$Transaction;ZLandroid/view/SurfaceControl;Landroid/animation/ValueAnimator;)V

    return-void

    :goto_18
    iget-object v0, p0, Lcom/android/wm/shell/common/split/a;->b:Ljava/lang/Object;

    check-cast v0, Lcom/oplus/quickstep/views/OplusClearAllPanelView;

    iget-object v1, p0, Lcom/android/wm/shell/common/split/a;->c:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-boolean v2, p0, Lcom/android/wm/shell/common/split/a;->d:Z

    iget-object p0, p0, Lcom/android/wm/shell/common/split/a;->e:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-static {v0, v1, v2, p0, p1}, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->e(Lcom/oplus/quickstep/views/OplusClearAllPanelView;Ljava/lang/String;ZLjava/lang/String;Landroid/animation/ValueAnimator;)V

    return-void

    :pswitch_data_2a
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method
