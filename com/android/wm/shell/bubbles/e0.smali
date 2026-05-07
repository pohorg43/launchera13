.class public final synthetic Lcom/android/wm/shell/bubbles/e0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:F


# direct methods
.method public synthetic constructor <init>(FLcom/oplus/quickstep/anim/TaskViewPressedAnimation;)V
    .registers 4

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/wm/shell/bubbles/e0;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/wm/shell/bubbles/e0;->c:F

    iput-object p2, p0, Lcom/android/wm/shell/bubbles/e0;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/wm/shell/bubbles/BubbleStackView;F)V
    .registers 4

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/wm/shell/bubbles/e0;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/e0;->b:Ljava/lang/Object;

    iput p2, p0, Lcom/android/wm/shell/bubbles/e0;->c:F

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 3

    iget v0, p0, Lcom/android/wm/shell/bubbles/e0;->a:I

    packed-switch v0, :pswitch_data_1a

    goto :goto_10

    :pswitch_6  #0x0
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/e0;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/wm/shell/bubbles/BubbleStackView;

    iget p0, p0, Lcom/android/wm/shell/bubbles/e0;->c:F

    invoke-static {v0, p0, p1}, Lcom/android/wm/shell/bubbles/BubbleStackView;->k(Lcom/android/wm/shell/bubbles/BubbleStackView;FLandroid/animation/ValueAnimator;)V

    return-void

    :goto_10
    iget v0, p0, Lcom/android/wm/shell/bubbles/e0;->c:F

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/e0;->b:Ljava/lang/Object;

    check-cast p0, Lcom/oplus/quickstep/anim/TaskViewPressedAnimation;

    invoke-static {v0, p0, p1}, Lcom/oplus/quickstep/anim/TaskViewPressedAnimation;->a(FLcom/oplus/quickstep/anim/TaskViewPressedAnimation;Landroid/animation/ValueAnimator;)V

    return-void

    :pswitch_data_1a
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method
