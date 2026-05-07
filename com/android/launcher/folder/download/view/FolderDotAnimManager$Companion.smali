.class public final Lcom/android/launcher/folder/download/view/FolderDotAnimManager$Companion;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher/folder/download/view/FolderDotAnimManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/launcher/folder/download/view/FolderDotAnimManager$Companion;-><init>()V

    return-void
.end method

.method public static synthetic a(Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;IILandroid/animation/ValueAnimator;)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/launcher/folder/download/view/FolderDotAnimManager$Companion;->startDotAnim$lambda-3$lambda-1(Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;IILandroid/animation/ValueAnimator;)V

    return-void
.end method

.method private static final startDotAnim$lambda-3$lambda-1(Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;IILandroid/animation/ValueAnimator;)V
    .registers 9

    const-string v0, "$drawable"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$bounds"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p4}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p4

    const-string/jumbo v0, "null cannot be cast to non-null type kotlin.Float"

    invoke-static {p4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p4, Ljava/lang/Float;

    invoke-virtual {p4}, Ljava/lang/Float;->floatValue()F

    move-result p4

    const-wide/16 v0, 0xff

    long-to-float v0, v0

    mul-float/2addr v0, p4

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget v1, p1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    int-to-float p2, p2

    const/high16 v2, 0x40000000  # 2.0f

    div-float/2addr p2, v2

    const/4 v3, 0x1

    int-to-float v3, v3

    sub-float/2addr v3, p4

    mul-float/2addr p2, v3

    add-float/2addr v1, p2

    float-to-int p4, v1

    iput p4, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p4

    iget v0, p1, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    int-to-float p3, p3

    div-float/2addr p3, v2

    mul-float/2addr p3, v3

    add-float/2addr v0, p3

    float-to-int v0, v0

    iput v0, p4, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p4

    iget v0, p1, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    sub-float/2addr v0, p2

    float-to-int p2, v0

    iput p2, p4, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p2

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float p1, p1

    sub-float/2addr p1, p3

    float-to-int p1, p1

    iput p1, p2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method


# virtual methods
.method public final startDotAnim(Lcom/android/launcher/folder/download/view/RecommendDotDrawable;)V
    .registers 6
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/4 p0, 0x0

    if-nez p1, :cond_5

    move-object v0, p0

    goto :goto_9

    :cond_5
    invoke-virtual {p1}, Lcom/android/launcher/folder/download/view/RecommendDotDrawable;->getMDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_9
    if-nez v0, :cond_c

    return-void

    :cond_c
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_5e

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v1, 0x15e

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/coui/appcompat/animation/COUIEaseInterpolator;

    invoke-direct {v1}, Lcom/coui/appcompat/animation/COUIEaseInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-string/jumbo v1, "ofFloat(MAX_FRACTION, MI…erpolator()\n            }"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {p1}, Lcom/android/launcher/folder/download/view/RecommendDotDrawable;->getMDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-nez v2, :cond_32

    goto :goto_36

    :cond_32
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    :goto_36
    invoke-direct {v1, p0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iget p0, v1, Landroid/graphics/Rect;->right:I

    iget v2, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr p0, v2

    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    iget v3, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    invoke-virtual {p1}, Lcom/android/launcher/folder/download/view/RecommendDotDrawable;->getMDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-nez p1, :cond_4a

    goto :goto_5d

    :cond_4a
    new-instance v3, Lw/a;

    invoke-direct {v3, p1, v1, p0, v2}, Lw/a;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;II)V

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance p0, Lcom/android/launcher/folder/download/view/FolderDotAnimManager$Companion$startDotAnim$lambda-3$$inlined$doOnEnd$1;

    invoke-direct {p0, p1, v1}, Lcom/android/launcher/folder/download/view/FolderDotAnimManager$Companion$startDotAnim$lambda-3$$inlined$doOnEnd$1;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V

    invoke-virtual {v0, p0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :goto_5d
    return-void

    :array_5e
    .array-data 4
        0x3f800000  # 1.0f
        0x0
    .end array-data
.end method
