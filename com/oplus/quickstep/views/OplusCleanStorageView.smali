.class public Lcom/oplus/quickstep/views/OplusCleanStorageView;
.super Lcom/android/launcher/views/PressFeedbackButton;
.source ""


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "AppCompatCustomView"
    }
.end annotation


# static fields
.field private static final FLOAT_EQ_ATOM:F = 1.0E-4f

.field private static final TAG:Ljava/lang/String; = "OplusCleanStorageView"


# instance fields
.field private final mCleanStorageButtonDrawable:Landroid/graphics/drawable/Drawable;

.field private mDrawLeft:F

.field private mDrawTop:F

.field private mRunOnceFlag:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/android/launcher/views/PressFeedbackButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    iput p2, p0, Lcom/oplus/quickstep/views/OplusCleanStorageView;->mDrawLeft:F

    iput p2, p0, Lcom/oplus/quickstep/views/OplusCleanStorageView;->mDrawTop:F

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/oplus/quickstep/views/OplusCleanStorageView;->mRunOnceFlag:Z

    const v0, 0x7f080730

    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/quickstep/views/OplusCleanStorageView;->mCleanStorageButtonDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_21

    invoke-virtual {p0}, Landroid/widget/Button;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/Button;->getHeight()I

    move-result p0

    invoke-virtual {p1, p2, p2, v0, p0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_21
    return-void
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .registers 8

    invoke-super {p0, p1}, Lcom/android/launcher/views/PressFeedbackButton;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/oplus/quickstep/views/OplusCleanStorageView;->mCleanStorageButtonDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_7b

    iget v0, p0, Lcom/oplus/quickstep/views/OplusCleanStorageView;->mDrawLeft:F

    const v1, 0x38d1b717  # 1.0E-4f

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_76

    iget v0, p0, Lcom/oplus/quickstep/views/OplusCleanStorageView;->mDrawTop:F

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_76

    invoke-virtual {p0}, Landroid/widget/Button;->getWidth()I

    move-result v0

    if-lez v0, :cond_76

    invoke-virtual {p0}, Landroid/widget/Button;->getHeight()I

    move-result v0

    if-lez v0, :cond_76

    invoke-virtual {p0}, Landroid/widget/Button;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/oplus/quickstep/views/OplusCleanStorageView;->mCleanStorageButtonDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    const/high16 v1, 0x40000000  # 2.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/oplus/quickstep/views/OplusCleanStorageView;->mDrawLeft:F

    invoke-virtual {p0}, Landroid/widget/Button;->getHeight()I

    move-result v0

    iget-object v2, p0, Lcom/oplus/quickstep/views/OplusCleanStorageView;->mCleanStorageButtonDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    sub-int/2addr v0, v2

    int-to-float v0, v0

    div-float/2addr v0, v1

    iput v0, p0, Lcom/oplus/quickstep/views/OplusCleanStorageView;->mDrawTop:F

    const-string v0, "onDraw--> 1  mDrawLeft:"

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/oplus/quickstep/views/OplusCleanStorageView;->mDrawLeft:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ",mDrawTop："

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/quickstep/views/OplusCleanStorageView;->mDrawTop:F

    const-string v2, "OplusCleanStorageView"

    invoke-static {v0, v1, v2}, Lcom/android/launcher/h0;->a(Ljava/lang/StringBuilder;FLjava/lang/String;)V

    iget-object v0, p0, Lcom/oplus/quickstep/views/OplusCleanStorageView;->mCleanStorageButtonDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/oplus/quickstep/views/OplusCleanStorageView;->mDrawLeft:F

    float-to-int v2, v1

    iget v3, p0, Lcom/oplus/quickstep/views/OplusCleanStorageView;->mDrawTop:F

    float-to-int v3, v3

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v1, v4

    float-to-int v1, v1

    iget v4, p0, Lcom/oplus/quickstep/views/OplusCleanStorageView;->mDrawTop:F

    iget-object v5, p0, Lcom/oplus/quickstep/views/OplusCleanStorageView;->mCleanStorageButtonDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v4, v5

    float-to-int v4, v4

    invoke-virtual {v0, v2, v3, v1, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_76
    iget-object p0, p0, Lcom/oplus/quickstep/views/OplusCleanStorageView;->mCleanStorageButtonDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_7b
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 6

    invoke-virtual {p0}, Landroid/widget/Button;->getLeft()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/widget/Button;->getTop()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/widget/Button;->getRight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/widget/Button;->getBottom()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/view/MotionEvent;->isWithinBoundsNoHistory(FFFF)Z

    move-result v0

    if-nez v0, :cond_4e

    iget-boolean v0, p0, Lcom/oplus/quickstep/views/OplusCleanStorageView;->mRunOnceFlag:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x3

    if-nez v0, :cond_3f

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eq v0, v3, :cond_38

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_2e

    goto :goto_38

    :cond_2e
    iput-boolean v1, p0, Lcom/oplus/quickstep/views/OplusCleanStorageView;->mRunOnceFlag:Z

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->setAction(I)V

    invoke-super {p0, p1}, Lcom/android/launcher/views/PressFeedbackButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :cond_38
    :goto_38
    iput-boolean v2, p0, Lcom/oplus/quickstep/views/OplusCleanStorageView;->mRunOnceFlag:Z

    invoke-super {p0, p1}, Lcom/android/launcher/views/PressFeedbackButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :cond_3f
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eq v0, v3, :cond_4b

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_4e

    :cond_4b
    iput-boolean v2, p0, Lcom/oplus/quickstep/views/OplusCleanStorageView;->mRunOnceFlag:Z

    return v2

    :cond_4e
    invoke-super {p0, p1}, Lcom/android/launcher/views/PressFeedbackButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method
