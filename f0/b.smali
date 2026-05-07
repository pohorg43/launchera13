.class public final synthetic Lf0/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;I)V
    .registers 3

    iput p2, p0, Lf0/b;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lf0/b;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/oplus/quickstep/anim/OplusSpringObjectAnimator;)V
    .registers 3

    const/4 v0, 0x2

    iput v0, p0, Lf0/b;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lf0/b;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroidx/dynamicanimation/animation/DynamicAnimation;FF)V
    .registers 5

    iget v0, p0, Lf0/b;->a:I

    packed-switch v0, :pswitch_data_1e

    goto :goto_16

    :pswitch_6  #0x1
    iget-object p0, p0, Lf0/b;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;

    invoke-static {p0, p1, p2, p3}, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->a(Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;Landroidx/dynamicanimation/animation/DynamicAnimation;FF)V

    return-void

    :pswitch_e  #0x0
    iget-object p0, p0, Lf0/b;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;

    invoke-static {p0, p1, p2, p3}, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->b(Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;Landroidx/dynamicanimation/animation/DynamicAnimation;FF)V

    return-void

    :goto_16
    iget-object p0, p0, Lf0/b;->b:Ljava/lang/Object;

    check-cast p0, Lcom/oplus/quickstep/anim/OplusSpringObjectAnimator;

    invoke-static {p0, p1, p2, p3}, Lcom/oplus/quickstep/anim/OplusSpringObjectAnimator;->a(Lcom/oplus/quickstep/anim/OplusSpringObjectAnimator;Landroidx/dynamicanimation/animation/DynamicAnimation;FF)V

    return-void

    :pswitch_data_1e
    .packed-switch 0x0
        :pswitch_e  #00000000
        :pswitch_6  #00000001
    .end packed-switch
.end method
