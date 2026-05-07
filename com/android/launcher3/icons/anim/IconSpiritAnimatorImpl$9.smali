.class Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl$9;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->getShadowRectAnim(Z)Lcom/oplus/painteranimation/OplusValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;

.field public final synthetic val$isEnter:Z


# direct methods
.method public constructor <init>(Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;Z)V
    .registers 3

    iput-object p1, p0, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl$9;->this$0:Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;

    iput-boolean p2, p0, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl$9;->val$isEnter:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 9

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-boolean v0, p0, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl$9;->val$isEnter:Z

    const/high16 v1, 0x40000000  # 2.0f

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl$9;->this$0:Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;

    invoke-static {v0}, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->access$1200(Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;)Landroid/graphics/RectF;

    move-result-object v0

    iget-object v2, p0, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl$9;->this$0:Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;

    invoke-virtual {v2}, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->getCurrentIconArea()Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    goto :goto_61

    :cond_20
    iget-object v0, p0, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl$9;->this$0:Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;

    invoke-static {v0}, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->access$1200(Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;)Landroid/graphics/RectF;

    move-result-object v0

    iget-object v2, p0, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl$9;->this$0:Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;

    invoke-static {v2}, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->access$1300(Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;)F

    move-result v2

    iget-object v3, p0, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl$9;->this$0:Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;

    invoke-static {v3}, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->access$1400(Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;)F

    move-result v3

    div-float/2addr v3, v1

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl$9;->this$0:Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;

    invoke-static {v3}, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->access$1500(Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;)F

    move-result v3

    iget-object v4, p0, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl$9;->this$0:Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;

    invoke-static {v4}, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->access$1400(Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;)F

    move-result v4

    div-float/2addr v4, v1

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl$9;->this$0:Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;

    invoke-static {v4}, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->access$1300(Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;)F

    move-result v4

    iget-object v5, p0, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl$9;->this$0:Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;

    invoke-static {v5}, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->access$1400(Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;)F

    move-result v5

    div-float/2addr v5, v1

    add-float/2addr v5, v4

    iget-object v4, p0, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl$9;->this$0:Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;

    invoke-static {v4}, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->access$1500(Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;)F

    move-result v4

    iget-object v6, p0, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl$9;->this$0:Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;

    invoke-static {v6}, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->access$1400(Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;)F

    move-result v6

    div-float/2addr v6, v1

    add-float/2addr v6, v4

    invoke-virtual {v0, v2, v3, v5, v6}, Landroid/graphics/RectF;->set(FFFF)V

    :goto_61
    iget-object v0, p0, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl$9;->this$0:Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;

    invoke-static {v0}, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->access$1600(Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;)Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget-object v2, p0, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl$9;->this$0:Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;

    invoke-static {v2}, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->access$1200(Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;)Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    invoke-static {p1, v0, v2}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result v0

    iget-object v2, p0, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl$9;->this$0:Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;

    invoke-static {v2}, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->access$1600(Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;)Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    iget-object v3, p0, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl$9;->this$0:Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;

    invoke-static {v3}, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->access$1200(Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;)Landroid/graphics/RectF;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    invoke-static {p1, v2, v3}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result v2

    iget-object v3, p0, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl$9;->this$0:Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;

    invoke-static {v3}, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->access$1600(Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;)Landroid/graphics/RectF;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerX()F

    move-result v4

    iget-object v5, p0, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl$9;->this$0:Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;

    invoke-static {v5}, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->access$1200(Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;)Landroid/graphics/RectF;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/RectF;->centerX()F

    move-result v5

    invoke-static {p1, v4, v5}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result v4

    invoke-static {v3, v4}, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->access$1702(Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;F)F

    iget-object v3, p0, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl$9;->this$0:Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;

    invoke-static {v3}, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->access$1600(Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;)Landroid/graphics/RectF;

    move-result-object v4

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    iget-object v5, p0, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl$9;->this$0:Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;

    invoke-static {v5}, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->access$1200(Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;)Landroid/graphics/RectF;

    move-result-object v5

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    invoke-static {p1, v4, v5}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result p1

    invoke-static {v3, p1}, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->access$1802(Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;F)F

    iget-object p1, p0, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl$9;->this$0:Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;

    invoke-static {p1}, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->access$1900(Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;)Landroid/graphics/RectF;

    move-result-object p1

    iget-object v3, p0, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl$9;->this$0:Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;

    invoke-static {v3}, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->access$1700(Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;)F

    move-result v3

    div-float/2addr v0, v1

    sub-float/2addr v3, v0

    iget-object v1, p0, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl$9;->this$0:Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;

    invoke-static {v1}, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->access$1800(Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;)F

    move-result v1

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl$9;->this$0:Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;

    invoke-static {v2}, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->access$1700(Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;)F

    move-result v2

    add-float/2addr v2, v0

    iget-object v0, p0, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl$9;->this$0:Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;

    invoke-static {v0}, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->access$1800(Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;)F

    move-result v0

    invoke-virtual {p1, v3, v1, v2, v0}, Landroid/graphics/RectF;->set(FFFF)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mCurrentRect: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl$9;->this$0:Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;

    invoke-static {p0}, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->access$1900(Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;)Landroid/graphics/RectF;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "IconSpiritAnimatorImpl"

    invoke-static {p1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
