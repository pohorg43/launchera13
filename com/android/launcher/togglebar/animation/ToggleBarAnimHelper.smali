.class public final Lcom/android/launcher/togglebar/animation/ToggleBarAnimHelper;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final DELAY_DURATION_ITEM:J = 0x11L

.field public static final DELAY_DURATION_TOGGLE_BAR_BTN:J = 0x64L

.field public static final DELAY_LEVEL_TWO_TO_LEVEL_ONE:J = 0x15eL

.field public static final DURATION_APPEAR_TOOLBAR_ALPHA:J = 0x1a1L

.field public static final DURATION_CARD_STORE_PANEL_TOOLBAR_HIDE:J = 0x14dL

.field public static final DURATION_CARD_STORE_PANEL_TOOLBAR_SHOW:J = 0x237L

.field public static final DURATION_DISAPPEAR_TOOLBAR_ALPHA:J = 0xc8L

.field public static final DURATION_FACTOR:F = 0.7f

.field public static final DURATION_GAUSSIAN_VIEW:J = 0x13dL

.field public static final DURATION_HOTSEAT_ALPHA:J = 0x15eL

.field private static final DURATION_LAUNCHER_CONTENT_HIDE:J = 0xfaL

.field public static final DURATION_MAIN_UI_EXIT_FOR_TWO_PANELS:J = 0x96L

.field public static final DURATION_MAIN_UI_SHOW_HIDE:J = 0x8cL

.field public static final DURATION_RECYCLERVIEW_ITEM:J = 0x16fL

.field public static final DURATION_RECYCLERVIEW_ITEM_MAIN_UI_EXIT_ALPHA:J = 0x118L

.field private static final DURATION_RECYCLERVIEW_ITEM_MAIN_UI_EXIT_TRANSY:J = 0x15eL

.field public static final DURATION_SELECTED_STROKE_HIDE:J = 0x96L

.field public static final DURATION_SELECTED_STROKE_SHOW:J = 0x118L

.field public static final DURATION_SHORTCUT_CONTAINER_SCALE_FOR_EXIT_TOGGLE_BAR:J = 0x1a4L

.field public static final DURATION_WIDGET_PANEL_CONTENT_ALPHA:J = 0x1f4L

.field public static final DURATION_WIDGET_PANEL_CONTENT_OPEN_ALPHA:J = 0x28aL

.field public static final DURATION_WORKSPACE_SCALE:J = 0x13dL

.field public static final DURATION_WORKSPACE_SCALE_GO_TOGGLEBAR:J = 0x226L

.field private static final EXTRA_FACTOR_PAGE_TRANSLATION:F = 0.25f

.field public static final INSTANCE:Lcom/android/launcher/togglebar/animation/ToggleBarAnimHelper;

.field public static final INTERPOLATOR_APPEAR_TOOLBAR_ALPHA:Landroid/view/animation/PathInterpolator;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field private static final INTERPOLATOR_DISAPPEAR_TOOLBAR_ALPHA:Landroid/view/animation/PathInterpolator;

.field public static final INTERPOLATOR_GAUSSIAN_VIEW:Landroid/view/animation/PathInterpolator;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public static final INTERPOLATOR_HOTSEAT:Landroid/view/animation/PathInterpolator;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public static final INTERPOLATOR_MAIN_UI:Landroid/view/animation/PathInterpolator;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public static final INTERPOLATOR_NORMAL:Landroid/view/animation/PathInterpolator;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field private static final INTERPOLATOR_RECYCLERVIEW_ITEM_ALPHA:Landroid/view/animation/PathInterpolator;

.field public static final INTERPOLATOR_RECYCLERVIEW_ITEM_TRANS_Y:Landroid/view/animation/PathInterpolator;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field private static final INTERPOLATOR_SELECTED_STROKE:Landroid/view/animation/PathInterpolator;

.field public static final INTERPOLATOR_TOGGLE_BAR:Landroid/view/animation/PathInterpolator;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public static final INTERPOLATOR_TOGGLE_BAR_ITEM:Landroid/view/animation/PathInterpolator;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public static final INTERPOLATOR_WIDGET_SHEET_CLOSE_TRANSLATION:Landroid/view/animation/PathInterpolator;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public static final INTERPOLATOR_WIDGET_SHEET_TRANSLATION:Landroid/view/animation/PathInterpolator;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public static final INTERPOLATOR_WORKSPACE_FOR_WIDGET_PANEL:Landroid/view/animation/PathInterpolator;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field private static final INTERPOLATOR_WORKSPACE_SCALE:Landroid/view/animation/PathInterpolator;

