.class public final Lcom/android/launcher3/folder/big/FolderIndicator;
.super Landroid/view/View;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/folder/big/FolderIndicator$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/launcher3/folder/big/FolderIndicator$Companion;

.field public static final DEFAULT_DOT_WIDTH:I = 0x12

.field public static final DEFAULT_DURATION:J = 0xc8L


# instance fields
.field private activeIndex:I

.field private animatingRect:Landroid/graphics/Rect;

.field private animator:Landroid/animation/ValueAnimator;

.field private baseRect:Landroid/graphics/Rect;

.field private dotPaddingTop:I

.field private dotSpacing:I

.field private dotWidth:I

.field private drawingRect:Landroid/graphics/Rect;

.field private pageCount:I

.field private selectable:Landroid/graphics/drawable/GradientDrawable;

.field private selected:Landroid/graphics/drawable/GradientDrawable;

.field private final wormDuration:J


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher3/folder/big/FolderIndicator$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/folder/big/FolderIndicator$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher3/folder/big/FolderIndicator;->Companion:Lcom/android/launcher3/folder/big/FolderIndicator$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/folder/big/FolderIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/folder/big/FolderIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/launcher3/folder/big/FolderIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 6

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const-wide/16 p2, 0xc8

    iput-wide p2, p0, Lcom/android/launcher3/folder/big/FolderIndicator;->wormDuration:J

    const/16 p2, 0x12

    iput p2, p0, Lcom/android/launcher3/folder/big/FolderIndicator;->dotWidth:I

    iput p2, p0, Lcom/android/launcher3/folder/big/FolderIndicator;->dotSpacing:I

    new-instance p2, Landroid/graphics/Rect;

    iget p3, p0, Lcom/android/launcher3/folder/big/FolderIndicator;->dotWidth:I

    const/4 p4, 0x0

    invoke-direct {p2, p4, p4, p3, p3}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object p2, p0, Lcom/android/launcher3/folder/big/FolderIndicator;->baseRect:Landroid/graphics/Rect;

    new-instance p2, Landroid/graphics/Rect;

    iget-object p3, p0, Lcom/android/launcher3/folder/big/FolderIndicator;->baseRect:Landroid/graphics/Rect;

    invoke-direct {p2, p3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object p2, p0, Lcom/android/launcher3/folder/big/FolderIndicator;->drawingRect:Landroid/graphics/Rect;

    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/android/launcher3/folder/big/FolderIndicator;->animatingRect:Landroid/graphics/Rect;

    iget p2, p0, Lcom/android/launcher3/folder/big/FolderIndicator;->pageCount:I

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/folder/big/FolderIndicator;->init(Landroid/content/Context;I)V

    return-void
.end method

.method public static synthetic a(ZLcom/android/launcher3/folder/big/FolderIndicator;Landroid/animation/ValueAnimator;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/launcher3/folder/big/FolderIndicator;->animateWorm$lambda-1(ZLcom/android/launcher3/folder/big/FolderIndicator;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static final synthetic access$animateWorm(Lcom/android/launcher3/folder/big/FolderIndicator;ZZ)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/folder/big/FolderIndicator;->animateWorm(ZZ)V

    return-void
.end method

.method public static final synthetic access$getAnimatingRect$p(Lcom/android/launcher3/folder/big/FolderIndicator;)Landroid/graphics/Rect;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/folder/big/FolderIndicator;->animatingRect:Landroid/graphics/Rect;

    return-object p0
.end method

.method private final animateWorm(ZZ)V
    .registers 10

    iget-object v0, p0, Lcom/android/launcher3/folder/big/FolderIndicator;->animatingRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/android/launcher3/folder/big/FolderIndicator;->animator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_d

    goto :goto_10

    :cond_d
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_10
    :goto_10
    new-instance v0, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    iput-boolean p2, v0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    iget-object p2, p0, Lcom/android/launcher3/folder/big/FolderIndicator;->animatingRect:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_26

    iget-object p2, p0, Lcom/android/launcher3/folder/big/FolderIndicator;->animatingRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/launcher3/folder/big/FolderIndicator;->baseRect:Landroid/graphics/Rect;

    invoke-virtual {p2, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :cond_26
    iget-object p2, p0, Lcom/android/launcher3/folder/big/FolderIndicator;->baseRect:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->left:I

    iget v1, p0, Lcom/android/launcher3/folder/big/FolderIndicator;->activeIndex:I

    iget v2, p0, Lcom/android/launcher3/folder/big/FolderIndicator;->dotWidth:I

    iget v3, p0, Lcom/android/launcher3/folder/big/FolderIndicator;->dotSpacing:I

    add-int v4, v2, v3

    mul-int/2addr v4, v1

    add-int/2addr v4, p2

    add-int p2, v4, v2

    int-to-float v1, v2

    int-to-float v2, v3

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/android/launcher3/folder/big/FolderIndicator;->animatingRect:Landroid/graphics/Rect;

    iput v4, v2, Landroid/graphics/Rect;->left:I

    iput p2, v2, Landroid/graphics/Rect;->right:I

    const/4 v2, 0x2

    new-array v3, v2, [F

    if-eqz p1, :cond_46

    int-to-float v5, p2

    goto :goto_47

    :cond_46
    int-to-float v5, v4

    :goto_47
    const/4 v6, 0x0

    aput v5, v3, v6

    if-eqz p1, :cond_4f

    int-to-float p2, p2

    add-float/2addr p2, v1

    goto :goto_51

    :cond_4f
    int-to-float p2, v4

    sub-float/2addr p2, v1

    :goto_51
    const/4 v1, 0x1

    aput p2, v3, v1

    iget-boolean p2, v0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-nez p2, :cond_67

    new-array p2, v2, [F

    aget v2, v3, v6

    aput v2, p2, v6

    aget v2, v3, v1

    aput v2, p2, v1

    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p2

    goto :goto_75

    :cond_67
    new-array p2, v2, [F

    aget v2, v3, v1

    aput v2, p2, v6

    aget v2, v3, v6

    aput v2, p2, v1

    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p2

    :goto_75
    invoke-virtual {p0}, Lcom/android/launcher3/folder/big/FolderIndicator;->getWormDuration()J

    move-result-wide v1

    invoke-virtual {p2, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    sget-object v1, Lcom/android/common/config/AnimationConstant;->PATH_INTERPOLATOR_2:Landroid/view/animation/Interpolator;

    invoke-virtual {p2, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iput-object p2, p0, Lcom/android/launcher3/folder/big/FolderIndicator;->animator:Landroid/animation/ValueAnimator;

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance v1, Lcom/android/launcher/pageindicators/c;

    invoke-direct {v1, p1, p0}, Lcom/android/launcher/pageindicators/c;-><init>(ZLcom/android/launcher3/folder/big/FolderIndicator;)V

    invoke-virtual {p2, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p2, p0, Lcom/android/launcher3/folder/big/FolderIndicator;->animator:Landroid/animation/ValueAnimator;

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance v1, Lcom/android/launcher3/folder/big/FolderIndicator$animateWorm$$inlined$doOnCancel$1;

    invoke-direct {v1, v0, p0, p1}, Lcom/android/launcher3/folder/big/FolderIndicator$animateWorm$$inlined$doOnCancel$1;-><init>(Lkotlin/jvm/internal/Ref$BooleanRef;Lcom/android/launcher3/folder/big/FolderIndicator;Z)V

    invoke-virtual {p2, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p2, p0, Lcom/android/launcher3/folder/big/FolderIndicator;->animator:Landroid/animation/ValueAnimator;

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance v1, Lcom/android/launcher3/folder/big/FolderIndicator$animateWorm$$inlined$doOnEnd$1;

    invoke-direct {v1, v0, p0, p1}, Lcom/android/launcher3/folder/big/FolderIndicator$animateWorm$$inlined$doOnEnd$1;-><init>(Lkotlin/jvm/internal/Ref$BooleanRef;Lcom/android/launcher3/folder/big/FolderIndicator;Z)V

    invoke-virtual {p2, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p0, p0, Lcom/android/launcher3/folder/big/FolderIndicator;->animator:Landroid/animation/ValueAnimator;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private static final animateWorm$lambda-1(ZLcom/android/launcher3/folder/big/FolderIndicator;Landroid/animation/ValueAnimator;)V
    .registers 4

    const-string/jumbo v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    const-string v0, "null cannot be cast to non-null type kotlin.Float"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-static {p2}, Li1/j;->o(F)I

    move-result p2

    if-eqz p0, :cond_20

    iget-object p0, p1, Lcom/android/launcher3/folder/big/FolderIndicator;->animatingRect:Landroid/graphics/Rect;

    iput p2, p0, Landroid/graphics/Rect;->right:I

    goto :goto_24

    :cond_20
    iget-object p0, p1, Lcom/android/launcher3/folder/big/FolderIndicator;->animatingRect:Landroid/graphics/Rect;

    iput p2, p0, Landroid/graphics/Rect;->left:I

    :goto_24
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private final computeBasePosition(IIII)V
    .registers 7

    sub-int/2addr p3, p1

    sub-int/2addr p4, p2

    iget p1, p0, Lcom/android/launcher3/folder/big/FolderIndicator;->dotWidth:I

    iget p2, p0, Lcom/android/launcher3/folder/big/FolderIndicator;->pageCount:I

    mul-int v0, p1, p2

    iget v1, p0, Lcom/android/launcher3/folder/big/FolderIndicator;->dotSpacing:I

    add-int/lit8 p2, p2, -0x1

    mul-int/2addr p2, v1

    add-int/2addr p2, v0

    iget-object v0, p0, Lcom/android/launcher3/folder/big/FolderIndicator;->baseRect:Landroid/graphics/Rect;

    sub-int/2addr p3, p2

    div-int/lit8 p3, p3, 0x2

    iput p3, v0, Landroid/graphics/Rect;->left:I

    iget-object p2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/android/launcher3/BaseActivity;->fromContext(Landroid/content/Context;)Lcom/android/launcher3/BaseActivity;

    move-result-object p2

    check-cast p2, Lcom/android/launcher3/BaseDraggingActivity;

    invoke-virtual {p2}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object p2

    iget p3, p2, Lcom/android/launcher3/DeviceProfile;->iconTextSizePx:I

    iget-object v0, p0, Lcom/android/launcher3/folder/big/FolderIndicator;->baseRect:Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/launcher3/folder/big/FolderIndicator;->dotPaddingTop:I

    sub-int/2addr p3, p1

    div-int/lit8 p3, p3, 0x2

    const/4 p1, 0x0

    invoke-static {p1, p3}, Ljava/lang/Math;->max(II)I

    move-result p3

    add-int/2addr p3, v1

    iput p3, v0, Landroid/graphics/Rect;->top:I

    iget-boolean p2, p2, Lcom/android/launcher3/DeviceProfile;->isLandscape:Z

    if-eqz p2, :cond_41

    iget-object p2, p0, Lcom/android/launcher3/folder/big/FolderIndicator;->baseRect:Landroid/graphics/Rect;

    div-int/lit8 p4, p4, 0x2

    iget p3, p2, Landroid/graphics/Rect;->top:I

    sub-int/2addr p4, p3

    iput p4, p2, Landroid/graphics/Rect;->top:I

    iput p1, p2, Landroid/graphics/Rect;->left:I

    :cond_41
    iget-object p1, p0, Lcom/android/launcher3/folder/big/FolderIndicator;->baseRect:Landroid/graphics/Rect;

    iget p2, p1, Landroid/graphics/Rect;->left:I

    iget p0, p0, Lcom/android/launcher3/folder/big/FolderIndicator;->dotWidth:I

    add-int/2addr p2, p0

    iput p2, p1, Landroid/graphics/Rect;->right:I

    iget p2, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr p2, p0

    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    return-void
.end method

.method private final init(Landroid/content/Context;I)V
    .registers 6

    invoke-virtual {p0, p2}, Lcom/android/launcher3/folder/big/FolderIndicator;->setPageCount(I)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f080797

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    const-string v0, "null cannot be cast to non-null type android.graphics.drawable.GradientDrawable"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p2, Landroid/graphics/drawable/GradientDrawable;

    iput-object p2, p0, Lcom/android/launcher3/folder/big/FolderIndicator;->selected:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v2, 0x7f080796

    invoke-virtual {p2, v2, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p2, Landroid/graphics/drawable/GradientDrawable;

    iput-object p2, p0, Lcom/android/launcher3/folder/big/FolderIndicator;->selectable:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070600

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/folder/big/FolderIndicator;->dotPaddingTop:I

    iget-object p1, p0, Lcom/android/launcher3/folder/big/FolderIndicator;->selected:Landroid/graphics/drawable/GradientDrawable;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/graphics/drawable/GradientDrawable;->getIntrinsicWidth()I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/folder/big/FolderIndicator;->dotWidth:I

    iput p1, p0, Lcom/android/launcher3/folder/big/FolderIndicator;->dotSpacing:I

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/folder/big/FolderIndicator;->setActiveIndex(I)V

    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .registers 1

    return-void
.end method

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 4

    iget v0, p0, Lcom/android/launcher3/folder/big/FolderIndicator;->pageCount:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_8

    invoke-super {p0, p1}, Landroid/view/View;->dispatchDraw(Landroid/graphics/Canvas;)V

    :cond_8
    return-void
.end method

.method public final followScroll(F)V
    .registers 10

    iget-object v0, p0, Lcom/android/launcher3/folder/big/FolderIndicator;->baseRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget v1, p0, Lcom/android/launcher3/folder/big/FolderIndicator;->activeIndex:I

    iget v2, p0, Lcom/android/launcher3/folder/big/FolderIndicator;->dotWidth:I

    iget v3, p0, Lcom/android/launcher3/folder/big/FolderIndicator;->dotSpacing:I

    add-int v4, v2, v3

    mul-int/2addr v4, v1

    add-int/2addr v4, v0

    add-int v0, v4, v2

    int-to-float v1, v2

    int-to-float v2, v3

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/android/launcher3/folder/big/FolderIndicator;->animatingRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-nez v2, :cond_27

    cmpg-float v2, p1, v5

    if-nez v2, :cond_24

    move v2, v6

    goto :goto_25

    :cond_24
    move v2, v3

    :goto_25
    if-eqz v2, :cond_34

    :cond_27
    iget-object v2, p0, Lcom/android/launcher3/folder/big/FolderIndicator;->animatingRect:Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/android/launcher3/folder/big/FolderIndicator;->baseRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v2, p0, Lcom/android/launcher3/folder/big/FolderIndicator;->animatingRect:Landroid/graphics/Rect;

    iput v4, v2, Landroid/graphics/Rect;->left:I

    iput v0, v2, Landroid/graphics/Rect;->right:I

    :cond_34
    cmpl-float v2, p1, v5

    if-lez v2, :cond_54

    const/high16 v2, 0x3f800000  # 1.0f

    cmpl-float v2, p1, v2

    if-ltz v2, :cond_48

    iget p1, p0, Lcom/android/launcher3/folder/big/FolderIndicator;->activeIndex:I

    add-int/2addr p1, v6

    invoke-virtual {p0, p1}, Lcom/android/launcher3/folder/big/FolderIndicator;->setActiveIndex(I)V

    invoke-direct {p0, v3, v6}, Lcom/android/launcher3/folder/big/FolderIndicator;->animateWorm(ZZ)V

    return-void

    :cond_48
    iget-object v2, p0, Lcom/android/launcher3/folder/big/FolderIndicator;->animatingRect:Landroid/graphics/Rect;

    int-to-float v0, v0

    mul-float/2addr v1, p1

    add-float/2addr v1, v0

    invoke-static {v1}, Li1/j;->o(F)I

    move-result p1

    iput p1, v2, Landroid/graphics/Rect;->right:I

    goto :goto_73

    :cond_54
    cmpg-float v0, p1, v5

    if-gez v0, :cond_73

    const/high16 v0, -0x40800000  # -1.0f

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_68

    iget p1, p0, Lcom/android/launcher3/folder/big/FolderIndicator;->activeIndex:I

    sub-int/2addr p1, v6

    invoke-virtual {p0, p1}, Lcom/android/launcher3/folder/big/FolderIndicator;->setActiveIndex(I)V

    invoke-direct {p0, v6, v6}, Lcom/android/launcher3/folder/big/FolderIndicator;->animateWorm(ZZ)V

    return-void

    :cond_68
    iget-object v0, p0, Lcom/android/launcher3/folder/big/FolderIndicator;->animatingRect:Landroid/graphics/Rect;

    int-to-float v2, v4

    mul-float/2addr v1, p1

    add-float/2addr v1, v2

    invoke-static {v1}, Li1/j;->o(F)I

    move-result p1

    iput p1, v0, Landroid/graphics/Rect;->left:I

    :cond_73
    :goto_73
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final getActiveIndex()I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/folder/big/FolderIndicator;->activeIndex:I

    return p0
.end method

.method public final getPageCount()I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/folder/big/FolderIndicator;->pageCount:I

    return p0
.end method

.method public final getSelectable()Landroid/graphics/drawable/GradientDrawable;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/folder/big/FolderIndicator;->selectable:Landroid/graphics/drawable/GradientDrawable;

    return-object p0
.end method

.method public final getSelected()Landroid/graphics/drawable/GradientDrawable;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/folder/big/FolderIndicator;->selected:Landroid/graphics/drawable/GradientDrawable;

    return-object p0
.end method

.method public final getWormDuration()J
    .registers 3

    iget-wide v0, p0, Lcom/android/launcher3/folder/big/FolderIndicator;->wormDuration:J

    return-wide v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .registers 9

    iget v0, p0, Lcom/android/launcher3/folder/big/FolderIndicator;->pageCount:I

    const/4 v1, 0x1

    if-gt v0, v1, :cond_6

    return-void

    :cond_6
    iget-object v0, p0, Lcom/android/launcher3/folder/big/FolderIndicator;->drawingRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/launcher3/folder/big/FolderIndicator;->baseRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    const/4 v0, 0x0

    iget v1, p0, Lcom/android/launcher3/folder/big/FolderIndicator;->pageCount:I

    if-lez v1, :cond_5f

    :goto_12
    add-int/lit8 v2, v0, 0x1

    iget-object v3, p0, Lcom/android/launcher3/folder/big/FolderIndicator;->drawingRect:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/launcher3/folder/big/FolderIndicator;->baseRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iget v5, p0, Lcom/android/launcher3/folder/big/FolderIndicator;->dotWidth:I

    iget v6, p0, Lcom/android/launcher3/folder/big/FolderIndicator;->dotSpacing:I

    add-int/2addr v6, v5

    mul-int/2addr v6, v0

    add-int/2addr v6, v4

    iput v6, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v6, v5

    iput v6, v3, Landroid/graphics/Rect;->right:I

    iget v3, p0, Lcom/android/launcher3/folder/big/FolderIndicator;->activeIndex:I

    if-ne v3, v0, :cond_48

    iget-object v0, p0, Lcom/android/launcher3/folder/big/FolderIndicator;->selected:Landroid/graphics/drawable/GradientDrawable;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/android/launcher3/folder/big/FolderIndicator;->animatingRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3a

    iget-object v3, p0, Lcom/android/launcher3/folder/big/FolderIndicator;->drawingRect:Landroid/graphics/Rect;

    goto :goto_3c

    :cond_3a
    iget-object v3, p0, Lcom/android/launcher3/folder/big/FolderIndicator;->animatingRect:Landroid/graphics/Rect;

    :goto_3c
    invoke-virtual {v0, v3}, Landroid/graphics/drawable/GradientDrawable;->setBounds(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/launcher3/folder/big/FolderIndicator;->selected:Landroid/graphics/drawable/GradientDrawable;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_5a

    :cond_48
    iget-object v0, p0, Lcom/android/launcher3/folder/big/FolderIndicator;->selectable:Landroid/graphics/drawable/GradientDrawable;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/android/launcher3/folder/big/FolderIndicator;->drawingRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/GradientDrawable;->setBounds(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/launcher3/folder/big/FolderIndicator;->selectable:Landroid/graphics/drawable/GradientDrawable;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    :goto_5a
    if-lt v2, v1, :cond_5d

    goto :goto_5f

    :cond_5d
    move v0, v2

    goto :goto_12

    :cond_5f
    :goto_5f
    return-void
.end method

.method public onLayout(ZIIII)V
    .registers 7

    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    if-eqz p1, :cond_d

    iget p1, p0, Lcom/android/launcher3/folder/big/FolderIndicator;->pageCount:I

    const/4 v0, 0x1

    if-le p1, v0, :cond_d

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/android/launcher3/folder/big/FolderIndicator;->computeBasePosition(IIII)V

    :cond_d
    return-void
.end method

.method public final setActiveIndex(I)V
    .registers 2

    iput p1, p0, Lcom/android/launcher3/folder/big/FolderIndicator;->activeIndex:I

    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    return-void
.end method

.method public final setPageCount(I)V
    .registers 3

    iget v0, p0, Lcom/android/launcher3/folder/big/FolderIndicator;->pageCount:I

    if-eq p1, v0, :cond_9

    iput p1, p0, Lcom/android/launcher3/folder/big/FolderIndicator;->pageCount:I

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_9
    return-void
.end method

.method public final setSelectable(Landroid/graphics/drawable/GradientDrawable;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/folder/big/FolderIndicator;->selectable:Landroid/graphics/drawable/GradientDrawable;

    return-void
.end method

.method public final setSelected(Landroid/graphics/drawable/GradientDrawable;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/folder/big/FolderIndicator;->selected:Landroid/graphics/drawable/GradientDrawable;

    return-void
.end method
