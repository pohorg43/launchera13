.class public final synthetic Lcom/android/launcher3/popup/pendingcard/f;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/coui/appcompat/indicator/COUIPageIndicator;


# direct methods
.method public synthetic constructor <init>(Lcom/coui/appcompat/indicator/COUIPageIndicator;I)V
    .registers 3

    iput p2, p0, Lcom/android/launcher3/popup/pendingcard/f;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/popup/pendingcard/f;->b:Lcom/coui/appcompat/indicator/COUIPageIndicator;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 3

    iget v0, p0, Lcom/android/launcher3/popup/pendingcard/f;->a:I

    packed-switch v0, :pswitch_data_12

    goto :goto_c

    :pswitch_6  #0x0
    iget-object p0, p0, Lcom/android/launcher3/popup/pendingcard/f;->b:Lcom/coui/appcompat/indicator/COUIPageIndicator;

    invoke-static {p0, p1}, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->h(Lcom/coui/appcompat/indicator/COUIPageIndicator;Landroid/animation/ValueAnimator;)V

    return-void

    :goto_c
    iget-object p0, p0, Lcom/android/launcher3/popup/pendingcard/f;->b:Lcom/coui/appcompat/indicator/COUIPageIndicator;

    invoke-static {p0, p1}, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->g(Lcom/coui/appcompat/indicator/COUIPageIndicator;Landroid/animation/ValueAnimator;)V

    return-void

    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method
