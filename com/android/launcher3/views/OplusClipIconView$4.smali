.class Lcom/android/launcher3/views/OplusClipIconView$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/views/OplusClipIconView;->update(Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;Landroid/graphics/RectF;FFFIZFFLandroid/view/ViewGroup$MarginLayoutParams;Lcom/android/launcher3/DeviceProfile;Ljava/util/function/Supplier;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher3/views/OplusClipIconView;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/views/OplusClipIconView;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/views/OplusClipIconView$4;->this$0:Lcom/android/launcher3/views/OplusClipIconView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 2

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    iget-object p0, p0, Lcom/android/launcher3/views/OplusClipIconView$4;->this$0:Lcom/android/launcher3/views/OplusClipIconView;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/launcher3/views/OplusClipIconView;->access$102(Lcom/android/launcher3/views/OplusClipIconView;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    return-void
.end method
