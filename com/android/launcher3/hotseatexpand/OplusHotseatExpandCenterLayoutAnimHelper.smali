.class public final Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandCenterLayoutAnimHelper;
.super Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandCenterLayoutAnimHelper$Companion;
    }
.end annotation


# static fields
.field private static final ANIMATION_DELAY_DEFAULT:J = 0xc8L

.field private static final ANIMATION_DURATION_DEFAULT:J = 0x2bcL

.field private static final ANIMATION_EXPAND_OUT_DURATION_DEFAULT:J = 0x190L

.field private static final ANIMATION_EXPAND_REPLACE_DURATION_DEFAULT:J = 0x1f4L

.field private static final ANIMATION_SCALE_DEFAULT:F = 0.7f

.field public static final Companion:Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandCenterLayoutAnimHelper$Companion;

.field private static final EXPAND_IN_DELAY_BASE:J = 0x15bL

.field private static final EXPAND_IN_DELAY_STEP:I = 0x22

.field private static final EXPAND_IN_DURATION_BASE:J = 0x161L

.field private static final EXPAND_OUT_DELAY_STEP:J = 0x37L

.field private static final TAG:Ljava/lang/String; = "OplusHotseatExpandCenterLayoutAnimHelper"


# instance fields
.field private isUpdatingWithOutAnimation:Z

.field private newPaddingLR:I

.field private oldPaddingLR:I

.field private final targetViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private targetWidth:I

