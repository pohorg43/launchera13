.class Lcom/android/launcher3/folder/OplusPreviewBackground$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/folder/OplusPreviewBackground;->animateToFlash(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher3/folder/OplusPreviewBackground;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/folder/OplusPreviewBackground;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/folder/OplusPreviewBackground$1;->this$0:Lcom/android/launcher3/folder/OplusPreviewBackground;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 4

    iget-object v0, p0, Lcom/android/launcher3/folder/OplusPreviewBackground$1;->this$0:Lcom/android/launcher3/folder/OplusPreviewBackground;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/OplusPreviewBackground;->getBgDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1f

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object v0, p0, Lcom/android/launcher3/folder/OplusPreviewBackground$1;->this$0:Lcom/android/launcher3/folder/OplusPreviewBackground;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/OplusPreviewBackground;->getBgDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/high16 v1, 0x437f0000  # 255.0f

    mul-float/2addr p1, v1

    float-to-int p1, p1

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_1f
    iget-object p0, p0, Lcom/android/launcher3/folder/OplusPreviewBackground$1;->this$0:Lcom/android/launcher3/folder/OplusPreviewBackground;

    invoke-virtual {p0}, Lcom/android/launcher3/folder/PreviewBackground;->invalidate()V

    return-void
.end method
