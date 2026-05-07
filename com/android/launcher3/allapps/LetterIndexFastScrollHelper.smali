.class public final Lcom/android/launcher3/allapps/LetterIndexFastScrollHelper;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/coui/appcompat/touchsearchview/COUITouchSearchView$TouchSearchActionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/allapps/LetterIndexFastScrollHelper$Companion;
    }
.end annotation


# static fields
.field public static final ALPHABET_INDEX_BOTTOM:Ljava/lang/String; = "#"

.field public static final ALPHABET_INDEX_TOP:Ljava/lang/String; = "↑"

.field public static final Companion:Lcom/android/launcher3/allapps/LetterIndexFastScrollHelper$Companion;

.field public static final MINIMUM_NUMBER_OF_INDEXES:I = 0x4

.field public static final MIN_SMOOTH_SNAP_NEXT_FRAME_RUNNABLE_TIME:I = 0x1ae

.field private static final TAG:Ljava/lang/String; = "LetterIndexFastScrollHelper"

.field public static final TYPE_DOWN:I = 0x1

.field public static final TYPE_UP:I = 0x2


# instance fields
.field private mCanStartAnim:Z

.field private final mContainerView:Lcom/android/launcher3/allapps/OplusAllAppsContainerView;

.field private final mContext:Landroid/content/Context;

.field private final mFastScroller:Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;

.field private final mFastScrollerLayout:Landroid/view/View;

.field private final mHandleUpRunnable:Ljava/lang/Runnable;

.field private mLastDownTime:J

.field private final mParentRect:Landroid/graphics/Rect;

.field private final mScrollerRect:Landroid/graphics/Rect;

.field private mSectionName:Ljava/lang/String;

.field private mTouchSearchViewTouched:Z


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher3/allapps/LetterIndexFastScrollHelper$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/allapps/LetterIndexFastScrollHelper$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher3/allapps/LetterIndexFastScrollHelper;->Companion:Lcom/android/launcher3/allapps/LetterIndexFastScrollHelper$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/allapps/OplusAllAppsContainerView;)V
    .registers 5

    const-string v0, "mContainerView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/allapps/LetterIndexFastScrollHelper;->mContainerView:Lcom/android/launcher3/allapps/OplusAllAppsContainerView;

    const v0, 0x7f0a0191

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "mContainerView.findViewB…(R.id.coui_fast_scroller)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;

    iput-object v0, p0, Lcom/android/launcher3/allapps/LetterIndexFastScrollHelper;->mFastScroller:Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;

    const v1, 0x7f0a0192

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const-string v2, "mContainerView.findViewB…oui_fast_scroller_layout)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/launcher3/allapps/LetterIndexFastScrollHelper;->mFastScrollerLayout:Landroid/view/View;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v1, "mContainerView.context"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/launcher3/allapps/LetterIndexFastScrollHelper;->mContext:Landroid/content/Context;

    const-string p1, ""

    iput-object p1, p0, Lcom/android/launcher3/allapps/LetterIndexFastScrollHelper;->mSectionName:Ljava/lang/String;

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/allapps/LetterIndexFastScrollHelper;->mParentRect:Landroid/graphics/Rect;

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/allapps/LetterIndexFastScrollHelper;->mScrollerRect:Landroid/graphics/Rect;

    new-instance p1, Landroidx/constraintlayout/helper/widget/a;

    invoke-direct {p1, p0}, Landroidx/constraintlayout/helper/widget/a;-><init>(Lcom/android/launcher3/allapps/LetterIndexFastScrollHelper;)V

    iput-object p1, p0, Lcom/android/launcher3/allapps/LetterIndexFastScrollHelper;->mHandleUpRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->setTouchSearchActionListener(Lcom/coui/appcompat/touchsearchview/COUITouchSearchView$TouchSearchActionListener;)V

    new-instance p1, Lcom/android/launcher3/allapps/i;

    invoke-direct {p1, p0}, Lcom/android/launcher3/allapps/i;-><init>(Lcom/android/launcher3/allapps/LetterIndexFastScrollHelper;)V

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->hasLargeDisplayFeatures()Z

    move-result p1

    if-nez p1, :cond_60

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/LetterIndexFastScrollHelper;->updateFastScrollerMargin()V

    :cond_60
    return-void
.end method