.field private final toBeAddViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private tobeDeleteViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private updateAnimatorSet:Landroid/animation/AnimatorSet;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandCenterLayoutAnimHelper$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandCenterLayoutAnimHelper$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandCenterLayoutAnimHelper;->Companion:Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandCenterLayoutAnimHelper$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/launcher3/OplusHotseat;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;-><init>(Landroid/content/Context;Lcom/android/launcher3/OplusHotseat;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandCenterLayoutAnimHelper;->targetViews:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandCenterLayoutAnimHelper;->toBeAddViews:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandCenterLayoutAnimHelper;->tobeDeleteViews:Ljava/util/ArrayList;

    return-void
.end method

.method public static synthetic a(Landroid/view/View;Landroid/animation/ValueAnimator;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandCenterLayoutAnimHelper;->startExpandOutAnimation$lambda-2(Landroid/view/View;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic b(Landroid/view/View;Landroid/animation/ValueAnimator;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandCenterLayoutAnimHelper;->startExpandReplaceAnim$lambda-6(Landroid/view/View;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic c(Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandCenterLayoutAnimHelper;Landroid/animation/ValueAnimator;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandCenterLayoutAnimHelper;->startExpandInAnimation$lambda-0(Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandCenterLayoutAnimHelper;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic d(Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandCenterLayoutAnimHelper;Landroid/animation/ValueAnimator;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandCenterLayoutAnimHelper;->startExpandOutAnimation$lambda-3(Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandCenterLayoutAnimHelper;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method private final dividerWillBeRemoved(Ljava/util/List;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroid/view/View;",
            ">;)Z"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_16

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    instance-of p1, p1, Lcom/android/launcher3/hotseatexpand/OplusHotseatDividerView;

    if-eqz p1, :cond_4

    const/4 p0, 0x1

    return p0

    :cond_16
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic e(Landroid/view/View;Landroid/animation/ValueAnimator;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandCenterLayoutAnimHelper;->startExpandReplaceAnim$lambda-5(Landroid/view/View;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic f(Landroid/view/View;Landroid/animation/ValueAnimator;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandCenterLayoutAnimHelper;->startExpandInAnimation$lambda-1(Landroid/view/View;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method private final getExpandViewByCellX(Lcom/android/launcher3/ShortcutAndWidgetContainer;I)Landroid/view/View;
    .registers 7

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p0

    if-lez p0, :cond_38

    const/4 v0, 0x0

    :goto_7
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_33

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_33

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    if-eqz v2, :cond_33

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    const-string v3, "null cannot be cast to non-null type com.android.launcher3.model.data.WorkspaceItemInfo"

    invoke-static {v2, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v2, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    iget v3, v2, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    if-ne v3, p2, :cond_33

    iget v2, v2, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    const/16 v3, 0xca

    if-ne v2, v3, :cond_33

    return-object v0

    :cond_33
    if-lt v1, p0, :cond_36

    goto :goto_38

    :cond_36
    move v0, v1

    goto :goto_7

    :cond_38
    :goto_38
    const/4 p0, 0x0

    return-object p0
.end method

.method private final getOriginalChildViews()Ljava/util/ArrayList;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-lez v1, :cond_1e

    const/4 v2, 0x0

    :goto_e
    add-int/lit8 v3, v2, 0x1

    iget-object v4, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-lt v3, v1, :cond_1c

    goto :goto_1e

    :cond_1c
    move v2, v3

    goto :goto_e

    :cond_1e
    :goto_1e
    return-object v0
.end method

.method private final resetUpdateAnimationSet()V
    .registers 2

    iget-object v0, p0, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandCenterLayoutAnimHelper;->updateAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_d

    if-nez v0, :cond_7

    goto :goto_a

    :cond_7
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :goto_a
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandCenterLayoutAnimHelper;->updateAnimatorSet:Landroid/animation/AnimatorSet;

    :cond_d
    return-void
.end method

.method private final resetUpdateData()V
    .registers 2

    iget-object v0, p0, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandCenterLayoutAnimHelper;->tobeDeleteViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandCenterLayoutAnimHelper;->toBeAddViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandCenterLayoutAnimHelper;->targetViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandCenterLayoutAnimHelper;->newPaddingLR:I

    iput v0, p0, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandCenterLayoutAnimHelper;->targetWidth:I

    return-void
.end method

.method private final startAddNewItemInScreen(Z)V
    .registers 8

    iget-object v0, p0, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandCenterLayoutAnimHelper;->toBeAddViews:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandUtils$ViewCellXPositionComparator;

    invoke-direct {v1}, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandUtils$ViewCellXPositionComparator;-><init>()V

    invoke-static {v0, v1}, Lz2/o;->u(Ljava/util/List;Ljava/util/Comparator;)V

    iget-object v0, p0, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandCenterLayoutAnimHelper;->toBeAddViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_69

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    iget-object v2, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getHotseat()Lcom/android/launcher3/OplusHotseat;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/OplusHotseat;->updateCountXForItemAdded()V

    if-eqz p1, :cond_34

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    const v2, 0x3f333333  # 0.7f

    invoke-virtual {v1, v2}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setScaleY(F)V

    :cond_34
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    const-string v3, "null cannot be cast to non-null type com.android.launcher3.model.data.ItemInfo"

    invoke-static {v2, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v2, Lcom/android/launcher3/model/data/ItemInfo;

    const-string/jumbo v3, "updateExpandItemAnimation add in screen info:"

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "Hotseat_expand"

    const-string v5, "OplusHotseatExpandCenterLayoutAnimHelper"

    invoke-static {v4, v5, v3}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v3

    invoke-interface {v3, v1, v2}, Lcom/android/launcher3/WorkspaceLayoutManager;->addInScreen(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;)Z

    iget-object v1, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object v1

    iget-object v1, v1, Lcom/android/launcher3/LauncherModel;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v3, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v2, v4}, Lcom/android/launcher3/model/BgDataModel;->addItem(Landroid/content/Context;Lcom/android/launcher3/model/data/ItemInfo;Z)V

    goto :goto_10

    :cond_69
    return-void
.end method

.method private final startExpandInAnimation(Ljava/util/List;)Ljava/util/Collection;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroid/view/View;",
            ">;)",
            "Ljava/util/Collection<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x2

    new-array v2, v1, [F

    fill-array-data v2, :array_7e

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    const-wide/16 v3, 0x2bc

    invoke-virtual {v2, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    sget-object v3, Lcom/android/common/config/AnimationConstant;->HOTSEAT_EXPAND_TRANSITION_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v3, Lcom/android/launcher3/hotseatexpand/a;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/launcher3/hotseatexpand/a;-><init>(Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandCenterLayoutAnimHelper;I)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const-string p0, "paddingAnim"

    invoke-static {v2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    if-ltz p0, :cond_7c

    :goto_32
    add-int/lit8 v2, v4, 0x1

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    new-array v5, v1, [F

    fill-array-data v5, :array_86

    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v5

    sget-object v6, Lcom/android/common/config/AnimationConstant;->HOTSEAT_EXPAND_TRANSITION_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v5, v6}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v6, 0x15b

    const-wide/16 v8, 0x161

    if-nez v4, :cond_5a

    mul-int/lit8 v4, v2, 0x22

    int-to-long v10, v4

    sub-long/2addr v8, v10

    invoke-virtual {v5, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    add-long/2addr v10, v6

    invoke-virtual {v5, v10, v11}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    goto :goto_65

    :cond_5a
    mul-int/lit8 v4, v4, 0x22

    int-to-long v10, v4

    sub-long/2addr v8, v10

    invoke-virtual {v5, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    add-long/2addr v10, v6

    invoke-virtual {v5, v10, v11}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    :goto_65
    new-instance v4, Lcom/android/common/config/a;

    const/4 v6, 0x4

    invoke-direct {v4, v3, v6}, Lcom/android/common/config/a;-><init>(Landroid/view/View;I)V

    invoke-virtual {v5, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const-string/jumbo v3, "va"

    invoke-static {v5, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-le v2, p0, :cond_7a

    goto :goto_7c

    :cond_7a
    move v4, v2

    goto :goto_32

    :cond_7c
    :goto_7c
    return-object v0

    nop

    :array_7e
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data

    :array_86
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data
.end method

.method private static final startExpandInAnimation$lambda-0(Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandCenterLayoutAnimHelper;Landroid/animation/ValueAnimator;)V
    .registers 4

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type kotlin.Float"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const/4 v0, 0x1

    int-to-float v0, v0

    sub-float/2addr v0, p1

    invoke-virtual {p0}, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandCenterLayoutAnimHelper;->getOldPaddingLR()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandCenterLayoutAnimHelper;->getNewPaddingLR()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr p1, v1

    add-float/2addr p1, v0

    float-to-int p1, p1

    iget-object v0, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mHotseat:Lcom/android/launcher3/OplusHotseat;

    iget v1, p0, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->mCommonTop:I

    iget p0, p0, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->mCommonBottom:I

    invoke-virtual {v0, p1, v1, p1, p0}, Landroid/view/ViewGroup;->setPadding(IIII)V

    return-void
.end method

.method private static final startExpandInAnimation$lambda-1(Landroid/view/View;Landroid/animation/ValueAnimator;)V
    .registers 4

    const-string v0, "$child"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type kotlin.Float"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    const v0, 0x3f333333  # 0.7f

    const v1, 0x3e99999a  # 0.3f

    mul-float/2addr p1, v1

    add-float/2addr p1, v0

    invoke-virtual {p0, p1}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {p0, p1}, Landroid/view/View;->setScaleY(F)V

    return-void
.end method

.method private final startExpandOutAnimation(Ljava/util/List;)Ljava/util/Collection;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroid/view/View;",
            ">;)",
            "Ljava/util/Collection<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    iget-object v2, p0, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandCenterLayoutAnimHelper;->tobeDeleteViews:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const/4 v2, 0x2

    if-lez v1, :cond_4d

    const/4 v3, 0x0

    :goto_12
    add-int/lit8 v4, v3, 0x1

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    new-array v5, v2, [F

    fill-array-data v5, :array_78

    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v5

    const-wide/16 v6, 0x190

    invoke-virtual {v5, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    sub-int v6, v1, v4

    int-to-long v6, v6

    const-wide/16 v8, 0x37

    mul-long/2addr v6, v8

    invoke-virtual {v5, v6, v7}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    sget-object v6, Lcom/android/common/config/AnimationConstant;->HOTSEAT_EXPAND_TRANSITION_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v5, v6}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v6, Lcom/android/common/config/a;

    const/4 v7, 0x7

    invoke-direct {v6, v3, v7}, Lcom/android/common/config/a;-><init>(Landroid/view/View;I)V

    invoke-virtual {v5, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const-string/jumbo v3, "va"

    invoke-static {v5, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-lt v4, v1, :cond_4b

    goto :goto_4d

    :cond_4b
    move v3, v4

    goto :goto_12

    :cond_4d
    :goto_4d
    new-array p1, v2, [F

    fill-array-data p1, :array_80

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    new-instance v1, Lcom/android/launcher3/hotseatexpand/a;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/android/launcher3/hotseatexpand/a;-><init>(Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandCenterLayoutAnimHelper;I)V

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    sget-object p0, Lcom/android/common/config/AnimationConstant;->HOTSEAT_EXPAND_TRANSITION_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, p0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v1, 0x2bc

    invoke-virtual {p1, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0xc8

    invoke-virtual {p1, v1, v2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    const-string p0, "paddingAnim"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0

    nop

    :array_78
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data

    :array_80
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data
.end method

.method private static final startExpandOutAnimation$lambda-2(Landroid/view/View;Landroid/animation/ValueAnimator;)V
    .registers 4

    const-string v0, "$child"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type kotlin.Float"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const/high16 v0, 0x3f800000  # 1.0f

    sub-float/2addr v0, p1

    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    const/4 v0, 0x1

    int-to-float v0, v0

    const v1, 0x3e99999a  # 0.3f

    mul-float/2addr p1, v1

    sub-float/2addr v0, p1

    invoke-virtual {p0, v0}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setScaleY(F)V

    return-void
.end method

.method private static final startExpandOutAnimation$lambda-3(Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandCenterLayoutAnimHelper;Landroid/animation/ValueAnimator;)V
    .registers 4

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type kotlin.Float"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const/4 v0, 0x1

    int-to-float v0, v0

    sub-float/2addr v0, p1

    invoke-virtual {p0}, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandCenterLayoutAnimHelper;->getOldPaddingLR()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandCenterLayoutAnimHelper;->getNewPaddingLR()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr p1, v1

    add-float/2addr p1, v0

    float-to-int p1, p1

    iget-object v0, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mHotseat:Lcom/android/launcher3/OplusHotseat;

    iget v1, p0, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->mCommonTop:I

    iget p0, p0, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->mCommonBottom:I

    invoke-virtual {v0, p1, v1, p1, p0}, Landroid/view/ViewGroup;->setPadding(IIII)V

    return-void
.end method

.method private static final startExpandReplaceAnim$lambda-5(Landroid/view/View;Landroid/animation/ValueAnimator;)V
    .registers 4

    const-string/jumbo v0, "valueAnimator"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type kotlin.Float"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const v0, 0x3f333333  # 0.7f

    const v1, 0x3e99999a  # 0.3f

    mul-float/2addr p1, v1

    add-float/2addr p1, v0

    if-nez p0, :cond_20

    goto :goto_23

    :cond_20
    invoke-virtual {p0, p1}, Landroid/view/View;->setScaleX(F)V

    :goto_23
    if-nez p0, :cond_26

    goto :goto_29

    :cond_26
    invoke-virtual {p0, p1}, Landroid/view/View;->setScaleY(F)V

    :goto_29
    return-void
.end method

.method private static final startExpandReplaceAnim$lambda-6(Landroid/view/View;Landroid/animation/ValueAnimator;)V
    .registers 4

    const-string v0, "$replaceView"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "valueAnimator"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type kotlin.Float"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const v0, 0x3f333333  # 0.7f

    const v1, 0x3e99999a  # 0.3f

    mul-float/2addr v1, p1

    add-float/2addr v1, v0

    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {p0, v1}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {p0, v1}, Landroid/view/View;->setScaleY(F)V

    return-void
.end method

.method private final updateShortcutsAndWidgetsWidthAndHotSeatPadding(I)V
    .registers 7

    iget-object v0, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mHotseat:Lcom/android/launcher3/OplusHotseat;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getRight()I

    move-result v0

    iget-object v1, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mHotseat:Lcom/android/launcher3/OplusHotseat;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLeft()I

    move-result v1

    sub-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x2

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mHotseat:Lcom/android/launcher3/OplusHotseat;

    iget v2, p0, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->mCommonTop:I

    iget v3, p0, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->mCommonBottom:I

    invoke-virtual {v1, v0, v2, v0, v3}, Landroid/view/ViewGroup;->setPadding(IIII)V

    iget-object v1, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    iget-object v2, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mHotseat:Lcom/android/launcher3/OplusHotseat;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getX()F

    move-result v2

    float-to-int v2, v2

    add-int/2addr v2, v0

    iget-object v3, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getTop()I

    move-result v3

    iget-object v4, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mHotseat:Lcom/android/launcher3/OplusHotseat;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getX()F

    move-result v4

    float-to-int v4, v4

    add-int/2addr v4, v0

    add-int/2addr v4, p1

    iget-object p0, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getBottom()I

    move-result p0

    invoke-virtual {v1, v2, v3, v4, p0}, Landroid/view/ViewGroup;->layout(IIII)V

    return-void
.end method


# virtual methods
.method public final animationEnd(Z)V
    .registers 13

    const-string/jumbo v0, "updateExpandItemAnimation end,tobeDeleteViews.size:"

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandCenterLayoutAnimHelper;->tobeDeleteViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",toBeAddViews.size:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandCenterLayoutAnimHelper;->toBeAddViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",targetWidth:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandCenterLayoutAnimHelper;->targetWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",newPaddingLR:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandCenterLayoutAnimHelper;->newPaddingLR:I

    const-string v2, "Hotseat_expand"

    const-string v3, "OplusHotseatExpandCenterLayoutAnimHelper"

    invoke-static {v0, v1, v2, v3}, Lcom/android/launcher/download/b;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandCenterLayoutAnimHelper;->tobeDeleteViews:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const/4 v4, 0x0

    if-eqz v0, :cond_9d

    iget-object v0, p0, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandCenterLayoutAnimHelper;->tobeDeleteViews:Ljava/util/ArrayList;

    new-instance v5, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandUtils$ViewCellXPositionComparator;

    invoke-direct {v5}, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandUtils$ViewCellXPositionComparator;-><init>()V

    invoke-static {v0, v5}, Lz2/o;->u(Ljava/util/List;Ljava/util/Comparator;)V

    iget-object v0, p0, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandCenterLayoutAnimHelper;->tobeDeleteViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_51
    :goto_51
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    const-string/jumbo v7, "updateExpandItemAnimation end to remove:"

    invoke-static {v7, v6}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v3, v6}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v6}, Lcom/android/launcher3/Launcher;->getHotseat()Lcom/android/launcher3/OplusHotseat;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/android/launcher3/CellLayout;->removeView(Landroid/view/View;)V

    iget-object v6, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v6}, Lcom/android/launcher3/Launcher;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object v6

    iget-object v6, v6, Lcom/android/launcher3/LauncherModel;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v7, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v7}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    new-array v8, v1, [Lcom/android/launcher3/model/data/ItemInfo;

    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v9

    const-string v10, "null cannot be cast to non-null type com.android.launcher3.model.data.ItemInfo"

    invoke-static {v9, v10}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v9, Lcom/android/launcher3/model/data/ItemInfo;

    aput-object v9, v8, v4

    invoke-virtual {v6, v7, v8}, Lcom/android/launcher3/model/BgDataModel;->removeItem(Landroid/content/Context;[Lcom/android/launcher3/model/data/ItemInfo;)V

    instance-of v5, v5, Lcom/android/launcher3/hotseatexpand/OplusHotseatDividerView;

    if-eqz v5, :cond_51

    const/4 v5, 0x0

    invoke-static {v5}, Lcom/android/launcher3/hotseatexpand/OplusHotseatDividerHelper;->setDividerView(Lcom/android/launcher3/hotseatexpand/OplusHotseatDividerView;)V

    goto :goto_51

    :cond_9d
    iget v0, p0, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandCenterLayoutAnimHelper;->targetWidth:I

    if-eqz v0, :cond_a4

    invoke-direct {p0, v0}, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandCenterLayoutAnimHelper;->updateShortcutsAndWidgetsWidthAndHotSeatPadding(I)V

    :cond_a4
    iget v0, p0, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandCenterLayoutAnimHelper;->newPaddingLR:I

    if-eqz v0, :cond_b1

    iget-object v2, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mHotseat:Lcom/android/launcher3/OplusHotseat;

    iget v3, p0, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->mCommonTop:I

    iget v5, p0, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->mCommonBottom:I

    invoke-virtual {v2, v0, v3, v0, v5}, Landroid/view/ViewGroup;->setPadding(IIII)V

    :cond_b1
    iget-object v0, p0, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandCenterLayoutAnimHelper;->toBeAddViews:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/2addr v0, v1

    if-eqz v0, :cond_d8

    iget-object v0, p0, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandCenterLayoutAnimHelper;->toBeAddViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_c0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    const/high16 v3, 0x3f800000  # 1.0f

    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setScaleY(F)V

    goto :goto_c0

    :cond_d8
    iget-object v0, p0, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandCenterLayoutAnimHelper;->targetViews:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/2addr v0, v1

    if-eqz v0, :cond_100

    iget-object v0, p0, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandCenterLayoutAnimHelper;->targetViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v2, v0, [Landroid/view/View;

    if-lez v0, :cond_fd

    move v3, v4

    :goto_ec
    add-int/lit8 v5, v3, 0x1

    iget-object v6, p0, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandCenterLayoutAnimHelper;->targetViews:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    aput-object v6, v2, v3

    if-lt v5, v0, :cond_fb

    goto :goto_fd

    :cond_fb
    move v3, v5

    goto :goto_ec

    :cond_fd
    :goto_fd
    invoke-virtual {p0, v2, v0, v1}, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandCenterLayoutAnimHelper;->updateGridSize([Landroid/view/View;IZ)Z

    :cond_100
    invoke-direct {p0}, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandCenterLayoutAnimHelper;->resetUpdateData()V

    invoke-static {p1}, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandGuidHelper;->showExpandGuidIfNecessary(Z)V

    sget-object p1, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandDataManager;->INSTANCE:Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandDataManager;

    invoke-virtual {p1, v1}, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandDataManager;->setFinishedUpdateExpandFlag(Z)V

    invoke-virtual {p1, v4}, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandDataManager;->setExpandUpdatingFlag(Z)V

    iget-object p1, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mHotseat:Lcom/android/launcher3/OplusHotseat;

    invoke-virtual {p1}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    if-lez p1, :cond_12f

    iget-object p0, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mHotseat:Lcom/android/launcher3/OplusHotseat;

    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object p0

    const-string p1, "mHotseat.shortcutsAndWidgets"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, v4}, Landroidx/core/view/ViewGroupKt;->get(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object p0

    if-nez p0, :cond_12c

    goto :goto_12f

    :cond_12c
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_12f
    :goto_12f
    return-void
.end method

.method public final cancelUpdateAnimatorSet()V
    .registers 4

    invoke-virtual {p0}, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandCenterLayoutAnimHelper;->isUpdateAnimating()Z

    move-result v0

    if-eqz v0, :cond_17

    const-string v0, "Hotseat_expand"

    const-string v1, "OplusHotseatExpandCenterLayoutAnimHelper"

    const-string v2, "cancelUpdateAnimatorSet"

    invoke-static {v0, v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandCenterLayoutAnimHelper;->updateAnimatorSet:Landroid/animation/AnimatorSet;

    if-nez p0, :cond_14

    goto :goto_17

    :cond_14
    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_17
    :goto_17
    return-void
.end method

.method public final getNewPaddingLR()I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandCenterLayoutAnimHelper;->newPaddingLR:I

    return p0
.end method

.method public final getOldPaddingLR()I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandCenterLayoutAnimHelper;->oldPaddingLR:I

    return p0
.end method

.method public final getTargetViews()Ljava/util/ArrayList;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandCenterLayoutAnimHelper;->targetViews:Ljava/util/ArrayList;

    return-object p0
.end method

.method public final getTargetWidth()I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandCenterLayoutAnimHelper;->targetWidth:I

    return p0
.end method

.method public final getUpdateAnimatorSet()Landroid/animation/AnimatorSet;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandCenterLayoutAnimHelper;->updateAnimatorSet:Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method public final isUpdateAnimating()Z
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandCenterLayoutAnimHelper;->updateAnimatorSet:Landroid/animation/AnimatorSet;

    const/4 v0, 0x0

    if-eqz p0, :cond_10

    if-nez p0, :cond_9

    move p0, v0

    goto :goto_d

    :cond_9
    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result p0

    :goto_d
    if-eqz p0, :cond_10

    const/4 v0, 0x1

    :cond_10
    return v0
.end method

.method public final isUpdatingWithOutAnimation()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandCenterLayoutAnimHelper;->isUpdatingWithOutAnimation:Z

    return p0
.end method

.method public final setNewPaddingLR(I)V
    .registers 2

    iput p1, p0, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandCenterLayoutAnimHelper;->newPaddingLR:I

    return-void
.end method

.method public final setOldPaddingLR(I)V
    .registers 2

    iput p1, p0, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandCenterLayoutAnimHelper;->oldPaddingLR:I

    return-void
.end method

.method public final setTargetWidth(I)V
    .registers 2

    iput p1, p0, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandCenterLayoutAnimHelper;->targetWidth:I

    return-void
.end method

.method public final setUpdateAnimatorSet(Landroid/animation/AnimatorSet;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandCenterLayoutAnimHelper;->updateAnimatorSet:Landroid/animation/AnimatorSet;

    return-void
.end method

.method public final setUpdatingWithOutAnimation(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandCenterLayoutAnimHelper;->isUpdatingWithOutAnimation:Z

    return-void
.end method

.method public final startExpandReplaceAnim(Ljava/util/ArrayList;)Ljava/util/Collection;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)",
            "Ljava/util/Collection<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation

    const-string/jumbo v0, "toReplaceViews"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_12

    return-object v0

    :cond_12
    iget-object v1, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_18
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_90

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    const-string v4, "null cannot be cast to non-null type com.android.launcher3.model.data.ItemInfo"

    invoke-static {v3, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v3, Lcom/android/launcher3/model/data/ItemInfo;

    const/4 v4, 0x2

    new-array v5, v4, [F

    fill-array-data v5, :array_92

    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v5

    const-wide/16 v6, 0x1f4

    invoke-virtual {v5, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    const-wide/16 v8, 0xc8

    invoke-virtual {v5, v8, v9}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    sget-object v10, Lcom/android/common/config/AnimationConstant;->HOTSEAT_EXPAND_TRANSITION_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v5, v10}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-string v11, "container"

    invoke-static {v1, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget v3, v3, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    invoke-direct {p0, v1, v3}, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandCenterLayoutAnimHelper;->getExpandViewByCellX(Lcom/android/launcher3/ShortcutAndWidgetContainer;I)Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_56

    goto :goto_5b

    :cond_56
    iget-object v11, p0, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandCenterLayoutAnimHelper;->tobeDeleteViews:Ljava/util/ArrayList;

    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_5b
    new-instance v11, Lcom/android/common/config/a;

    const/4 v12, 0x5

    invoke-direct {v11, v3, v12}, Lcom/android/common/config/a;-><init>(Landroid/view/View;I)V

    invoke-virtual {v5, v11}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const-string v3, "oldIconAnimator"

    invoke-static {v5, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    new-array v3, v4, [F

    fill-array-data v3, :array_9a

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    invoke-virtual {v3, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {v5, v8, v9}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    invoke-virtual {v3, v10}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v4, Lcom/android/common/config/a;

    const/4 v5, 0x6

    invoke-direct {v4, v2, v5}, Lcom/android/common/config/a;-><init>(Landroid/view/View;I)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const-string v2, "newIconAnimator"

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_18

    :cond_90
    return-object v0

    nop

    :array_92
    .array-data 4
        0x3f800000  # 1.0f
        0x0
    .end array-data

    :array_9a
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data
.end method

.method public final startUpdateExpandItemAnimation(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V
    .registers 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;Z)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    const-string/jumbo v4, "toBeExpandViews"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v4, "toBeRemovedViews"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v4, "toReplaceViews"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v4, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandDataManager;->INSTANCE:Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandDataManager;

    invoke-virtual {v4}, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandDataManager;->getEnableUpdateExpandFlag()Z

    move-result v4

    const-string v5, "OplusHotseatExpandCenterLayoutAnimHelper"

    const-string v6, "Hotseat_expand"

    if-nez v4, :cond_42

    if-nez p4, :cond_42

    invoke-static {}, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandUtils;->hasDividerItemInBgData()Z

    move-result v0

    if-nez v0, :cond_38

    const-string/jumbo v0, "startUpdateExpandItemAnimation not finish bind and setDividerView null"

    invoke-static {v6, v5, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/launcher3/hotseatexpand/OplusHotseatDividerHelper;->setDividerView(Lcom/android/launcher3/hotseatexpand/OplusHotseatDividerView;)V

    :cond_38
    invoke-static {}, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandDataManager;->resetStateForUpdateExceptionReturn()V

    const-string/jumbo v0, "startUpdateExpandItemAnimation launcher is not finish bind, return"

    invoke-static {v6, v5, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_42
    iget-object v4, v0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mLauncher:Lcom/android/launcher3/Launcher;

    const-string v7, "mLauncher"

    invoke-static {v4, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4}, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandUtils;->isHotseatVisible(Lcom/android/launcher3/Launcher;)Z

    move-result v4

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eqz v4, :cond_5f

    sget v4, Lcom/android/launcher3/anim/AppLaunchAnimSpeedHandler;->sDurationScale:F

    const/4 v9, 0x0

    cmpg-float v4, v4, v9

    if-nez v4, :cond_5a

    move v4, v8

    goto :goto_5b

    :cond_5a
    move v4, v7

    :goto_5b
    if-nez v4, :cond_5f

    move v4, v8

    goto :goto_60

    :cond_5f
    move v4, v7

    :goto_60
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandCenterLayoutAnimHelper;->isUpdateAnimating()Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    const-string/jumbo v10, "startUpdateExpandItemAnimation,isAnimating:"

    invoke-static {v10, v9}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandCenterLayoutAnimHelper;->resetUpdateAnimationSet()V

    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandCenterLayoutAnimHelper;->getOriginalChildViews()Ljava/util/ArrayList;

    move-result-object v9

    iget-object v10, v0, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandCenterLayoutAnimHelper;->targetViews:Ljava/util/ArrayList;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v10, v0, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandCenterLayoutAnimHelper;->targetViews:Ljava/util/ArrayList;

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v10, v0, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandCenterLayoutAnimHelper;->targetViews:Ljava/util/ArrayList;

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    xor-int/lit8 v10, v4, 0x1

    iput-boolean v10, v0, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandCenterLayoutAnimHelper;->isUpdatingWithOutAnimation:Z

    if-eqz v4, :cond_97

    iget-object v10, v0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v10}, Lcom/android/launcher3/Launcher;->getDragController()Lcom/android/launcher3/dragndrop/OplusDragController;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/launcher3/dragndrop/OplusDragController;->cancelDragBeforeHotseatExpandAnim()V

    :cond_97
    new-instance v10, Landroid/animation/AnimatorSet;

    invoke-direct {v10}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v10, v0, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandCenterLayoutAnimHelper;->updateAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iget-object v11, v0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v11}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v12

    iget-object v13, v0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mHotseat:Lcom/android/launcher3/OplusHotseat;

    invoke-virtual {v13}, Landroid/view/ViewGroup;->getRight()I

    move-result v13

    iget-object v14, v0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mHotseat:Lcom/android/launcher3/OplusHotseat;

    invoke-virtual {v14}, Landroid/view/ViewGroup;->getLeft()I

    move-result v14

    sub-int/2addr v13, v14

    invoke-static {}, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandLayoutParamsInject;->getHotseatBgPaddingHorizontal()I

    move-result v14

    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v15

    xor-int/2addr v15, v8

    if-eqz v15, :cond_10f

    iget-object v15, v0, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandCenterLayoutAnimHelper;->toBeAddViews:Ljava/util/ArrayList;

    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-static {}, Lcom/android/launcher3/hotseatexpand/OplusHotseatDividerHelper;->hasDividerView()Z

    move-result v15

    if-eqz v15, :cond_e3

    iget-object v15, v0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mHotseat:Lcom/android/launcher3/OplusHotseat;

    invoke-virtual {v15}, Lcom/android/launcher3/CellLayout;->getCellWidth()I

    move-result v15

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v16

    add-int v16, v16, v12

    add-int/lit8 v16, v16, -0x1

    mul-int v16, v16, v15

    invoke-static {}, Lcom/android/launcher3/hotseatexpand/OplusHotseatDividerHelper;->getDividerViewWidth()I

    move-result v15

    add-int v15, v15, v16

    goto :goto_f1

    :cond_e3
    iget-object v15, v0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mHotseat:Lcom/android/launcher3/OplusHotseat;

    invoke-virtual {v15}, Lcom/android/launcher3/CellLayout;->getCellWidth()I

    move-result v15

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v16

    add-int v16, v16, v12

    mul-int v15, v15, v16

    :goto_f1
    iput v15, v0, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandCenterLayoutAnimHelper;->targetWidth:I

    mul-int/lit8 v14, v14, 0x2

    add-int/2addr v14, v15

    iput v14, v0, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandCenterLayoutAnimHelper;->targetWidth:I

    sub-int v14, v13, v14

    div-int/lit8 v14, v14, 0x2

    iput v14, v0, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandCenterLayoutAnimHelper;->newPaddingLR:I

    invoke-virtual {v11}, Landroid/view/ViewGroup;->getWidth()I

    move-result v11

    sub-int/2addr v13, v11

    div-int/lit8 v13, v13, 0x2

    iput v13, v0, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandCenterLayoutAnimHelper;->oldPaddingLR:I

    invoke-direct/range {p0 .. p1}, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandCenterLayoutAnimHelper;->startExpandInAnimation(Ljava/util/List;)Ljava/util/Collection;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    goto :goto_168

    :cond_10f
    invoke-interface/range {p2 .. p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v15

    xor-int/2addr v15, v8

    if-eqz v15, :cond_168

    invoke-static {}, Lcom/android/launcher3/hotseatexpand/OplusHotseatDividerHelper;->hasDividerView()Z

    move-result v15

    if-eqz v15, :cond_139

    invoke-direct {v0, v2}, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandCenterLayoutAnimHelper;->dividerWillBeRemoved(Ljava/util/List;)Z

    move-result v15

    if-nez v15, :cond_139

    iget-object v15, v0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mHotseat:Lcom/android/launcher3/OplusHotseat;

    invoke-virtual {v15}, Lcom/android/launcher3/CellLayout;->getCellWidth()I

    move-result v15

    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v16

    sub-int v16, v12, v16

    add-int/lit8 v16, v16, -0x1

    mul-int v16, v16, v15

    invoke-static {}, Lcom/android/launcher3/hotseatexpand/OplusHotseatDividerHelper;->getDividerViewWidth()I

    move-result v15

    add-int v15, v15, v16

    goto :goto_147

    :cond_139
    iget-object v15, v0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mHotseat:Lcom/android/launcher3/OplusHotseat;

    invoke-virtual {v15}, Lcom/android/launcher3/CellLayout;->getCellWidth()I

    move-result v15

    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v16

    sub-int v16, v12, v16

    mul-int v15, v15, v16

    :goto_147
    iput v15, v0, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandCenterLayoutAnimHelper;->targetWidth:I

    if-lez v15, :cond_150

    mul-int/lit8 v14, v14, 0x2

    add-int/2addr v14, v15

    iput v14, v0, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandCenterLayoutAnimHelper;->targetWidth:I

    :cond_150
    iget v14, v0, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandCenterLayoutAnimHelper;->targetWidth:I

    sub-int v14, v13, v14

    div-int/lit8 v14, v14, 0x2

    iput v14, v0, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandCenterLayoutAnimHelper;->newPaddingLR:I

    invoke-virtual {v11}, Landroid/view/ViewGroup;->getWidth()I

    move-result v11

    sub-int/2addr v13, v11

    div-int/lit8 v13, v13, 0x2

    iput v13, v0, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandCenterLayoutAnimHelper;->oldPaddingLR:I

    invoke-direct {v0, v2}, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandCenterLayoutAnimHelper;->startExpandOutAnimation(Ljava/util/List;)Ljava/util/Collection;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    :cond_168
    :goto_168
    const-string/jumbo v11, "startUpdateExpandItemAnimation toBeExpandViews.size:"

    invoke-static {v11}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",toBeRemovedViews.size:"

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",toReplaceViews.size:"

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",originalViews:"

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",targetViews.size:"

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v0, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandCenterLayoutAnimHelper;->targetViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",needAnim:"

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",curChildCount:"

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",targetWidth:"

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v0, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandCenterLayoutAnimHelper;->targetWidth:I

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",oldPaddingLR:"

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v0, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandCenterLayoutAnimHelper;->oldPaddingLR:I

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",newPaddingLR:"

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v0, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandCenterLayoutAnimHelper;->newPaddingLR:I

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v5, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface/range {p3 .. p3}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    xor-int/2addr v1, v8

    if-eqz v1, :cond_1f0

    iget-object v1, v0, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandCenterLayoutAnimHelper;->toBeAddViews:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v0, v3}, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandCenterLayoutAnimHelper;->startExpandReplaceAnim(Ljava/util/ArrayList;)Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v10, v1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    :cond_1f0
    invoke-direct {v0, v4}, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandCenterLayoutAnimHelper;->startAddNewItemInScreen(Z)V

    invoke-interface {v10}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_211

    if-eqz v4, :cond_20c

    iget-object v1, v0, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandCenterLayoutAnimHelper;->updateAnimatorSet:Landroid/animation/AnimatorSet;

    if-nez v1, :cond_200

    goto :goto_203

    :cond_200
    invoke-virtual {v1, v10}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    :goto_203
    iget-object v1, v0, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandCenterLayoutAnimHelper;->updateAnimatorSet:Landroid/animation/AnimatorSet;

    if-nez v1, :cond_208

    goto :goto_211

    :cond_208
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_211

    :cond_20c
    invoke-virtual {v0, v7}, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandCenterLayoutAnimHelper;->animationEnd(Z)V

    iput-boolean v7, v0, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandCenterLayoutAnimHelper;->isUpdatingWithOutAnimation:Z

    :cond_211
    :goto_211
    iget-object v1, v0, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandCenterLayoutAnimHelper;->updateAnimatorSet:Landroid/animation/AnimatorSet;

    if-nez v1, :cond_216

    goto :goto_21e

    :cond_216
    new-instance v2, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandCenterLayoutAnimHelper$startUpdateExpandItemAnimation$1;

    invoke-direct {v2, v0}, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandCenterLayoutAnimHelper$startUpdateExpandItemAnimation$1;-><init>(Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandCenterLayoutAnimHelper;)V

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :goto_21e
    return-void
.end method

.method public updateGridSize([Landroid/view/View;IZ)Z
    .registers 7

    const-string v0, "childView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "anim end to updateGridSize countX:"

    const-string v1, "Hotseat_expand"

    const-string v2, "OplusHotseatExpandCenterLayoutAnimHelper"

    invoke-static {p2, v0, v1, v2}, Lcom/android/launcher/g;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1, p2, p3}, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->updateGridSize([Landroid/view/View;IZ)Z

    move-result p0

    return p0
.end method
