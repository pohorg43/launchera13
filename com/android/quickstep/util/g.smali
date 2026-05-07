.class public final synthetic Lcom/android/quickstep/util/g;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oplus/animation/DynamicAnimation$OnAnimationEndListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner;)V
    .registers 3

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/quickstep/util/g;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/util/g;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/quickstep/util/OplusRectFSpringAnim;I)V
    .registers 4

    iput p2, p0, Lcom/android/quickstep/util/g;->a:I

    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/util/g;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Lcom/oplus/animation/DynamicAnimation;ZFF)V
    .registers 6

    iget v0, p0, Lcom/android/quickstep/util/g;->a:I

    packed-switch v0, :pswitch_data_26

    goto :goto_1e

    :pswitch_6  #0x2
    iget-object p0, p0, Lcom/android/quickstep/util/g;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/quickstep/util/OplusRectFSpringAnim;

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/quickstep/util/OplusRectFSpringAnim;->g(Lcom/android/quickstep/util/OplusRectFSpringAnim;Lcom/oplus/animation/DynamicAnimation;ZFF)V

    return-void

    :pswitch_e  #0x1
    iget-object p0, p0, Lcom/android/quickstep/util/g;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/quickstep/util/OplusRectFSpringAnim;

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/quickstep/util/OplusRectFSpringAnim;->h(Lcom/android/quickstep/util/OplusRectFSpringAnim;Lcom/oplus/animation/DynamicAnimation;ZFF)V

    return-void

    :pswitch_16  #0x0
    iget-object p0, p0, Lcom/android/quickstep/util/g;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/quickstep/util/OplusRectFSpringAnim;

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/quickstep/util/OplusRectFSpringAnim;->f(Lcom/android/quickstep/util/OplusRectFSpringAnim;Lcom/oplus/animation/DynamicAnimation;ZFF)V

    return-void

    :goto_1e
    iget-object p0, p0, Lcom/android/quickstep/util/g;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner;

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner;->a(Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner;Lcom/oplus/animation/DynamicAnimation;ZFF)V

    return-void

    :pswitch_data_26
    .packed-switch 0x0
        :pswitch_16  #00000000
        :pswitch_e  #00000001
        :pswitch_6  #00000002
    .end packed-switch
.end method