.method private static final _init_$lambda-2(Lcom/android/launcher3/allapps/LetterIndexFastScrollHelper;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 6

    const-string/jumbo p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    if-nez p1, :cond_50

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const-string p2, "LetterIndexFastScrollHelper"

    const/4 v0, 0x1

    if-eqz p1, :cond_43

    if-eq p1, v0, :cond_1f

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1f

    goto :goto_50

    :cond_1f
    const-string p1, "ACTION_UP"

    invoke-static {p2, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    iget-wide v0, p0, Lcom/android/launcher3/allapps/LetterIndexFastScrollHelper;->mLastDownTime:J

    sub-long/2addr p1, v0

    const-wide/16 v0, 0x1ae

    cmp-long v0, p1, v0

    if-gez v0, :cond_3f

    invoke-direct {p0}, Lcom/android/launcher3/allapps/LetterIndexFastScrollHelper;->getActiveRecyclerView()Lcom/android/launcher3/allapps/OplusAllAppsRecyclerView;

    move-result-object v0

    iget-object p0, p0, Lcom/android/launcher3/allapps/LetterIndexFastScrollHelper;->mHandleUpRunnable:Ljava/lang/Runnable;

    const/16 v1, 0x1ae

    int-to-long v1, v1

    sub-long/2addr v1, p1

    invoke-virtual {v0, p0, v1, v2}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_50

    :cond_3f
    invoke-direct {p0}, Lcom/android/launcher3/allapps/LetterIndexFastScrollHelper;->handleUpEvent()V

    goto :goto_50

    :cond_43
    iput-boolean v0, p0, Lcom/android/launcher3/allapps/LetterIndexFastScrollHelper;->mTouchSearchViewTouched:Z

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/launcher3/allapps/LetterIndexFastScrollHelper;->mLastDownTime:J

    const-string p0, "ACTION_DOWN"

    invoke-static {p2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_50
    :goto_50
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic a(Lcom/android/launcher3/allapps/LetterIndexFastScrollHelper;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/launcher3/allapps/LetterIndexFastScrollHelper;->_init_$lambda-2(Lcom/android/launcher3/allapps/LetterIndexFastScrollHelper;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic b(Lcom/android/launcher3/allapps/LetterIndexFastScrollHelper;)V
    .registers 1

    invoke-static {p0}, Lcom/android/launcher3/allapps/LetterIndexFastScrollHelper;->mHandleUpRunnable$lambda-0(Lcom/android/launcher3/allapps/LetterIndexFastScrollHelper;)V

    return-void
.end method

.method private final getActiveRecyclerView()Lcom/android/launcher3/allapps/OplusAllAppsRecyclerView;
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/allapps/LetterIndexFastScrollHelper;->mContainerView:Lcom/android/launcher3/allapps/OplusAllAppsContainerView;

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/OplusAllAppsContainerView;->getActiveRecyclerView()Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    move-result-object p0

    const-string/jumbo v0, "null cannot be cast to non-null type com.android.launcher3.allapps.OplusAllAppsRecyclerView"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/allapps/OplusAllAppsRecyclerView;

    return-object p0
.end method

.method private final getFastScrollerVisibility(Ljava/lang/Integer;)I
    .registers 5

    sget-object v0, Lcom/android/launcher3/InvariantDeviceProfile;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object v1, p0, Lcom/android/launcher3/allapps/LetterIndexFastScrollHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/OplusInvariantDeviceProfile;

    iget-object v1, p0, Lcom/android/launcher3/allapps/LetterIndexFastScrollHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/InvariantDeviceProfile;->getDeviceProfile(Landroid/content/Context;)Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/launcher3/DeviceProfile;->isLandscape:Z

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-nez v0, :cond_5b

    iget-object v0, p0, Lcom/android/launcher3/allapps/LetterIndexFastScrollHelper;->mContainerView:Lcom/android/launcher3/allapps/OplusAllAppsContainerView;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->getApps()Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->inSearch()Z

    move-result v0

    if-nez v0, :cond_5b

    iget-object v0, p0, Lcom/android/launcher3/allapps/LetterIndexFastScrollHelper;->mContainerView:Lcom/android/launcher3/allapps/OplusAllAppsContainerView;

    iget-boolean v0, v0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mUsingTabs:Z

    if-nez v0, :cond_5b

    if-nez p1, :cond_33

    iget-object p1, p0, Lcom/android/launcher3/allapps/LetterIndexFastScrollHelper;->mContext:Landroid/content/Context;

    const-string v0, "draw_app_sort_rule_key"

    invoke-static {p1, v0, v2}, Lcom/android/common/util/LauncherSharedPrefs;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p1

    goto :goto_37

    :cond_33
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    :goto_37
    if-nez p1, :cond_5b

    invoke-static {}, Lcom/android/launcher3/allapps/branch/BranchManager;->featureAndRusSupport()Z

    move-result p1

    if-eqz p1, :cond_5a

    iget-object p1, p0, Lcom/android/launcher3/allapps/LetterIndexFastScrollHelper;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/launcher3/allapps/branch/BranchManager;->launcherSupport(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_5a

    iget-object p0, p0, Lcom/android/launcher3/allapps/LetterIndexFastScrollHelper;->mContainerView:Lcom/android/launcher3/allapps/OplusAllAppsContainerView;

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->getApps()Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    move-result-object p0

    instance-of p1, p0, Lcom/android/launcher3/allapps/OplusAlphabeticalAppsList;

    if-eqz p1, :cond_5a

    check-cast p0, Lcom/android/launcher3/allapps/OplusAlphabeticalAppsList;

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/OplusAlphabeticalAppsList;->hasBranchSearchResults()Z

    move-result p0

    if-eqz p0, :cond_5a

    goto :goto_5b

    :cond_5a
    move v1, v2

    :cond_5b
    :goto_5b
    return v1
.end method

.method private final getPos(Ljava/lang/CharSequence;)I
    .registers 6

    invoke-direct {p0}, Lcom/android/launcher3/allapps/LetterIndexFastScrollHelper;->getActiveRecyclerView()Lcom/android/launcher3/allapps/OplusAllAppsRecyclerView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getApps()Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->getFastScrollerSections()Ljava/util/List;

    move-result-object p0

    const-string v0, "getActiveRecyclerView().apps.fastScrollerSections"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ge v1, v0, :cond_2e

    :goto_18
    add-int/lit8 v2, v1, 0x1

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/allapps/AlphabeticalAppsList$FastScrollSectionInfo;

    iget-object v3, v3, Lcom/android/launcher3/allapps/AlphabeticalAppsList$FastScrollSectionInfo;->sectionName:Ljava/lang/String;

    invoke-static {v3, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_29

    goto :goto_2f

    :cond_29
    if-lt v2, v0, :cond_2c

    goto :goto_2e

    :cond_2c
    move v1, v2

    goto :goto_18

    :cond_2e
    :goto_2e
    const/4 v1, -0x1

    :goto_2f
    return v1
.end method

.method private final getSection(Ljava/lang/CharSequence;)Ljava/lang/String;
    .registers 6

    invoke-direct {p0}, Lcom/android/launcher3/allapps/LetterIndexFastScrollHelper;->getActiveRecyclerView()Lcom/android/launcher3/allapps/OplusAllAppsRecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getApps()Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->getNumAppRows()I

    move-result v0

    const-string v1, ""

    if-nez v0, :cond_11

    return-object v1

    :cond_11
    const-string/jumbo v0, "↑"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1c

    goto :goto_34

    :cond_1c
    const-string v0, "*"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    goto :goto_34

    :cond_25
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_2d

    const/4 v0, 0x1

    goto :goto_2e

    :cond_2d
    move v0, v2

    :goto_2e
    if-eqz v0, :cond_34

    invoke-direct {p0, p1}, Lcom/android/launcher3/allapps/LetterIndexFastScrollHelper;->getPos(Ljava/lang/CharSequence;)I

    move-result v2

    :cond_34
    :goto_34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSection key = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "  pos = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "LetterIndexFastScrollHelper"

    invoke-static {v0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-ltz v2, :cond_83

    invoke-direct {p0}, Lcom/android/launcher3/allapps/LetterIndexFastScrollHelper;->getActiveRecyclerView()Lcom/android/launcher3/allapps/OplusAllAppsRecyclerView;

    move-result-object p1

    iget-object v0, p0, Lcom/android/launcher3/allapps/LetterIndexFastScrollHelper;->mHandleUpRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    invoke-direct {p0}, Lcom/android/launcher3/allapps/LetterIndexFastScrollHelper;->getActiveRecyclerView()Lcom/android/launcher3/allapps/OplusAllAppsRecyclerView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getApps()Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->getFastScrollerSections()Ljava/util/List;

    move-result-object p1

    const-string v0, "getActiveRecyclerView().apps.fastScrollerSections"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/allapps/AlphabeticalAppsList$FastScrollSectionInfo;

    invoke-direct {p0}, Lcom/android/launcher3/allapps/LetterIndexFastScrollHelper;->getActiveRecyclerView()Lcom/android/launcher3/allapps/OplusAllAppsRecyclerView;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/allapps/OplusAllAppsRecyclerView;->injectScrollToPositionAtProgress(Lcom/android/launcher3/allapps/AlphabeticalAppsList$FastScrollSectionInfo;)V

    iget-object p0, p1, Lcom/android/launcher3/allapps/AlphabeticalAppsList$FastScrollSectionInfo;->sectionName:Ljava/lang/String;

    const-string p1, "lastInfo.sectionName"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_83
    const/4 p1, -0x1

    if-ne v2, p1, :cond_96

    invoke-direct {p0}, Lcom/android/launcher3/allapps/LetterIndexFastScrollHelper;->getActiveRecyclerView()Lcom/android/launcher3/allapps/OplusAllAppsRecyclerView;

    move-result-object p1

    iget-object v0, p0, Lcom/android/launcher3/allapps/LetterIndexFastScrollHelper;->mHandleUpRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    invoke-direct {p0}, Lcom/android/launcher3/allapps/LetterIndexFastScrollHelper;->getActiveRecyclerView()Lcom/android/launcher3/allapps/OplusAllAppsRecyclerView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->onFastScrollCompleted()V

    :cond_96
    return-object v1
.end method

.method private final handleUpEvent()V
    .registers 3

    const-string v0, "LetterIndexFastScrollHelper"

    const-string v1, "handleUpEvent "

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/allapps/LetterIndexFastScrollHelper;->mTouchSearchViewTouched:Z

    invoke-direct {p0}, Lcom/android/launcher3/allapps/LetterIndexFastScrollHelper;->getActiveRecyclerView()Lcom/android/launcher3/allapps/OplusAllAppsRecyclerView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/OplusAllAppsRecyclerView;->onFastScrollComplete()V

    return-void
.end method

.method private final isLocaleZhOrEn()Z
    .registers 3

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p0

    const-string v0, "en"

    const/4 v1, 0x1

    invoke-static {v0, p0, v1}, Lp3/h;->h(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1c

    const-string/jumbo v0, "zh"

    invoke-static {v0, p0, v1}, Lp3/h;->h(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_1b

    goto :goto_1c

    :cond_1b
    const/4 v1, 0x0

    :cond_1c
    :goto_1c
    return v1
.end method

.method private static final mHandleUpRunnable$lambda-0(Lcom/android/launcher3/allapps/LetterIndexFastScrollHelper;)V
    .registers 2

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/launcher3/allapps/LetterIndexFastScrollHelper;->handleUpEvent()V

    return-void
.end method


# virtual methods
.method public final canStartAnim()Z
    .registers 4

    iget-boolean v0, p0, Lcom/android/launcher3/allapps/LetterIndexFastScrollHelper;->mCanStartAnim:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_14

    iget-object p0, p0, Lcom/android/launcher3/allapps/LetterIndexFastScrollHelper;->mFastScroller:Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p0

    if-nez p0, :cond_10

    move p0, v1

    goto :goto_11

    :cond_10
    move p0, v2

    :goto_11
    if-eqz p0, :cond_14

    goto :goto_15

    :cond_14
    move v1, v2

    :goto_15
    return v1
.end method

.method public final getFastScroller()Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/allapps/LetterIndexFastScrollHelper;->mFastScroller:Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;

    return-object p0
.end method

.method public final getSectionName()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/allapps/LetterIndexFastScrollHelper;->mSectionName:Ljava/lang/String;

    return-object p0
.end method

.method public final isHitInFastScroller(Landroid/view/MotionEvent;)Z
    .registers 4

    const-string v0, "ev"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/allapps/LetterIndexFastScrollHelper;->mFastScroller:Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;

    iget-object v1, p0, Lcom/android/launcher3/allapps/LetterIndexFastScrollHelper;->mScrollerRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    iget-object p0, p0, Lcom/android/launcher3/allapps/LetterIndexFastScrollHelper;->mScrollerRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p0, v0, p1}, Landroid/graphics/Rect;->contains(II)Z

    move-result p0

    return p0
.end method

.method public final isHitInParent(Landroid/view/MotionEvent;)Z
    .registers 4

    const-string v0, "ev"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/allapps/LetterIndexFastScrollHelper;->mFastScrollerLayout:Landroid/view/View;

    iget-object v1, p0, Lcom/android/launcher3/allapps/LetterIndexFastScrollHelper;->mParentRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    iget-object p0, p0, Lcom/android/launcher3/allapps/LetterIndexFastScrollHelper;->mParentRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p0, v0, p1}, Landroid/graphics/Rect;->contains(II)Z

    move-result p0

    return p0
.end method

.method public final isSearchViewTouched()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher3/allapps/LetterIndexFastScrollHelper;->mTouchSearchViewTouched:Z

    return p0
.end method

.method public onKey(Ljava/lang/CharSequence;)V
    .registers 3

    const-string v0, "charSequence"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/launcher3/allapps/LetterIndexFastScrollHelper;->getSection(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/android/launcher3/allapps/LetterIndexFastScrollHelper;->mSectionName:Ljava/lang/String;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1f

    iput-object p1, p0, Lcom/android/launcher3/allapps/LetterIndexFastScrollHelper;->mSectionName:Ljava/lang/String;

    const-string v0, ""

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1f

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/allapps/LetterIndexFastScrollHelper;->setCanStartAnim(Z)V

    :cond_1f
    return-void
.end method

.method public onLongKey(Ljava/lang/CharSequence;)V
    .registers 2

    const-string p0, "charSequence"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p0, "onLongKey "

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "LetterIndexFastScrollHelper"

    invoke-static {p1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onNameClick(Ljava/lang/CharSequence;)V
    .registers 2

    const-string p0, "charSequence"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p0, "onNameClick "

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "LetterIndexFastScrollHelper"

    invoke-static {p1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final reset()V
    .registers 3

    const-string v0, "LetterIndexFastScrollHelper"

    const-string/jumbo v1, "reset "

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/allapps/LetterIndexFastScrollHelper;->setCanStartAnim(Z)V

    iget-object v1, p0, Lcom/android/launcher3/allapps/LetterIndexFastScrollHelper;->mFastScroller:Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;

    invoke-virtual {v1}, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->closing()V

    const-string v1, ""

    iput-object v1, p0, Lcom/android/launcher3/allapps/LetterIndexFastScrollHelper;->mSectionName:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/android/launcher3/allapps/LetterIndexFastScrollHelper;->mTouchSearchViewTouched:Z

    return-void
.end method

.method public final setCanStartAnim(Z)V
    .registers 4

    const-string/jumbo v0, "setCanStartAnim "

    const-string v1, "LetterIndexFastScrollHelper"

    invoke-static {p1, v0, v1}, Lcom/android/common/config/c;->a(ZLjava/lang/String;Ljava/lang/String;)V

    iput-boolean p1, p0, Lcom/android/launcher3/allapps/LetterIndexFastScrollHelper;->mCanStartAnim:Z

    return-void
.end method

.method public final updateFastScrollerMargin()V
    .registers 5

    iget-object v0, p0, Lcom/android/launcher3/allapps/LetterIndexFastScrollHelper;->mFastScroller:Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const-string/jumbo v1, "null cannot be cast to non-null type android.widget.FrameLayout.LayoutParams"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v2, p0, Lcom/android/launcher3/allapps/LetterIndexFastScrollHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0700fa

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    const/16 v2, 0x50

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object p0, p0, Lcom/android/launcher3/allapps/LetterIndexFastScrollHelper;->mFastScroller:Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final updateFastScrollerVisibility()V
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/allapps/LetterIndexFastScrollHelper;->updateFastScrollerVisibility(Ljava/lang/Integer;)V

    return-void
.end method

.method public final updateFastScrollerVisibility(Ljava/lang/Integer;)V
    .registers 4

    invoke-direct {p0, p1}, Lcom/android/launcher3/allapps/LetterIndexFastScrollHelper;->getFastScrollerVisibility(Ljava/lang/Integer;)I

    move-result p1

    iget-object v0, p0, Lcom/android/launcher3/allapps/LetterIndexFastScrollHelper;->mFastScroller:Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    iget-object v1, p0, Lcom/android/launcher3/allapps/LetterIndexFastScrollHelper;->mFastScroller:Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;

    invoke-virtual {v1, p1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/LetterIndexFastScrollHelper;->updateSortKeys()V

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->hasLargeDisplayFeatures()Z

    move-result p1

    if-nez p1, :cond_2d

    iget-object p1, p0, Lcom/android/launcher3/allapps/LetterIndexFastScrollHelper;->mFastScroller:Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-eq p1, v0, :cond_2d

    iget-object p0, p0, Lcom/android/launcher3/allapps/LetterIndexFastScrollHelper;->mContainerView:Lcom/android/launcher3/allapps/OplusAllAppsContainerView;

    iget-object p1, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mActivityContext:Landroid/content/Context;

    check-cast p1, Lcom/android/launcher3/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/allapps/OplusAllAppsContainerView;->applyAdapterPaddings(Lcom/android/launcher3/DeviceProfile;)V

    :cond_2d
    return-void
.end method

.method public final updateScrollerColor()V
    .registers 9

    :try_start_0
    iget-object v0, p0, Lcom/android/launcher3/allapps/LetterIndexFastScrollHelper;->mFastScroller:Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080524

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/allapps/LetterIndexFastScrollHelper;->mContext:Landroid/content/Context;

    const v2, 0x7f0401f0

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/coui/appcompat/contextutil/COUIContextUtil;->b(Landroid/content/Context;II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    iget-object v2, p0, Lcom/android/launcher3/allapps/LetterIndexFastScrollHelper;->mFastScroller:Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;

    invoke-virtual {v2, v0}, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->setFirstKeyPopupDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/android/launcher3/allapps/LetterIndexFastScrollHelper;->mFastScroller:Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f060054

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->setPopupWindowTextColor(I)V

    new-instance v0, Landroid/content/res/ColorStateList;

    const/4 v2, 0x2

    new-array v4, v2, [[I

    const/4 v5, 0x1

    new-array v6, v5, [I

    const v7, 0x10100a7

    aput v7, v6, v3

    aput-object v6, v4, v3

    new-array v6, v5, [I

    const v7, 0x101009e

    aput v7, v6, v3

    aput-object v6, v4, v5

    new-array v2, v2, [I

    aput v1, v2, v3

    iget-object v1, p0, Lcom/android/launcher3/allapps/LetterIndexFastScrollHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f06035e

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    aput v1, v2, v5

    invoke-direct {v0, v4, v2}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    iget-object v1, p0, Lcom/android/launcher3/allapps/LetterIndexFastScrollHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v1

    if-eqz v1, :cond_77

    iget-object p0, p0, Lcom/android/launcher3/allapps/LetterIndexFastScrollHelper;->mFastScroller:Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->setCharTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_8a

    :cond_77
    iget-object p0, p0, Lcom/android/launcher3/allapps/LetterIndexFastScrollHelper;->mFastScroller:Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->setDefaultTextColor(Landroid/content/res/ColorStateList;)V
    :try_end_7c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7c} :catch_7d

    goto :goto_8a

    :catch_7d
    move-exception p0

    const-string/jumbo v0, "updateScrollerColor error "

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "LetterIndexFastScrollHelper"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_8a
    return-void
.end method

.method public final updateSortKeys()V
    .registers 4

    invoke-direct {p0}, Lcom/android/launcher3/allapps/LetterIndexFastScrollHelper;->isLocaleZhOrEn()Z

    move-result v0

    if-nez v0, :cond_44

    iget-object v0, p0, Lcom/android/launcher3/allapps/LetterIndexFastScrollHelper;->mFastScroller:Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_44

    iget-object v0, p0, Lcom/android/launcher3/allapps/LetterIndexFastScrollHelper;->mContainerView:Lcom/android/launcher3/allapps/OplusAllAppsContainerView;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->getApps()Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    move-result-object v0

    const-string/jumbo v1, "null cannot be cast to non-null type com.android.launcher3.allapps.OplusAlphabeticalAppsList<@[FlexibleNullability] com.android.launcher3.Launcher?>"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/allapps/OplusAlphabeticalAppsList;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/OplusAlphabeticalAppsList;->getIndexSortArray()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x4

    if-le v1, v2, :cond_3f

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    const-string/jumbo v1, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, [Ljava/lang/String;

    iget-object p0, p0, Lcom/android/launcher3/allapps/LetterIndexFastScrollHelper;->mFastScroller:Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->setKeys([Ljava/lang/String;)V

    goto :goto_44

    :cond_3f
    iget-object p0, p0, Lcom/android/launcher3/allapps/LetterIndexFastScrollHelper;->mFastScroller:Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;

    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_44
    :goto_44
    return-void
.end method
