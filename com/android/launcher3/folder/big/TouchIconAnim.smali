.class public final Lcom/android/launcher3/folder/big/TouchIconAnim;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/folder/big/TouchIconAnim$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/launcher3/folder/big/TouchIconAnim$Companion;

.field public static final SUPPORT_CLICK_ICON_ANIM:Z


# instance fields
.field private anim:Landroid/animation/ValueAnimator;

.field private index:I

.field private initScale:F

.field private initTransX:F

.field private initTransY:F

.field private param:Lcom/android/launcher3/folder/PreviewItemDrawingParams;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher3/folder/big/TouchIconAnim$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/folder/big/TouchIconAnim$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher3/folder/big/TouchIconAnim;->Companion:Lcom/android/launcher3/folder/big/TouchIconAnim$Companion;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher3/folder/big/TouchIconAnim;->index:I

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher3/folder/big/TouchIconAnim;FFFLandroid/animation/ValueAnimator;)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/launcher3/folder/big/TouchIconAnim;->buildResetAnim$lambda-1(Lcom/android/launcher3/folder/big/TouchIconAnim;FFFLandroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic b(Lcom/android/launcher3/folder/big/TouchIconAnim;FFLandroid/animation/ValueAnimator;)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/android/launcher3/folder/big/TouchIconAnim;->buildTouchAnim$lambda-0(Lcom/android/launcher3/folder/big/TouchIconAnim;FFLandroid/animation/ValueAnimator;)V

    return-void
.end method

.method private static final buildResetAnim$lambda-1(Lcom/android/launcher3/folder/big/TouchIconAnim;FFFLandroid/animation/ValueAnimator;)V
    .registers 7

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p4}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p4

    const-string v0, "null cannot be cast to non-null type kotlin.Float"

    invoke-static {p4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p4, Ljava/lang/Float;

    invoke-virtual {p4}, Ljava/lang/Float;->floatValue()F

    move-result p4

    iget-object v0, p0, Lcom/android/launcher3/folder/big/TouchIconAnim;->param:Lcom/android/launcher3/folder/PreviewItemDrawingParams;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v1, p0, Lcom/android/launcher3/folder/big/TouchIconAnim;->initScale:F

    invoke-static {p4, p1, v1}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result p1

    iput p1, v0, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->scale:F

    iget-object p1, p0, Lcom/android/launcher3/folder/big/TouchIconAnim;->param:Lcom/android/launcher3/folder/PreviewItemDrawingParams;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v0, p0, Lcom/android/launcher3/folder/big/TouchIconAnim;->initTransX:F

    invoke-static {p4, p2, v0}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result p2

    iput p2, p1, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->transX:F

    iget-object p1, p0, Lcom/android/launcher3/folder/big/TouchIconAnim;->param:Lcom/android/launcher3/folder/PreviewItemDrawingParams;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget p0, p0, Lcom/android/launcher3/folder/big/TouchIconAnim;->initTransY:F

    invoke-static {p4, p3, p0}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result p0

    iput p0, p1, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->transY:F

    return-void
.end method

.method private static final buildTouchAnim$lambda-0(Lcom/android/launcher3/folder/big/TouchIconAnim;FFLandroid/animation/ValueAnimator;)V
    .registers 6

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p3

    const-string v0, "null cannot be cast to non-null type kotlin.Float"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p3, Ljava/lang/Float;

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result p3

    iget-object v0, p0, Lcom/android/launcher3/folder/big/TouchIconAnim;->param:Lcom/android/launcher3/folder/PreviewItemDrawingParams;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v1, p0, Lcom/android/launcher3/folder/big/TouchIconAnim;->initScale:F

    invoke-static {p3, v1, p1}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result p1

    iput p1, v0, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->scale:F

    mul-float/2addr p3, p2

    const p1, 0x3e199998  # 0.14999998f

    mul-float/2addr p3, p1

    const/4 p1, 0x2

    int-to-float p1, p1

    div-float/2addr p3, p1

    iget-object p1, p0, Lcom/android/launcher3/folder/big/TouchIconAnim;->param:Lcom/android/launcher3/folder/PreviewItemDrawingParams;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget p2, p0, Lcom/android/launcher3/folder/big/TouchIconAnim;->initTransX:F

    add-float/2addr p2, p3

    iput p2, p1, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->transX:F

    iget-object p1, p0, Lcom/android/launcher3/folder/big/TouchIconAnim;->param:Lcom/android/launcher3/folder/PreviewItemDrawingParams;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget p0, p0, Lcom/android/launcher3/folder/big/TouchIconAnim;->initTransY:F

    add-float/2addr p0, p3

    iput p0, p1, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->transY:F

    return-void
.end method


# virtual methods
.method public final buildResetAnim()V
    .registers 7

    iget-object v0, p0, Lcom/android/launcher3/folder/big/TouchIconAnim;->param:Lcom/android/launcher3/folder/PreviewItemDrawingParams;

    if-nez v0, :cond_5

    return-void

    :cond_5
    const/high16 v0, 0x3f800000  # 1.0f

    iget-object v1, p0, Lcom/android/launcher3/folder/big/TouchIconAnim;->anim:Landroid/animation/ValueAnimator;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_e

    goto :goto_15

    :cond_e
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v1

    if-ne v1, v3, :cond_15

    move v2, v3

    :cond_15
    :goto_15
    if-eqz v2, :cond_33

    iget-object v0, p0, Lcom/android/launcher3/folder/big/TouchIconAnim;->anim:Landroid/animation/ValueAnimator;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type kotlin.Float"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iget-object v1, p0, Lcom/android/launcher3/folder/big/TouchIconAnim;->anim:Landroid/animation/ValueAnimator;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_33
    iget-object v1, p0, Lcom/android/launcher3/folder/big/TouchIconAnim;->param:Lcom/android/launcher3/folder/PreviewItemDrawingParams;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v1, v1, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->transX:F

    iget-object v2, p0, Lcom/android/launcher3/folder/big/TouchIconAnim;->param:Lcom/android/launcher3/folder/PreviewItemDrawingParams;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v2, v2, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->transY:F

    iget-object v3, p0, Lcom/android/launcher3/folder/big/TouchIconAnim;->param:Lcom/android/launcher3/folder/PreviewItemDrawingParams;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v3, v3, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->scale:F

    const/4 v4, 0x2

    new-array v4, v4, [F

    fill-array-data v4, :array_78

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v4

    iput-object v4, p0, Lcom/android/launcher3/folder/big/TouchIconAnim;->anim:Landroid/animation/ValueAnimator;

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance v5, Lcom/android/launcher3/folder/big/h;

    invoke-direct {v5, p0, v3, v1, v2}, Lcom/android/launcher3/folder/big/h;-><init>(Lcom/android/launcher3/folder/big/TouchIconAnim;FFF)V

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v1, p0, Lcom/android/launcher3/folder/big/TouchIconAnim;->anim:Landroid/animation/ValueAnimator;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-wide/16 v2, 0xc8

    long-to-float v2, v2

    mul-float/2addr v2, v0

    float-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p0, p0, Lcom/android/launcher3/folder/big/TouchIconAnim;->anim:Landroid/animation/ValueAnimator;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    sget-object v0, Lcom/android/common/config/AnimationConstant;->PATH_INTERPOLATOR_7:Landroid/view/animation/Interpolator;

    invoke-virtual {p0, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-void

    nop

    :array_78
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data
.end method

.method public final buildTouchAnim()V
    .registers 5

    iget-object v0, p0, Lcom/android/launcher3/folder/big/TouchIconAnim;->param:Lcom/android/launcher3/folder/PreviewItemDrawingParams;

    if-eqz v0, :cond_49

    if-nez v0, :cond_8

    const/4 v1, 0x0

    goto :goto_a

    :cond_8
    iget-object v1, v0, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->drawable:Landroid/graphics/drawable/Drawable;

    :goto_a
    if-nez v1, :cond_d

    goto :goto_49

    :cond_d
    iget v1, p0, Lcom/android/launcher3/folder/big/TouchIconAnim;->initScale:F

    const v2, 0x3f59999a  # 0.85f

    mul-float/2addr v2, v1

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v0, v0, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v1, v0

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_4a

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/folder/big/TouchIconAnim;->anim:Landroid/animation/ValueAnimator;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance v3, Lcom/android/launcher3/dragndrop/k;

    invoke-direct {v3, p0, v2, v1}, Lcom/android/launcher3/dragndrop/k;-><init>(Lcom/android/launcher3/folder/big/TouchIconAnim;FF)V

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lcom/android/launcher3/folder/big/TouchIconAnim;->anim:Landroid/animation/ValueAnimator;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p0, p0, Lcom/android/launcher3/folder/big/TouchIconAnim;->anim:Landroid/animation/ValueAnimator;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    sget-object v0, Lcom/android/common/config/AnimationConstant;->PATH_INTERPOLATOR_7:Landroid/view/animation/Interpolator;

    invoke-virtual {p0, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    :cond_49
    :goto_49
    return-void

    :array_4a
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data
.end method

.method public final getAnim()Landroid/animation/ValueAnimator;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/folder/big/TouchIconAnim;->anim:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method public final getIndex()I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/folder/big/TouchIconAnim;->index:I

    return p0
.end method

.method public final resetDirectly()V
    .registers 5

    iget-object v0, p0, Lcom/android/launcher3/folder/big/TouchIconAnim;->anim:Landroid/animation/ValueAnimator;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_8

    :cond_6
    move v0, v1

    goto :goto_f

    :cond_8
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-ne v0, v2, :cond_6

    move v0, v2

    :goto_f
    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/android/launcher3/folder/big/TouchIconAnim;->anim:Landroid/animation/ValueAnimator;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance v1, Lcom/android/launcher3/folder/big/TouchIconAnim$resetDirectly$$inlined$doOnEnd$1;

    invoke-direct {v1, p0}, Lcom/android/launcher3/folder/big/TouchIconAnim$resetDirectly$$inlined$doOnEnd$1;-><init>(Lcom/android/launcher3/folder/big/TouchIconAnim;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void

    :cond_1f
    iget-object v0, p0, Lcom/android/launcher3/folder/big/TouchIconAnim;->param:Lcom/android/launcher3/folder/PreviewItemDrawingParams;

    if-eqz v0, :cond_4c

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v0, v0, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->scale:F

    iget v3, p0, Lcom/android/launcher3/folder/big/TouchIconAnim;->initScale:F

    cmpg-float v0, v0, v3

    if-nez v0, :cond_2f

    move v1, v2

    :cond_2f
    if-nez v1, :cond_4c

    iget-object v0, p0, Lcom/android/launcher3/folder/big/TouchIconAnim;->param:Lcom/android/launcher3/folder/PreviewItemDrawingParams;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v1, p0, Lcom/android/launcher3/folder/big/TouchIconAnim;->initTransX:F

    iput v1, v0, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->transX:F

    iget-object v0, p0, Lcom/android/launcher3/folder/big/TouchIconAnim;->param:Lcom/android/launcher3/folder/PreviewItemDrawingParams;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v1, p0, Lcom/android/launcher3/folder/big/TouchIconAnim;->initTransY:F

    iput v1, v0, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->transY:F

    iget-object v0, p0, Lcom/android/launcher3/folder/big/TouchIconAnim;->param:Lcom/android/launcher3/folder/PreviewItemDrawingParams;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget p0, p0, Lcom/android/launcher3/folder/big/TouchIconAnim;->initScale:F

    iput p0, v0, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->scale:F

    :cond_4c
    return-void
.end method

.method public final setAnim(Landroid/animation/ValueAnimator;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/folder/big/TouchIconAnim;->anim:Landroid/animation/ValueAnimator;

    return-void
.end method

.method public final setIndex(I)V
    .registers 2

    iput p1, p0, Lcom/android/launcher3/folder/big/TouchIconAnim;->index:I

    return-void
.end method

.method public final updateObject(Lcom/android/launcher3/folder/PreviewItemDrawingParams;I)V
    .registers 3

    const-string p0, "params"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
