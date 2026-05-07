.class public final synthetic Lcom/android/quickstep/y;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/android/quickstep/util/RectFSpringAnim;


# direct methods
.method public synthetic constructor <init>(Lcom/android/quickstep/util/RectFSpringAnim;I)V
    .registers 4

    iput p2, p0, Lcom/android/quickstep/y;->a:I

    const/4 v0, 0x1

    if-eq p2, v0, :cond_1e

    const/4 v0, 0x2

    if-eq p2, v0, :cond_18

    const/4 v0, 0x3

    if-eq p2, v0, :cond_12

    const/4 v0, 0x4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/y;->b:Lcom/android/quickstep/util/RectFSpringAnim;

    return-void

    :cond_12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/y;->b:Lcom/android/quickstep/util/RectFSpringAnim;

    return-void

    :cond_18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/y;->b:Lcom/android/quickstep/util/RectFSpringAnim;

    return-void

    :cond_1e
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/y;->b:Lcom/android/quickstep/util/RectFSpringAnim;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget v0, p0, Lcom/android/quickstep/y;->a:I

    packed-switch v0, :pswitch_data_24

    goto :goto_1e

    :pswitch_6  #0x3
    iget-object p0, p0, Lcom/android/quickstep/y;->b:Lcom/android/quickstep/util/RectFSpringAnim;

    invoke-virtual {p0}, Lcom/android/quickstep/util/RectFSpringAnim;->end()V

    return-void

    :pswitch_c  #0x2
    iget-object p0, p0, Lcom/android/quickstep/y;->b:Lcom/android/quickstep/util/RectFSpringAnim;

    invoke-virtual {p0}, Lcom/android/quickstep/util/RectFSpringAnim;->onTargetPositionChanged()V

    return-void

    :pswitch_12  #0x1
    iget-object p0, p0, Lcom/android/quickstep/y;->b:Lcom/android/quickstep/util/RectFSpringAnim;

    invoke-virtual {p0}, Lcom/android/quickstep/util/RectFSpringAnim;->end()V

    return-void

    :pswitch_18  #0x0
    iget-object p0, p0, Lcom/android/quickstep/y;->b:Lcom/android/quickstep/util/RectFSpringAnim;

    invoke-virtual {p0}, Lcom/android/quickstep/util/RectFSpringAnim;->onTargetPositionChanged()V

    return-void

    :goto_1e
    iget-object p0, p0, Lcom/android/quickstep/y;->b:Lcom/android/quickstep/util/RectFSpringAnim;

    invoke-static {p0}, Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl$createHomeAnimationFactory$2;->b(Lcom/android/quickstep/util/RectFSpringAnim;)V

    return-void

    :pswitch_data_24
    .packed-switch 0x0
        :pswitch_18  #00000000
        :pswitch_12  #00000001
        :pswitch_c  #00000002
        :pswitch_6  #00000003
    .end packed-switch
.end method
