.class public final Lcom/android/launcher3/widget/WidgetSheetBehavior;
.super Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/widget/WidgetSheetBehavior$Companion;,
        Lcom/android/launcher3/widget/WidgetSheetBehavior$SettleRunnable;,
        Lcom/android/launcher3/widget/WidgetSheetBehavior$SavedState;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Landroid/view/View;",
        ">",
        "Lcom/coui/appcompat/panel/COUIBottomSheetBehavior<",
        "TV;>;"
    }
.end annotation


# static fields
.field private static final CORNER_ANIMATION_DURATION:I = 0x1f4

.field public static final Companion:Lcom/android/launcher3/widget/WidgetSheetBehavior$Companion;

.field private static final HIDE_FRICTION:F = 0.1f

.field private static final HIDE_THRESHOLD:F = 0.5f

.field private static final NO_WIDTH:I = -0x1

.field private static final SIGNIFICANT_VEL_THRESHOLD:I = 0x1f4

.field private static final TAG:Ljava/lang/String; = "WidgetSheetBehavior"


# instance fields
.field private activePointerId:I

.field private final callbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/android/material/bottomsheet/BottomSheetBehavior$BottomSheetCallback;",
            ">;"
        }
    .end annotation
.end field

.field private childHeight:I

.field private collapsedOffset:I

.field private final dragCallback:Landroidx/customview/widget/ViewDragHelper$Callback;

.field private draggable:Z

.field private elevation:F

.field private expandHalfwayActionId:I

.field private fitToContents:Z

.field private fitToContentsOffset:I

.field private gestureInsetBottom:I

.field private gestureInsetBottomIgnored:Z

.field private halfExpandedOffset:I

.field private ignoreEvents:Z

.field private importantForAccessibilityMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private initialY:I

.field private insetBottom:I

.field private insetTop:I

.field private interpolatorAnimator:Landroid/animation/ValueAnimator;

.field private isShapeExpanded:Z

.field private lastNestedScrollDy:I

.field private mDividerManager:Lcom/android/launcher/behavior/DividerManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher/behavior/DividerManager<",
            "Lcom/google/android/material/appbar/AppBarLayout;",
            ">;"
        }
    .end annotation
.end field

.field private mExpandedOffset:I

.field private mHalfExpandedRatio:F

.field private mHideable:Z

.field private mPeekHeight:I

.field private mState:I

.field private final materialShapeDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

.field private maxWidth:I

.field private final maximumVelocity:F

.field private nestedScrolled:Z

.field private nestedScrollingChildRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final paddingBottomSystemWindowInsets:Z

.field private final paddingLeftSystemWindowInsets:Z

.field private final paddingRightSystemWindowInsets:Z

.field private final paddingTopSystemWindowInsets:Z

.field private parentHeight:I

.field private parentWidth:I

.field private peekHeightAuto:Z

.field private final peekHeightGestureInsetBuffer:I

.field private peekHeightMin:I

.field private saveFlags:I

.field private settleRunnable:Lcom/android/launcher3/widget/WidgetSheetBehavior$SettleRunnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/widget/WidgetSheetBehavior<",
            "TV;>.SettleRunnable;"
        }
    .end annotation
.end field

.field private shapeAppearanceModelDefault:Lcom/google/android/material/shape/ShapeAppearanceModel;

.field private final shapeThemingEnabled:Z

.field private skipCollapsed:Z

.field private touchingScrollingChild:Z

.field private updateImportantForAccessibilityOnSiblings:Z

.field private velocityTracker:Landroid/view/VelocityTracker;

.field private viewDragHelper:Landroidx/customview/widget/ViewDragHelper;

.field private viewRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher3/widget/WidgetSheetBehavior$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/widget/WidgetSheetBehavior$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher3/widget/WidgetSheetBehavior;->Companion:Lcom/android/launcher3/widget/WidgetSheetBehavior$Companion;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    invoke-direct {p0}, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior;->fitToContents:Z

    const/4 v1, -0x1

    iput v1, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior;->maxWidth:I

    const/high16 v2, 0x3f000000  # 0.5f

    iput v2, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior;->mHalfExpandedRatio:F

    const/high16 v2, -0x40800000  # -1.0f

    iput v2, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior;->elevation:F

    iput-boolean v0, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior;->draggable:Z

    const/4 v0, 0x4

    iput v0, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior;->mState:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior;->callbacks:Ljava/util/ArrayList;

    iput v1, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior;->expandHalfwayActionId:I

    new-instance v0, Lcom/android/launcher3/widget/WidgetSheetBehavior$dragCallback$1;

    invoke-direct {v0, p0}, Lcom/android/launcher3/widget/WidgetSheetBehavior$dragCallback$1;-><init>(Lcom/android/launcher3/widget/WidgetSheetBehavior;)V

    iput-object v0, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior;->dragCallback:Landroidx/customview/widget/ViewDragHelper$Callback;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attrs"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior;->fitToContents:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior;->maxWidth:I

    const/high16 v1, 0x3f000000  # 0.5f

    iput v1, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior;->mHalfExpandedRatio:F

    const/high16 v1, -0x40800000  # -1.0f

    iput v1, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior;->elevation:F

    iput-boolean p2, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior;->draggable:Z

    const/4 p2, 0x4

    iput p2, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior;->mState:I

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior;->callbacks:Ljava/util/ArrayList;

    iput v0, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior;->expandHalfwayActionId:I

    new-instance p2, Lcom/android/launcher3/widget/WidgetSheetBehavior$dragCallback$1;

    invoke-direct {p2, p0}, Lcom/android/launcher3/widget/WidgetSheetBehavior$dragCallback$1;-><init>(Lcom/android/launcher3/widget/WidgetSheetBehavior;)V

    iput-object p2, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior;->dragCallback:Landroidx/customview/widget/ViewDragHelper$Callback;

    new-instance p2, Lcom/android/launcher/behavior/DividerManager;

    invoke-direct {p2, p1}, Lcom/android/launcher/behavior/DividerManager;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior;->mDividerManager:Lcom/android/launcher/behavior/DividerManager;

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher3/widget/WidgetSheetBehavior;Landroid/view/View;I)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/launcher3/widget/WidgetSheetBehavior;->settleToStatePendingLayout$lambda-1(Lcom/android/launcher3/widget/WidgetSheetBehavior;Landroid/view/View;I)V

    return-void
.end method

