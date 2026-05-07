.class public final Lcom/android/launcher/behavior/DividerManager;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Landroid/view/View;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mChild:Landroid/view/View;

.field private mCurrentOffset:I

.field private mDivider:Landroid/view/View;

.field private mDividerAlphaChangeEndY:I

.field private mDividerAlphaChangeOffset:I

.field private mDividerAlphaRange:F

.field private mDividerInitWidth:I

.field private mDividerParams:Landroid/view/ViewGroup$LayoutParams;

.field private mDividerWidthChangeEndY:I

.field private mDividerWidthChangeInitY:I

.field private mDividerWidthChangeOffset:I

.field private mDividerWidthRange:F

.field private mFirstChildLocationY:I

.field private mListFirstChildInitY:I

.field private final mLocation:[I

.field private mLocationY:I

.field private mMarginLeftRight:I

.field private mMaxWidth:I

.field private mNewOffset:I

.field private mResources:Landroid/content/res/Resources;

.field private mScrollView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/android/launcher/behavior/DividerManager;->mLocation:[I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const-string v1, "context.resources"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/launcher/behavior/DividerManager;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f070293

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    mul-int/2addr p1, v0

    iput p1, p0, Lcom/android/launcher/behavior/DividerManager;->mMarginLeftRight:I

    iget-object p1, p0, Lcom/android/launcher/behavior/DividerManager;->mResources:Landroid/content/res/Resources;

    const v0, 0x7f070780

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lcom/android/launcher/behavior/DividerManager;->mDividerAlphaChangeOffset:I

    iget-object p1, p0, Lcom/android/launcher/behavior/DividerManager;->mResources:Landroid/content/res/Resources;

    const v0, 0x7f07056f

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lcom/android/launcher/behavior/DividerManager;->mDividerWidthChangeOffset:I

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher/behavior/DividerManager;Landroid/view/View;IIII)V
    .registers 6

    invoke-static/range {p0 .. p5}, Lcom/android/launcher/behavior/DividerManager;->onStartNestedScroll$lambda-0(Lcom/android/launcher/behavior/DividerManager;Landroid/view/View;IIII)V

    return-void
.end method

.method private final onListScroll()V
    .registers 7

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher/behavior/DividerManager;->mChild:Landroid/view/View;

    iget-object v0, p0, Lcom/android/launcher/behavior/DividerManager;->mScrollView:Landroid/view/View;

    instance-of v1, v0, Landroid/view/ViewGroup;

    const/4 v2, 0x0

    if-eqz v1, :cond_37

    const-string/jumbo v1, "null cannot be cast to non-null type android.view.ViewGroup"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-lez v1, :cond_37

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-lez v1, :cond_37

    move v3, v2

    :goto_1f
    add-int/lit8 v4, v3, 0x1

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_32

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher/behavior/DividerManager;->mChild:Landroid/view/View;

    goto :goto_37

    :cond_32
    if-lt v4, v1, :cond_35

    goto :goto_37

    :cond_35
    move v3, v4

    goto :goto_1f

    :cond_37
    :goto_37
    iget-object v0, p0, Lcom/android/launcher/behavior/DividerManager;->mChild:Landroid/view/View;

    if-nez v0, :cond_3f

    iget-object v0, p0, Lcom/android/launcher/behavior/DividerManager;->mScrollView:Landroid/view/View;

    iput-object v0, p0, Lcom/android/launcher/behavior/DividerManager;->mChild:Landroid/view/View;

    :cond_3f
    iget-object v0, p0, Lcom/android/launcher/behavior/DividerManager;->mChild:Landroid/view/View;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/launcher/behavior/DividerManager;->mLocation:[I

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    iget-object v0, p0, Lcom/android/launcher/behavior/DividerManager;->mLocation:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    iput v0, p0, Lcom/android/launcher/behavior/DividerManager;->mLocationY:I

    iput v2, p0, Lcom/android/launcher/behavior/DividerManager;->mNewOffset:I

    iget v1, p0, Lcom/android/launcher/behavior/DividerManager;->mDividerAlphaChangeEndY:I

    if-ge v0, v1, :cond_59

    iget v0, p0, Lcom/android/launcher/behavior/DividerManager;->mDividerAlphaChangeOffset:I

    goto :goto_61

    :cond_59
    iget v1, p0, Lcom/android/launcher/behavior/DividerManager;->mListFirstChildInitY:I

    if-le v0, v1, :cond_5f

    move v0, v2

    goto :goto_61

    :cond_5f
    sub-int v0, v1, v0

    :goto_61
    iput v0, p0, Lcom/android/launcher/behavior/DividerManager;->mNewOffset:I

    iput v0, p0, Lcom/android/launcher/behavior/DividerManager;->mCurrentOffset:I

    iget v1, p0, Lcom/android/launcher/behavior/DividerManager;->mDividerAlphaRange:F

    const/high16 v3, 0x3f800000  # 1.0f

    cmpg-float v1, v1, v3

    if-gtz v1, :cond_82

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/android/launcher/behavior/DividerManager;->mDividerAlphaChangeOffset:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/launcher/behavior/DividerManager;->mDividerAlphaRange:F

    iget-object v0, p0, Lcom/android/launcher/behavior/DividerManager;->mDivider:Landroid/view/View;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v1, p0, Lcom/android/launcher/behavior/DividerManager;->mDividerAlphaRange:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    :cond_82
    iget v0, p0, Lcom/android/launcher/behavior/DividerManager;->mLocationY:I

    iget v1, p0, Lcom/android/launcher/behavior/DividerManager;->mDividerWidthChangeEndY:I

    if-ge v0, v1, :cond_8b

    iget v2, p0, Lcom/android/launcher/behavior/DividerManager;->mDividerWidthChangeOffset:I

    goto :goto_92

    :cond_8b
    iget v1, p0, Lcom/android/launcher/behavior/DividerManager;->mDividerWidthChangeInitY:I

    if-le v0, v1, :cond_90

    goto :goto_92

    :cond_90
    sub-int v2, v1, v0

    :goto_92
    iput v2, p0, Lcom/android/launcher/behavior/DividerManager;->mNewOffset:I

    iput v2, p0, Lcom/android/launcher/behavior/DividerManager;->mCurrentOffset:I

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/android/launcher/behavior/DividerManager;->mDividerWidthChangeOffset:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/launcher/behavior/DividerManager;->mDividerWidthRange:F

    iget-object v0, p0, Lcom/android/launcher/behavior/DividerManager;->mDividerParams:Landroid/view/ViewGroup$LayoutParams;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v1, p0, Lcom/android/launcher/behavior/DividerManager;->mDividerInitWidth:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/launcher/behavior/DividerManager;->mMarginLeftRight:I

    int-to-float v2, v2

    iget v3, p0, Lcom/android/launcher/behavior/DividerManager;->mDividerWidthRange:F

    mul-float/2addr v2, v3

    add-float/2addr v2, v1

    float-to-int v1, v2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v0, p0, Lcom/android/launcher/behavior/DividerManager;->mDivider:Landroid/view/View;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/android/launcher/behavior/DividerManager;->mDividerParams:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v0, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private static final onStartNestedScroll$lambda-0(Lcom/android/launcher/behavior/DividerManager;Landroid/view/View;IIII)V
    .registers 6

    const-string/jumbo p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/launcher/behavior/DividerManager;->onListScroll()V

    return-void
.end method


# virtual methods
.method public final getMDividerInitWidth()I
    .registers 1

    iget p0, p0, Lcom/android/launcher/behavior/DividerManager;->mDividerInitWidth:I

    return p0
.end method

.method public final onStartNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;Landroid/view/View;I)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/View;",
            "Landroid/view/View;",
            "I)Z"
        }
    .end annotation

    const-string v0, "coordinatorLayout"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "child"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "directTargetChild"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "target"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    and-int/lit8 p5, p5, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p5, :cond_2c

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getHeight()I

    move-result p1

    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result p3

    sub-int/2addr p1, p3

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result p3

    if-gt p1, p3, :cond_2c

    move p1, v0

    goto :goto_2d

    :cond_2c
    move p1, v1

    :goto_2d
    if-eqz p1, :cond_a9

    iget p1, p0, Lcom/android/launcher/behavior/DividerManager;->mListFirstChildInitY:I

    if-gtz p1, :cond_a1

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    iget-object p3, p0, Lcom/android/launcher/behavior/DividerManager;->mResources:Landroid/content/res/Resources;

    const p5, 0x7f070566

    invoke-virtual {p3, p5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    add-int/2addr p3, p1

    iput p3, p0, Lcom/android/launcher/behavior/DividerManager;->mListFirstChildInitY:I

    iput-object p4, p0, Lcom/android/launcher/behavior/DividerManager;->mScrollView:Landroid/view/View;

    const p1, 0x7f0a01db

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher/behavior/DividerManager;->mDivider:Landroid/view/View;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    iput p1, p0, Lcom/android/launcher/behavior/DividerManager;->mDividerInitWidth:I

    iget-object p1, p0, Lcom/android/launcher/behavior/DividerManager;->mDivider:Landroid/view/View;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher/behavior/DividerManager;->mDividerParams:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    iput p1, p0, Lcom/android/launcher/behavior/DividerManager;->mMaxWidth:I

    iget p1, p0, Lcom/android/launcher/behavior/DividerManager;->mListFirstChildInitY:I

    iget p2, p0, Lcom/android/launcher/behavior/DividerManager;->mDividerAlphaChangeOffset:I

    sub-int p2, p1, p2

    iput p2, p0, Lcom/android/launcher/behavior/DividerManager;->mDividerAlphaChangeEndY:I

    iget-object p2, p0, Lcom/android/launcher/behavior/DividerManager;->mResources:Landroid/content/res/Resources;

    const p3, 0x7f070570

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    sub-int/2addr p1, p2

    iput p1, p0, Lcom/android/launcher/behavior/DividerManager;->mDividerWidthChangeInitY:I

    iget p2, p0, Lcom/android/launcher/behavior/DividerManager;->mDividerWidthChangeOffset:I

    sub-int/2addr p1, p2

    iput p1, p0, Lcom/android/launcher/behavior/DividerManager;->mDividerWidthChangeEndY:I

    iget-object p1, p0, Lcom/android/launcher/behavior/DividerManager;->mScrollView:Landroid/view/View;

    instance-of p2, p1, Landroid/view/ViewGroup;

    if-eqz p2, :cond_a1

    const-string/jumbo p2, "null cannot be cast to non-null type android.view.ViewGroup"

    invoke-static {p1, p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    if-lez p2, :cond_a1

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getLocationOnScreen()[I

    move-result-object p1

    aget p1, p1, v0

    iput p1, p0, Lcom/android/launcher/behavior/DividerManager;->mFirstChildLocationY:I

    :cond_a1
    new-instance p1, Le/g;

    invoke-direct {p1, p0}, Le/g;-><init>(Lcom/android/launcher/behavior/DividerManager;)V

    invoke-virtual {p4, p1}, Landroid/view/View;->setOnScrollChangeListener(Landroid/view/View$OnScrollChangeListener;)V

    :cond_a9
    return v1
.end method

.method public final setMDividerInitWidth(I)V
    .registers 2

    iput p1, p0, Lcom/android/launcher/behavior/DividerManager;->mDividerInitWidth:I

    return-void
.end method
