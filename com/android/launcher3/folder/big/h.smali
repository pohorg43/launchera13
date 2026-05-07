.class public final synthetic Lcom/android/launcher3/folder/big/h;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:Lcom/android/launcher3/folder/big/TouchIconAnim;

.field public final synthetic b:F

.field public final synthetic c:F

.field public final synthetic d:F


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/folder/big/TouchIconAnim;FFF)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/folder/big/h;->a:Lcom/android/launcher3/folder/big/TouchIconAnim;

    iput p2, p0, Lcom/android/launcher3/folder/big/h;->b:F

    iput p3, p0, Lcom/android/launcher3/folder/big/h;->c:F

    iput p4, p0, Lcom/android/launcher3/folder/big/h;->d:F

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 5

    iget-object v0, p0, Lcom/android/launcher3/folder/big/h;->a:Lcom/android/launcher3/folder/big/TouchIconAnim;

    iget v1, p0, Lcom/android/launcher3/folder/big/h;->b:F

    iget v2, p0, Lcom/android/launcher3/folder/big/h;->c:F

    iget p0, p0, Lcom/android/launcher3/folder/big/h;->d:F

    invoke-static {v0, v1, v2, p0, p1}, Lcom/android/launcher3/folder/big/TouchIconAnim;->a(Lcom/android/launcher3/folder/big/TouchIconAnim;FFFLandroid/animation/ValueAnimator;)V

    return-void
.end method