.method public static final synthetic access$getDraggable$p(Lcom/android/launcher3/widget/WidgetSheetBehavior;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior;->draggable:Z

    return p0
.end method

.method public static final synthetic access$getFitToContents$p(Lcom/android/launcher3/widget/WidgetSheetBehavior;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior;->fitToContents:Z

    return p0
.end method

.method public static final synthetic access$getSkipCollapsed$p(Lcom/android/launcher3/widget/WidgetSheetBehavior;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior;->skipCollapsed:Z

    return p0
.end method

.method public static final synthetic access$setStateInternal(Lcom/android/launcher3/widget/WidgetSheetBehavior;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher3/widget/WidgetSheetBehavior;->setStateInternal(I)V

    return-void
.end method

.method private final addAccessibilityActionForState(Landroid/view/View;II)I
    .registers 5
    .param p2  # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;II)I"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p3}, Lcom/android/launcher3/widget/WidgetSheetBehavior;->createAccessibilityViewCommandForState(I)Landroidx/core/view/accessibility/AccessibilityViewCommand;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p1, p2, p0}, Landroidx/core/view/ViewCompat;->addAccessibilityAction(Landroid/view/View;Ljava/lang/CharSequence;Landroidx/core/view/accessibility/AccessibilityViewCommand;)I

    move-result p0

    return p0
.end method

.method public static synthetic b(Lcom/android/launcher3/widget/WidgetSheetBehavior;ZLandroid/view/View;Landroidx/core/view/WindowInsetsCompat;Lcom/google/android/material/internal/ViewUtils$RelativePadding;)Landroidx/core/view/WindowInsetsCompat;
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/launcher3/widget/WidgetSheetBehavior;->setWindowInsetsListener$lambda-2(Lcom/android/launcher3/widget/WidgetSheetBehavior;ZLandroid/view/View;Landroidx/core/view/WindowInsetsCompat;Lcom/google/android/material/internal/ViewUtils$RelativePadding;)Landroidx/core/view/WindowInsetsCompat;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher3/widget/WidgetSheetBehavior;->onLayoutChild$lambda-0(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private final calculateCollapsedOffset()V
    .registers 3

    invoke-direct {p0}, Lcom/android/launcher3/widget/WidgetSheetBehavior;->calculatePeekHeight()I

    move-result v0

    iget-boolean v1, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior;->fitToContents:Z

    if-eqz v1, :cond_14

    iget v1, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior;->parentHeight:I

    sub-int/2addr v1, v0

    iget v0, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior;->fitToContentsOffset:I

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior;->collapsedOffset:I

    goto :goto_19

    :cond_14
    iget v1, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior;->parentHeight:I

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior;->collapsedOffset:I

    :goto_19
    return-void
.end method

.method private final calculateHalfExpandedOffset()V
    .registers 4

    iget v0, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior;->parentHeight:I

    int-to-float v0, v0

    const/4 v1, 0x1

    int-to-float v1, v1

    iget v2, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior;->mHalfExpandedRatio:F

    sub-float/2addr v1, v2

    mul-float/2addr v1, v0

    float-to-int v0, v1

    iput v0, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior;->halfExpandedOffset:I

    return-void
.end method

.method private final calculatePeekHeight()I
    .registers 4

    iget-boolean v0, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior;->peekHeightAuto:Z

    if-eqz v0, :cond_1d

    iget v0, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior;->peekHeightMin:I

    iget v1, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior;->parentHeight:I

    iget v2, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior;->parentWidth:I

    mul-int/lit8 v2, v2, 0x9

    div-int/lit8 v2, v2, 0x10

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v1, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior;->childHeight:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget p0, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior;->insetBottom:I

    add-int/2addr v0, p0

    return v0

    :cond_1d
    iget-boolean v0, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior;->gestureInsetBottomIgnored:Z

    if-nez v0, :cond_33

    iget-boolean v0, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior;->paddingBottomSystemWindowInsets:Z

    if-nez v0, :cond_33

    iget v0, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior;->gestureInsetBottom:I

    if-lez v0, :cond_33

    iget v1, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior;->mPeekHeight:I

    iget p0, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior;->peekHeightGestureInsetBuffer:I

    add-int/2addr v0, p0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result p0

    goto :goto_38

    :cond_33
    iget v0, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior;->mPeekHeight:I

    iget p0, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior;->insetBottom:I

    add-int/2addr p0, v0

    :goto_38
    return p0
.end method

.method private final createAccessibilityViewCommandForState(I)Landroidx/core/view/accessibility/AccessibilityViewCommand;
    .registers 3

    new-instance v0, Lcom/android/launcher3/r1;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/r1;-><init>(Lcom/android/launcher3/widget/WidgetSheetBehavior;I)V

    return-object v0
.end method

.method private static final createAccessibilityViewCommandForState$lambda-3(Lcom/android/launcher3/widget/WidgetSheetBehavior;ILandroid/view/View;Landroidx/core/view/accessibility/AccessibilityViewCommand$CommandArguments;)Z
    .registers 4

    const-string/jumbo p3, "this$0"

    invoke-static {p0, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p3, "view"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/android/launcher3/widget/WidgetSheetBehavior;->setState(I)V

    const/4 p0, 0x1

    return p0
.end method

.method public static synthetic d(Lcom/android/launcher3/widget/WidgetSheetBehavior;ILandroid/view/View;Landroidx/core/view/accessibility/AccessibilityViewCommand$CommandArguments;)Z
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/android/launcher3/widget/WidgetSheetBehavior;->createAccessibilityViewCommandForState$lambda-3(Lcom/android/launcher3/widget/WidgetSheetBehavior;ILandroid/view/View;Landroidx/core/view/accessibility/AccessibilityViewCommand$CommandArguments;)Z

    move-result p0

    return p0
.end method

.method public static final from(Landroid/view/View;)Lcom/android/launcher3/widget/WidgetSheetBehavior;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Landroid/view/View;",
            ">(TV;)",
            "Lcom/android/launcher3/widget/WidgetSheetBehavior<",
            "TV;>;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/launcher3/widget/WidgetSheetBehavior;->Companion:Lcom/android/launcher3/widget/WidgetSheetBehavior$Companion;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/widget/WidgetSheetBehavior$Companion;->from(Landroid/view/View;)Lcom/android/launcher3/widget/WidgetSheetBehavior;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic getMState$annotations()V
    .registers 0

    return-void
.end method

.method private final getYVelocity()F
    .registers 4

    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior;->velocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return p0

    :cond_6
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/16 v1, 0x3e8

    iget v2, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior;->maximumVelocity:F

    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget p0, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior;->activePointerId:I

    invoke-virtual {v0, p0}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result p0

    return p0
.end method

.method private final isDraggingScrollChild(Landroid/view/View;Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/MotionEvent;)Z
    .registers 9

    instance-of p0, p1, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    if-nez p0, :cond_6

    return v0

    :cond_6
    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p0

    if-lez p0, :cond_44

    move v1, v0

    :goto_f
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const-string v3, "getChildAt(index)"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const v3, 0x7f0a05e8

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    if-nez v1, :cond_26

    goto :goto_3f

    :cond_26
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p2, v1, v3, v4}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->isPointInChildBounds(Landroid/view/View;II)Z

    move-result v3

    if-nez v3, :cond_37

    goto :goto_3f

    :cond_37
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getScrollState()I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_3f

    return v3

    :cond_3f
    :goto_3f
    if-lt v2, p0, :cond_42

    goto :goto_44

    :cond_42
    move v1, v2

    goto :goto_f

    :cond_44
    :goto_44
    return v0
.end method

.method private static final onLayoutChild$lambda-0(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 3

    const-string v0, "$child"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private final replaceAccessibilityActionForState(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;",
            "Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;",
            "I)V"
        }
    .end annotation

    invoke-direct {p0, p3}, Lcom/android/launcher3/widget/WidgetSheetBehavior;->createAccessibilityViewCommandForState(I)Landroidx/core/view/accessibility/AccessibilityViewCommand;

    move-result-object p0

    const/4 p3, 0x0

    invoke-static {p1, p2, p3, p0}, Landroidx/core/view/ViewCompat;->replaceAccessibilityAction(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;Ljava/lang/CharSequence;Landroidx/core/view/accessibility/AccessibilityViewCommand;)V

    return-void
.end method

.method private final reset()V
    .registers 2

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior;->activePointerId:I

    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior;->velocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_10

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior;->velocityTracker:Landroid/view/VelocityTracker;

    :cond_10
    return-void
.end method

.method private final restoreOptionalState(Lcom/android/launcher3/widget/WidgetSheetBehavior$SavedState;)V
    .registers 5

    iget v0, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior;->saveFlags:I

    if-nez v0, :cond_5

    return-void

    :cond_5
    const/4 v1, -0x1

    if-eq v0, v1, :cond_c

    const/4 v2, 0x1

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_12

    :cond_c
    invoke-virtual {p1}, Lcom/android/launcher3/widget/WidgetSheetBehavior$SavedState;->getPeekHeight()I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior;->mPeekHeight:I

    :cond_12
    iget v0, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior;->saveFlags:I

    if-eq v0, v1, :cond_1a

    const/4 v2, 0x2

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_20

    :cond_1a
    invoke-virtual {p1}, Lcom/android/launcher3/widget/WidgetSheetBehavior$SavedState;->getFitToContents()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior;->fitToContents:Z

    :cond_20
    iget v0, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior;->saveFlags:I

    if-eq v0, v1, :cond_28

    const/4 v2, 0x4

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_2e

    :cond_28
    invoke-virtual {p1}, Lcom/android/launcher3/widget/WidgetSheetBehavior$SavedState;->getHideable()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior;->mHideable:Z

    :cond_2e
    iget v0, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior;->saveFlags:I

    if-eq v0, v1, :cond_37

    const/16 v1, 0x8

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_3d

    :cond_37
    invoke-virtual {p1}, Lcom/android/launcher3/widget/WidgetSheetBehavior$SavedState;->getSkipCollapsed()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior;->skipCollapsed:Z

    :cond_3d
    return-void
.end method

.method private final setStateInternal(I)V
    .registers 7

    iget v0, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior;->mState:I

    if-ne v0, p1, :cond_5

    return-void

    :cond_5
    iput p1, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior;->mState:I

    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior;->viewRef:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_c

    return-void

    :cond_c
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_18

    return-void

    :cond_18
    const/4 v1, 0x3

    const/4 v2, 0x0

    if-eq p1, v1, :cond_2a

    const/4 v1, 0x4

    if-eq p1, v1, :cond_26

    const/4 v1, 0x5

    if-eq p1, v1, :cond_26

    const/4 v1, 0x6

    if-eq p1, v1, :cond_26

    goto :goto_2e

    :cond_26
    invoke-direct {p0, v2}, Lcom/android/launcher3/widget/WidgetSheetBehavior;->updateImportantForAccessibility(Z)V

    goto :goto_2e

    :cond_2a
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/launcher3/widget/WidgetSheetBehavior;->updateImportantForAccessibility(Z)V

    :goto_2e
    invoke-direct {p0, p1}, Lcom/android/launcher3/widget/WidgetSheetBehavior;->updateDrawableForTargetState(I)V

    iget-object v1, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior;->callbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_4d

    :goto_3b
    add-int/lit8 v3, v2, 0x1

    iget-object v4, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior;->callbacks:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$BottomSheetCallback;

    invoke-virtual {v2, v0, p1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$BottomSheetCallback;->onStateChanged(Landroid/view/View;I)V

    if-le v3, v1, :cond_4b

    goto :goto_4d

    :cond_4b
    move v2, v3

    goto :goto_3b

    :cond_4d
    :goto_4d
    invoke-direct {p0}, Lcom/android/launcher3/widget/WidgetSheetBehavior;->updateAccessibilityActions()V

    return-void
.end method

.method private final setWindowInsetsListener(Landroid/view/View;)V
    .registers 4

    invoke-virtual {p0}, Lcom/android/launcher3/widget/WidgetSheetBehavior;->isGestureInsetBottomIgnored()Z

    move-result v0

    if-nez v0, :cond_c

    iget-boolean v0, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior;->peekHeightAuto:Z

    if-nez v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    iget-boolean v1, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior;->paddingBottomSystemWindowInsets:Z

    if-nez v1, :cond_1c

    iget-boolean v1, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior;->paddingLeftSystemWindowInsets:Z

    if-nez v1, :cond_1c

    iget-boolean v1, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior;->paddingRightSystemWindowInsets:Z

    if-nez v1, :cond_1c

    if-nez v0, :cond_1c

    return-void

    :cond_1c
    new-instance v1, Lcom/android/launcher3/widget/g;

    invoke-direct {v1, p0, v0}, Lcom/android/launcher3/widget/g;-><init>(Lcom/android/launcher3/widget/WidgetSheetBehavior;Z)V

    invoke-static {p1, v1}, Lcom/google/android/material/internal/ViewUtils;->doOnApplyWindowInsets(Landroid/view/View;Lcom/google/android/material/internal/ViewUtils$OnApplyWindowInsetsListener;)V

    return-void
.end method

.method private static final setWindowInsetsListener$lambda-2(Lcom/android/launcher3/widget/WidgetSheetBehavior;ZLandroid/view/View;Landroidx/core/view/WindowInsetsCompat;Lcom/google/android/material/internal/ViewUtils$RelativePadding;)Landroidx/core/view/WindowInsetsCompat;
    .registers 10

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p3}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetTop()I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior;->insetTop:I

    invoke-static {p2}, Lcom/google/android/material/internal/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v0

    invoke-virtual {p2}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    invoke-virtual {p2}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    invoke-virtual {p2}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    iget-boolean v4, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior;->paddingBottomSystemWindowInsets:Z

    if-eqz v4, :cond_29

    invoke-virtual {p3}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetBottom()I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior;->insetBottom:I

    iget v4, p4, Lcom/google/android/material/internal/ViewUtils$RelativePadding;->bottom:I

    add-int/2addr v1, v4

    :cond_29
    iget-boolean v4, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior;->paddingLeftSystemWindowInsets:Z

    if-eqz v4, :cond_39

    if-eqz v0, :cond_32

    iget v2, p4, Lcom/google/android/material/internal/ViewUtils$RelativePadding;->end:I

    goto :goto_34

    :cond_32
    iget v2, p4, Lcom/google/android/material/internal/ViewUtils$RelativePadding;->start:I

    :goto_34
    invoke-virtual {p3}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetLeft()I

    move-result v4

    add-int/2addr v2, v4

    :cond_39
    iget-boolean v4, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior;->paddingRightSystemWindowInsets:Z

    if-eqz v4, :cond_4a

    if-eqz v0, :cond_42

    iget p4, p4, Lcom/google/android/material/internal/ViewUtils$RelativePadding;->start:I

    goto :goto_44

    :cond_42
    iget p4, p4, Lcom/google/android/material/internal/ViewUtils$RelativePadding;->end:I

    :goto_44
    invoke-virtual {p3}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetRight()I

    move-result v0

    add-int v3, v0, p4

    :cond_4a
    invoke-virtual {p2}, Landroid/view/View;->getPaddingTop()I

    move-result p4

    invoke-virtual {p2, v2, p4, v3, v1}, Landroid/view/View;->setPadding(IIII)V

    if-eqz p1, :cond_5b

    invoke-virtual {p3}, Landroidx/core/view/WindowInsetsCompat;->getMandatorySystemGestureInsets()Landroidx/core/graphics/Insets;

    move-result-object p2

    iget p2, p2, Landroidx/core/graphics/Insets;->bottom:I

    iput p2, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior;->gestureInsetBottom:I

    :cond_5b
    iget-boolean p2, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior;->paddingBottomSystemWindowInsets:Z

    if-nez p2, :cond_61

    if-eqz p1, :cond_65

    :cond_61
    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/android/launcher3/widget/WidgetSheetBehavior;->updatePeekHeight(Z)V

    :cond_65
    return-object p3
.end method

.method private final settleToStatePendingLayout(I)V
    .registers 4

    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior;->viewRef:Ljava/lang/ref/WeakReference;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_e

    return-void

    :cond_e
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_29

    invoke-interface {v1}, Landroid/view/ViewParent;->isLayoutRequested()Z

    move-result v1

    if-eqz v1, :cond_29

    invoke-static {v0}, Landroidx/core/view/ViewCompat;->isAttachedToWindow(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_29

    new-instance v1, Lcom/android/launcher/badge/b;

    invoke-direct {v1, p0, v0, p1}, Lcom/android/launcher/badge/b;-><init>(Lcom/android/launcher3/widget/WidgetSheetBehavior;Landroid/view/View;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_2c

    :cond_29
    invoke-virtual {p0, v0, p1}, Lcom/android/launcher3/widget/WidgetSheetBehavior;->settleToState(Landroid/view/View;I)V

    :goto_2c
    return-void
.end method

.method private static final settleToStatePendingLayout$lambda-1(Lcom/android/launcher3/widget/WidgetSheetBehavior;Landroid/view/View;I)V
    .registers 4

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$child"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/widget/WidgetSheetBehavior;->settleToState(Landroid/view/View;I)V

    return-void
.end method

.method private final updateAccessibilityActions()V
    .registers 8

    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior;->viewRef:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_11

    return-void

    :cond_11
    const/high16 v1, 0x80000

    invoke-static {v0, v1}, Landroidx/core/view/ViewCompat;->removeAccessibilityAction(Landroid/view/View;I)V

    const/high16 v1, 0x40000

    invoke-static {v0, v1}, Landroidx/core/view/ViewCompat;->removeAccessibilityAction(Landroid/view/View;I)V

    const/high16 v1, 0x100000

    invoke-static {v0, v1}, Landroidx/core/view/ViewCompat;->removeAccessibilityAction(Landroid/view/View;I)V

    iget v1, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior;->expandHalfwayActionId:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_28

    invoke-static {v0, v1}, Landroidx/core/view/ViewCompat;->removeAccessibilityAction(Landroid/view/View;I)V

    :cond_28
    iget-boolean v1, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior;->mHideable:Z

    if-eqz v1, :cond_3b

    iget v1, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior;->mState:I

    const/4 v2, 0x5

    if-eq v1, v2, :cond_3b

    sget-object v1, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_DISMISS:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    const-string v3, "ACTION_DISMISS"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0, v1, v2}, Lcom/android/launcher3/widget/WidgetSheetBehavior;->replaceAccessibilityActionForState(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;I)V

    :cond_3b
    iget v1, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior;->mState:I

    const-string v2, "ACTION_COLLAPSE"

    const/4 v3, 0x6

    const/4 v4, 0x4

    const/4 v5, 0x3

    if-eq v1, v5, :cond_6a

    const-string v6, "ACTION_EXPAND"

    if-eq v1, v4, :cond_5c

    if-eq v1, v3, :cond_4b

    goto :goto_77

    :cond_4b
    sget-object v1, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_COLLAPSE:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0, v1, v4}, Lcom/android/launcher3/widget/WidgetSheetBehavior;->replaceAccessibilityActionForState(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;I)V

    sget-object v1, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_EXPAND:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0, v1, v5}, Lcom/android/launcher3/widget/WidgetSheetBehavior;->replaceAccessibilityActionForState(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;I)V

    goto :goto_77

    :cond_5c
    iget-boolean v1, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior;->fitToContents:Z

    if-eqz v1, :cond_61

    move v3, v5

    :cond_61
    sget-object v1, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_EXPAND:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0, v1, v3}, Lcom/android/launcher3/widget/WidgetSheetBehavior;->replaceAccessibilityActionForState(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;I)V

    goto :goto_77

    :cond_6a
    iget-boolean v1, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior;->fitToContents:Z

    if-eqz v1, :cond_6f

    move v3, v4

    :cond_6f
    sget-object v1, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_COLLAPSE:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0, v1, v3}, Lcom/android/launcher3/widget/WidgetSheetBehavior;->replaceAccessibilityActionForState(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;I)V

    :goto_77
    return-void
.end method

.method private final updateDrawableForTargetState(I)V
    .registers 7

    const/4 v0, 0x2

    if-ne p1, v0, :cond_4

    return-void

    :cond_4
    const/4 v1, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne p1, v1, :cond_b

    move p1, v2

    goto :goto_c

    :cond_b
    move p1, v3

    :goto_c
    iget-boolean v1, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior;->isShapeExpanded:Z

    if-eq v1, p1, :cond_4a

    iput-boolean p1, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior;->isShapeExpanded:Z

    iget-object v1, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior;->materialShapeDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    if-eqz v1, :cond_4a

    iget-object v1, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior;->interpolatorAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_4a

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_2c

    iget-object p0, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior;->interpolatorAnimator:Landroid/animation/ValueAnimator;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->reverse()V

    goto :goto_4a

    :cond_2c
    const/high16 v1, 0x3f800000  # 1.0f

    if-eqz p1, :cond_32

    const/4 p1, 0x0

    goto :goto_33

    :cond_32
    move p1, v1

    :goto_33
    sub-float/2addr v1, p1

    iget-object v4, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior;->interpolatorAnimator:Landroid/animation/ValueAnimator;

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-array v0, v0, [F

    aput v1, v0, v3

    aput p1, v0, v2

    invoke-virtual {v4, v0}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    iget-object p0, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior;->interpolatorAnimator:Landroid/animation/ValueAnimator;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    :cond_4a
    :goto_4a
    return-void
.end method

.method private final updateImportantForAccessibility(Z)V
    .registers 8

    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior;->viewRef:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v1, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    if-nez v1, :cond_1a

    return-void

    :cond_1a
    check-cast v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-eqz p1, :cond_2f

    iget-object v2, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior;->importantForAccessibilityMap:Ljava/util/HashMap;

    if-nez v2, :cond_2e

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v2, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior;->importantForAccessibilityMap:Ljava/util/HashMap;

    goto :goto_2f

    :cond_2e
    return-void

    :cond_2f
    :goto_2f
    const/4 v2, 0x0

    if-lez v1, :cond_92

    :goto_32
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iget-object v4, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior;->viewRef:Ljava/lang/ref/WeakReference;

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    if-ne v2, v4, :cond_44

    goto :goto_8d

    :cond_44
    if-eqz p1, :cond_62

    iget-object v4, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior;->importantForAccessibilityMap:Ljava/util/HashMap;

    if-nez v4, :cond_4b

    goto :goto_59

    :cond_4b
    invoke-virtual {v2}, Landroid/view/View;->getImportantForAccessibility()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    :goto_59
    iget-boolean v4, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior;->updateImportantForAccessibilityOnSiblings:Z

    if-eqz v4, :cond_8d

    const/4 v4, 0x4

    invoke-static {v2, v4}, Landroidx/core/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    goto :goto_8d

    :cond_62
    iget-boolean v4, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior;->updateImportantForAccessibilityOnSiblings:Z

    if-eqz v4, :cond_8d

    iget-object v4, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior;->importantForAccessibilityMap:Ljava/util/HashMap;

    if-eqz v4, :cond_8d

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8d

    iget-object v4, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior;->importantForAccessibilityMap:Ljava/util/HashMap;

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string v5, "importantForAccessibilityMap!![child])!!"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    invoke-static {v2, v4}, Landroidx/core/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    :cond_8d
    :goto_8d
    if-lt v3, v1, :cond_90

    goto :goto_92

    :cond_90
    move v2, v3

    goto :goto_32

    :cond_92
    :goto_92
    if-nez p1, :cond_98

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior;->importantForAccessibilityMap:Ljava/util/HashMap;

    goto :goto_af

    :cond_98
    iget-boolean p1, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior;->updateImportantForAccessibilityOnSiblings:Z

    if-eqz p1, :cond_af

    iget-object p0, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior;->viewRef:Ljava/lang/ref/WeakReference;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p0, Landroid/view/View;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    :cond_af
    :goto_af
    return-void
.end method

.method private final updatePeekHeight(Z)V
    .registers 4

    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior;->viewRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_24

    invoke-direct {p0}, Lcom/android/launcher3/widget/WidgetSheetBehavior;->calculateCollapsedOffset()V

    iget v0, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior;->mState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_24

    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior;->viewRef:Ljava/lang/ref/WeakReference;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_24

    if-eqz p1, :cond_21

    iget p1, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior;->mState:I

    invoke-direct {p0, p1}, Lcom/android/launcher3/widget/WidgetSheetBehavior;->settleToStatePendingLayout(I)V

    goto :goto_24

    :cond_21
    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    :cond_24
    :goto_24
    return-void
.end method


# virtual methods
.method public addBottomSheetCallback(Lcom/google/android/material/bottomsheet/BottomSheetBehavior$BottomSheetCallback;)V
    .registers 3

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior;->callbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    iget-object p0, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior;->callbacks:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_12
    return-void
.end method

.method public disableShapeAnimations()V
    .registers 2
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior;->interpolatorAnimator:Landroid/animation/ValueAnimator;

    return-void
.end method

.method public final dispatchOnSlide(I)V
    .registers 7

    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior;->viewRef:Ljava/lang/ref/WeakReference;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_53

    iget-object v1, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior;->callbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_53

    iget v1, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior;->collapsedOffset:I

    if-gt p1, v1, :cond_2c

    invoke-virtual {p0}, Lcom/android/launcher3/widget/WidgetSheetBehavior;->getExpandedOffset()I

    move-result v2

    if-ne v1, v2, :cond_20

    goto :goto_2c

    :cond_20
    iget v1, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior;->collapsedOffset:I

    sub-int p1, v1, p1

    int-to-float p1, p1

    invoke-virtual {p0}, Lcom/android/launcher3/widget/WidgetSheetBehavior;->getExpandedOffset()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    goto :goto_35

    :cond_2c
    :goto_2c
    iget v1, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior;->collapsedOffset:I

    sub-int p1, v1, p1

    int-to-float p1, p1

    iget v2, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior;->parentHeight:I

    sub-int/2addr v2, v1

    int-to-float v1, v2

    :goto_35
    div-float/2addr p1, v1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior;->callbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_53

    :goto_41
    add-int/lit8 v3, v1, 0x1

    iget-object v4, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior;->callbacks:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$BottomSheetCallback;

    invoke-virtual {v1, v0, p1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$BottomSheetCallback;->onSlide(Landroid/view/View;F)V

    if-le v3, v2, :cond_51

    goto :goto_53

    :cond_51
    move v1, v3

    goto :goto_41

    :cond_53
    :goto_53
    return-void
.end method

.method public final findScrollingChild(Landroid/view/View;)Landroid/view/View;
    .registers 5
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p1}, Landroidx/core/view/ViewCompat;->isNestedScrollingEnabled(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_a

    return-object p1

    :cond_a
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_25

    const/4 v0, 0x0

    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    :goto_15
    if-ge v0, v1, :cond_25

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/launcher3/widget/WidgetSheetBehavior;->findScrollingChild(Landroid/view/View;)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_22

    return-object v2

    :cond_22
    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    :cond_25
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getActivePointerId()I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior;->activePointerId:I

    return p0
.end method

.method public final getCollapsedOffset()I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior;->collapsedOffset:I

    return p0
.end method

.method public final getElevation()F
    .registers 1

    iget p0, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior;->elevation:F

    return p0
.end method

.method public getExpandedOffset()I
    .registers 3

    iget-boolean v0, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior;->fitToContents:Z

    if-eqz v0, :cond_7

    iget p0, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior;->fitToContentsOffset:I

    goto :goto_15

    :cond_7
    iget v0, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior;->mExpandedOffset:I

    iget-boolean v1, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior;->paddingTopSystemWindowInsets:Z

    if-eqz v1, :cond_f

    const/4 p0, 0x0

    goto :goto_11

    :cond_f
    iget p0, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior;->insetTop:I

    :goto_11
    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    :goto_15
    return p0
.end method

.method public final getFitToContentsOffset()I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior;->fitToContentsOffset:I

    return p0
.end method

.method public final getHalfExpandedOffset()I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior;->halfExpandedOffset:I

    return p0
.end method

.method public getHalfExpandedRatio()F
    .registers 1
    .annotation build Landroidx/annotation/FloatRange;
        from = 0.0
        to = 1.0
    .end annotation

    iget p0, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior;->mHalfExpandedRatio:F

    return p0
.end method

.method public final getMExpandedOffset()I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior;->mExpandedOffset:I

    return p0
.end method

.method public final getMHalfExpandedRatio()F
    .registers 1

    iget p0, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior;->mHalfExpandedRatio:F

    return p0
.end method

.method public final getMHideable()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior;->mHideable:Z

    return p0
.end method

.method public final getMState()I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior;->mState:I

    return p0
.end method

.method public final getMaterialShapeDrawable()Lcom/google/android/material/shape/MaterialShapeDrawable;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior;->materialShapeDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    return-object p0
.end method

.method public getMaxWidth()I
    .registers 1
    .annotation build Landroidx/annotation/Px;
    .end annotation

    iget p0, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior;->maxWidth:I

    return p0
.end method

.method public final getNestedScrollingChildRef()Ljava/lang/ref/WeakReference;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior;->nestedScrollingChildRef:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method public final getParentHeight()I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior;->parentHeight:I

    return p0
.end method

.method public final getParentWidth()I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior;->parentWidth:I

    return p0
.end method

.method public final getPeekHeightMin()I
    .registers 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget p0, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior;->peekHeightMin:I

    return p0
.end method

.method public getSaveFlags()I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior;->saveFlags:I

    return p0
.end method

.method public getSkipCollapsed()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior;->skipCollapsed:Z

    return p0
.end method

.method public getState()I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior;->mState:I

    return p0
.end method

.method public final getTouchingScrollingChild()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior;->touchingScrollingChild:Z

    return p0
.end method

.method public final getViewDragHelper()Landroidx/customview/widget/ViewDragHelper;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior;->viewDragHelper:Landroidx/customview/widget/ViewDragHelper;

    return-object p0
.end method

.method public final getViewRef()Ljava/lang/ref/WeakReference;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ref/WeakReference<",
            "TV;>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior;->viewRef:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method public isDraggable()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior;->draggable:Z

    return p0
.end method

.method public isFitToContents()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior;->fitToContents:Z

    return p0
.end method

.method public isGestureInsetBottomIgnored()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior;->gestureInsetBottomIgnored:Z

    return p0
.end method

.method public isHideable()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior;->mHideable:Z

    return p0
.end method

.method public onAttachedToLayoutParams(Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;)V
    .registers 3

    const-string v0, "layoutParams"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->onAttachedToLayoutParams(Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior;->viewRef:Ljava/lang/ref/WeakReference;

    iput-object p1, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior;->viewDragHelper:Landroidx/customview/widget/ViewDragHelper;

    return-void
.end method

.method public onDetachedFromLayoutParams()V
    .registers 2

    invoke-super {p0}, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->onDetachedFromLayoutParams()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior;->viewRef:Ljava/lang/ref/WeakReference;

    iput-object v0, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior;->viewDragHelper:Landroidx/customview/widget/ViewDragHelper;

    return-void
.end method

.method public onInterceptTouchEvent(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/MotionEvent;",
            ")Z"
        }
    .end annotation

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "child"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "event"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/view/View;->isShown()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_fd

    iget-boolean v0, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior;->draggable:Z

    if-nez v0, :cond_1d

    goto/16 :goto_fd

    :cond_1d
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_26

    invoke-direct {p0}, Lcom/android/launcher3/widget/WidgetSheetBehavior;->reset()V

    :cond_26
    iget-object v3, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior;->velocityTracker:Landroid/view/VelocityTracker;

    if-nez v3, :cond_30

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v3

    iput-object v3, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior;->velocityTracker:Landroid/view/VelocityTracker;

    :cond_30
    iget-object v3, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v3, p3}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, -0x1

    if-eqz v0, :cond_4e

    if-eq v0, v2, :cond_43

    const/4 p2, 0x3

    if-eq v0, p2, :cond_43

    goto :goto_9a

    :cond_43
    iput-boolean v1, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior;->touchingScrollingChild:Z

    iput v5, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior;->activePointerId:I

    iget-boolean p2, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior;->ignoreEvents:Z

    if-eqz p2, :cond_9a

    iput-boolean v1, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior;->ignoreEvents:Z

    return v1

    :cond_4e
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    float-to-int v7, v7

    iput v7, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior;->initialY:I

    iget v7, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior;->mState:I

    if-eq v7, v4, :cond_89

    iget-object v7, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior;->nestedScrollingChildRef:Ljava/lang/ref/WeakReference;

    if-eqz v7, :cond_6c

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v7}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    goto :goto_6d

    :cond_6c
    move-object v7, v3

    :goto_6d
    if-eqz v7, :cond_89

    iget v8, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior;->initialY:I

    invoke-virtual {p1, v7, v6, v8}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->isPointInChildBounds(Landroid/view/View;II)Z

    move-result v8

    if-eqz v8, :cond_89

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v8

    invoke-virtual {p3, v8}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v8

    iput v8, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior;->activePointerId:I

    invoke-virtual {v7, v5}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v7

    if-eqz v7, :cond_89

    iput-boolean v2, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior;->touchingScrollingChild:Z

    :cond_89
    iget v7, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior;->activePointerId:I

    if-ne v7, v5, :cond_97

    iget v5, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior;->initialY:I

    invoke-virtual {p1, p2, v6, v5}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->isPointInChildBounds(Landroid/view/View;II)Z

    move-result p2

    if-nez p2, :cond_97

    move p2, v2

    goto :goto_98

    :cond_97
    move p2, v1

    :goto_98
    iput-boolean p2, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior;->ignoreEvents:Z

    :cond_9a
    :goto_9a
    iget-object p2, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior;->nestedScrollingChildRef:Ljava/lang/ref/WeakReference;

    if-eqz p2, :cond_a8

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Landroid/view/View;

    :cond_a8
    invoke-direct {p0, v3, p1, p3}, Lcom/android/launcher3/widget/WidgetSheetBehavior;->isDraggingScrollChild(Landroid/view/View;Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/MotionEvent;)Z

    move-result p2

    if-eqz p2, :cond_af

    return v1

    :cond_af
    iget-boolean p2, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior;->ignoreEvents:Z

    if-nez p2, :cond_c1

    iget-object p2, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior;->viewDragHelper:Landroidx/customview/widget/ViewDragHelper;

    if-eqz p2, :cond_c1

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p2, p3}, Landroidx/customview/widget/ViewDragHelper;->shouldInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p2

    if-eqz p2, :cond_c1

    return v2

    :cond_c1
    if-ne v0, v4, :cond_fc

    if-eqz v3, :cond_fc

    iget-boolean p2, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior;->ignoreEvents:Z

    if-nez p2, :cond_fc

    iget p2, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior;->mState:I

    if-eq p2, v2, :cond_fc

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result p2

    float-to-int p2, p2

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1, v3, p2, v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->isPointInChildBounds(Landroid/view/View;II)Z

    move-result p1

    if-nez p1, :cond_fc

    iget-object p1, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior;->viewDragHelper:Landroidx/customview/widget/ViewDragHelper;

    if-eqz p1, :cond_fc

    iget p1, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior;->initialY:I

    int-to-float p1, p1

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    sub-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget-object p0, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior;->viewDragHelper:Landroidx/customview/widget/ViewDragHelper;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroidx/customview/widget/ViewDragHelper;->getTouchSlop()I

    move-result p0

    int-to-float p0, p0

    cmpl-float p0, p1, p0

    if-lez p0, :cond_fc

    move v1, v2

    :cond_fc
    return v1

    :cond_fd
    :goto_fd
    iput-boolean v2, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior;->ignoreEvents:Z

    return v1
.end method

.method public onLayoutChild(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)Z
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;I)Z"
        }
    .end annotation

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "child"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Landroidx/core/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1a

    invoke-static {p2}, Landroidx/core/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_1a

    invoke-virtual {p2, v1}, Landroid/view/View;->setFitsSystemWindows(Z)V

    :cond_1a
    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior;->viewRef:Ljava/lang/ref/WeakReference;

    const/4 v2, 0x0

    if-nez v0, :cond_8a

    iput v2, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior;->peekHeightMin:I

    invoke-direct {p0, p2}, Lcom/android/launcher3/widget/WidgetSheetBehavior;->setWindowInsetsListener(Landroid/view/View;)V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior;->viewRef:Ljava/lang/ref/WeakReference;

    iget-boolean v0, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior;->shapeThemingEnabled:Z

    if-eqz v0, :cond_36

    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior;->materialShapeDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    if-eqz v0, :cond_36

    invoke-static {p2, v0}, Landroidx/core/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    :cond_36
    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior;->materialShapeDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    if-eqz v0, :cond_63

    iget v3, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior;->elevation:F

    const/high16 v4, -0x40800000  # -1.0f

    cmpg-float v4, v3, v4

    if-nez v4, :cond_44

    move v4, v1

    goto :goto_45

    :cond_44
    move v4, v2

    :goto_45
    if-eqz v4, :cond_4b

    invoke-static {p2}, Landroidx/core/view/ViewCompat;->getElevation(Landroid/view/View;)F

    move-result v3

    :cond_4b
    invoke-virtual {v0, v3}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setElevation(F)V

    iget v0, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior;->mState:I

    const/4 v3, 0x3

    if-ne v0, v3, :cond_55

    move v0, v1

    goto :goto_56

    :cond_55
    move v0, v2

    :goto_56
    iput-boolean v0, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior;->isShapeExpanded:Z

    iget-object v3, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior;->materialShapeDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    if-eqz v0, :cond_5e

    const/4 v0, 0x0

    goto :goto_60

    :cond_5e
    const/high16 v0, 0x3f800000  # 1.0f

    :goto_60
    invoke-virtual {v3, v0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setInterpolation(F)V

    :cond_63
    invoke-direct {p0}, Lcom/android/launcher3/widget/WidgetSheetBehavior;->updateAccessibilityActions()V

    invoke-static {p2}, Landroidx/core/view/ViewCompat;->getImportantForAccessibility(Landroid/view/View;)I

    move-result v0

    if-nez v0, :cond_6f

    invoke-static {p2, v1}, Landroidx/core/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    :cond_6f
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iget v1, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior;->maxWidth:I

    if-le v0, v1, :cond_8a

    const/4 v0, -0x1

    if-eq v1, v0, :cond_8a

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior;->maxWidth:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    new-instance v1, Lcom/android/launcher3/dragndrop/m;

    invoke-direct {v1, p2, v0}, Lcom/android/launcher3/dragndrop/m;-><init>(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p2, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_8a
    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior;->viewDragHelper:Landroidx/customview/widget/ViewDragHelper;

    if-nez v0, :cond_96

    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior;->dragCallback:Landroidx/customview/widget/ViewDragHelper$Callback;

    invoke-static {p1, v0}, Landroidx/customview/widget/ViewDragHelper;->create(Landroid/view/ViewGroup;Landroidx/customview/widget/ViewDragHelper$Callback;)Landroidx/customview/widget/ViewDragHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior;->viewDragHelper:Landroidx/customview/widget/ViewDragHelper;

    :cond_96
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    invoke-virtual {p1, p2, p3}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->onLayoutChild(Landroid/view/View;I)V

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getWidth()I

    move-result p3

    iput p3, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior;->parentWidth:I

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getHeight()I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior;->parentHeight:I

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior;->childHeight:I

    iget p3, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior;->parentHeight:I

    sub-int p1, p3, p1

    iget v0, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior;->insetTop:I

    if-ge p1, v0, :cond_c1

    iget-boolean p1, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior;->paddingTopSystemWindowInsets:Z

    if-eqz p1, :cond_bd

    iput p3, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior;->childHeight:I

    goto :goto_c1

    :cond_bd
    sub-int p1, p3, v0

    iput p1, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior;->childHeight:I

    :cond_c1
    :goto_c1
    iget p1, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior;->childHeight:I

    sub-int/2addr p3, p1

    if-lez p3, :cond_c7

    goto :goto_c8

    :cond_c7
    move p3, v2

    :goto_c8
    iput p3, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior;->fitToContentsOffset:I

    invoke-direct {p0}, Lcom/android/launcher3/widget/WidgetSheetBehavior;->calculateHalfExpandedOffset()V

    invoke-direct {p0}, Lcom/android/launcher3/widget/WidgetSheetBehavior;->calculateCollapsedOffset()V

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-virtual {p0, p2}, Lcom/android/launcher3/widget/WidgetSheetBehavior;->findScrollingChild(Landroid/view/View;)Landroid/view/View;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior;->nestedScrollingChildRef:Ljava/lang/ref/WeakReference;

    return v2
.end method

.method public onNestedPreFling(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;FF)Z
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/View;",
            "FF)Z"
        }
    .end annotation

    const-string v0, "coordinatorLayout"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "child"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "target"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior;->nestedScrollingChildRef:Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    if-eqz v0, :cond_2a

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-ne p3, v0, :cond_2a

    iget v0, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior;->mState:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_29

    invoke-super/range {p0 .. p5}, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->onNestedPreFling(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;FF)Z

    move-result p0

    if-eqz p0, :cond_2a

    :cond_29
    const/4 v1, 0x1

    :cond_2a
    return v1
.end method

.method public onNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;IIIII[I)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/View;",
            "IIIII[I)V"
        }
    .end annotation

    const-string p0, "coordinatorLayout"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "child"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p0, "target"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "consumed"

    invoke-static {p9, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onRestoreInstanceState(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/os/Parcelable;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/os/Parcelable;",
            ")V"
        }
    .end annotation

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "child"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "state"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p3, Lcom/android/launcher3/widget/WidgetSheetBehavior$SavedState;

    invoke-virtual {p3}, Landroidx/customview/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-super {p0, p1, p2, v0}, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->onRestoreInstanceState(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/os/Parcelable;)V

    invoke-direct {p0, p3}, Lcom/android/launcher3/widget/WidgetSheetBehavior;->restoreOptionalState(Lcom/android/launcher3/widget/WidgetSheetBehavior$SavedState;)V

    invoke-virtual {p3}, Lcom/android/launcher3/widget/WidgetSheetBehavior$SavedState;->getState()I

    move-result p1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_35

    invoke-virtual {p3}, Lcom/android/launcher3/widget/WidgetSheetBehavior$SavedState;->getState()I

    move-result p1

    const/4 p2, 0x2

    if-ne p1, p2, :cond_2e

    goto :goto_35

    :cond_2e
    invoke-virtual {p3}, Lcom/android/launcher3/widget/WidgetSheetBehavior$SavedState;->getState()I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior;->mState:I

    goto :goto_38

    :cond_35
    :goto_35
    const/4 p1, 0x4

    iput p1, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior;->mState:I

    :goto_38
    return-void
.end method

.method public onSaveInstanceState(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;)Landroid/os/Parcelable;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;)",
            "Landroid/os/Parcelable;"
        }
    .end annotation

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "child"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/android/launcher3/widget/WidgetSheetBehavior$SavedState;

    invoke-super {p0, p1, p2}, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->onSaveInstanceState(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;)Landroid/os/Parcelable;

    move-result-object p1

    invoke-direct {v0, p1, p0}, Lcom/android/launcher3/widget/WidgetSheetBehavior$SavedState;-><init>(Landroid/os/Parcelable;Lcom/android/launcher3/widget/WidgetSheetBehavior;)V

    return-object v0
