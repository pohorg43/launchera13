.class public final synthetic Lcom/android/common/config/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Landroid/view/View;I)V
    .registers 3

    iput p2, p0, Lcom/android/common/config/a;->a:I

    packed-switch p2, :pswitch_data_42

    goto :goto_3c

    :pswitch_6  #0x9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/common/config/a;->b:Landroid/view/View;

    return-void

    :pswitch_c  #0x8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/common/config/a;->b:Landroid/view/View;

    return-void

    :pswitch_12  #0x7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/common/config/a;->b:Landroid/view/View;

    return-void

    :pswitch_18  #0x6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/common/config/a;->b:Landroid/view/View;

    return-void

    :pswitch_1e  #0x5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/common/config/a;->b:Landroid/view/View;

    return-void

    :pswitch_24  #0x4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/common/config/a;->b:Landroid/view/View;

    return-void

    :pswitch_2a  #0x3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/common/config/a;->b:Landroid/view/View;

    return-void

    :pswitch_30  #0x2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/common/config/a;->b:Landroid/view/View;

    return-void

    :pswitch_36  #0x1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/common/config/a;->b:Landroid/view/View;

    return-void

    :goto_3c
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/common/config/a;->b:Landroid/view/View;

    return-void

    :pswitch_data_42
    .packed-switch 0x1
        :pswitch_36  #00000001
        :pswitch_30  #00000002
        :pswitch_2a  #00000003
        :pswitch_24  #00000004
        :pswitch_1e  #00000005
        :pswitch_18  #00000006
        :pswitch_12  #00000007
        :pswitch_c  #00000008
        :pswitch_6  #00000009
    .end packed-switch
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 3

    iget v0, p0, Lcom/android/common/config/a;->a:I

    packed-switch v0, :pswitch_data_42

    goto :goto_3c

    :pswitch_6  #0x8
    iget-object p0, p0, Lcom/android/common/config/a;->b:Landroid/view/View;

    invoke-static {p0, p1}, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->l(Landroid/view/View;Landroid/animation/ValueAnimator;)V

    return-void

    :pswitch_c  #0x7
    iget-object p0, p0, Lcom/android/common/config/a;->b:Landroid/view/View;

    invoke-static {p0, p1}, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandCenterLayoutAnimHelper;->a(Landroid/view/View;Landroid/animation/ValueAnimator;)V

    return-void

    :pswitch_12  #0x6
    iget-object p0, p0, Lcom/android/common/config/a;->b:Landroid/view/View;

    invoke-static {p0, p1}, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandCenterLayoutAnimHelper;->b(Landroid/view/View;Landroid/animation/ValueAnimator;)V

    return-void

    :pswitch_18  #0x5
    iget-object p0, p0, Lcom/android/common/config/a;->b:Landroid/view/View;

    invoke-static {p0, p1}, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandCenterLayoutAnimHelper;->e(Landroid/view/View;Landroid/animation/ValueAnimator;)V

    return-void

    :pswitch_1e  #0x4
    iget-object p0, p0, Lcom/android/common/config/a;->b:Landroid/view/View;

    invoke-static {p0, p1}, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandCenterLayoutAnimHelper;->f(Landroid/view/View;Landroid/animation/ValueAnimator;)V

    return-void

    :pswitch_24  #0x3
    iget-object p0, p0, Lcom/android/common/config/a;->b:Landroid/view/View;

    invoke-static {p0, p1}, Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper;->c(Landroid/view/View;Landroid/animation/ValueAnimator;)V

    return-void

    :pswitch_2a  #0x2
    iget-object p0, p0, Lcom/android/common/config/a;->b:Landroid/view/View;

    invoke-static {p0, p1}, Lcom/android/launcher3/card/EngineCardView;->l(Landroid/view/View;Landroid/animation/ValueAnimator;)V

    return-void

    :pswitch_30  #0x1
    iget-object p0, p0, Lcom/android/common/config/a;->b:Landroid/view/View;

    invoke-static {p0, p1}, Lcom/android/common/util/OplusLauncherAnimUtils$Creater;->a(Landroid/view/View;Landroid/animation/ValueAnimator;)V

    return-void

    :pswitch_36  #0x0
    iget-object p0, p0, Lcom/android/common/config/a;->b:Landroid/view/View;

    invoke-static {p0, p1}, Lcom/android/common/config/AnimationConstant;->a(Landroid/view/View;Landroid/animation/ValueAnimator;)V

    return-void

    :goto_3c
    iget-object p0, p0, Lcom/android/common/config/a;->b:Landroid/view/View;

    invoke-static {p0, p1}, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->c(Landroid/view/View;Landroid/animation/ValueAnimator;)V

    return-void

    :pswitch_data_42
    .packed-switch 0x0
        :pswitch_36  #00000000
        :pswitch_30  #00000001
        :pswitch_2a  #00000002
        :pswitch_24  #00000003
        :pswitch_1e  #00000004
        :pswitch_18  #00000005
        :pswitch_12  #00000006
        :pswitch_c  #00000007
        :pswitch_6  #00000008
    .end packed-switch
.end method
