.class public final Lcom/android/launcher/folder/recommend/view/RecommendContainer;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher/folder/recommend/view/RecommendContainer$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/launcher/folder/recommend/view/RecommendContainer$Companion;

.field private static final DISABLE_ALPHA:F = 0.0f

.field private static final DISABLE_START_DELAY:J = 0x64L

.field public static final DURATION_STATE_ANIMATION:F = 300.0f


# instance fields
.field private mEnableState:Z

.field private mRecommendSettingsIv:Landroid/widget/ImageView;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher/folder/recommend/view/RecommendContainer$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher/folder/recommend/view/RecommendContainer$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher/folder/recommend/view/RecommendContainer;->Companion:Lcom/android/launcher/folder/recommend/view/RecommendContainer$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher/folder/recommend/view/RecommendContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher/folder/recommend/view/RecommendContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/launcher/folder/recommend/view/RecommendContainer;->mEnableState:Z

    return-void
.end method

.method public static final synthetic access$getMRecommendSettingsIv$p(Lcom/android/launcher/folder/recommend/view/RecommendContainer;)Landroid/widget/ImageView;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/folder/recommend/view/RecommendContainer;->mRecommendSettingsIv:Landroid/widget/ImageView;

    return-object p0
.end method

.method public static final synthetic access$setMEnableState$p(Lcom/android/launcher/folder/recommend/view/RecommendContainer;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher/folder/recommend/view/RecommendContainer;->mEnableState:Z

    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .registers 1

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    iget-boolean v0, p0, Lcom/android/launcher/folder/recommend/view/RecommendContainer;->mEnableState:Z

    if-nez v0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public final setDisableState(ZZ)Landroid/animation/ValueAnimator;
    .registers 11

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000  # 1.0f

    if-nez p2, :cond_1c

    if-eqz p1, :cond_a

    move v2, v3

    :cond_a
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->setAlpha(F)V

    iput-boolean p1, p0, Lcom/android/launcher/folder/recommend/view/RecommendContainer;->mEnableState:Z

    iget-object p0, p0, Lcom/android/launcher/folder/recommend/view/RecommendContainer;->mRecommendSettingsIv:Landroid/widget/ImageView;

    if-nez p0, :cond_14

    goto :goto_1b

    :cond_14
    if-eqz p1, :cond_17

    goto :goto_18

    :cond_17
    const/4 v0, 0x4

    :goto_18
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_1b
    return-object v1

    :cond_1c
    if-eqz p1, :cond_20

    move p2, v2

    goto :goto_21

    :cond_20
    move p2, v3

    :goto_21
    if-eqz p1, :cond_25

    move v4, v3

    goto :goto_26

    :cond_25
    move v4, v2

    :goto_26
    if-eqz p1, :cond_2a

    move v5, v2

    goto :goto_2b

    :cond_2a
    move v5, v3

    :goto_2b
    if-eqz p1, :cond_2f

    move v6, v3

    goto :goto_30

    :cond_2f
    move v6, v2

    :goto_30
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getAlpha()F

    move-result v2

    cmpg-float v2, v4, v2

    if-nez v2, :cond_39

    const/4 v0, 0x1

    :cond_39
    if-eqz v0, :cond_50

    iget-object v0, p0, Lcom/android/launcher/folder/recommend/view/RecommendContainer;->mRecommendSettingsIv:Landroid/widget/ImageView;

    if-nez v0, :cond_41

    move-object v0, v1

    goto :goto_49

    :cond_41
    invoke-virtual {v0}, Landroid/widget/ImageView;->getAlpha()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    :goto_49
    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(FLjava/lang/Float;)Z

    move-result v0

    if-eqz v0, :cond_50

    return-object v1

    :cond_50
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_8a

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    sget-object v1, Lcom/android/launcher/togglebar/animation/ToggleBarAnimHelper;->INTERPOLATOR_NORMAL:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    new-instance v1, Lcom/android/launcher/folder/recommend/view/RecommendContainer$setDisableState$1;

    move-object v2, v1

    move v3, p2

    move-object v7, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/launcher/folder/recommend/view/RecommendContainer$setDisableState$1;-><init>(FFFFLcom/android/launcher/folder/recommend/view/RecommendContainer;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const-string p2, "animator"

    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p2, Lcom/android/launcher/folder/recommend/view/RecommendContainer$setDisableState$$inlined$doOnStart$1;

    invoke-direct {p2, p0, p1}, Lcom/android/launcher/folder/recommend/view/RecommendContainer$setDisableState$$inlined$doOnStart$1;-><init>(Lcom/android/launcher/folder/recommend/view/RecommendContainer;Z)V

    invoke-virtual {v0, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance p2, Lcom/android/launcher/folder/recommend/view/RecommendContainer$setDisableState$$inlined$doOnEnd$1;

    invoke-direct {p2, p0, p1}, Lcom/android/launcher/folder/recommend/view/RecommendContainer$setDisableState$$inlined$doOnEnd$1;-><init>(Lcom/android/launcher/folder/recommend/view/RecommendContainer;Z)V

    invoke-virtual {v0, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object v0

    :array_8a
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data
.end method

.method public final setSettingsIv(Landroid/widget/ImageView;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher/folder/recommend/view/RecommendContainer;->mRecommendSettingsIv:Landroid/widget/ImageView;

    return-void
.end method