.end method

.method public onStartNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;Landroid/view/View;II)Z
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/View;",
            "Landroid/view/View;",
            "II)Z"
        }
    .end annotation

    const-string p6, "coordinatorLayout"

    invoke-static {p1, p6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p6, "child"

    invoke-static {p2, p6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p6, "directTargetChild"

    invoke-static {p3, p6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p6, "target"

    invoke-static {p4, p6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior;->mDividerManager:Lcom/android/launcher/behavior/DividerManager;

    if-nez v0, :cond_1a

    goto :goto_2d

    :cond_1a
    const p6, 0x7f0a0557

    invoke-virtual {p2, p6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const-string p2, "child.findViewById(R.id.tool_bar_container)"

    invoke-static {v2, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher/behavior/DividerManager;->onStartNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;Landroid/view/View;I)Z

    :goto_2d
    const/4 p1, 0x0

    iput p1, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior;->lastNestedScrollDy:I

    iput-boolean p1, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior;->nestedScrolled:Z

    and-int/lit8 p0, p5, 0x2

    if-eqz p0, :cond_37

    const/4 p1, 0x1

    :cond_37
    return p1
.end method

.method public onStopNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;I)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/View;",
            "I)V"
        }
    .end annotation

    const-string p4, "coordinatorLayout"

    invoke-static {p1, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "child"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p1, "target"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result p1

    invoke-virtual {p0}, Lcom/android/launcher3/widget/WidgetSheetBehavior;->getExpandedOffset()I

    move-result p4

    const/4 v0, 0x3

    if-ne p1, p4, :cond_1f

    invoke-direct {p0, v0}, Lcom/android/launcher3/widget/WidgetSheetBehavior;->setStateInternal(I)V

    return-void

    :cond_1f
    iget-object p1, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior;->nestedScrollingChildRef:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_dd

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-ne p3, p1, :cond_dd

    iget-boolean p1, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior;->nestedScrolled:Z

    if-nez p1, :cond_32

    goto/16 :goto_dd

    :cond_32
    iget p1, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior;->lastNestedScrollDy:I

    const/4 p3, 0x4

    const/4 p4, 0x6

    if-lez p1, :cond_52

    iget-boolean p1, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior;->fitToContents:Z

    if-eqz p1, :cond_40

    iget p1, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior;->fitToContentsOffset:I

    goto/16 :goto_d7

    :cond_40
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result p1

    iget p3, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior;->halfExpandedOffset:I

    if-le p1, p3, :cond_4c

    move p1, p3

    :goto_49
    move v0, p4

    goto/16 :goto_d7

    :cond_4c
    invoke-virtual {p0}, Lcom/android/launcher3/widget/WidgetSheetBehavior;->getExpandedOffset()I

    move-result p1

    goto/16 :goto_d7

    :cond_52
    iget-boolean p1, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior;->mHideable:Z

    if-eqz p1, :cond_65

    invoke-direct {p0}, Lcom/android/launcher3/widget/WidgetSheetBehavior;->getYVelocity()F

    move-result p1

    invoke-virtual {p0, p2, p1}, Lcom/android/launcher3/widget/WidgetSheetBehavior;->shouldHide(Landroid/view/View;F)Z

    move-result p1

    if-eqz p1, :cond_65

    iget p1, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior;->parentHeight:I

    const/4 v0, 0x5

    goto/16 :goto_d7

    :cond_65
    iget p1, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior;->lastNestedScrollDy:I

    if-nez p1, :cond_b3

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result p1

    iget-boolean v1, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior;->fitToContents:Z

    if-eqz v1, :cond_88

    iget p4, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior;->fitToContentsOffset:I

    sub-int p4, p1, p4

    invoke-static {p4}, Ljava/lang/Math;->abs(I)I

    move-result p4

    iget v1, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior;->collapsedOffset:I

    sub-int/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    if-ge p4, p1, :cond_85

    iget p1, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior;->fitToContentsOffset:I

    goto :goto_d7

    :cond_85
    iget p1, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior;->collapsedOffset:I

    goto :goto_b9

    :cond_88
    iget v1, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior;->halfExpandedOffset:I

    if-ge p1, v1, :cond_9e

    iget p3, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior;->collapsedOffset:I

    sub-int p3, p1, p3

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result p3

    if-ge p1, p3, :cond_9b

    invoke-virtual {p0}, Lcom/android/launcher3/widget/WidgetSheetBehavior;->getExpandedOffset()I

    move-result p1

    goto :goto_d7

    :cond_9b
    iget p1, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior;->halfExpandedOffset:I

    goto :goto_49

    :cond_9e
    sub-int v0, p1, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior;->collapsedOffset:I

    sub-int/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    if-ge v0, p1, :cond_b0

    iget p1, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior;->halfExpandedOffset:I

    goto :goto_49

    :cond_b0
    iget p1, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior;->collapsedOffset:I

    goto :goto_b9

    :cond_b3
    iget-boolean p1, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior;->fitToContents:Z

    if-eqz p1, :cond_bb

    iget p1, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior;->collapsedOffset:I

    :goto_b9
    move v0, p3

    goto :goto_d7

    :cond_bb
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result p1

    iget v0, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior;->halfExpandedOffset:I

    sub-int v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior;->collapsedOffset:I

    sub-int/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    if-ge v0, p1, :cond_d4

    iget p1, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior;->halfExpandedOffset:I

    goto/16 :goto_49

    :cond_d4
    iget p1, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior;->collapsedOffset:I

    goto :goto_b9

    :goto_d7
    const/4 p3, 0x0

    invoke-virtual {p0, p2, v0, p1, p3}, Lcom/android/launcher3/widget/WidgetSheetBehavior;->startSettlingAnimation(Landroid/view/View;IIZ)V

    iput-boolean p3, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior;->nestedScrolled:Z

    :cond_dd
    :goto_dd
    return-void
.end method

.method public onTouchEvent(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/MotionEvent;",
            ")Z"
        }
    .end annotation

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "child"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "event"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/view/View;->isShown()Z

    move-result p1

    if-nez p1, :cond_17

    const/4 p0, 0x0

    return p0

    :cond_17
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    iget v0, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_23

    if-nez p1, :cond_23

    return v1

    :cond_23
    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior;->viewDragHelper:Landroidx/customview/widget/ViewDragHelper;

    if-eqz v0, :cond_55

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroidx/customview/widget/ViewDragHelper;->getCapturedView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_4d

    instance-of v2, v0, Lcom/android/launcher3/views/OplusWidgetsFullSheet;

    if-eqz v2, :cond_4d

    check-cast v0, Lcom/android/launcher3/views/OplusWidgetsFullSheet;

    invoke-virtual {v0}, Lcom/android/launcher3/views/OplusWidgetsFullSheet;->getRecyclerView()Lcom/android/launcher/widget/WidgetsRecyclerViewR;

    move-result-object v2

    if-eqz v2, :cond_4d

    invoke-virtual {v0}, Lcom/android/launcher3/views/OplusWidgetsFullSheet;->getRecyclerView()Lcom/android/launcher/widget/WidgetsRecyclerViewR;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/recyclerview/widget/COUIRecyclerView;->getScrollState()I

    move-result v2

    if-eqz v2, :cond_4d

    invoke-virtual {v0}, Lcom/android/launcher3/views/OplusWidgetsFullSheet;->getRecyclerView()Lcom/android/launcher/widget/WidgetsRecyclerViewR;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/COUIRecyclerView;->stopScroll()V

    :cond_4d
    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior;->viewDragHelper:Landroidx/customview/widget/ViewDragHelper;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, p3}, Landroidx/customview/widget/ViewDragHelper;->processTouchEvent(Landroid/view/MotionEvent;)V

    :cond_55
    if-nez p1, :cond_5a

    invoke-direct {p0}, Lcom/android/launcher3/widget/WidgetSheetBehavior;->reset()V

    :cond_5a
    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior;->velocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_64

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior;->velocityTracker:Landroid/view/VelocityTracker;

    :cond_64
    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, p3}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior;->viewDragHelper:Landroidx/customview/widget/ViewDragHelper;

    if-eqz v0, :cond_a1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_a1

    iget-boolean p1, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior;->ignoreEvents:Z

    if-nez p1, :cond_a1

    iget p1, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior;->initialY:I

    int-to-float p1, p1

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    sub-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior;->viewDragHelper:Landroidx/customview/widget/ViewDragHelper;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroidx/customview/widget/ViewDragHelper;->getTouchSlop()I

    move-result v0

    int-to-float v0, v0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_a1

    iget-object p1, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior;->viewDragHelper:Landroidx/customview/widget/ViewDragHelper;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p3, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p3

    invoke-virtual {p1, p2, p3}, Landroidx/customview/widget/ViewDragHelper;->captureChildView(Landroid/view/View;I)V

    :cond_a1
    iget-boolean p0, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior;->ignoreEvents:Z

    xor-int/2addr p0, v1

    return p0
.end method

.method public removeBottomSheetCallback(Lcom/google/android/material/bottomsheet/BottomSheetBehavior$BottomSheetCallback;)V
    .registers 3

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior;->callbacks:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final setActivePointerId(I)V
    .registers 2

    iput p1, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior;->activePointerId:I

    return-void
.end method

.method public setBottomSheetCallback(Lcom/google/android/material/bottomsheet/BottomSheetBehavior$BottomSheetCallback;)V
    .registers 4

    const-string v0, "WidgetSheetBehavior"

    const-string v1, "BottomSheetBehavior now supports multiple callbacks. `setBottomSheetCallback()` removes all existing callbacks, including ones set internally by library authors, which may result in unintended behavior. This may change in the future. Please use `addBottomSheetCallback()` and `removeBottomSheetCallback()` instead to set your own callbacks."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior;->callbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    if-eqz p1, :cond_13

    iget-object p0, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior;->callbacks:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_13
    return-void
.end method

.method public final setCollapsedOffset(I)V
    .registers 2

    iput p1, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior;->collapsedOffset:I

    return-void
.end method

.method public setDraggable(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior;->draggable:Z

    return-void
.end method

.method public final setElevation(F)V
    .registers 2

    iput p1, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior;->elevation:F

    return-void
.end method

.method public setExpandedOffset(I)V
    .registers 2

    if-ltz p1, :cond_5

    iput p1, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior;->mExpandedOffset:I

    return-void

    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "offset must be greater than or equal to 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setFitToContents(Z)V
    .registers 3

    iget-boolean v0, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior;->fitToContents:Z

    if-ne v0, p1, :cond_5

    return-void

    :cond_5
    iput-boolean p1, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior;->fitToContents:Z

    iget-object p1, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior;->viewRef:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_e

    invoke-direct {p0}, Lcom/android/launcher3/widget/WidgetSheetBehavior;->calculateCollapsedOffset()V

    :cond_e
    iget-boolean p1, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior;->fitToContents:Z

    if-eqz p1, :cond_19

    iget p1, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior;->mState:I

    const/4 v0, 0x6

    if-ne p1, v0, :cond_19

    const/4 p1, 0x3

    goto :goto_1b

    :cond_19
    iget p1, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior;->mState:I

    :goto_1b
    invoke-direct {p0, p1}, Lcom/android/launcher3/widget/WidgetSheetBehavior;->setStateInternal(I)V

    invoke-direct {p0}, Lcom/android/launcher3/widget/WidgetSheetBehavior;->updateAccessibilityActions()V

    return-void
.end method

.method public final setFitToContentsOffset(I)V
    .registers 2

    iput p1, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior;->fitToContentsOffset:I

    return-void
.end method

.method public setGestureInsetBottomIgnored(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior;->gestureInsetBottomIgnored:Z

    return-void
.end method

.method public final setHalfExpandedOffset(I)V
    .registers 2

    iput p1, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior;->halfExpandedOffset:I

    return-void
.end method

.method public setHalfExpandedRatio(F)V
    .registers 3
    .param p1  # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-lez v0, :cond_15

    const/high16 v0, 0x3f800000  # 1.0f

    cmpl-float v0, p1, v0

    if-gez v0, :cond_15

    iput p1, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior;->mHalfExpandedRatio:F

    iget-object p1, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior;->viewRef:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_14

    invoke-direct {p0}, Lcom/android/launcher3/widget/WidgetSheetBehavior;->calculateHalfExpandedOffset()V

    :cond_14
    return-void

    :cond_15
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "ratio must be a float value between 0 and 1"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setHideable(Z)V
    .registers 3

    iget-boolean v0, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior;->mHideable:Z

    if-eq v0, p1, :cond_14

    iput-boolean p1, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior;->mHideable:Z

    if-nez p1, :cond_11

    iget p1, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior;->mState:I

    const/4 v0, 0x5

    if-ne p1, v0, :cond_11

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Lcom/android/launcher3/widget/WidgetSheetBehavior;->setState(I)V

    :cond_11
    invoke-direct {p0}, Lcom/android/launcher3/widget/WidgetSheetBehavior;->updateAccessibilityActions()V

    :cond_14
    return-void
.end method

.method public final setMExpandedOffset(I)V
    .registers 2

    iput p1, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior;->mExpandedOffset:I

    return-void
.end method

.method public final setMHalfExpandedRatio(F)V
    .registers 2

    iput p1, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior;->mHalfExpandedRatio:F

    return-void
.end method

.method public final setMHideable(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior;->mHideable:Z

    return-void
.end method

.method public final setMState(I)V
    .registers 2

    iput p1, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior;->mState:I

    return-void
.end method

.method public setMaxWidth(I)V
    .registers 2
    .param p1  # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param

    iput p1, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior;->maxWidth:I

    return-void
.end method

.method public final setNestedScrollingChildRef(Ljava/lang/ref/WeakReference;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior;->nestedScrollingChildRef:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public final setParentHeight(I)V
    .registers 2

    iput p1, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior;->parentHeight:I

    return-void
.end method

.method public final setParentWidth(I)V
    .registers 2

    iput p1, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior;->parentWidth:I

    return-void
.end method

.method public setPeekHeight(I)V
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setPeekHeight(IZ)V

    return-void
.end method

.method public setSaveFlags(I)V
    .registers 2

    iput p1, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior;->saveFlags:I

    return-void
.end method

.method public setSkipCollapsed(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior;->skipCollapsed:Z

    return-void
.end method

.method public setState(I)V
    .registers 3

    iget v0, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior;->mState:I

    if-ne p1, v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior;->viewRef:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_1c

    const/4 v0, 0x4

    if-eq p1, v0, :cond_19

    const/4 v0, 0x3

    if-eq p1, v0, :cond_19

    const/4 v0, 0x6

    if-eq p1, v0, :cond_19

    iget-boolean v0, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior;->mHideable:Z

    if-eqz v0, :cond_1b

    const/4 v0, 0x5

    if-ne p1, v0, :cond_1b

    :cond_19
    iput p1, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior;->mState:I

    :cond_1b
    return-void

    :cond_1c
    invoke-direct {p0, p1}, Lcom/android/launcher3/widget/WidgetSheetBehavior;->settleToStatePendingLayout(I)V

    return-void
.end method

.method public final setTouchingScrollingChild(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior;->touchingScrollingChild:Z

    return-void
.end method

.method public setUpdateImportantForAccessibilityOnSiblings(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior;->updateImportantForAccessibilityOnSiblings:Z

    return-void
.end method

.method public final setViewDragHelper(Landroidx/customview/widget/ViewDragHelper;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior;->viewDragHelper:Landroidx/customview/widget/ViewDragHelper;

    return-void
.end method

.method public final setViewRef(Ljava/lang/ref/WeakReference;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "TV;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior;->viewRef:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public final settleToState(Landroid/view/View;I)V
    .registers 6

    const-string v0, "child"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x3

    const/4 v1, 0x4

    if-ne p2, v1, :cond_c

    iget v0, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior;->collapsedOffset:I

    goto :goto_2e

    :cond_c
    const/4 v1, 0x6

    if-ne p2, v1, :cond_1e

    iget v1, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior;->halfExpandedOffset:I

    iget-boolean v2, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior;->fitToContents:Z

    if-eqz v2, :cond_1c

    iget v2, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior;->fitToContentsOffset:I

    if-gt v1, v2, :cond_1c

    move p2, v0

    move v0, v2

    goto :goto_2e

    :cond_1c
    move v0, v1

    goto :goto_2e

    :cond_1e
    if-ne p2, v0, :cond_25

    invoke-virtual {p0}, Lcom/android/launcher3/widget/WidgetSheetBehavior;->getExpandedOffset()I

    move-result v0

    goto :goto_2e

    :cond_25
    iget-boolean v0, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior;->mHideable:Z

    if-eqz v0, :cond_33

    const/4 v0, 0x5

    if-ne p2, v0, :cond_33

    iget v0, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior;->parentHeight:I

    :goto_2e
    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/launcher3/widget/WidgetSheetBehavior;->startSettlingAnimation(Landroid/view/View;IIZ)V

    return-void

    :cond_33
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "Illegal state argument: "

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final shouldHide(Landroid/view/View;F)Z
    .registers 7

    const-string v0, "child"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior;->skipCollapsed:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_b

    return v1

    :cond_b
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    iget v2, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior;->collapsedOffset:I

    const/4 v3, 0x0

    if-ge v0, v2, :cond_15

    return v3

    :cond_15
    invoke-direct {p0}, Lcom/android/launcher3/widget/WidgetSheetBehavior;->calculatePeekHeight()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    int-to-float p1, p1

    const v2, 0x3dcccccd  # 0.1f

    mul-float/2addr p2, v2

    add-float/2addr p2, p1

    iget p0, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior;->collapsedOffset:I

    int-to-float p0, p0

    sub-float/2addr p2, p0

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p0

    int-to-float p1, v0

    div-float/2addr p0, p1

    const/high16 p1, 0x3f000000  # 0.5f

    cmpl-float p0, p0, p1

    if-lez p0, :cond_34

    goto :goto_35

    :cond_34
    move v1, v3

    :goto_35
    return v1
.end method

.method public final startSettlingAnimation(Landroid/view/View;IIZ)V
    .registers 7

    const-string v0, "child"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior;->viewDragHelper:Landroidx/customview/widget/ViewDragHelper;

    const/4 v1, 0x1

    if-eqz v0, :cond_27

    if-eqz p4, :cond_18

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p4

    invoke-virtual {v0, p4, p3}, Landroidx/customview/widget/ViewDragHelper;->settleCapturedViewAt(II)Z

    move-result p3

    goto :goto_23

    :cond_18
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p4

    invoke-virtual {v0, p1, p4, p3}, Landroidx/customview/widget/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    move-result p3

    :goto_23
    if-eqz p3, :cond_27

    move p3, v1

    goto :goto_28

    :cond_27
    const/4 p3, 0x0

    :goto_28
    if-eqz p3, :cond_69

    const/4 p3, 0x2

    invoke-direct {p0, p3}, Lcom/android/launcher3/widget/WidgetSheetBehavior;->setStateInternal(I)V

    invoke-direct {p0, p2}, Lcom/android/launcher3/widget/WidgetSheetBehavior;->updateDrawableForTargetState(I)V

    iget-object p3, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior;->settleRunnable:Lcom/android/launcher3/widget/WidgetSheetBehavior$SettleRunnable;

    if-nez p3, :cond_3c

    new-instance p3, Lcom/android/launcher3/widget/WidgetSheetBehavior$SettleRunnable;

    invoke-direct {p3, p0, p1, p2}, Lcom/android/launcher3/widget/WidgetSheetBehavior$SettleRunnable;-><init>(Lcom/android/launcher3/widget/WidgetSheetBehavior;Landroid/view/View;I)V

    iput-object p3, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior;->settleRunnable:Lcom/android/launcher3/widget/WidgetSheetBehavior$SettleRunnable;

    :cond_3c
    iget-object p3, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior;->settleRunnable:Lcom/android/launcher3/widget/WidgetSheetBehavior$SettleRunnable;

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p3}, Lcom/android/launcher3/widget/WidgetSheetBehavior$SettleRunnable;->isPosted()Z

    move-result p3

    if-nez p3, :cond_60

    iget-object p3, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior;->settleRunnable:Lcom/android/launcher3/widget/WidgetSheetBehavior$SettleRunnable;

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p3, p2}, Lcom/android/launcher3/widget/WidgetSheetBehavior$SettleRunnable;->setTargetState(I)V

    iget-object p2, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior;->settleRunnable:Lcom/android/launcher3/widget/WidgetSheetBehavior$SettleRunnable;

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p1, p2}, Landroidx/core/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    iget-object p0, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior;->settleRunnable:Lcom/android/launcher3/widget/WidgetSheetBehavior$SettleRunnable;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, v1}, Lcom/android/launcher3/widget/WidgetSheetBehavior$SettleRunnable;->setPosted(Z)V

    goto :goto_6c

    :cond_60
    iget-object p0, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior;->settleRunnable:Lcom/android/launcher3/widget/WidgetSheetBehavior$SettleRunnable;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, p2}, Lcom/android/launcher3/widget/WidgetSheetBehavior$SettleRunnable;->setTargetState(I)V

    goto :goto_6c

    :cond_69
    invoke-direct {p0, p2}, Lcom/android/launcher3/widget/WidgetSheetBehavior;->setStateInternal(I)V

    :goto_6c
    return-void
.end method
