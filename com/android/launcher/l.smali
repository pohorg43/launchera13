.class public final synthetic Lcom/android/launcher/l;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Z


# direct methods
.method public synthetic constructor <init>(ZI)V
    .registers 4

    iput p2, p0, Lcom/android/launcher/l;->a:I

    const/4 v0, 0x1

    if-eq p2, v0, :cond_27

    const/4 v0, 0x2

    if-eq p2, v0, :cond_21

    const/4 v0, 0x3

    if-eq p2, v0, :cond_1b

    const/4 v0, 0x4

    if-eq p2, v0, :cond_15

    const/4 v0, 0x5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/android/launcher/l;->b:Z

    return-void

    :cond_15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/android/launcher/l;->b:Z

    return-void

    :cond_1b
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/android/launcher/l;->b:Z

    return-void

    :cond_21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/android/launcher/l;->b:Z

    return-void

    :cond_27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/android/launcher/l;->b:Z

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    iget v0, p0, Lcom/android/launcher/l;->a:I

    packed-switch v0, :pswitch_data_36

    goto :goto_2e

    :pswitch_6  #0x4
    iget-boolean p0, p0, Lcom/android/launcher/l;->b:Z

    check-cast p1, Landroid/animation/ValueAnimator;

    invoke-static {p0, p1}, Lcom/android/quickstep/AbsSwipeUpHandler;->h(ZLandroid/animation/ValueAnimator;)V

    return-void

    :pswitch_e  #0x3
    iget-boolean p0, p0, Lcom/android/launcher/l;->b:Z

    check-cast p1, Landroid/view/View;

    invoke-static {p0, p1}, Lcom/android/launcher3/util/SinglePageAlignManager;->a(ZLandroid/view/View;)V

    return-void

    :pswitch_16  #0x2
    iget-boolean p0, p0, Lcom/android/launcher/l;->b:Z

    check-cast p1, Lcom/android/launcher3/iconrender/ITitleRenderer;

    invoke-static {p0, p1}, Lcom/android/launcher3/iconrender/RenderManager;->f(ZLcom/android/launcher3/iconrender/ITitleRenderer;)V

    return-void

    :pswitch_1e  #0x1
    iget-boolean p0, p0, Lcom/android/launcher/l;->b:Z

    check-cast p1, Lcom/android/launcher3/iconrender/IIconRenderer;

    invoke-static {p0, p1}, Lcom/android/launcher3/iconrender/RenderManager;->j(ZLcom/android/launcher3/iconrender/IIconRenderer;)V

    return-void

    :pswitch_26  #0x0
    iget-boolean p0, p0, Lcom/android/launcher/l;->b:Z

    check-cast p1, Ljava/util/function/Consumer;

    invoke-static {p0, p1}, Lcom/android/launcher/Launcher;->G(ZLjava/util/function/Consumer;)V

    return-void

    :goto_2e
    iget-boolean p0, p0, Lcom/android/launcher/l;->b:Z

    check-cast p1, Lcom/oplus/quickstep/common/IObserverListener;

    invoke-static {p0, p1}, Lcom/oplus/quickstep/common/AbstractObserver;->a(ZLcom/oplus/quickstep/common/IObserverListener;)V

    return-void

    :pswitch_data_36
    .packed-switch 0x0
        :pswitch_26  #00000000
        :pswitch_1e  #00000001
        :pswitch_16  #00000002
        :pswitch_e  #00000003
        :pswitch_6  #00000004
    .end packed-switch
.end method