.field private static final KEY_FRAME_DIVIDE:F = 0.576f

.field public static final SCALE_MIN_WORKSPACE_SINGLE_PANEL:F = 0.87f

.field public static final SCALE_MIN_WORKSPACE_TWO_PANEL:F = 0.81f

.field private static final TAG:Ljava/lang/String; = "ToggleBarAnimHelper"

.field public static final THRESHOLD_ANIM_GO_TOGGLE_BAR:F = 0.5f


# direct methods
.method public static constructor <clinit>()V
    .registers 10

    new-instance v0, Lcom/android/launcher/togglebar/animation/ToggleBarAnimHelper;

    invoke-direct {v0}, Lcom/android/launcher/togglebar/animation/ToggleBarAnimHelper;-><init>()V

    sput-object v0, Lcom/android/launcher/togglebar/animation/ToggleBarAnimHelper;->INSTANCE:Lcom/android/launcher/togglebar/animation/ToggleBarAnimHelper;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/4 v1, 0x0

    const v2, 0x3ea8f5c3  # 0.33f

    const/high16 v3, 0x3f800000  # 1.0f

    invoke-direct {v0, v1, v1, v2, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/launcher/togglebar/animation/ToggleBarAnimHelper;->INTERPOLATOR_RECYCLERVIEW_ITEM_TRANS_Y:Landroid/view/animation/PathInterpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v4, 0x3e2e147b  # 0.17f

    invoke-direct {v0, v4, v1, v2, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/launcher/togglebar/animation/ToggleBarAnimHelper;->INTERPOLATOR_RECYCLERVIEW_ITEM_ALPHA:Landroid/view/animation/PathInterpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v1, v1, v2, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/launcher/togglebar/animation/ToggleBarAnimHelper;->INTERPOLATOR_APPEAR_TOOLBAR_ALPHA:Landroid/view/animation/PathInterpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v5, 0x3e99999a  # 0.3f

    invoke-direct {v0, v5, v1, v3, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/launcher/togglebar/animation/ToggleBarAnimHelper;->INTERPOLATOR_DISAPPEAR_TOOLBAR_ALPHA:Landroid/view/animation/PathInterpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v6, 0x3f2b851f  # 0.67f

    invoke-direct {v0, v2, v1, v6, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/launcher/togglebar/animation/ToggleBarAnimHelper;->INTERPOLATOR_WORKSPACE_SCALE:Landroid/view/animation/PathInterpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v7, 0x3ed70a3d  # 0.42f

    const v8, 0x3f147ae1  # 0.58f

    invoke-direct {v0, v7, v1, v8, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/launcher/togglebar/animation/ToggleBarAnimHelper;->INTERPOLATOR_GAUSSIAN_VIEW:Landroid/view/animation/PathInterpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v7, 0x3e3851ec  # 0.18f

    const v8, 0x3dcccccd  # 0.1f

    invoke-direct {v0, v4, v7, v8, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/launcher/togglebar/animation/ToggleBarAnimHelper;->INTERPOLATOR_TOGGLE_BAR_ITEM:Landroid/view/animation/PathInterpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v4, v4, v8, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/launcher/togglebar/animation/ToggleBarAnimHelper;->INTERPOLATOR_WIDGET_SHEET_TRANSLATION:Landroid/view/animation/PathInterpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v7, 0x3f547ae1  # 0.83f

    invoke-direct {v0, v2, v1, v7, v7}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/launcher/togglebar/animation/ToggleBarAnimHelper;->INTERPOLATOR_WIDGET_SHEET_CLOSE_TRANSLATION:Landroid/view/animation/PathInterpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v9, -0x418a3d71  # -0.24f

    invoke-direct {v0, v4, v9, v8, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/launcher/togglebar/animation/ToggleBarAnimHelper;->INTERPOLATOR_WORKSPACE_FOR_WIDGET_PANEL:Landroid/view/animation/PathInterpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v5, v1, v3, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/launcher/togglebar/animation/ToggleBarAnimHelper;->INTERPOLATOR_MAIN_UI:Landroid/view/animation/PathInterpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v4, 0x3f5eb852  # 0.87f

    invoke-direct {v0, v2, v1, v7, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/launcher/togglebar/animation/ToggleBarAnimHelper;->INTERPOLATOR_HOTSEAT:Landroid/view/animation/PathInterpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v5, v1, v8, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/launcher/togglebar/animation/ToggleBarAnimHelper;->INTERPOLATOR_TOGGLE_BAR:Landroid/view/animation/PathInterpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v2, v1, v6, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/launcher/togglebar/animation/ToggleBarAnimHelper;->INTERPOLATOR_SELECTED_STROKE:Landroid/view/animation/PathInterpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v2, v1, v6, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/launcher/togglebar/animation/ToggleBarAnimHelper;->INTERPOLATOR_NORMAL:Landroid/view/animation/PathInterpolator;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final animScaleToNormal(Lcom/android/launcher3/Launcher;Landroid/animation/AnimatorListenerAdapter;Lcom/android/launcher3/anim/ScaleTarget;)Landroid/animation/AnimatorSet;
    .registers 12
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "launcher"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "scaleTarget"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/android/launcher/togglebar/animation/ToggleBarAnimHelper;->INSTANCE:Lcom/android/launcher/togglebar/animation/ToggleBarAnimHelper;

    const-string v1, "ToggleBarAnimHelper"

    const-string v2, "animScaleToNormal"

    invoke-static {v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getHotseat()Lcom/android/launcher3/OplusHotseat;

    move-result-object p0

    sget-object v2, Lcom/android/launcher3/anim/ScaleTarget;->Companion:Lcom/android/launcher3/anim/ScaleTarget$Companion;

    invoke-virtual {v2}, Lcom/android/launcher3/anim/ScaleTarget$Companion;->getSCALE_TARGET()Landroid/util/FloatProperty;

    move-result-object v2

    const/4 v3, 0x1

    new-array v4, v3, [F

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000  # 1.0f

    aput v6, v4, v5

    invoke-static {p2, v2, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p2

    const-wide/16 v7, 0x13d

    invoke-virtual {p2, v7, v8}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Lcom/android/launcher/togglebar/animation/ToggleBarAnimHelper;->getINTERPOLATOR_WORKSPACE_SCALE()Landroid/view/animation/PathInterpolator;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    sget-object v0, Lcom/android/launcher3/LauncherAnimUtils;->VIEW_ALPHA:Landroid/util/FloatProperty;

    new-array v2, v3, [F

    aput v6, v2, v5

    invoke-static {p0, v0, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    invoke-virtual {p0, v7, v8}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    sget-object v0, Lcom/android/launcher/togglebar/animation/ToggleBarAnimHelper;->INTERPOLATOR_HOTSEAT:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p0, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const/4 v0, 0x2

    new-array v0, v0, [Landroid/animation/Animator;

    aput-object p2, v0, v5

    aput-object p0, v0, v3

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    if-eqz p1, :cond_5f

    invoke-virtual {v1, p1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_5f
    return-object v1
.end method

.method public static final contentAnimForWidgetTransition(Lcom/android/launcher3/Launcher;Z)Landroid/animation/ValueAnimator;
    .registers 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "launcher"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isFoldScreenExpanded()Z

    move-result v0

    const/4 v1, 0x2

    if-nez v0, :cond_51

    sget-object v0, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v0}, Lcom/android/common/util/AppFeatureUtils;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_51

    :cond_15
    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isFoldScreenExpanded()Z

    new-instance v0, Lcom/android/launcher/togglebar/animation/WidgetTransitionContentTarget;

    move-object v2, p0

    check-cast v2, Lcom/android/launcher/Launcher;

    invoke-direct {v0, v2, p1}, Lcom/android/launcher/togglebar/animation/WidgetTransitionContentTarget;-><init>(Lcom/android/launcher/Launcher;Z)V

    sget-object v2, Lcom/android/launcher/togglebar/animation/WidgetTransitionContentTarget;->Companion:Lcom/android/launcher/togglebar/animation/WidgetTransitionContentTarget$Companion;

    invoke-virtual {v2}, Lcom/android/launcher/togglebar/animation/WidgetTransitionContentTarget$Companion;->getSCALE_ALPHA_TARGET()Landroid/util/FloatProperty;

    move-result-object v2

    new-array v1, v1, [F

    fill-array-data v1, :array_62

    invoke-static {v0, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    if-eqz p1, :cond_34

    const-wide/16 v1, 0xfa

    goto :goto_36

    :cond_34
    const-wide/16 v1, 0x12c

    :goto_36
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    if-eqz p1, :cond_3e

    sget-object p1, Lcom/android/launcher/togglebar/animation/ToggleBarAnimHelper;->INTERPOLATOR_WIDGET_SHEET_TRANSLATION:Landroid/view/animation/PathInterpolator;

    goto :goto_40

    :cond_3e
    sget-object p1, Lcom/android/launcher/togglebar/animation/ToggleBarAnimHelper;->INTERPOLATOR_WIDGET_SHEET_CLOSE_TRANSLATION:Landroid/view/animation/PathInterpolator;

    :goto_40
    invoke-virtual {v0, p1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-string p1, "animator"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Lcom/android/launcher/togglebar/animation/ToggleBarAnimHelper$contentAnimForWidgetTransition$$inlined$doOnCancel$1;

    invoke-direct {p1, p0}, Lcom/android/launcher/togglebar/animation/ToggleBarAnimHelper$contentAnimForWidgetTransition$$inlined$doOnCancel$1;-><init>(Lcom/android/launcher3/Launcher;)V

    invoke-virtual {v0, p1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object v0

    :cond_51
    :goto_51
    new-array p0, v1, [I

    fill-array-data p0, :array_6a

    invoke-static {p0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p0

    const-string/jumbo p1, "ofInt(0, 1)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    nop

    :array_62
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data

    :array_6a
    .array-data 4
        0x0
        0x1
    .end array-data
.end method

.method public static final setPivotForToggleBarState(Lcom/android/launcher3/Launcher;)V
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "launcher"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getHotseat()Lcom/android/launcher3/OplusHotseat;

    move-result-object p0

    invoke-virtual {v0}, Lcom/android/launcher3/OplusWorkspace;->updatePivot()V

    const-string v1, "hotseat"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v1, "workspace"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/android/launcher/togglebar/animation/ToggleBarAnimHelper;->setPivotToScaleWithWorkspace(Landroid/view/View;Lcom/android/launcher3/OplusWorkspace;)V

    return-void
.end method

.method public static final setPivotToScaleWithWorkspace(Landroid/view/View;Lcom/android/launcher3/OplusWorkspace;)V
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string/jumbo v0, "sibling"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "workspace"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getPivotY()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getTop()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getTranslationY()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/view/View;->setPivotY(F)V

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getPivotX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLeft()I

    move-result p1

    int-to-float p1, p1

    add-float/2addr v0, p1

    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result p1

    int-to-float p1, p1

    sub-float/2addr v0, p1

    invoke-virtual {p0}, Landroid/view/View;->getTranslationX()F

    move-result p1

    sub-float/2addr v0, p1

    invoke-virtual {p0, v0}, Landroid/view/View;->setPivotX(F)V

    return-void
.end method

.method public static final workspaceStateTransitionForToggleBar(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/anim/ScaleTarget;)Landroid/animation/AnimatorSet;
    .registers 18
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "launcher"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v2, "scaleTarget"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getScaleX()F

    move-result v4

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getScaleX()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    const-string/jumbo v6, "workspaceStateTransitionForToggleBar, current workspace scale = "

    invoke-static {v6, v5}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "ToggleBarAnimHelper"

    invoke-static {v6, v5}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v5

    iget-boolean v5, v5, Lcom/android/launcher3/DeviceProfile;->isTwoPanels:Z

    if-eqz v5, :cond_3c

    const v5, 0x3f4f5c29  # 0.81f

    goto :goto_3f

    :cond_3c
    const v5, 0x3f5eb852  # 0.87f

    :goto_3f
    const/4 v6, 0x0

    invoke-static {v6, v4}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v4

    const v7, 0x3f1374bc  # 0.576f

    invoke-static {v7, v5}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v5

    sget-object v8, Lcom/android/launcher/togglebar/animation/ToggleBarAnimHelper;->INTERPOLATOR_WORKSPACE_SCALE:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v5, v8}, Landroid/animation/Keyframe;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    sget-object v9, Lcom/android/launcher3/states/OplusBaseLauncherState;->TOGGLE_BAR:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v9, v0}, Lcom/android/launcher3/LauncherState;->getWorkspaceScaleAndTranslation(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/LauncherState$ScaleAndTranslation;

    move-result-object v10

    iget v10, v10, Lcom/android/launcher3/LauncherState$ScaleAndTranslation;->scale:F

    const/high16 v11, 0x3f800000  # 1.0f

    invoke-static {v11, v10}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v10

    invoke-virtual {v10, v8}, Landroid/animation/Keyframe;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    sget-object v8, Lcom/android/launcher3/anim/ScaleTarget;->Companion:Lcom/android/launcher3/anim/ScaleTarget$Companion;

    invoke-virtual {v8}, Lcom/android/launcher3/anim/ScaleTarget$Companion;->getSCALE_TARGET()Landroid/util/FloatProperty;

    move-result-object v8

    const/4 v12, 0x3

    new-array v13, v12, [Landroid/animation/Keyframe;

    const/4 v14, 0x0

    aput-object v4, v13, v14

    const/4 v4, 0x1

    aput-object v5, v13, v4

    const/4 v5, 0x2

    aput-object v10, v13, v5

    invoke-static {v8, v13}, Landroid/animation/PropertyValuesHolder;->ofKeyframe(Landroid/util/Property;[Landroid/animation/Keyframe;)Landroid/animation/PropertyValuesHolder;

    move-result-object v8

    new-array v10, v4, [Landroid/animation/PropertyValuesHolder;

    aput-object v8, v10, v14

    invoke-static {v1, v10}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v1

    iget-boolean v1, v1, Lcom/android/launcher3/DeviceProfile;->isTwoPanels:Z

    if-eqz v1, :cond_e2

    invoke-virtual {v9, v0}, Lcom/android/launcher3/LauncherState;->getWorkspacePageTranslationProvider(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/LauncherState$PageTranslationProvider;

    move-result-object v0

    const-string v1, "TOGGLE_BAR.getWorkspaceP…slationProvider(launcher)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-lez v1, :cond_e2

    move v8, v14

    :goto_9a
    add-int/lit8 v9, v8, 0x1

    invoke-virtual {v3, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v0, v8}, Lcom/android/launcher3/LauncherState$PageTranslationProvider;->getPageTranslation(I)F

    move-result v8

    const/high16 v13, 0x3e800000  # 0.25f

    mul-float/2addr v13, v8

    add-float/2addr v13, v8

    invoke-virtual {v10}, Landroid/view/View;->getTranslationX()F

    move-result v15

    invoke-static {v6, v15}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v15

    invoke-static {v7, v13}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v13

    sget-object v6, Lcom/android/launcher/togglebar/animation/ToggleBarAnimHelper;->INTERPOLATOR_WORKSPACE_SCALE:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v13, v6}, Landroid/animation/Keyframe;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-static {v11, v8}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v8

    invoke-virtual {v8, v6}, Landroid/animation/Keyframe;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    sget-object v6, Lcom/android/launcher3/LauncherAnimUtils;->VIEW_TRANSLATE_X:Landroid/util/FloatProperty;

    new-array v7, v12, [Landroid/animation/Keyframe;

    aput-object v15, v7, v14

    aput-object v13, v7, v4

    aput-object v8, v7, v5

    invoke-static {v6, v7}, Landroid/animation/PropertyValuesHolder;->ofKeyframe(Landroid/util/Property;[Landroid/animation/Keyframe;)Landroid/animation/PropertyValuesHolder;

    move-result-object v6

    new-array v7, v4, [Landroid/animation/PropertyValuesHolder;

    aput-object v6, v7, v14

    invoke-static {v10, v7}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    if-lt v9, v1, :cond_dc

    goto :goto_e2

    :cond_dc
    move v8, v9

    const/4 v6, 0x0

    const v7, 0x3f1374bc  # 0.576f

    goto :goto_9a

    :cond_e2
    :goto_e2
    new-instance v0, Lcom/android/launcher/togglebar/animation/ToggleBarAnimHelper$workspaceStateTransitionForToggleBar$$inlined$addListener$default$1;

    invoke-direct {v0}, Lcom/android/launcher/togglebar/animation/ToggleBarAnimHelper$workspaceStateTransitionForToggleBar$$inlined$addListener$default$1;-><init>()V

    invoke-virtual {v2, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object v2
.end method


# virtual methods
.method public final animItemForMainUiExit(Landroid/view/ViewGroup;F)Landroid/animation/AnimatorSet;
    .registers 8

    const-string v0, "childParent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ToggleBarAnimHelper"

    const-string v1, "animItemForMainUiExit"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-nez v0, :cond_14

    const/4 p0, 0x0

    return-object p0

    :cond_14
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v2, 0x0

    if-lez v0, :cond_31

    :goto_1c
    add-int/lit8 v3, v2, 0x1

    add-int/lit8 v4, v0, -0x1

    sub-int/2addr v4, v2

    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {p0, v4, p2, v2}, Lcom/android/launcher/togglebar/animation/ToggleBarAnimHelper;->createItemAnimForMainUIExit(Landroid/view/View;FI)Landroid/animation/AnimatorSet;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    if-lt v3, v0, :cond_2f

    goto :goto_31

    :cond_2f
    move v2, v3

    goto :goto_1c

    :cond_31
    :goto_31
    return-object v1
.end method

.method public final animItemForRecyclerView(Landroid/view/ViewGroup;ZF)Landroid/animation/AnimatorSet;
    .registers 13

    const-string v0, "childParent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "animItemForRecyclerView, show = "

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ToggleBarAnimHelper"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-nez v0, :cond_1c

    const/4 p0, 0x0

    return-object p0

    :cond_1c
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v2, 0x0

    if-lez v0, :cond_45

    :goto_24
    add-int/lit8 v3, v2, 0x1

    if-eqz p2, :cond_2a

    move v4, v2

    goto :goto_2d

    :cond_2a
    add-int/lit8 v4, v0, -0x1

    sub-int/2addr v4, v2

    :goto_2d
    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {p0, v4, p2, p3}, Lcom/android/launcher/togglebar/animation/ToggleBarAnimHelper;->createItemAnim(Landroid/view/View;ZF)Landroid/animation/AnimatorSet;

    move-result-object v4

    const-wide/16 v5, 0x11

    int-to-long v7, v2

    mul-long/2addr v7, v5

    invoke-virtual {v1, v4}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v2

    invoke-virtual {v2, v7, v8}, Landroid/animation/AnimatorSet$Builder;->after(J)Landroid/animation/AnimatorSet$Builder;

    if-lt v3, v0, :cond_43

    goto :goto_45

    :cond_43
    move v2, v3

    goto :goto_24

    :cond_45
    :goto_45
    return-object v1
.end method

.method public final createItemAnim(Landroid/view/View;ZF)Landroid/animation/AnimatorSet;
    .registers 10

    const/high16 p0, 0x3f800000  # 1.0f

    const/4 v0, 0x0

    if-eqz p2, :cond_7

    move v1, v0

    goto :goto_8

    :cond_7
    move v1, p0

    :goto_8
    if-eqz p2, :cond_b

    goto :goto_c

    :cond_b
    move p0, v0

    :goto_c
    if-eqz p2, :cond_10

    move v2, p3

    goto :goto_11

    :cond_10
    move v2, v0

    :goto_11
    if-eqz p2, :cond_14

    move p3, v0

    :cond_14
    if-nez p1, :cond_17

    goto :goto_1a

    :cond_17
    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    :goto_1a
    if-nez p1, :cond_1d

    goto :goto_20

    :cond_1d
    invoke-virtual {p1, v2}, Landroid/view/View;->setTranslationY(F)V

    :goto_20
    sget-object p2, Lcom/android/launcher3/LauncherAnimUtils;->VIEW_ALPHA:Landroid/util/FloatProperty;

    const/4 v0, 0x2

    new-array v3, v0, [F

    const/4 v4, 0x0

    aput v1, v3, v4

    const/4 v1, 0x1

    aput p0, v3, v1

    invoke-static {p1, p2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p2

    sget-object v3, Lcom/android/launcher3/LauncherAnimUtils;->VIEW_TRANSLATE_Y:Landroid/util/FloatProperty;

    new-array v5, v0, [F

    aput v2, v5, v4

    aput p3, v5, v1

    invoke-static {p1, v3, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v0, v0, [Landroid/animation/Animator;

    aput-object p2, v0, v4

    aput-object v2, v0, v1

    invoke-virtual {v3, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const-wide/16 v0, 0x16f

    invoke-virtual {v3, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    sget-object p2, Lcom/android/launcher/togglebar/animation/ToggleBarAnimHelper;->INTERPOLATOR_RECYCLERVIEW_ITEM_ALPHA:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v3, p2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance p2, Lcom/android/launcher/togglebar/animation/ToggleBarAnimHelper$createItemAnim$$inlined$doOnEnd$1;

    invoke-direct {p2, p1, p0, p3}, Lcom/android/launcher/togglebar/animation/ToggleBarAnimHelper$createItemAnim$$inlined$doOnEnd$1;-><init>(Landroid/view/View;FF)V

    invoke-virtual {v3, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object v3
.end method

.method public final createItemAnimForMainUIExit(Landroid/view/View;FI)Landroid/animation/AnimatorSet;
    .registers 20

    move-object/from16 v0, p1

    move/from16 v1, p2

    if-nez v0, :cond_7

    goto :goto_c

    :cond_7
    const/high16 v2, 0x3f800000  # 1.0f

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    :goto_c
    const/4 v2, 0x0

    if-nez v0, :cond_10

    goto :goto_13

    :cond_10
    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationY(F)V

    :goto_13
    sget-object v3, Lcom/android/launcher3/LauncherAnimUtils;->VIEW_ALPHA:Landroid/util/FloatProperty;

    const/4 v4, 0x2

    new-array v5, v4, [F

    fill-array-data v5, :array_60

    invoke-static {v0, v3, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    const-wide/16 v5, 0x118

    invoke-virtual {v3, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    sget-object v5, Lcom/android/launcher/togglebar/animation/ToggleBarAnimHelper;->INTERPOLATOR_TOGGLE_BAR:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v3, v5}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    sget-object v6, Lcom/android/launcher3/LauncherAnimUtils;->VIEW_TRANSLATE_Y:Landroid/util/FloatProperty;

    new-array v7, v4, [F

    const/4 v8, 0x0

    aput v2, v7, v8

    const/4 v9, 0x1

    aput v1, v7, v9

    invoke-static {v0, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v10, 0x15e

    const-wide/16 v12, 0x11

    move/from16 v5, p3

    int-to-long v14, v5

    mul-long/2addr v14, v12

    sub-long/2addr v10, v14

    invoke-virtual {v6, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v6, v14, v15}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v4, v4, [Landroid/animation/Animator;

    aput-object v3, v4, v8

    aput-object v6, v4, v9

    invoke-virtual {v5, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-instance v3, Lcom/android/launcher/togglebar/animation/ToggleBarAnimHelper$createItemAnimForMainUIExit$$inlined$doOnEnd$1;

    invoke-direct {v3, v0, v2, v1}, Lcom/android/launcher/togglebar/animation/ToggleBarAnimHelper$createItemAnimForMainUIExit$$inlined$doOnEnd$1;-><init>(Landroid/view/View;FF)V

    invoke-virtual {v5, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object v5

    :array_60
    .array-data 4
        0x3f800000  # 1.0f
        0x0
    .end array-data
.end method

.method public final getINTERPOLATOR_DISAPPEAR_TOOLBAR_ALPHA()Landroid/view/animation/PathInterpolator;
    .registers 1

    sget-object p0, Lcom/android/launcher/togglebar/animation/ToggleBarAnimHelper;->INTERPOLATOR_DISAPPEAR_TOOLBAR_ALPHA:Landroid/view/animation/PathInterpolator;

    return-object p0
.end method

.method public final getINTERPOLATOR_SELECTED_STROKE()Landroid/view/animation/PathInterpolator;
    .registers 1

    sget-object p0, Lcom/android/launcher/togglebar/animation/ToggleBarAnimHelper;->INTERPOLATOR_SELECTED_STROKE:Landroid/view/animation/PathInterpolator;

    return-object p0
.end method

.method public final getINTERPOLATOR_WORKSPACE_SCALE()Landroid/view/animation/PathInterpolator;
    .registers 1

    sget-object p0, Lcom/android/launcher/togglebar/animation/ToggleBarAnimHelper;->INTERPOLATOR_WORKSPACE_SCALE:Landroid/view/animation/PathInterpolator;

    return-object p0
.end method
