.class Lcom/android/launcher3/folder/OplusPreviewBackground$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/folder/OplusPreviewBackground;->animateToFlash(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public mCanceled:Z

.field public final synthetic this$0:Lcom/android/launcher3/folder/OplusPreviewBackground;

.field public final synthetic val$onEnd:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/folder/OplusPreviewBackground;Ljava/lang/Runnable;)V
    .registers 3

    iput-object p1, p0, Lcom/android/launcher3/folder/OplusPreviewBackground$2;->this$0:Lcom/android/launcher3/folder/OplusPreviewBackground;

    iput-object p2, p0, Lcom/android/launcher3/folder/OplusPreviewBackground$2;->val$onEnd:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/launcher3/folder/OplusPreviewBackground$2;->mCanceled:Z

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/launcher3/folder/OplusPreviewBackground$2;->mCanceled:Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    iget-object p1, p0, Lcom/android/launcher3/folder/OplusPreviewBackground$2;->this$0:Lcom/android/launcher3/folder/OplusPreviewBackground;

    invoke-virtual {p1}, Lcom/android/launcher3/folder/OplusPreviewBackground;->getBgDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_13

    iget-object p1, p0, Lcom/android/launcher3/folder/OplusPreviewBackground$2;->this$0:Lcom/android/launcher3/folder/OplusPreviewBackground;

    invoke-virtual {p1}, Lcom/android/launcher3/folder/OplusPreviewBackground;->getBgDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const/16 v0, 0xff

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_13
    iget-object p1, p0, Lcom/android/launcher3/folder/OplusPreviewBackground$2;->this$0:Lcom/android/launcher3/folder/OplusPreviewBackground;

    invoke-virtual {p1}, Lcom/android/launcher3/folder/PreviewBackground;->invalidate()V

    iget-boolean p1, p0, Lcom/android/launcher3/folder/OplusPreviewBackground$2;->mCanceled:Z

    if-nez p1, :cond_23

    iget-object p0, p0, Lcom/android/launcher3/folder/OplusPreviewBackground$2;->val$onEnd:Ljava/lang/Runnable;

    if-eqz p0, :cond_23

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_23
    return-void
.end method
